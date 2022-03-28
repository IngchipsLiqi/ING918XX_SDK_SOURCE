--define_symbol att_dispatch_client_can_send_now=0x00005a4d
--define_symbol att_dispatch_client_request_can_send_now_event=0x00005a53
--define_symbol att_dispatch_register_client=0x00005a59
--define_symbol att_dispatch_register_server=0x00005a6d
--define_symbol att_dispatch_server_can_send_now=0x00005a81
--define_symbol att_dispatch_server_request_can_send_now_event=0x00005a87
--define_symbol att_emit_general_event=0x00005b39
--define_symbol att_server_can_send_packet_now=0x0000624d
--define_symbol att_server_deferred_read_response=0x00006251
--define_symbol att_server_get_mtu=0x00006269
--define_symbol att_server_indicate=0x000062e1
--define_symbol att_server_init=0x00006365
--define_symbol att_server_notify=0x000063a1
--define_symbol att_server_register_packet_handler=0x000064b9
--define_symbol att_server_request_can_send_now_event=0x000064c5
--define_symbol att_set_db=0x000064e1
--define_symbol att_set_read_callback=0x000064f5
--define_symbol att_set_write_callback=0x00006501
--define_symbol bd_addr_cmp=0x00006671
--define_symbol bd_addr_copy=0x00006677
--define_symbol bd_addr_to_str=0x00006681
--define_symbol big_endian_read_16=0x000066b9
--define_symbol big_endian_read_32=0x000066c1
--define_symbol big_endian_store_16=0x000066d5
--define_symbol big_endian_store_32=0x000066e1
--define_symbol btstack_config=0x00006819
--define_symbol btstack_memory_pool_create=0x00006967
--define_symbol btstack_memory_pool_free=0x00006991
--define_symbol btstack_memory_pool_get=0x000069f1
--define_symbol btstack_push_user_msg=0x00006a0d
--define_symbol char_for_nibble=0x00006c9d
--define_symbol gap_add_dev_to_periodic_list=0x00007599
--define_symbol gap_add_whitelist=0x000075b1
--define_symbol gap_aes_encrypt=0x000075c5
--define_symbol gap_clear_white_lists=0x00007609
--define_symbol gap_clr_adv_set=0x00007619
--define_symbol gap_clr_periodic_adv_list=0x00007629
--define_symbol gap_create_connection_cancel=0x00007639
--define_symbol gap_default_periodic_adv_sync_transfer_param=0x00007649
--define_symbol gap_disconnect=0x00007661
--define_symbol gap_disconnect_all=0x0000768d
--define_symbol gap_ext_create_connection=0x000076cd
--define_symbol gap_get_connection_parameter_range=0x000077bd
--define_symbol gap_le_read_channel_map=0x000077f5
--define_symbol gap_periodic_adv_create_sync=0x00007869
--define_symbol gap_periodic_adv_create_sync_cancel=0x0000788d
--define_symbol gap_periodic_adv_set_info_transfer=0x0000789d
--define_symbol gap_periodic_adv_sync_transfer=0x000078b5
--define_symbol gap_periodic_adv_sync_transfer_param=0x000078cd
--define_symbol gap_periodic_adv_term_sync=0x000078e9
--define_symbol gap_read_antenna_info=0x0000797d
--define_symbol gap_read_periodic_adv_list_size=0x0000798d
--define_symbol gap_read_phy=0x0000799d
--define_symbol gap_read_remote_info=0x000079b1
--define_symbol gap_read_remote_used_features=0x000079c5
--define_symbol gap_read_rssi=0x000079d9
--define_symbol gap_remove_whitelist=0x000079ed
--define_symbol gap_rmv_adv_set=0x00007a71
--define_symbol gap_rmv_dev_from_periodic_list=0x00007a85
--define_symbol gap_rx_test_v2=0x00007a9d
--define_symbol gap_rx_test_v3=0x00007ab5
--define_symbol gap_set_adv_set_random_addr=0x00007b05
--define_symbol gap_set_connection_cte_request_enable=0x00007b55
--define_symbol gap_set_connection_cte_response_enable=0x00007b71
--define_symbol gap_set_connection_cte_rx_param=0x00007b85
--define_symbol gap_set_connection_cte_tx_param=0x00007be1
--define_symbol gap_set_connection_parameter_range=0x00007c35
--define_symbol gap_set_connectionless_cte_tx_enable=0x00007c51
--define_symbol gap_set_connectionless_cte_tx_param=0x00007c65
--define_symbol gap_set_connectionless_iq_sampling_enable=0x00007cc5
--define_symbol gap_set_data_length=0x00007d29
--define_symbol gap_set_def_phy=0x00007d45
--define_symbol gap_set_ext_adv_data=0x00007d5d
--define_symbol gap_set_ext_adv_enable=0x00007d75
--define_symbol gap_set_ext_adv_para=0x00007df1
--define_symbol gap_set_ext_scan_enable=0x00007ed1
--define_symbol gap_set_ext_scan_para=0x00007ee9
--define_symbol gap_set_ext_scan_response_data=0x00007f91
--define_symbol gap_set_host_channel_classification=0x00007fa9
--define_symbol gap_set_periodic_adv_data=0x00007fbd
--define_symbol gap_set_periodic_adv_enable=0x00008031
--define_symbol gap_set_periodic_adv_para=0x00008045
--define_symbol gap_set_periodic_adv_rx_enable=0x0000805d
--define_symbol gap_set_phy=0x00008071
--define_symbol gap_set_random_device_address=0x0000808d
--define_symbol gap_start_ccm=0x000080bd
--define_symbol gap_test_end=0x000080f1
--define_symbol gap_tx_test_v2=0x00008101
--define_symbol gap_tx_test_v4=0x00008119
--define_symbol gap_update_connection_parameters=0x00008141
--define_symbol gap_vendor_tx_continuous_wave=0x00008165
--define_symbol gatt_client_cancel_write=0x0000868d
--define_symbol gatt_client_discover_characteristic_descriptors=0x000086b3
--define_symbol gatt_client_discover_characteristics_for_handle_range_by_uuid128=0x000086f3
--define_symbol gatt_client_discover_characteristics_for_handle_range_by_uuid16=0x00008743
--define_symbol gatt_client_discover_characteristics_for_service=0x00008793
--define_symbol gatt_client_discover_primary_services=0x000087c9
--define_symbol gatt_client_discover_primary_services_by_uuid128=0x000087fb
--define_symbol gatt_client_discover_primary_services_by_uuid16=0x0000883f
--define_symbol gatt_client_execute_write=0x0000887b
--define_symbol gatt_client_find_included_services_for_service=0x000088a1
--define_symbol gatt_client_get_mtu=0x000088cf
--define_symbol gatt_client_is_ready=0x00008971
--define_symbol gatt_client_listen_for_characteristic_value_updates=0x00008987
--define_symbol gatt_client_prepare_write=0x000089a9
--define_symbol gatt_client_read_characteristic_descriptor_using_descriptor_handle=0x000089e5
--define_symbol gatt_client_read_long_characteristic_descriptor_using_descriptor_handle=0x00008a0f
--define_symbol gatt_client_read_long_characteristic_descriptor_using_descriptor_handle_with_offset=0x00008a15
--define_symbol gatt_client_read_long_value_of_characteristic_using_value_handle=0x00008a43
--define_symbol gatt_client_read_long_value_of_characteristic_using_value_handle_with_offset=0x00008a49
--define_symbol gatt_client_read_multiple_characteristic_values=0x00008a77
--define_symbol gatt_client_read_value_of_characteristic_using_value_handle=0x00008aa7
--define_symbol gatt_client_read_value_of_characteristics_by_uuid128=0x00008ad5
--define_symbol gatt_client_read_value_of_characteristics_by_uuid16=0x00008b21
--define_symbol gatt_client_register_handler=0x00008b6d
--define_symbol gatt_client_reliable_write_long_value_of_characteristic=0x00008b79
--define_symbol gatt_client_signed_write_without_response=0x00008fa9
--define_symbol gatt_client_write_characteristic_descriptor_using_descriptor_handle=0x0000906d
--define_symbol gatt_client_write_client_characteristic_configuration=0x000090a7
--define_symbol gatt_client_write_long_characteristic_descriptor_using_descriptor_handle=0x000090f9
--define_symbol gatt_client_write_long_characteristic_descriptor_using_descriptor_handle_with_offset=0x00009109
--define_symbol gatt_client_write_long_value_of_characteristic=0x00009145
--define_symbol gatt_client_write_long_value_of_characteristic_with_offset=0x00009155
--define_symbol gatt_client_write_value_of_characteristic=0x00009191
--define_symbol gatt_client_write_value_of_characteristic_without_response=0x000091c7
--define_symbol hci_add_event_handler=0x0000a709
--define_symbol hci_power_control=0x0000aea5
--define_symbol hci_register_acl_packet_handler=0x0000b059
--define_symbol kv_commit=0x0000b641
--define_symbol kv_get=0x0000b699
--define_symbol kv_init=0x0000b6b1
--define_symbol kv_put=0x0000b719
--define_symbol kv_remove=0x0000b791
--define_symbol kv_remove_all=0x0000b7cd
--define_symbol kv_value_modified=0x0000b811
--define_symbol kv_visit=0x0000b815
--define_symbol l2cap_can_send_fixed_channel_packet_now=0x0000b8d5
--define_symbol l2cap_can_send_packet_now=0x0000b8d9
--define_symbol l2cap_create_channel=0x0000ba91
--define_symbol l2cap_disconnect=0x0000bbc9
--define_symbol l2cap_get_remote_mtu_for_local_cid=0x0000be3d
--define_symbol l2cap_init=0x0000c235
--define_symbol l2cap_le_send_flow_control_credit=0x0000c275
--define_symbol l2cap_max_le_mtu=0x0000c4f9
--define_symbol l2cap_max_mtu=0x0000c4fd
--define_symbol l2cap_next_local_cid=0x0000c501
--define_symbol l2cap_next_sig_id=0x0000c511
--define_symbol l2cap_register_fixed_channel=0x0000c5a9
--define_symbol l2cap_register_packet_handler=0x0000c5c5
--define_symbol l2cap_register_service=0x0000c5d1
--define_symbol l2cap_request_can_send_fix_channel_now_event=0x0000c6b5
--define_symbol l2cap_request_can_send_now_event=0x0000c6d9
--define_symbol l2cap_request_connection_parameter_update=0x0000c6f3
--define_symbol l2cap_send=0x0000ca95
--define_symbol l2cap_send_connectionless=0x0000cb0d
--define_symbol l2cap_send_connectionless3=0x0000cb9d
--define_symbol l2cap_send_echo_request=0x0000cc35
--define_symbol l2cap_send_signaling_le=0x0000cc99
--define_symbol l2cap_unregister_service=0x0000ccf1
--define_symbol le_device_db_add=0x0000cd49
--define_symbol le_device_db_find=0x0000ce1d
--define_symbol le_device_db_from_key=0x0000ce49
--define_symbol le_device_db_iter_cur=0x0000ce51
--define_symbol le_device_db_iter_cur_key=0x0000ce55
--define_symbol le_device_db_iter_init=0x0000ce59
--define_symbol le_device_db_iter_next=0x0000ce61
--define_symbol le_device_db_remove_key=0x0000ce87
--define_symbol ll_free=0x0000ceb3
--define_symbol ll_hint_on_ce_len=0x0000cebd
--define_symbol ll_legacy_adv_set_interval=0x0000cef5
--define_symbol ll_malloc=0x0000cf05
--define_symbol ll_query_timing_info=0x0000d03d
--define_symbol ll_scan_set_fixed_channel=0x0000d0e1
--define_symbol ll_set_adv_access_address=0x0000d1f5
--define_symbol ll_set_adv_coded_scheme=0x0000d201
--define_symbol ll_set_conn_coded_scheme=0x0000d231
--define_symbol ll_set_conn_latency=0x0000d25d
--define_symbol ll_set_conn_tx_power=0x0000d28d
--define_symbol ll_set_def_antenna=0x0000d2d5
--define_symbol ll_set_initiating_coded_scheme=0x0000d2f1
--define_symbol ll_set_max_conn_number=0x0000d2fd
--define_symbol nibble_for_char=0x0001dfe1
--define_symbol platform_32k_rc_auto_tune=0x0001e07d
--define_symbol platform_32k_rc_tune=0x0001e0f9
--define_symbol platform_calibrate_32k=0x0001e10d
--define_symbol platform_config=0x0001e111
--define_symbol platform_get_task_handle=0x0001e1d1
--define_symbol platform_get_us_time=0x0001e1e9
--define_symbol platform_get_version=0x0001e1ed
--define_symbol platform_hrng=0x0001e1f5
--define_symbol platform_os_idle_resumed_hook=0x0001e1fb
--define_symbol platform_patch_rf_init_data=0x0001e201
--define_symbol platform_post_sleep_processing=0x0001e20d
--define_symbol platform_pre_sleep_processing=0x0001e213
--define_symbol platform_pre_suppress_ticks_and_sleep_processing=0x0001e219
--define_symbol platform_printf=0x0001e21d
--define_symbol platform_raise_assertion=0x0001e231
--define_symbol platform_rand=0x0001e245
--define_symbol platform_read_info=0x0001e249
--define_symbol platform_read_persistent_reg=0x0001e265
--define_symbol platform_reset=0x0001e275
--define_symbol platform_set_evt_callback=0x0001e299
--define_symbol platform_set_irq_callback=0x0001e2ad
--define_symbol platform_set_rf_clk_source=0x0001e2e5
--define_symbol platform_set_rf_init_data=0x0001e2f1
--define_symbol platform_set_rf_power_mapping=0x0001e2fd
--define_symbol platform_set_timer=0x0001e309
--define_symbol platform_shutdown=0x0001e30d
--define_symbol platform_switch_app=0x0001e311
--define_symbol platform_trace_raw=0x0001e33d
--define_symbol platform_write_persistent_reg=0x0001e355
--define_symbol printf_hexdump=0x0001e365
--define_symbol reverse_128=0x0001e6e5
--define_symbol reverse_24=0x0001e6eb
--define_symbol reverse_48=0x0001e6f1
--define_symbol reverse_56=0x0001e6f7
--define_symbol reverse_64=0x0001e6fd
--define_symbol reverse_bd_addr=0x0001e703
--define_symbol reverse_bytes=0x0001e709
--define_symbol sm_add_event_handler=0x0001e9c9
--define_symbol sm_address_resolution_lookup=0x0001eb21
--define_symbol sm_authenticated=0x0001ee6d
--define_symbol sm_authorization_decline=0x0001ee7b
--define_symbol sm_authorization_grant=0x0001ee9b
--define_symbol sm_authorization_state=0x0001eebb
--define_symbol sm_bonding_decline=0x0001eed5
--define_symbol sm_config=0x0001f2f5
--define_symbol sm_config_conn=0x0001f30d
--define_symbol sm_encryption_key_size=0x0001f4c3
--define_symbol sm_just_works_confirm=0x0001f9fd
--define_symbol sm_le_device_key=0x0001fd39
--define_symbol sm_passkey_input=0x0001fdcf
--define_symbol sm_private_random_address_generation_get=0x0002017d
--define_symbol sm_private_random_address_generation_get_mode=0x00020185
--define_symbol sm_private_random_address_generation_set_mode=0x00020191
--define_symbol sm_private_random_address_generation_set_update_period=0x000201b9
--define_symbol sm_register_oob_data_callback=0x000202f5
--define_symbol sm_request_pairing=0x00020301
--define_symbol sm_send_security_request=0x00020d07
--define_symbol sm_set_accepted_stk_generation_methods=0x00020d2d
--define_symbol sm_set_authentication_requirements=0x00020d39
--define_symbol sm_set_encryption_key_size_range=0x00020d45
--define_symbol sscanf_bd_addr=0x00021095
--define_symbol sysSetPublicDeviceAddr=0x000213fd
--define_symbol uuid128_to_str=0x00021b89
--define_symbol uuid_add_bluetooth_prefix=0x00021be1
--define_symbol uuid_has_bluetooth_prefix=0x00021c01
