--define_symbol att_dispatch_client_can_send_now=0x00005b01
--define_symbol att_dispatch_client_request_can_send_now_event=0x00005b07
--define_symbol att_dispatch_register_client=0x00005b0d
--define_symbol att_dispatch_register_server=0x00005b21
--define_symbol att_dispatch_server_can_send_now=0x00005b35
--define_symbol att_dispatch_server_request_can_send_now_event=0x00005b3b
--define_symbol att_emit_general_event=0x00005bed
--define_symbol att_server_can_send_packet_now=0x0000630d
--define_symbol att_server_get_mtu=0x00006311
--define_symbol att_server_indicate=0x00006385
--define_symbol att_server_init=0x00006409
--define_symbol att_server_notify=0x00006445
--define_symbol att_server_register_packet_handler=0x0000652d
--define_symbol att_server_request_can_send_now_event=0x00006539
--define_symbol att_set_db=0x00006555
--define_symbol att_set_read_callback=0x00006569
--define_symbol att_set_write_callback=0x00006575
--define_symbol bd_addr_cmp=0x000066b9
--define_symbol bd_addr_copy=0x000066bf
--define_symbol bd_addr_to_str=0x000066c9
--define_symbol big_endian_read_16=0x00006701
--define_symbol big_endian_read_32=0x00006709
--define_symbol big_endian_store_16=0x0000671d
--define_symbol big_endian_store_32=0x00006729
--define_symbol btstack_memory_pool_create=0x00006993
--define_symbol btstack_memory_pool_free=0x000069bd
--define_symbol btstack_memory_pool_get=0x00006a1d
--define_symbol btstack_push_user_msg=0x00006a39
--define_symbol char_for_nibble=0x00006cb1
--define_symbol eTaskConfirmSleepModeStatus=0x00006f45
--define_symbol gap_add_dev_to_periodic_list=0x00007635
--define_symbol gap_add_whitelist=0x0000764d
--define_symbol gap_aes_encrypt=0x00007661
--define_symbol gap_clear_white_lists=0x00007689
--define_symbol gap_clr_adv_set=0x00007699
--define_symbol gap_clr_periodic_adv_list=0x000076a9
--define_symbol gap_create_connection_cancel=0x000076d5
--define_symbol gap_default_periodic_adv_sync_transfer_param=0x000076e5
--define_symbol gap_disconnect=0x000076fd
--define_symbol gap_disconnect_all=0x00007729
--define_symbol gap_ext_create_connection=0x000077d1
--define_symbol gap_get_connection_parameter_range=0x00007895
--define_symbol gap_le_read_channel_map=0x000078d1
--define_symbol gap_periodic_adv_create_sync=0x00007945
--define_symbol gap_periodic_adv_create_sync_cancel=0x00007969
--define_symbol gap_periodic_adv_set_info_transfer=0x00007979
--define_symbol gap_periodic_adv_sync_transfer=0x00007991
--define_symbol gap_periodic_adv_sync_transfer_param=0x000079a9
--define_symbol gap_periodic_adv_term_sync=0x000079c5
--define_symbol gap_read_antenna_info=0x00007a59
--define_symbol gap_read_periodic_adv_list_size=0x00007a69
--define_symbol gap_read_phy=0x00007a79
--define_symbol gap_read_remote_info=0x00007a8d
--define_symbol gap_read_remote_used_features=0x00007aa1
--define_symbol gap_read_rssi=0x00007ab5
--define_symbol gap_remove_whitelist=0x00007ac9
--define_symbol gap_rmv_adv_set=0x00007b55
--define_symbol gap_rmv_dev_from_periodic_list=0x00007b69
--define_symbol gap_set_adv_set_random_addr=0x00007ba9
--define_symbol gap_set_connection_cte_request_enable=0x00007bf5
--define_symbol gap_set_connection_cte_response_enable=0x00007c11
--define_symbol gap_set_connection_cte_rx_param=0x00007c25
--define_symbol gap_set_connection_cte_tx_param=0x00007c81
--define_symbol gap_set_connection_parameter_range=0x00007cd5
--define_symbol gap_set_connectionless_cte_tx_enable=0x00007ced
--define_symbol gap_set_connectionless_cte_tx_param=0x00007d01
--define_symbol gap_set_connectionless_iq_sampling_enable=0x00007d61
--define_symbol gap_set_def_phy=0x00007dc5
--define_symbol gap_set_ext_adv_data=0x00007ddd
--define_symbol gap_set_ext_adv_enable=0x00007df5
--define_symbol gap_set_ext_adv_para=0x00007e71
--define_symbol gap_set_ext_scan_enable=0x00007f51
--define_symbol gap_set_ext_scan_para=0x00007f69
--define_symbol gap_set_ext_scan_response_data=0x00008011
--define_symbol gap_set_host_channel_classification=0x00008029
--define_symbol gap_set_periodic_adv_data=0x0000803d
--define_symbol gap_set_periodic_adv_enable=0x000080b1
--define_symbol gap_set_periodic_adv_para=0x000080c5
--define_symbol gap_set_periodic_adv_rx_enable=0x000080dd
--define_symbol gap_set_phy=0x000080f1
--define_symbol gap_set_random_device_address=0x0000810d
--define_symbol gap_start_ccm=0x00008171
--define_symbol gap_update_connection_parameters=0x000081a5
--define_symbol gatt_client_cancel_write=0x000086bd
--define_symbol gatt_client_discover_characteristic_descriptors=0x000086e3
--define_symbol gatt_client_discover_characteristics_for_handle_range_by_uuid128=0x00008723
--define_symbol gatt_client_discover_characteristics_for_handle_range_by_uuid16=0x00008773
--define_symbol gatt_client_discover_characteristics_for_service=0x000087c3
--define_symbol gatt_client_discover_primary_services=0x000087f9
--define_symbol gatt_client_discover_primary_services_by_uuid128=0x0000882b
--define_symbol gatt_client_discover_primary_services_by_uuid16=0x0000886f
--define_symbol gatt_client_execute_write=0x000088ab
--define_symbol gatt_client_find_included_services_for_service=0x000088d1
--define_symbol gatt_client_get_mtu=0x000088ff
--define_symbol gatt_client_is_ready=0x000089a9
--define_symbol gatt_client_listen_for_characteristic_value_updates=0x000089bf
--define_symbol gatt_client_prepare_write=0x000089e3
--define_symbol gatt_client_pts_suppress_mtu_exchange=0x00008a21
--define_symbol gatt_client_read_characteristic_descriptor_using_descriptor_handle=0x00008a2d
--define_symbol gatt_client_read_long_characteristic_descriptor_using_descriptor_handle=0x00008a57
--define_symbol gatt_client_read_long_characteristic_descriptor_using_descriptor_handle_with_offset=0x00008a5d
--define_symbol gatt_client_read_long_value_of_characteristic_using_value_handle=0x00008a8b
--define_symbol gatt_client_read_long_value_of_characteristic_using_value_handle_with_offset=0x00008a91
--define_symbol gatt_client_read_multiple_characteristic_values=0x00008abf
--define_symbol gatt_client_read_value_of_characteristic_using_value_handle=0x00008aef
--define_symbol gatt_client_read_value_of_characteristics_by_uuid128=0x00008b1d
--define_symbol gatt_client_read_value_of_characteristics_by_uuid16=0x00008b69
--define_symbol gatt_client_register_handler=0x00008bb5
--define_symbol gatt_client_reliable_write_long_value_of_characteristic=0x00008bc1
--define_symbol gatt_client_signed_write_without_response=0x00008ff1
--define_symbol gatt_client_write_characteristic_descriptor_using_descriptor_handle=0x000090b5
--define_symbol gatt_client_write_client_characteristic_configuration=0x000090ef
--define_symbol gatt_client_write_long_characteristic_descriptor_using_descriptor_handle=0x00009141
--define_symbol gatt_client_write_long_characteristic_descriptor_using_descriptor_handle_with_offset=0x00009151
--define_symbol gatt_client_write_long_value_of_characteristic=0x0000918d
--define_symbol gatt_client_write_long_value_of_characteristic_with_offset=0x0000919d
--define_symbol gatt_client_write_value_of_characteristic=0x000091d9
--define_symbol gatt_client_write_value_of_characteristic_without_response=0x0000920f
--define_symbol hci_add_event_handler=0x0000a6dd
--define_symbol hci_power_control=0x0000ae75
--define_symbol hci_register_acl_packet_handler=0x0000b029
--define_symbol kv_commit=0x0000b6b1
--define_symbol kv_get=0x0000b709
--define_symbol kv_init=0x0000b721
--define_symbol kv_put=0x0000b789
--define_symbol kv_remove=0x0000b801
--define_symbol kv_remove_all=0x0000b83d
--define_symbol kv_value_modified=0x0000b881
--define_symbol kv_visit=0x0000b885
--define_symbol l2cap_can_send_fixed_channel_packet_now=0x0000b945
--define_symbol l2cap_can_send_packet_now=0x0000b949
--define_symbol l2cap_create_channel=0x0000bb01
--define_symbol l2cap_disconnect=0x0000bc39
--define_symbol l2cap_get_remote_mtu_for_local_cid=0x0000bead
--define_symbol l2cap_init=0x0000c32d
--define_symbol l2cap_le_send_flow_control_credit=0x0000c375
--define_symbol l2cap_max_le_mtu=0x0000c5bd
--define_symbol l2cap_max_mtu=0x0000c5c1
--define_symbol l2cap_next_local_cid=0x0000c5c5
--define_symbol l2cap_next_sig_id=0x0000c5d5
--define_symbol l2cap_register_fixed_channel=0x0000c66d
--define_symbol l2cap_register_packet_handler=0x0000c689
--define_symbol l2cap_register_service=0x0000c695
--define_symbol l2cap_request_can_send_fix_channel_now_event=0x0000c77d
--define_symbol l2cap_request_can_send_now_event=0x0000c7a1
--define_symbol l2cap_request_connection_parameter_update=0x0000c7bb
--define_symbol l2cap_require_security_level_2_for_outgoing_sdp=0x0000c7ed
--define_symbol l2cap_send=0x0000cbb1
--define_symbol l2cap_send_connectionless=0x0000cc29
--define_symbol l2cap_send_connectionless3=0x0000ccb9
--define_symbol l2cap_send_echo_request=0x0000cd51
--define_symbol l2cap_send_signaling_le=0x0000cdb5
--define_symbol l2cap_unregister_service=0x0000ce0d
--define_symbol ll_ackable_packet_alloc=0x0000cfdb
--define_symbol ll_ackable_packet_get_status=0x0000d0c3
--define_symbol ll_ackable_packet_run=0x0000d135
--define_symbol ll_ackable_packet_set_tx_data=0x0000d1dd
--define_symbol ll_free=0x0000d1f7
--define_symbol ll_hint_on_ce_len=0x0000d201
--define_symbol ll_malloc=0x0000d23d
--define_symbol ll_query_timing_info=0x0000d375
--define_symbol ll_raw_packet_alloc=0x0000d3c1
--define_symbol ll_raw_packet_free=0x0000d475
--define_symbol ll_raw_packet_get_iq_samples=0x0000d49f
--define_symbol ll_raw_packet_get_rx_data=0x0000d539
--define_symbol ll_raw_packet_recv=0x0000d5d1
--define_symbol ll_raw_packet_send=0x0000d665
--define_symbol ll_raw_packet_set_param=0x0000d6d5
--define_symbol ll_raw_packet_set_rx_cte=0x0000d73b
--define_symbol ll_raw_packet_set_tx_cte=0x0000d7d1
--define_symbol ll_raw_packet_set_tx_data=0x0000d80f
--define_symbol ll_set_adv_coded_scheme=0x0000d9d9
--define_symbol ll_set_conn_coded_scheme=0x0000da09
--define_symbol ll_set_conn_latency=0x0000da35
--define_symbol ll_set_conn_tx_power=0x0000da65
--define_symbol ll_set_def_antenna=0x0000daad
--define_symbol ll_set_initiating_coded_scheme=0x0000dac9
--define_symbol nibble_for_char=0x0001e65d
--define_symbol platform_32k_rc_auto_tune=0x0001e6fd
--define_symbol platform_32k_rc_tune=0x0001e779
--define_symbol platform_calibrate_32k=0x0001e78d
--define_symbol platform_config=0x0001e791
--define_symbol platform_get_heap_status=0x0001e841
--define_symbol platform_get_us_time=0x0001e859
--define_symbol platform_get_version=0x0001e85d
--define_symbol platform_hrng=0x0001e865
--define_symbol platform_install_isr_stack=0x0001e86d
--define_symbol platform_patch_rf_init_data=0x0001e879
--define_symbol platform_printf=0x0001e885
--define_symbol platform_raise_assertion=0x0001e899
--define_symbol platform_rand=0x0001e8ad
--define_symbol platform_read_info=0x0001e8b1
--define_symbol platform_read_persistent_reg=0x0001e8cd
--define_symbol platform_reset=0x0001e8dd
--define_symbol platform_set_evt_callback=0x0001e911
--define_symbol platform_set_irq_callback=0x0001e925
--define_symbol platform_set_rf_clk_source=0x0001e95d
--define_symbol platform_set_rf_init_data=0x0001e969
--define_symbol platform_set_rf_power_mapping=0x0001e975
--define_symbol platform_shutdown=0x0001e981
--define_symbol platform_switch_app=0x0001e985
--define_symbol platform_trace_raw=0x0001e9b1
--define_symbol platform_write_persistent_reg=0x0001e9c5
--define_symbol printf_hexdump=0x0001e9d5
--define_symbol pvPortMalloc=0x0001f495
--define_symbol pvTaskIncrementMutexHeldCount=0x0001f57d
--define_symbol pvTimerGetTimerID=0x0001f595
--define_symbol pxPortInitialiseStack=0x0001f5c1
--define_symbol reverse_128=0x0001f7a1
--define_symbol reverse_24=0x0001f7a7
--define_symbol reverse_48=0x0001f7ad
--define_symbol reverse_56=0x0001f7b3
--define_symbol reverse_64=0x0001f7b9
--define_symbol reverse_bd_addr=0x0001f7bf
--define_symbol reverse_bytes=0x0001f7c5
--define_symbol sm_add_event_handler=0x0001fa65
--define_symbol sm_address_resolution_lookup=0x0001fb91
--define_symbol sm_authenticated=0x0001fc6b
--define_symbol sm_authorization_decline=0x0001fc79
--define_symbol sm_authorization_grant=0x0001fc99
--define_symbol sm_authorization_state=0x0001fcb9
--define_symbol sm_bonding_decline=0x0001fcd5
--define_symbol sm_config=0x000200ad
--define_symbol sm_encryption_key_size=0x000201b9
--define_symbol sm_just_works_confirm=0x00020989
--define_symbol sm_le_device_key=0x00020bd9
--define_symbol sm_passkey_input=0x00020c71
--define_symbol sm_private_random_address_generation_get=0x00020ffd
--define_symbol sm_private_random_address_generation_get_mode=0x00021005
--define_symbol sm_private_random_address_generation_set_mode=0x00021011
--define_symbol sm_private_random_address_generation_set_update_period=0x00021039
--define_symbol sm_register_oob_data_callback=0x00021071
--define_symbol sm_request_pairing=0x0002107d
--define_symbol sm_send_security_request=0x00021ab7
--define_symbol sm_set_accepted_stk_generation_methods=0x00021add
--define_symbol sm_set_authentication_requirements=0x00021ae9
--define_symbol sm_set_encryption_key_size_range=0x00021af5
--define_symbol sscanf_bd_addr=0x00021df1
--define_symbol sysSetPublicDeviceAddr=0x0002212d
--define_symbol uuid128_to_str=0x00022861
--define_symbol uuid_add_bluetooth_prefix=0x000228b9
--define_symbol uuid_has_bluetooth_prefix=0x000228d9
--define_symbol uxQueueMessagesWaiting=0x0002291d
--define_symbol uxQueueMessagesWaitingFromISR=0x00022945
--define_symbol uxQueueSpacesAvailable=0x00022961
--define_symbol uxTaskGetStackHighWaterMark=0x0002298d
--define_symbol vPortEnterCritical=0x00022a45
--define_symbol vPortExitCritical=0x00022a85
--define_symbol vPortFree=0x00022ab1
--define_symbol vPortSuppressTicksAndSleep=0x00022b45
--define_symbol vPortValidateInterruptPriority=0x00022c1d
--define_symbol vQueueDelete=0x00022c71
--define_symbol vQueueWaitForMessageRestricted=0x00022c9d
--define_symbol vTaskDelay=0x00022ce5
--define_symbol vTaskInternalSetTimeOutState=0x00022d31
--define_symbol vTaskMissedYield=0x00022d41
--define_symbol vTaskPlaceOnEventList=0x00022d4d
--define_symbol vTaskPlaceOnEventListRestricted=0x00022d85
--define_symbol vTaskPriorityDisinheritAfterTimeout=0x00022dc5
--define_symbol vTaskStartScheduler=0x00022e71
--define_symbol vTaskStepTick=0x00022f01
--define_symbol vTaskSuspendAll=0x00022f31
--define_symbol vTaskSwitchContext=0x00022f41
--define_symbol xPortStartScheduler=0x00022fe9
--define_symbol xQueueAddToSet=0x000230a5
--define_symbol xQueueCreateCountingSemaphore=0x000230c9
--define_symbol xQueueCreateCountingSemaphoreStatic=0x00023105
--define_symbol xQueueCreateMutex=0x00023149
--define_symbol xQueueCreateMutexStatic=0x0002315f
--define_symbol xQueueCreateSet=0x00023179
--define_symbol xQueueGenericCreate=0x00023181
--define_symbol xQueueGenericCreateStatic=0x000231cd
--define_symbol xQueueGenericReset=0x00023235
--define_symbol xQueueGenericSend=0x000232c1
--define_symbol xQueueGenericSendFromISR=0x0002342d
--define_symbol xQueueGiveFromISR=0x000234ed
--define_symbol xQueueGiveMutexRecursive=0x00023591
--define_symbol xQueueIsQueueEmptyFromISR=0x000235d1
--define_symbol xQueueIsQueueFullFromISR=0x000235f5
--define_symbol xQueuePeek=0x0002361d
--define_symbol xQueuePeekFromISR=0x00023745
--define_symbol xQueueReceive=0x000237b1
--define_symbol xQueueReceiveFromISR=0x000238dd
--define_symbol xQueueRemoveFromSet=0x00023971
--define_symbol xQueueSelectFromSet=0x00023993
--define_symbol xQueueSelectFromSetFromISR=0x000239a5
--define_symbol xQueueSemaphoreTake=0x000239b9
--define_symbol xQueueTakeMutexRecursive=0x00023b25
--define_symbol xTaskCheckForTimeOut=0x00023b69
--define_symbol xTaskCreate=0x00023bd9
--define_symbol xTaskCreateStatic=0x00023c35
--define_symbol xTaskGetCurrentTaskHandle=0x00023ca5
--define_symbol xTaskGetSchedulerState=0x00023cb1
--define_symbol xTaskGetTickCount=0x00023ccd
--define_symbol xTaskGetTickCountFromISR=0x00023cd9
--define_symbol xTaskIncrementTick=0x00023ce9
--define_symbol xTaskPriorityDisinherit=0x00023db5
--define_symbol xTaskPriorityInherit=0x00023e49
--define_symbol xTaskRemoveFromEventList=0x00023edd
--define_symbol xTaskResumeAll=0x00023f5d
--define_symbol xTimerCreate=0x00024025
--define_symbol xTimerCreateStatic=0x00024059
--define_symbol xTimerCreateTimerTask=0x00024091
--define_symbol xTimerGenericCommand=0x000240fd
--define_symbol xTimerGetExpiryTime=0x0002416d
