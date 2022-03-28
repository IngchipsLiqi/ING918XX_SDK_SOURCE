--define_symbol att_dispatch_client_can_send_now=0x00005929
--define_symbol att_dispatch_client_request_can_send_now_event=0x0000592f
--define_symbol att_dispatch_register_client=0x00005935
--define_symbol att_dispatch_register_server=0x00005949
--define_symbol att_dispatch_server_can_send_now=0x0000595d
--define_symbol att_dispatch_server_request_can_send_now_event=0x00005963
--define_symbol att_emit_general_event=0x00005a15
--define_symbol att_server_can_send_packet_now=0x00006129
--define_symbol att_server_deferred_read_response=0x0000612d
--define_symbol att_server_get_mtu=0x00006145
--define_symbol att_server_indicate=0x000061bd
--define_symbol att_server_init=0x00006241
--define_symbol att_server_notify=0x0000627d
--define_symbol att_server_register_packet_handler=0x00006395
--define_symbol att_server_request_can_send_now_event=0x000063a1
--define_symbol att_set_db=0x000063bd
--define_symbol att_set_read_callback=0x000063d1
--define_symbol att_set_write_callback=0x000063dd
--define_symbol bd_addr_cmp=0x0000654d
--define_symbol bd_addr_copy=0x00006553
--define_symbol bd_addr_to_str=0x0000655d
--define_symbol big_endian_read_16=0x00006595
--define_symbol big_endian_read_32=0x0000659d
--define_symbol big_endian_store_16=0x000065b1
--define_symbol big_endian_store_32=0x000065bd
--define_symbol btstack_config=0x000066f5
--define_symbol btstack_memory_pool_create=0x00006843
--define_symbol btstack_memory_pool_free=0x0000686d
--define_symbol btstack_memory_pool_get=0x000068cd
--define_symbol btstack_push_user_msg=0x000068e9
--define_symbol char_for_nibble=0x00006b79
--define_symbol gap_add_dev_to_periodic_list=0x00007405
--define_symbol gap_add_whitelist=0x0000741d
--define_symbol gap_aes_encrypt=0x00007431
--define_symbol gap_clear_white_lists=0x00007475
--define_symbol gap_clr_adv_set=0x00007485
--define_symbol gap_clr_periodic_adv_list=0x00007495
--define_symbol gap_create_connection_cancel=0x000074a5
--define_symbol gap_disconnect=0x000074b5
--define_symbol gap_disconnect_all=0x000074e1
--define_symbol gap_ext_create_connection=0x00007521
--define_symbol gap_get_connection_parameter_range=0x00007611
--define_symbol gap_le_read_channel_map=0x00007649
--define_symbol gap_periodic_adv_create_sync=0x000076bd
--define_symbol gap_periodic_adv_create_sync_cancel=0x000076e1
--define_symbol gap_periodic_adv_term_sync=0x000076f1
--define_symbol gap_read_periodic_adv_list_size=0x00007785
--define_symbol gap_read_phy=0x00007795
--define_symbol gap_read_remote_info=0x000077a9
--define_symbol gap_read_remote_used_features=0x000077bd
--define_symbol gap_read_rssi=0x000077d1
--define_symbol gap_remove_whitelist=0x000077e5
--define_symbol gap_rmv_adv_set=0x00007869
--define_symbol gap_rmv_dev_from_periodic_list=0x0000787d
--define_symbol gap_rx_test_v2=0x00007895
--define_symbol gap_set_adv_set_random_addr=0x000078d5
--define_symbol gap_set_connection_parameter_range=0x00007925
--define_symbol gap_set_data_length=0x00007941
--define_symbol gap_set_def_phy=0x0000795d
--define_symbol gap_set_ext_adv_data=0x00007975
--define_symbol gap_set_ext_adv_enable=0x0000798d
--define_symbol gap_set_ext_adv_para=0x00007a09
--define_symbol gap_set_ext_scan_enable=0x00007ae9
--define_symbol gap_set_ext_scan_para=0x00007b01
--define_symbol gap_set_ext_scan_response_data=0x00007ba9
--define_symbol gap_set_host_channel_classification=0x00007bc1
--define_symbol gap_set_periodic_adv_data=0x00007bd5
--define_symbol gap_set_periodic_adv_enable=0x00007c49
--define_symbol gap_set_periodic_adv_para=0x00007c5d
--define_symbol gap_set_phy=0x00007c75
--define_symbol gap_set_random_device_address=0x00007c91
--define_symbol gap_start_ccm=0x00007cc1
--define_symbol gap_test_end=0x00007cf5
--define_symbol gap_tx_test_v2=0x00007d05
--define_symbol gap_tx_test_v4=0x00007d1d
--define_symbol gap_update_connection_parameters=0x00007d45
--define_symbol gap_vendor_tx_continuous_wave=0x00007d69
--define_symbol gatt_client_cancel_write=0x00008291
--define_symbol gatt_client_discover_characteristic_descriptors=0x000082b7
--define_symbol gatt_client_discover_characteristics_for_handle_range_by_uuid128=0x000082f7
--define_symbol gatt_client_discover_characteristics_for_handle_range_by_uuid16=0x00008347
--define_symbol gatt_client_discover_characteristics_for_service=0x00008397
--define_symbol gatt_client_discover_primary_services=0x000083cd
--define_symbol gatt_client_discover_primary_services_by_uuid128=0x000083ff
--define_symbol gatt_client_discover_primary_services_by_uuid16=0x00008443
--define_symbol gatt_client_execute_write=0x0000847f
--define_symbol gatt_client_find_included_services_for_service=0x000084a5
--define_symbol gatt_client_get_mtu=0x000084d3
--define_symbol gatt_client_is_ready=0x00008575
--define_symbol gatt_client_listen_for_characteristic_value_updates=0x0000858b
--define_symbol gatt_client_prepare_write=0x000085ad
--define_symbol gatt_client_read_characteristic_descriptor_using_descriptor_handle=0x000085e9
--define_symbol gatt_client_read_long_characteristic_descriptor_using_descriptor_handle=0x00008613
--define_symbol gatt_client_read_long_characteristic_descriptor_using_descriptor_handle_with_offset=0x00008619
--define_symbol gatt_client_read_long_value_of_characteristic_using_value_handle=0x00008647
--define_symbol gatt_client_read_long_value_of_characteristic_using_value_handle_with_offset=0x0000864d
--define_symbol gatt_client_read_multiple_characteristic_values=0x0000867b
--define_symbol gatt_client_read_value_of_characteristic_using_value_handle=0x000086ab
--define_symbol gatt_client_read_value_of_characteristics_by_uuid128=0x000086d9
--define_symbol gatt_client_read_value_of_characteristics_by_uuid16=0x00008725
--define_symbol gatt_client_register_handler=0x00008771
--define_symbol gatt_client_reliable_write_long_value_of_characteristic=0x0000877d
--define_symbol gatt_client_signed_write_without_response=0x00008bad
--define_symbol gatt_client_write_characteristic_descriptor_using_descriptor_handle=0x00008c71
--define_symbol gatt_client_write_client_characteristic_configuration=0x00008cab
--define_symbol gatt_client_write_long_characteristic_descriptor_using_descriptor_handle=0x00008cfd
--define_symbol gatt_client_write_long_characteristic_descriptor_using_descriptor_handle_with_offset=0x00008d0d
--define_symbol gatt_client_write_long_value_of_characteristic=0x00008d49
--define_symbol gatt_client_write_long_value_of_characteristic_with_offset=0x00008d59
--define_symbol gatt_client_write_value_of_characteristic=0x00008d95
--define_symbol gatt_client_write_value_of_characteristic_without_response=0x00008dcb
--define_symbol hci_add_event_handler=0x0000a2f1
--define_symbol hci_power_control=0x0000aa8d
--define_symbol hci_register_acl_packet_handler=0x0000ac41
--define_symbol kv_commit=0x0000b229
--define_symbol kv_get=0x0000b281
--define_symbol kv_init=0x0000b299
--define_symbol kv_put=0x0000b301
--define_symbol kv_remove=0x0000b379
--define_symbol kv_remove_all=0x0000b3b5
--define_symbol kv_value_modified=0x0000b3f9
--define_symbol kv_visit=0x0000b3fd
--define_symbol l2cap_can_send_fixed_channel_packet_now=0x0000b4bd
--define_symbol l2cap_can_send_packet_now=0x0000b4c1
--define_symbol l2cap_create_channel=0x0000b679
--define_symbol l2cap_disconnect=0x0000b7b1
--define_symbol l2cap_get_remote_mtu_for_local_cid=0x0000ba25
--define_symbol l2cap_init=0x0000be1d
--define_symbol l2cap_le_send_flow_control_credit=0x0000be5d
--define_symbol l2cap_max_le_mtu=0x0000c0e1
--define_symbol l2cap_max_mtu=0x0000c0e5
--define_symbol l2cap_next_local_cid=0x0000c0e9
--define_symbol l2cap_next_sig_id=0x0000c0f9
--define_symbol l2cap_register_fixed_channel=0x0000c191
--define_symbol l2cap_register_packet_handler=0x0000c1ad
--define_symbol l2cap_register_service=0x0000c1b9
--define_symbol l2cap_request_can_send_fix_channel_now_event=0x0000c29d
--define_symbol l2cap_request_can_send_now_event=0x0000c2c1
--define_symbol l2cap_request_connection_parameter_update=0x0000c2db
--define_symbol l2cap_send=0x0000c67d
--define_symbol l2cap_send_connectionless=0x0000c6f5
--define_symbol l2cap_send_connectionless3=0x0000c785
--define_symbol l2cap_send_echo_request=0x0000c81d
--define_symbol l2cap_send_signaling_le=0x0000c881
--define_symbol l2cap_unregister_service=0x0000c8d9
--define_symbol le_device_db_add=0x0000c931
--define_symbol le_device_db_find=0x0000ca05
--define_symbol le_device_db_from_key=0x0000ca31
--define_symbol le_device_db_iter_cur=0x0000ca39
--define_symbol le_device_db_iter_cur_key=0x0000ca3d
--define_symbol le_device_db_iter_init=0x0000ca41
--define_symbol le_device_db_iter_next=0x0000ca49
--define_symbol le_device_db_remove_key=0x0000ca6f
--define_symbol ll_free=0x0000ca9b
--define_symbol ll_hint_on_ce_len=0x0000caa5
--define_symbol ll_legacy_adv_set_interval=0x0000cadd
--define_symbol ll_malloc=0x0000caed
--define_symbol ll_query_timing_info=0x0000cc25
--define_symbol ll_scan_set_fixed_channel=0x0000ccc9
--define_symbol ll_set_adv_access_address=0x0000cddd
--define_symbol ll_set_adv_coded_scheme=0x0000cde9
--define_symbol ll_set_conn_coded_scheme=0x0000ce19
--define_symbol ll_set_conn_latency=0x0000ce45
--define_symbol ll_set_conn_tx_power=0x0000ce75
--define_symbol ll_set_def_antenna=0x0000cebd
--define_symbol ll_set_initiating_coded_scheme=0x0000ced9
--define_symbol ll_set_max_conn_number=0x0000cee5
--define_symbol nibble_for_char=0x0001cce9
--define_symbol platform_32k_rc_auto_tune=0x0001cd85
--define_symbol platform_32k_rc_tune=0x0001ce01
--define_symbol platform_calibrate_32k=0x0001ce15
--define_symbol platform_config=0x0001ce19
--define_symbol platform_get_task_handle=0x0001ced9
--define_symbol platform_get_us_time=0x0001cef1
--define_symbol platform_get_version=0x0001cef5
--define_symbol platform_hrng=0x0001cefd
--define_symbol platform_os_idle_resumed_hook=0x0001cf03
--define_symbol platform_patch_rf_init_data=0x0001cf09
--define_symbol platform_post_sleep_processing=0x0001cf15
--define_symbol platform_pre_sleep_processing=0x0001cf1b
--define_symbol platform_pre_suppress_ticks_and_sleep_processing=0x0001cf21
--define_symbol platform_printf=0x0001cf25
--define_symbol platform_raise_assertion=0x0001cf39
--define_symbol platform_rand=0x0001cf4d
--define_symbol platform_read_info=0x0001cf51
--define_symbol platform_read_persistent_reg=0x0001cf6d
--define_symbol platform_reset=0x0001cf7d
--define_symbol platform_set_evt_callback=0x0001cfa1
--define_symbol platform_set_irq_callback=0x0001cfb5
--define_symbol platform_set_rf_clk_source=0x0001cfed
--define_symbol platform_set_rf_init_data=0x0001cff9
--define_symbol platform_set_rf_power_mapping=0x0001d005
--define_symbol platform_set_timer=0x0001d011
--define_symbol platform_shutdown=0x0001d015
--define_symbol platform_switch_app=0x0001d019
--define_symbol platform_trace_raw=0x0001d045
--define_symbol platform_write_persistent_reg=0x0001d05d
--define_symbol printf_hexdump=0x0001d06d
--define_symbol reverse_128=0x0001d3b5
--define_symbol reverse_24=0x0001d3bb
--define_symbol reverse_48=0x0001d3c1
--define_symbol reverse_56=0x0001d3c7
--define_symbol reverse_64=0x0001d3cd
--define_symbol reverse_bd_addr=0x0001d3d3
--define_symbol reverse_bytes=0x0001d3d9
--define_symbol sm_add_event_handler=0x0001d545
--define_symbol sm_address_resolution_lookup=0x0001d69d
--define_symbol sm_authenticated=0x0001d9e9
--define_symbol sm_authorization_decline=0x0001d9f7
--define_symbol sm_authorization_grant=0x0001da17
--define_symbol sm_authorization_state=0x0001da37
--define_symbol sm_bonding_decline=0x0001da51
--define_symbol sm_config=0x0001de71
--define_symbol sm_config_conn=0x0001de89
--define_symbol sm_encryption_key_size=0x0001e03f
--define_symbol sm_just_works_confirm=0x0001e579
--define_symbol sm_le_device_key=0x0001e8b5
--define_symbol sm_passkey_input=0x0001e94b
--define_symbol sm_private_random_address_generation_get=0x0001ecf9
--define_symbol sm_private_random_address_generation_get_mode=0x0001ed01
--define_symbol sm_private_random_address_generation_set_mode=0x0001ed0d
--define_symbol sm_private_random_address_generation_set_update_period=0x0001ed35
--define_symbol sm_register_oob_data_callback=0x0001ee71
--define_symbol sm_request_pairing=0x0001ee7d
--define_symbol sm_send_security_request=0x0001f883
--define_symbol sm_set_accepted_stk_generation_methods=0x0001f8a9
--define_symbol sm_set_authentication_requirements=0x0001f8b5
--define_symbol sm_set_encryption_key_size_range=0x0001f8c1
--define_symbol sscanf_bd_addr=0x0001fc11
--define_symbol sysSetPublicDeviceAddr=0x0001ff79
--define_symbol uuid128_to_str=0x00020571
--define_symbol uuid_add_bluetooth_prefix=0x000205c9
--define_symbol uuid_has_bluetooth_prefix=0x000205e9
