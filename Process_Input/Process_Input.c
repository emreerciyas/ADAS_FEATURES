/*
 * Process_Input.c
 *
 *  Created on: 10 Apr 2024
 *      Author: erciy
 */

#include "Arduino.h"

#include "config.h"
#include "code.h"


unsigned int CC_Enable = 1U;
unsigned int  ACC_Enable = 1U;
unsigned int  CWAS_Enable = 1U;
unsigned int  EBS_Enable = 1U;

float Vehicle_Speed = 50.f;

float Relative_Distance = 50.f;

float Speed_SetbyDriver = 70.f;


