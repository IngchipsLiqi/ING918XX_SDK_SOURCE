#define OPTIONAL_RF_CLK

#include "profile.h"
#include "ingsoc.h"
#include "platform_api.h"
#include <stdio.h>
#include "power_ctrl.h"
#include "key_detector.h"
#include "trace.h"

#define PRINT_PORT    APB_UART0

uint32_t cb_putc(char *c, void *dummy)
{
    while (apUART_Check_TXFIFO_FULL(PRINT_PORT) == 1);
    UART_SendData(PRINT_PORT, (uint8_t)*c);
    return 0;
}

int fputc(int ch, FILE *f)
{
    cb_putc((char *)&ch, NULL);
    return ch;
}

void config_uart(uint32_t freq, uint32_t baud)
{
    UART_sStateStruct config;

    config.word_length       = UART_WLEN_8_BITS;
    config.parity            = UART_PARITY_NOT_CHECK;
    config.fifo_enable       = 1;
    config.two_stop_bits     = 0;
    config.receive_en        = 1;
    config.transmit_en       = 1;
    config.UART_en           = 1;
    config.cts_en            = 0;
    config.rts_en            = 0;
    config.rxfifo_waterlevel = 1;
    config.txfifo_waterlevel = 1;
    config.ClockFrequency    = freq;
    config.BaudRate          = baud;

    apUART_Initialize(PRINT_PORT, &config, 0);
}

uint32_t gpio_isr(void *user_data)
{
    GIO_ClearAllIntStatus();
    key_detector_start_on_demand();
    return 0;
}

#define PIN_BUZZER 8
#define PIN_WAKEUP 0        // For ING916xx: GPIO 0 belongs to Group A

void setup_peripherals(void)
{
    SYSCTRL_SetClkGateMulti((1 << SYSCTRL_ClkGate_APB_UART0));
    SYSCTRL_ClearClkGateMulti(  (1 << SYSCTRL_ClkGate_APB_GPIO0)
#ifdef USE_WATCHDOG
                              | (1 << SYSCTRL_ClkGate_APB_WDT)
#endif

                              | (1 << SYSCTRL_ClkGate_APB_PinCtrl));

    PINCTRL_SetPadMux(KEY_PIN, IO_SOURCE_GPIO);
    GIO_SetDirection(KEY_PIN, GIO_DIR_INPUT);
    PINCTRL_Pull(KEY_PIN, PINCTRL_PULL_DOWN);
#if (INGCHIPS_FAMILY == INGCHIPS_FAMILY_918)
    config_uart(OSC_CLK_FREQ, 115200);
#elif (INGCHIPS_FAMILY == INGCHIPS_FAMILY_916)
    config_uart(SYSCTRL_GetClk(SYSCTRL_ITEM_APB_UART0), 115200);

    // GPIO 0 (also connected to KEY) emulating EXT_INT as in ING918XX
    GIO_EnableRetentionGroupA(0);
    PINCTRL_SetPadMux(PIN_WAKEUP, IO_SOURCE_GPIO);
    GIO_SetDirection(PIN_WAKEUP, GIO_DIR_INPUT);
    PINCTRL_Pull(PIN_WAKEUP, PINCTRL_PULL_DOWN);
#else
    #error unknown or unsupported chip family
#endif
    GIO_ConfigIntSource(KEY_PIN, GIO_INT_EN_LOGIC_HIGH_OR_RISING_EDGE, GIO_INT_EDGE);
    platform_set_irq_callback(PLATFORM_CB_IRQ_GPIO, gpio_isr, NULL);

#ifdef LISTEN_TO_POWER_SAVING
    PINCTRL_SetPadMux(PIN_BUZZER, IO_SOURCE_GPIO);
    GIO_SetDirection(PIN_BUZZER, GIO_DIR_OUTPUT);
    GIO_WriteValue(PIN_BUZZER, 1);
#endif

#ifdef USE_WATCHDOG
    // Watchdog will timeout after 10sec
    TMR_WatchDogEnable(TMR_CLK_FREQ * 5);
#endif
}

uint32_t on_deep_sleep_wakeup(void *casted_reason, void *user_data)
{
#if (INGCHIPS_FAMILY == INGCHIPS_FAMILY_918)
#ifdef USE_POWER_LIB
    power_ctrl_deep_sleep_wakeup();
#endif
    setup_peripherals();
#elif (INGCHIPS_FAMILY == INGCHIPS_FAMILY_916)
    platform_wakeup_call_reason_t reason = (platform_wakeup_call_reason_t)(uintptr_t)casted_reason;
    if (PLATFORM_WAKEUP_REASON_NORMAL == reason)
        setup_peripherals();
#endif

    key_detector_start_on_demand();
    return 1;
}

uint32_t query_deep_sleep_allowed(void *dummy, void *user_data)
{
    (void)(dummy);
    (void)(user_data);
    if (IS_DEBUGGER_ATTACHED())
        return 0;
#if (INGCHIPS_FAMILY == INGCHIPS_FAMILY_918)
#ifdef USE_POWER_LIB
    power_ctrl_before_deep_sleep();
#endif
#elif (INGCHIPS_FAMILY == INGCHIPS_FAMILY_916)
    GIO_EnableRetentionGroupA(1);
#endif
    return 1;
}

// To calibration Tx power preciously, we can use a "fake" power mapping table,
// then measure Tx power using testers.
const int16_t power_mapping[] = {
    0, 100, 200, 300, 400, 500, 600, 700, 800, 900, 1000, 1100, 1200,
    1300, 1400, 1500, 1600, 1700, 1800, 1900, 2000, 2100, 2200, 2300,
    2400, 2500, 2600, 2700, 2800, 2900, 3000, 3100, 3200, 3300, 3400,
    3500, 3600, 3700, 3800, 3900, 4000, 4100, 4200, 4300, 4400, 4500,
    4600, 4700, 4800, 4900, 5000, 5100, 5200, 5300, 5400, 5500, 5600,
    5700, 5800, 5900, 6000, 6100, 6200, 6300};

extern void on_key_event(key_press_event_t evt);

trace_rtt_t trace_ctx = {0};

int app_main()
{
#if (INGCHIPS_FAMILY == INGCHIPS_FAMILY_918)
    #ifdef USE_POWER_LIB
        power_ctrl_init();
    #endif
#elif (INGCHIPS_FAMILY == INGCHIPS_FAMILY_916)
    // configure it only once
    GIO_EnableDeepSleepWakeupSource(PIN_WAKEUP, 1, 1, PINCTRL_PULL_DOWN);
    #ifdef USE_SLOW_CLK_RC
        #if (USE_SLOW_CLK_RC == 8)
            SYSCTRL_EnableSlowRC(1, SYSCTRL_SLOW_RC_8M);
        #elif (USE_SLOW_CLK_RC == 16)
            SYSCTRL_EnableSlowRC(1, SYSCTRL_SLOW_RC_16M);
        #elif (USE_SLOW_CLK_RC == 24)
            SYSCTRL_EnableSlowRC(1, SYSCTRL_SLOW_RC_24M);
        #elif (USE_SLOW_CLK_RC == 32)
            SYSCTRL_EnableSlowRC(1, SYSCTRL_SLOW_RC_32M);
        #elif (USE_SLOW_CLK_RC == 48)
            SYSCTRL_EnableSlowRC(1, SYSCTRL_SLOW_RC_48M);
        #else
            SYSCTRL_EnableSlowRC(1, SYSCTRL_SLOW_RC_64M);
        #endif
        SYSCTRL_AutoTuneSlowRC();
        SYSCTRL_SelectFlashClk(SYSCTRL_CLK_SLOW);
        SYSCTRL_SelectHClk(SYSCTRL_CLK_SLOW);
        SYSCTRL_EnablePLL(0);
        SYSCTRL_SelectSlowClk(SYSCTRL_SLOW_RC_CLK);
    #else
        SYSCTRL_EnableSlowRC(0, SYSCTRL_SLOW_RC_24M);
    #endif
#endif

#ifdef USE_OSC32K
    platform_config(PLATFORM_CFG_OSC32K_EN, PLATFORM_CFG_ENABLE);
#if (INGCHIPS_FAMILY == INGCHIPS_FAMILY_918)
    while (platform_read_info(PLATFORM_INFO_OSC32K_STATUS) == 0) ;
#endif
    platform_config(PLATFORM_CFG_32K_CLK, PLATFORM_32K_OSC);
    {
        int i;
        for (i = 0; i < 100 * 48; i++) __NOP();
    }
    platform_config(PLATFORM_CFG_RC32K_EN, PLATFORM_CFG_DISABLE);
#else
    platform_config(PLATFORM_CFG_OSC32K_EN, PLATFORM_CFG_DISABLE);
    platform_config(PLATFORM_CFG_32K_CLK_ACC, 500);
#endif

    platform_set_rf_power_mapping(power_mapping);

    // setup handlers
    platform_set_evt_callback(PLATFORM_CB_EVT_PUTC, (f_platform_evt_cb)cb_putc, NULL);
    platform_set_evt_callback(PLATFORM_CB_EVT_ON_DEEP_SLEEP_WAKEUP, on_deep_sleep_wakeup, NULL);
    platform_set_evt_callback(PLATFORM_CB_EVT_QUERY_DEEP_SLEEP_ALLOWED, query_deep_sleep_allowed, NULL);
    platform_set_evt_callback(PLATFORM_CB_EVT_PROFILE_INIT, setup_profile, NULL);

    key_detect_init(on_key_event);
    setup_peripherals();

    platform_config(PLATFORM_CFG_POWER_SAVING, PLATFORM_CFG_ENABLE);

    trace_rtt_init(&trace_ctx);
    platform_set_evt_callback(PLATFORM_CB_EVT_TRACE, (f_platform_evt_cb)cb_trace_rtt, &trace_ctx);
    platform_config(PLATFORM_CFG_TRACE_MASK, 0x0);

    return 0;
}

const char welcome_msg[] = "Using Built-in FreeRTOS";
