/*  ING CHIPS MESH */

/*
 * Copyright (c) 2018 INGCHIPS MESH
 */
#include <stdarg.h>
#include <stdio.h>
#include "gap.h"
#include "bt_types.h"
#include "btstack_event.h"
#include "errno.h"
#include "stdbool.h"
#include "mesh_def.h"
#include "access.h"
#include "platform_api.h"
#include "mesh_queue.h"
#include "mesh_priv.h"
#include "att_db.h"
#include "mesh_api.h"

#define INVALID_HANDLE (0xffff)

extern void user_msg_handler(btstack_user_msg_t *usrmsg);

static uint16_t mesh_conn_handle = INVALID_HANDLE;

extern uint32_t MYNEWT_VAL_BLE_MESH_GATT_PROXY;
extern uint32_t MYNEWT_VAL_BLE_MESH_PB_GATT;

const uint8_t pb_gatt_service_data[] =
{
    #include "../data/pb_gatt_service_data.profile"
};

const uint8_t proxy_service_data[] =
{
    #include "../data/proxy_service_data.profile"
};

const uint8_t mesh_proxy_service_scan_rsp_data[] =
{
    #include "../data/mesh_proxy_service_scan_rsp_data.adv"
};

enum
{
    HANDLE_MESH_PROVISIONING_DATA_IN = 3,
    HANDLE_MESH_PROVISIONING_DATA_OUT = 5,
    HANDLE_MESH_PROVISIONING_DATA_OUT_CLIENT_CHAR_CONFIG = 6,
    
    HANDLE_MESH_PROXY_DATA_IN = 3,
    HANDLE_MESH_PROXY_DATA_OUT = 5,
    HANDLE_MESH_PROXY_DATA_OUT_CLIENT_CHAR_CONFIG = 6
};

const uint8_t adv_mesh_rsp_data_len = sizeof(mesh_proxy_service_scan_rsp_data);

static uint16_t att_read_callback(hci_con_handle_t con_handle, uint16_t attribute_handle, uint16_t offset, uint8_t *buffer, uint16_t buffer_size)
{
    if (attribute_handle == HANDLE_MESH_PROVISIONING_DATA_OUT_CLIENT_CHAR_CONFIG)
    {
        return mesh_att_read_callback(con_handle, attribute_handle, offset, buffer, buffer_size);
    }
    else
        return 0;
}

static int att_write_callback(hci_con_handle_t con_handle, uint16_t attribute_handle, uint16_t transaction_mode, uint16_t offset, const uint8_t *buffer, uint16_t buffer_size)
{
    if ((attribute_handle == HANDLE_MESH_PROVISIONING_DATA_IN) 
        || (attribute_handle == HANDLE_MESH_PROXY_DATA_IN)
        || (attribute_handle == HANDLE_MESH_PROVISIONING_DATA_OUT_CLIENT_CHAR_CONFIG))
    {
        return mesh_att_write_callback(con_handle, attribute_handle, transaction_mode, offset, buffer, buffer_size);
    }
    else;
    return 0;
}

static void user_packet_handler(uint8_t packet_type, uint16_t channel, const uint8_t *packet, uint16_t size)
{
    uint8_t event = hci_event_packet_get_type(packet);
    if (packet_type != HCI_EVENT_PACKET)
        return;
    switch (event)
    {
    case BTSTACK_EVENT_STATE:
        if (btstack_event_state_get_state(packet) != HCI_STATE_WORKING)
            break;

#if (FLASH_ENABLE)
        mesh_flash_sys_init();
#endif
        mesh_stack_ready();
        break;
    case HCI_EVENT_COMMAND_COMPLETE:
        switch (hci_event_command_complete_get_command_opcode(packet))
        {
        case HCI_VENDOR_CCM:
            {
                extern struct k_sem ccm_sem;
                const event_vendor_ccm_complete_t *cmpl = decode_hci_event_vendor_ccm_complete(packet);
                set_ccm_result(cmpl->status);
                k_sem_give(&ccm_sem);
            }
            break;

        case (0x2017): // HCI_LE_ENCRYPT
            if (get_aes_result() == -1) //it means that
            {
                extern struct k_sem aes_sem;
                extern uint8_t *ptr_aestext;
                set_aes_result(0);
                reverse_128(&packet[6], ptr_aestext);
                k_sem_give(&aes_sem);
            }
            break;
        default:
            break;
        }
        break;

    case HCI_EVENT_LE_META:
        switch (hci_event_le_meta_get_subevent_code(packet))
        {
        case HCI_SUBEVENT_LE_EXTENDED_ADVERTISING_REPORT:
            mesh_handle_adv_report(packet, size);
        break;

        case HCI_SUBEVENT_LE_ADVERTISING_SET_TERMINATED:
            if (7 == packet[4]) //it is the proxy_service adv set terminated and a connection had been established, 7 means PB_GATT_ADV_HANDLE
            {
                //check status here to decide whether it is just connected or not
                if (0 != packet[3])
                {
                    // TODO: unnormal event from controller
                    break;
                }
                
                const le_meta_adv_set_terminated_t *adv_term = decode_hci_le_meta_event(packet, le_meta_adv_set_terminated_t);

                mesh_conn_handle = adv_term->conn_handle;
                mesh_connected(adv_term->conn_handle);
                att_set_db(mesh_conn_handle, bt_mesh_is_provisioned() ? proxy_service_data : pb_gatt_service_data);
            }
            break;

        case HCI_SUBEVENT_LE_ENHANCED_CONNECTION_COMPLETE:
            break;

        default:
            break;
        }
        break;
    case HCI_EVENT_DISCONNECTION_COMPLETE:
        if ((MYNEWT_VAL(BLE_MESH_PB_GATT)) || (MYNEWT_VAL(BLE_MESH_GATT_PROXY)))
        {
            if (mesh_conn_handle == little_endian_read_16(packet, 3))
            {
                mesh_disconnected(packet[2], little_endian_read_16(packet, 3));
            }
        }
        else;
        break;

    case ATT_EVENT_CAN_SEND_NOW:
        break;

    case BTSTACK_EVENT_USER_MSG:
        {
            btstack_user_msg_t *p_user_msg;
            p_user_msg = (btstack_user_msg_t *)hci_event_packet_get_user_msg(packet);
            user_msg_handler(p_user_msg);
        }
        break;
    default:
        break;
    }
}

/**
 * @brief mesh environent initialize
 * @defgroup mesh initialize
 * @ingroup bt_mesh
 * @{
 */

/**
* @brief mesh environment initialization after device power on
*
* @return  0: EOK
*
* @note:  1.setup the PB_GATT and PB_ADV platform ,@see mesh_platform_setup()     2. mesh queue and mesh memory pool initialize. @see mesh_memory_init
*         3.mesh proxy service atrribute handle setup. @see bt_mesh_handle_set    4. if needed, setup the supported and enabled mesh role.(optional) @see mesh_feature_set
*         5. mesh device model initialization @see model_init()                   6. mesh stack to catch HCI event entry function, and read callback/write callback entry upon GATT connection
*         7. register mesh device models to mesh stack ,and beacon initialize. @see mesh_main()
*/
int mesh_env_init()
{
    static btstack_packet_callback_registration_t hci_event_callback_registration;
    mesh_stack_init(1, HANDLE_MESH_PROVISIONING_DATA_IN, HANDLE_MESH_PROVISIONING_DATA_OUT,
                    1, HANDLE_MESH_PROXY_DATA_IN, HANDLE_MESH_PROXY_DATA_OUT,
                    BT_MESH_FEAT_RELAY | BT_MESH_FEAT_PROXY, BT_MESH_FEAT_PROXY);
    att_server_init(att_read_callback, att_write_callback);
    hci_event_callback_registration.callback = &user_packet_handler;
    hci_add_event_handler(&hci_event_callback_registration);
    att_server_register_packet_handler(&user_packet_handler);
    return EOK;
}
/**
 *@}
 */

void reset_con_handle()
{
    mesh_conn_handle = INVALID_HANDLE;
}

/**
* @brief  after node reset, the mesh proxy service need to be restarted.
*
*/
int mesh_srv_restart()
{
    printf("reset dis conn %d\n", mesh_conn_handle);
    if (mesh_conn_handle != 0xffff)
        hci_cmds_put(DISCONNECT, &mesh_conn_handle, 2);
    else
    {
        bt_mesh_gatt_config(MESH_GATT_PROV);
        //here start connectable advertising data for gatt_prov service.
        mesh_start_advertising();
    }
    return 0;
}