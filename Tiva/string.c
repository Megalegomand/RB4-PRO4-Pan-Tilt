/*
 * string.c
 *
 *  Created on: 26/12/2011
 *      Author: Morten
 */

#include "string.h"

void put_str(char *str)
{
    while (*str)
    {
        uart0_sendchar(*str++);
    }
}

void put_chars(char *str, int len)
{
    while (len--)
        uart0_sendchar(*str++);
}

void put_dec(long val, int sign, int size, char filler)
{
    long weight = 1;
    long digit;
    int i;

    if (sign == NEGATIVE)
    {
        size--;
        if (filler == '0')
        {
            uart0_sendchar('-');
            sign = POSITIVE;
        }
    }

    if (size == 0)
    {
        while (weight < val)
        {
            weight *= 10;
            size++;
        }
        if (size == 0)
            size = 1;
        else
            weight /= 10;
    }
    else
    {
        i = size - 1;
        while (i-- > 0)
            weight *= 10;
    }

    while (size > 0)
    {
        digit = val / weight;
        if (digit == 0)
            uart0_sendchar(filler);
        else
        {
            if (sign == NEGATIVE)
            {
                uart0_sendchar('-');
                sign = POSITIVE;
            }
            uart0_sendchar(digit + '0');
            filler = '0';
        }
        val %= weight;
        weight /= 10;
        size--;
    }
}

void put_hex(long val, int size)
{
    unsigned long weight = 1;
    long digit;
    int i;

    if (size == 0)
        size = sizeof(long) * 2;

    i = size - 1;
    while (i-- > 0)
        weight *= 16;

    while (size > 0)
    {
        digit = val / weight;
        if (digit < 10)
            uart0_sendchar(digit + '0');
        else
            uart0_sendchar(digit + '7');
        val %= weight;
        weight /= 16;
        size--;
    }
}

const void uprint(const char *str, va_list va_arg_p)
{
    void *p_param;
    long val;
    int i, done, size, len, sign, adjust;
    char *sub_str, pre_char;

    while (*str)
    {
        // Find the first non-% character, or the end of the string.
        i = 0;
        while ((str[i] != '%') && (str[i] != '\0'))
            i++;

        uart0_sendstring(str, i);

        // Skip the portion of the string that was written.
        str += i;

        // See if the next character is a %.
        if (*str == '%')
        {
            size = 0;
            done = 0;
            pre_char = ' ';
            i = 0;

            while (!done)
            {
                str++;
                switch (*str)
                {
                case '%':
                    uart0_sendchar('%');
                    done = 1;
                    break;

                case '0':
                case '1':
                case '2':
                case '3':
                case '4':
                case '5':
                case '6':
                case '7':
                case '8':
                case '9':
                    if ((*str == '0') && (i == 0))
                        pre_char = '0';

                    size *= 10;
                    size += *str - '0';
                    i++;
                    break;

                case '-':
                    if (i == 0)
                        adjust = LEFT;
                    i++;
                    break;

                case 'c':
                    val = va_arg(va_arg_p, unsigned long);
                    uart0_sendchar((char) val);
                    done = 1;
                    break;

                case 'd':
                    val = va_arg(va_arg_p, unsigned long);

                    if ((long) val < 0)
                    {
                        val = -(long) val;
                        sign = NEGATIVE;
                    }
                    else
                        sign = POSITIVE;
                    put_dec(val, sign, size, pre_char);
                    done = 1;
                    break;

                case 'u':
                    val = va_arg(va_arg_p, unsigned long);
                    put_dec(val, POSITIVE, size, pre_char);
                    done = 1;
                    break;

                case 'x':
                case 'X':
                case 'p':
                    val = va_arg(va_arg_p, unsigned long);
                    put_hex(val, size);
                    done = 1;
                    break;

                case 's':
                    sub_str = va_arg(va_arg_p, char *);
                    len = 0;
                    while (sub_str[len])
                        len++;
                    if (adjust == RIGHT)
                        while (size-- > len)
                            uart0_sendchar(' ');
                    put_str(sub_str);
                    if (adjust == RIGHT)
                        while (size-- > len)
                            uart0_sendchar(' ');
                    done = 1;
                    break;
                default:
                    put_str("???");
                    done = 1;
                }
            }
            str++;
        }
    }
}

const void uprintf(const char *str, ...)
{
    va_list va_arg_p;

    va_start(va_arg_p, str);
    uprint(str, va_arg_p);
    va_end(va_arg_p);
}
