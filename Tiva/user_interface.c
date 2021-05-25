/********************************************** 
 * Univeristy of Southern Denmark
 * Embedded Programming (EMP)
 *
 * MODULENAME: user_interface
 * PROJECT: user_interface
 * DESCRIPTION: See module specification file (.h-file)
 * Change log:
 **********************************************
 * Date Ud Change
 * YYMMDD
 * ----------------
 * 10 May 2021 PO Module created.
 *
 ***********************************************/

/***************** Header *********************/
/***************** Include files **************/
#include "user_interface.h"
/***************** Defines ********************/
/***************** Constants ******************/
/***************** Variables ******************/
extern INT16U transmissions;
extern INT16U failed;

extern QueueHandle_t pid_debug_queue;
extern SemaphoreHandle_t debug_enabled;

static INT8U msg;

/***************** Functions ******************/

void ui_clear_screen()
{
    printf("%c[2J", ASCII_ESC); // Clear screen
    printf("%c[H", ASCII_ESC); // Reset cursor
}

void ui_task(void* pvParameters)
{
    ui_clear_screen();
    printf("Program start\n\r");

    UI_MENUS current_menu = MAIN;
    while (1)
    {
        switch (current_menu)
        {
        case MAIN:
            current_menu = ui_main_menu();
            break;
        case DEBUG:
            current_menu = ui_debug_menu();
            break;
        case SPI_TEST:
            current_menu = ui_spi_test();
            break;
        }
    }
}

UI_MENUS ui_main_menu()
{
    ui_clear_screen();
    printf("------------------------\n\r");
    printf("Select menu\n\r");
    printf("1. Debug view\n\r");
    printf("2. SPI test\n\r");
    printf("------------------------\n\r");

    while (1)
    {
        uart0_getchar(&msg, portMAX_DELAY);

        switch (msg)
        {
        case '1':
            return DEBUG;
        case '2':
            return SPI_TEST;
        default:
            msg++;
            printf("%c\n\rIncorrect input\n\r", msg);
            break;
        }
    }
}

UI_MENUS ui_debug_menu()
{
    configASSERT(xSemaphoreTake(debug_enabled, portMAX_DELAY));

    ui_clear_screen();

    printf("current_tick, time , raw_pos_pan , raw_pos_tilt , raw_pwm_pan , raw_pwm_tilt , pos_pan  , pos_tilt  , setpoint_pan , setpoint_tilt\n\r");

    PID_Control pid_debug;

    while (1)
    {
        // Obtain data
        xQueueReceive(pid_debug_queue, &pid_debug, portMAX_DELAY);

        printf("%-12i , %f , %-11i , %-12i , %-11i , %-12i , %-8f , %-8f , %-12f , %-13f \n\r",
               pid_debug.tick, pid_debug.tick * PID_SAMPLE_TIME_MS * 0.001f,
               pid_debug.raw_pos[PID_PAN], pid_debug.raw_pos[PID_TILT],
               pid_debug.raw_pwm[PID_PAN], pid_debug.raw_pwm[PID_TILT],
               pid_debug.pos[PID_PAN], pid_debug.pos[PID_TILT],
               pid_debug.setpoint[PID_PAN], pid_debug.setpoint[PID_TILT]);

        // For controlling the menu
        uart0_getchar(&msg, 0);
        if (msg)
        {
            switch (msg)
            {
            case 's': // Stop output until any key is pressed
                uart0_getchar(&msg, portMAX_DELAY);
                break;
            case 'q':
                xSemaphoreGive(debug_enabled);
                return MAIN;
            default:
                break;
            }
        }
    }
}

UI_MENUS ui_spi_test()
{
    transmissions = 0;
    failed = 0;
    INT16U protocolfailed = 0;
    INT16U protocoltransmissions = 0;

    ui_clear_screen();
    printf("------------------------\n\r");
    printf("Select test\n\r");
    printf("1. With protocol\n\r");
    printf("2. Without protocol\n\r");
    printf("------------------------\n\r");

    BOOLEAN t = 1;
    while (t)
    {
        uart0_getchar(&msg, portMAX_DELAY);

        switch (msg)
        {
        case '1':
        case '2':
            t = 0;
            break;
        default:
            break;
        }
    }

    if (msg == '2')
    {
        spi_transmit(0, SPI_TILT, SPI_TILT);

        for (INT16U i = 1; i <= 0x1FF; i++)
        {
            INT16U r = spi_transmit(i, SPI_TILT, SPI_TILT) >> 7;
            if (r != i - 1)
            {
                failed++;
            }
        }
    }
    else
    {
        INT16U i_t = 0;

        for (INT16U i = 1; i <= 0x1FF; i++)
        {
            spi_transmission(SPI_TILT, i, SPI_TILT);

            i_t = i;
            if (i_t & 0x0100)
            { // Value is negative
                i_t = 0xFF - i + 1;
                i_t |= 0xFF00;
            }

            INT16U r = spi_transmission(SPI_TILT, i, SPI_TILT);
            if (i_t != r)
            {
                protocolfailed++;
            }
            protocoltransmissions++;
        }
    }

    printf("Tranmissions           : %i\n\r", transmissions);
    printf("Failed                 : %i\n\r", failed);
    printf("Protocol fail          : %i\n\r", protocolfailed);
    printf("protocol transmissions : %i\n\r", protocoltransmissions);
    printf("Success rate           : %f\n\r", 1.0f - (failed / (transmissions * 1.0f)));
    printf("Success rate Proto     : %f\n\r", 1.0f - (protocolfailed / (protocoltransmissions * 1.0f)));
    printf("Press any key to return...");
    uart0_getchar(&msg, portMAX_DELAY);

    return MAIN;
}

UI_MENUS ui_waypoint_menu(char* buf)
{
    ui_clear_screen();
    printf("------------------------\n\r");
    printf("Waypoint menu\n\r");
    printf("1.Waypoint list \n\r");
    printf("2.Add waypoint: \n\r");
    printf("------------------------\n\r");

    char msg;
    while (1)
    {
        //xQueueReceive(uart0_rx_queue, &msg, portMAX_DELAY);
        switch (msg)
        {
        case '1':
            return DEBUG;
        default:
            printf("%c\n\rIncorrect input\n\r", msg);
            break;
        }
    }
}

/***************** End of module **************/
