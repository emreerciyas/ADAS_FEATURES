/*
 * Process_Input.c
 *
 *  Created on: 10 Apr 2024
 *      Author: erciy
 */

#include "Arduino.h"

#include "config.h"
#include "code.h"
#include "test_config.h"

unsigned int CC_Enable;
unsigned int  ACC_Enable;
unsigned int  CWAS_Enable;
unsigned int  EBS_Enable;

float Vehicle_Speed;

float Relative_Distance;

float Speed_SetbyDriver;


void Process_Input(void)
{
	CC_Enable = CC_Enable_Internal_Test;
	ACC_Enable = ACC_Enable_Internal_Test;
	CWAS_Enable = CWAS_Enable_Internal_Test;
	EBS_Enable = EBS_Enable_Internal_Test;

	Vehicle_Speed = Vehicle_Speed_Internal_Test;

	Relative_Distance = Relative_Distance_Internal_Test;

	Speed_SetbyDriver = Speed_SetbyDriver_Internal_Test;

}
