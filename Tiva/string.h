/*
 * string.h
 *
 *  Created on: 26/12/2011
 *      Author: Morten
 */
#include <stdarg.h>
#include "emp_type.h"
#include "uart0.h"

#define NEGATIVE 0
#define POSITIVE 1
#define LEFT     0
#define RIGHT    1

const void gfprintf(const char*, ...);
const void gsprintf(INT8U*, const char*, ...);
const void gprintf(const char *, ...);
