--define_symbol att_dispatch_client_can_send_now=0x00005ae5
--define_symbol att_dispatch_client_request_can_send_now_event=0x00005aeb
--define_symbol att_dispatch_register_client=0x00005af1
--define_symbol att_dispatch_register_server=0x00005b05
--define_symbol att_dispatch_server_can_send_now=0x00005b19
--define_symbol att_dispatch_server_request_can_send_now_event=0x00005b1f
--define_symbol att_emit_general_event=0x00005bd1
--define_symbol att_server_can_send_packet_now=0x000062e5
--define_symbol att_server_deferred_read_response=0x000062e9
--define_symbol att_server_get_mtu=0x00006301
--define_symbol att_server_indicate=0x00006379
--define_symbol att_server_init=0x000063fd
--define_symbol att_server_notify=0x00006439
--define_symbol att_server_register_packet_handler=0x00006551
--define_symbol att_server_request_can_send_now_event=0x0000655d
--define_symbol att_set_db=0x00006579
--define_symbol att_set_read_callback=0x0000658d
--define_symbol att_set_write_callback=0x00006599
--define_symbol bd_addr_cmp=0x00006709
--define_symbol bd_addr_copy=0x0000670f
--define_symbol bd_addr_to_str=0x00006719
--define_symbol big_endian_read_16=0x00006751
--define_symbol big_endian_read_32=0x00006759
--define_symbol big_endian_store_16=0x0000676d
--define_symbol big_endian_store_32=0x00006779
--define_symbol btstack_config=0x000068cd
--define_symbol btstack_memory_pool_create=0x00006a0b
--define_symbol btstack_memory_pool_free=0x00006a35
--define_symbol btstack_memory_pool_get=0x00006a95
--define_symbol btstack_push_user_msg=0x00006ab1
--define_symbol char_for_nibble=0x00006d79
--define_symbol eTaskConfirmSleepModeStatus=0x00007025
--define_symbol gap_add_dev_to_periodic_list=0x000076b5
--define_symbol gap_add_whitelist=0x000076cd
--define_symbol gap_aes_encrypt=0x000076e1
--define_symbol gap_clear_white_lists=0x00007725
--define_symbol gap_clr_adv_set=0x00007735
--define_symbol gap_clr_periodic_adv_list=0x00007745
--define_symbol gap_create_connection_cancel=0x00007755
--define_symbol gap_default_periodic_adv_sync_transfer_param=0x00007765
--define_symbol gap_disconnect=0x0000777d
--define_symbol gap_disconnect_all=0x000077a9
--define_symbol gap_ext_create_connection=0x000077e9
--define_symbol gap_get_connection_parameter_range=0x000078d9
--define_symbol gap_le_read_channel_map=0x00007915
--define_symbol gap_periodic_adv_create_sync=0x00007989
--define_symbol gap_periodic_adv_create_sync_cancel=0x000079ad
--define_symbol gap_periodic_adv_set_info_transfer=0x000079bd
--define_symbol gap_periodic_adv_sync_transfer=0x000079d5
--define_symbol gap_periodic_adv_sync_transfer_param=0x000079ed
--define_symbol gap_periodic_adv_term_sync=0x00007a09
--define_symbol gap_read_antenna_info=0x00007a9d
--define_symbol gap_read_periodic_adv_list_size=0x00007aad
--define_symbol gap_read_phy=0x00007abd
--define_symbol gap_read_remote_info=0x00007ad1
--define_symbol gap_read_remote_used_features=0x00007ae5
--define_symbol gap_read_rssi=0x00007af9
--define_symbol gap_remove_whitelist=0x00007b0d
--define_symbol gap_rmv_adv_set=0x00007b91
--define_symbol gap_rmv_dev_from_periodic_list=0x00007ba5
--define_symbol gap_rx_test_v2=0x00007bbd
--define_symbol gap_rx_test_v3=0x00007bd5
--define_symbol gap_set_adv_set_random_addr=0x00007c25
--define_symbol gap_set_connection_cte_request_enable=0x00007c71
--define_symbol gap_set_connection_cte_response_enable=0x00007c8d
--define_symbol gap_set_connection_cte_rx_param=0x00007ca1
--define_symbol gap_set_connection_cte_tx_param=0x00007cfd
--define_symbol gap_set_connection_parameter_range=0x00007d51
--define_symbol gap_set_connectionless_cte_tx_enable=0x00007d69
--define_symbol gap_set_connectionless_cte_tx_param=0x00007d7d
--define_symbol gap_set_connectionless_iq_sampling_enable=0x00007ddd
--define_symbol gap_set_data_length=0x00007e41
--define_symbol gap_set_def_phy=0x00007e5d
--define_symbol gap_set_ext_adv_data=0x00007e75
--define_symbol gap_set_ext_adv_enable=0x00007e8d
--define_symbol gap_set_ext_adv_para=0x00007f09
--define_symbol gap_set_ext_scan_enable=0x00007fe9
--define_symbol gap_set_ext_scan_para=0x00008001
--define_symbol gap_set_ext_scan_response_data=0x000080a9
--define_symbol gap_set_host_channel_classification=0x000080c1
--define_symbol gap_set_periodic_adv_data=0x000080d5
--define_symbol gap_set_periodic_adv_enable=0x00008149
--define_symbol gap_set_periodic_adv_para=0x0000815d
--define_symbol gap_set_periodic_adv_rx_enable=0x00008175
--define_symbol gap_set_phy=0x00008189
--define_symbol gap_set_random_device_address=0x000081a5
--define_symbol gap_start_ccm=0x000081d5
--define_symbol gap_test_end=0x00008209
--define_symbol gap_tx_test_v2=0x00008219
--define_symbol gap_tx_test_v4=0x00008231
--define_symbol gap_update_connection_parameters=0x00008259
--define_symbol gap_vendor_tx_continuous_wave=0x0000827d
--define_symbol gatt_client_cancel_write=0x000087a5
--define_symbol gatt_client_discover_characteristic_descriptors=0x000087cb
--define_symbol gatt_client_discover_characteristics_for_handle_range_by_uuid128=0x0000880b
--define_symbol gatt_client_discover_characteristics_for_handle_range_by_uuid16=0x0000885b
--define_symbol gatt_client_discover_characteristics_for_service=0x000088ab
--define_symbol gatt_client_discover_primary_services=0x000088e1
--define_symbol gatt_client_discover_primary_services_by_uuid128=0x00008913
--define_symbol gatt_client_discover_primary_services_by_uuid16=0x00008957
--define_symbol gatt_client_execute_write=0x00008993
--define_symbol gatt_client_find_included_services_for_service=0x000089b9
--define_symbol gatt_client_get_mtu=0x000089e7
--define_symbol gatt_client_is_ready=0x00008a89
--define_symbol gatt_client_listen_for_characteristic_value_updates=0x00008a9f
--define_symbol gatt_client_prepare_write=0x00008ac1
--define_symbol gatt_client_read_characteristic_descriptor_using_descriptor_handle=0x00008afd
--define_symbol gatt_client_read_long_characteristic_descriptor_using_descriptor_handle=0x00008b27
--define_symbol gatt_client_read_long_characteristic_descriptor_using_descriptor_handle_with_offset=0x00008b2d
--define_symbol gatt_client_read_long_value_of_characteristic_using_value_handle=0x00008b5b
--define_symbol gatt_client_read_long_value_of_characteristic_using_value_handle_with_offset=0x00008b61
--define_symbol gatt_client_read_multiple_characteristic_values=0x00008b8f
--define_symbol gatt_client_read_value_of_characteristic_using_value_handle=0x00008bbf
--define_symbol gatt_client_read_value_of_characteristics_by_uuid128=0x00008bed
--define_symbol gatt_client_read_value_of_characteristics_by_uuid16=0x00008c39
--define_symbol gatt_client_register_handler=0x00008c85
--define_symbol gatt_client_reliable_write_long_value_of_characteristic=0x00008c91
--define_symbol gatt_client_signed_write_without_response=0x000090c1
--define_symbol gatt_client_write_characteristic_descriptor_using_descriptor_handle=0x00009185
--define_symbol gatt_client_write_client_characteristic_configuration=0x000091bf
--define_symbol gatt_client_write_long_characteristic_descriptor_using_descriptor_handle=0x00009211
--define_symbol gatt_client_write_long_characteristic_descriptor_using_descriptor_handle_with_offset=0x00009221
--define_symbol gatt_client_write_long_value_of_characteristic=0x0000925d
--define_symbol gatt_client_write_long_value_of_characteristic_with_offset=0x0000926d
--define_symbol gatt_client_write_value_of_characteristic=0x000092a9
--define_symbol gatt_client_write_value_of_characteristic_without_response=0x000092df
--define_symbol hci_add_event_handler=0x0000a821
--define_symbol hci_power_control=0x0000b019
--define_symbol hci_register_acl_packet_handler=0x0000b1cd
--define_symbol kv_commit=0x0000b741
--define_symbol kv_get=0x0000b799
--define_symbol kv_init=0x0000b7b1
--define_symbol kv_put=0x0000b819
--define_symbol kv_remove=0x0000b891
--define_symbol kv_remove_all=0x0000b8cd
--define_symbol kv_value_modified=0x0000b911
--define_symbol kv_visit=0x0000b915
--define_symbol l2cap_can_send_fixed_channel_packet_now=0x0000b9d5
--define_symbol l2cap_can_send_packet_now=0x0000b9d9
--define_symbol l2cap_create_channel=0x0000bb91
--define_symbol l2cap_disconnect=0x0000bcc9
--define_symbol l2cap_get_remote_mtu_for_local_cid=0x0000bf3d
--define_symbol l2cap_init=0x0000c335
--define_symbol l2cap_le_send_flow_control_credit=0x0000c375
--define_symbol l2cap_max_le_mtu=0x0000c5f9
--define_symbol l2cap_max_mtu=0x0000c5fd
--define_symbol l2cap_next_local_cid=0x0000c601
--define_symbol l2cap_next_sig_id=0x0000c611
--define_symbol l2cap_register_fixed_channel=0x0000c6a9
--define_symbol l2cap_register_packet_handler=0x0000c6c5
--define_symbol l2cap_register_service=0x0000c6d1
--define_symbol l2cap_request_can_send_fix_channel_now_event=0x0000c7b5
--define_symbol l2cap_request_can_send_now_event=0x0000c7d9
--define_symbol l2cap_request_connection_parameter_update=0x0000c7f3
--define_symbol l2cap_send=0x0000cb95
--define_symbol l2cap_send_connectionless=0x0000cc0d
--define_symbol l2cap_send_connectionless3=0x0000cc9d
--define_symbol l2cap_send_echo_request=0x0000cd35
--define_symbol l2cap_send_signaling_le=0x0000cd99
--define_symbol l2cap_unregister_service=0x0000cdf1
--define_symbol le_device_db_add=0x0000ce49
--define_symbol le_device_db_find=0x0000cf1d
--define_symbol le_device_db_from_key=0x0000cf49
--define_symbol le_device_db_iter_cur=0x0000cf51
--define_symbol le_device_db_iter_cur_key=0x0000cf55
--define_symbol le_device_db_iter_init=0x0000cf59
--define_symbol le_device_db_iter_next=0x0000cf61
--define_symbol le_device_db_remove_key=0x0000cf87
--define_symbol ll_ackable_packet_alloc=0x0000cfb3
--define_symbol ll_ackable_packet_get_status=0x0000d0bb
--define_symbol ll_ackable_packet_run=0x0000d12d
--define_symbol ll_ackable_packet_set_tx_data=0x0000d1d5
--define_symbol ll_attach_cte_to_adv_set=0x0000d1f1
--define_symbol ll_free=0x0000d389
--define_symbol ll_hint_on_ce_len=0x0000d395
--define_symbol ll_legacy_adv_set_interval=0x0000d3cd
--define_symbol ll_malloc=0x0000d3dd
--define_symbol ll_query_timing_info=0x0000d515
--define_symbol ll_raw_packet_alloc=0x0000d561
--define_symbol ll_raw_packet_free=0x0000d635
--define_symbol ll_raw_packet_get_bare_rx_data=0x0000d65f
--define_symbol ll_raw_packet_get_iq_samples=0x0000d725
--define_symbol ll_raw_packet_get_rx_data=0x0000d7bf
--define_symbol ll_raw_packet_recv=0x0000d855
--define_symbol ll_raw_packet_send=0x0000d911
--define_symbol ll_raw_packet_set_bare_data=0x0000d9f9
--define_symbol ll_raw_packet_set_bare_mode=0x0000da37
--define_symbol ll_raw_packet_set_param=0x0000db3d
--define_symbol ll_raw_packet_set_rx_cte=0x0000db9b
--define_symbol ll_raw_packet_set_tx_cte=0x0000dc31
--define_symbol ll_raw_packet_set_tx_data=0x0000dc6f
--define_symbol ll_scan_set_fixed_channel=0x0000dd25
--define_symbol ll_scanner_enable_iq_sampling=0x0000dd31
--define_symbol ll_set_adv_access_address=0x0000dee1
--define_symbol ll_set_adv_coded_scheme=0x0000deed
--define_symbol ll_set_conn_coded_scheme=0x0000df1d
--define_symbol ll_set_conn_interval_unit=0x0000df49
--define_symbol ll_set_conn_latency=0x0000df55
--define_symbol ll_set_conn_tx_power=0x0000df85
--define_symbol ll_set_def_antenna=0x0000dfcd
--define_symbol ll_set_initiating_coded_scheme=0x0000dfe9
--define_symbol ll_set_max_conn_number=0x0000dff5
--define_symbol nibble_for_char=0x0001ef09
--define_symbol platform_32k_rc_auto_tune=0x0001efa5
--define_symbol platform_32k_rc_tune=0x0001f021
--define_symbol platform_calibrate_32k=0x0001f035
--define_symbol platform_config=0x0001f039
--define_symbol platform_get_heap_status=0x0001f0f9
--define_symbol platform_get_task_handle=0x0001f111
--define_symbol platform_get_us_time=0x0001f131
--define_symbol platform_get_version=0x0001f135
--define_symbol platform_hrng=0x0001f13d
--define_symbol platform_install_isr_stack=0x0001f145
--define_symbol platform_patch_rf_init_data=0x0001f151
--define_symbol platform_printf=0x0001f15d
--define_symbol platform_raise_assertion=0x0001f171
--define_symbol platform_rand=0x0001f185
--define_symbol platform_read_info=0x0001f189
--define_symbol platform_read_persistent_reg=0x0001f1a5
--define_symbol platform_reset=0x0001f1b5
--define_symbol platform_set_evt_callback=0x0001f1e9
--define_symbol platform_set_irq_callback=0x0001f1fd
--define_symbol platform_set_rf_clk_source=0x0001f235
--define_symbol platform_set_rf_init_data=0x0001f241
--define_symbol platform_set_rf_power_mapping=0x0001f24d
--define_symbol platform_set_timer=0x0001f259
--define_symbol platform_shutdown=0x0001f25d
--define_symbol platform_switch_app=0x0001f261
--define_symbol platform_trace_raw=0x0001f28d
--define_symbol platform_write_persistent_reg=0x0001f2a5
--define_symbol printf_hexdump=0x0001f2b5
--define_symbol pvPortMalloc=0x0001fdbd
--define_symbol pvTaskIncrementMutexHeldCount=0x0001fea5
--define_symbol pvTimerGetTimerID=0x0001febd
--define_symbol pxPortInitialiseStack=0x0001fee9
--define_symbol reverse_128=0x000200c9
--define_symbol reverse_24=0x000200cf
--define_symbol reverse_48=0x000200d5
--define_symbol reverse_56=0x000200db
--define_symbol reverse_64=0x000200e1
--define_symbol reverse_bd_addr=0x000200e7
--define_symbol reverse_bytes=0x000200ed
--define_symbol sm_add_event_handler=0x000203cd
--define_symbol sm_address_resolution_lookup=0x00020525
--define_symbol sm_authenticated=0x00020871
--define_symbol sm_authorization_decline=0x0002087f
--define_symbol sm_authorization_grant=0x0002089f
--define_symbol sm_authorization_state=0x000208bf
--define_symbol sm_bonding_decline=0x000208d9
--define_symbol sm_config=0x00020cf9
--define_symbol sm_config_conn=0x00020d11
--define_symbol sm_encryption_key_size=0x00020ec7
--define_symbol sm_just_works_confirm=0x00021401
--define_symbol sm_le_device_key=0x0002173d
--define_symbol sm_passkey_input=0x000217d3
--define_symbol sm_private_random_address_generation_get=0x00021b81
--define_symbol sm_private_random_address_generation_get_mode=0x00021b89
--define_symbol sm_private_random_address_generation_set_mode=0x00021b95
--define_symbol sm_private_random_address_generation_set_update_period=0x00021bbd
--define_symbol sm_register_oob_data_callback=0x00021cf9
--define_symbol sm_request_pairing=0x00021d05
--define_symbol sm_send_security_request=0x0002270b
--define_symbol sm_set_accepted_stk_generation_methods=0x00022731
--define_symbol sm_set_authentication_requirements=0x0002273d
--define_symbol sm_set_encryption_key_size_range=0x00022749
--define_symbol sscanf_bd_addr=0x00022b0d
--define_symbol sysSetPublicDeviceAddr=0x00022e75
--define_symbol uuid128_to_str=0x000235fd
--define_symbol uuid_add_bluetooth_prefix=0x00023655
--define_symbol uuid_has_bluetooth_prefix=0x00023675
--define_symbol uxListRemove=0x00023691
--define_symbol uxQueueMessagesWaiting=0x000236b9
--define_symbol uxQueueMessagesWaitingFromISR=0x000236e1
--define_symbol uxQueueSpacesAvailable=0x000236fd
--define_symbol uxTaskGetStackHighWaterMark=0x00023729
--define_symbol uxTaskPriorityGet=0x00023749
--define_symbol uxTaskPriorityGetFromISR=0x00023765
--define_symbol vListInitialise=0x00023817
--define_symbol vListInitialiseItem=0x0002382d
--define_symbol vListInsert=0x00023833
--define_symbol vListInsertEnd=0x00023863
--define_symbol vPortEnterCritical=0x0002387d
--define_symbol vPortExitCritical=0x000238c1
--define_symbol vPortFree=0x000238f1
--define_symbol vPortSuppressTicksAndSleep=0x00023985
--define_symbol vPortValidateInterruptPriority=0x00023aa5
--define_symbol vQueueDelete=0x00023afd
--define_symbol vQueueWaitForMessageRestricted=0x00023b29
--define_symbol vTaskDelay=0x00023b71
--define_symbol vTaskInternalSetTimeOutState=0x00023bbd
--define_symbol vTaskMissedYield=0x00023bcd
--define_symbol vTaskPlaceOnEventList=0x00023bd9
--define_symbol vTaskPlaceOnEventListRestricted=0x00023c11
--define_symbol vTaskPriorityDisinheritAfterTimeout=0x00023c51
--define_symbol vTaskPrioritySet=0x00023cfd
--define_symbol vTaskResume=0x00023dc5
--define_symbol vTaskStartScheduler=0x00023e49
--define_symbol vTaskStepTick=0x00023ed9
--define_symbol vTaskSuspend=0x00023f09
--define_symbol vTaskSuspendAll=0x00023fc5
--define_symbol vTaskSwitchContext=0x00023fd5
--define_symbol xPortStartScheduler=0x0002407d
--define_symbol xQueueAddToSet=0x00024141
--define_symbol xQueueCreateCountingSemaphore=0x00024165
--define_symbol xQueueCreateCountingSemaphoreStatic=0x000241a1
--define_symbol xQueueCreateMutex=0x000241e5
--define_symbol xQueueCreateMutexStatic=0x000241fb
--define_symbol xQueueCreateSet=0x00024215
--define_symbol xQueueGenericCreate=0x0002421d
--define_symbol xQueueGenericCreateStatic=0x00024269
--define_symbol xQueueGenericReset=0x000242d1
--define_symbol xQueueGenericSend=0x0002435d
--define_symbol xQueueGenericSendFromISR=0x000244c9
--define_symbol xQueueGiveFromISR=0x00024589
--define_symbol xQueueGiveMutexRecursive=0x0002462d
--define_symbol xQueueIsQueueEmptyFromISR=0x0002466d
--define_symbol xQueueIsQueueFullFromISR=0x00024691
--define_symbol xQueuePeek=0x000246b9
--define_symbol xQueuePeekFromISR=0x000247e1
--define_symbol xQueueReceive=0x0002484d
--define_symbol xQueueReceiveFromISR=0x00024979
--define_symbol xQueueRemoveFromSet=0x00024a0d
--define_symbol xQueueSelectFromSet=0x00024a2f
--define_symbol xQueueSelectFromSetFromISR=0x00024a41
--define_symbol xQueueSemaphoreTake=0x00024a55
--define_symbol xQueueTakeMutexRecursive=0x00024bc1
--define_symbol xTaskCheckForTimeOut=0x00024c05
--define_symbol xTaskCreate=0x00024c75
--define_symbol xTaskCreateStatic=0x00024cd1
--define_symbol xTaskGetCurrentTaskHandle=0x00024d41
--define_symbol xTaskGetSchedulerState=0x00024d4d
--define_symbol xTaskGetTickCount=0x00024d69
--define_symbol xTaskGetTickCountFromISR=0x00024d75
--define_symbol xTaskIncrementTick=0x00024d85
--define_symbol xTaskPriorityDisinherit=0x00024e51
--define_symbol xTaskPriorityInherit=0x00024ee5
--define_symbol xTaskRemoveFromEventList=0x00024f79
--define_symbol xTaskResumeAll=0x00024ff9
--define_symbol xTaskResumeFromISR=0x000250c1
--define_symbol xTimerCreate=0x0002514d
--define_symbol xTimerCreateStatic=0x00025181
--define_symbol xTimerCreateTimerTask=0x000251b9
--define_symbol xTimerGenericCommand=0x00025225
--define_symbol xTimerGetExpiryTime=0x00025295
--define_symbol xTimerGetTimerDaemonTaskHandle=0x000252b5
