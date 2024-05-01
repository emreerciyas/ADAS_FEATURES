/*
 * Test_Internal_Variable.c
 *
 *  Created on: 28 Apr 2024
 *      Author: erciy
 */

#include "config.h"
#include "code.h"
#include "test_config.h"

unsigned int CC_Enable_Internal_Test;
unsigned int  ACC_Enable_Internal_Test;
unsigned int  CWAS_Enable_Internal_Test;
unsigned int  EBS_Enable_Internal_Test;

float Vehicle_Speed_Internal_Test;

float Relative_Distance_Internal_Test;

float Speed_SetbyDriver_Internal_Test;

static int initial_settings = 1;

#if ACTIVE_TEST_SCHENARIO == TEST_SCHENARIO_1

static void Test_Schenario_1(void)
{
	if(initial_settings == 1)
	{
		Vehicle_Speed_Internal_Test = 70;
		Speed_SetbyDriver_Internal_Test = 90;
		Relative_Distance_Internal_Test = 300;
		CC_Enable_Internal_Test = 1;
		ACC_Enable_Internal_Test = 1;
		CWAS_Enable_Internal_Test = 1;
		EBS_Enable_Internal_Test = 1;
		initial_settings = 0;
	}
	else
	{
		Relative_Distance_Internal_Test -= (1.f/3.6f);
	}
}

#endif



#if ACTIVE_TEST_SCHENARIO == TEST_SCHENARIO_2

static void Test_Schenario_2(void)
{
	static unsigned int counter = 0;
	if(initial_settings == 1)
	{
		Vehicle_Speed_Internal_Test = 70;
		Speed_SetbyDriver_Internal_Test = 90;
		Relative_Distance_Internal_Test = 300;
		CC_Enable_Internal_Test = 1;
		ACC_Enable_Internal_Test = 1;
		CWAS_Enable_Internal_Test = 1;
		EBS_Enable_Internal_Test = 1;
		initial_settings = 0;
	}
	else
	{
		Relative_Distance_Internal_Test -= (float)(counter*(0.1f/3.6f));
	}

	counter ++;
}

#endif

#if ACTIVE_TEST_SCHENARIO == TEST_SCHENARIO_3

static void Test_Schenario_3(void)
{
	static float target_vehicle_speed = 50;
	if(initial_settings == 1)
	{
		Vehicle_Speed_Internal_Test = 100;
		Speed_SetbyDriver_Internal_Test = 110;
		Relative_Distance_Internal_Test = 100;
		CC_Enable_Internal_Test = 1;
		ACC_Enable_Internal_Test = 1;
		CWAS_Enable_Internal_Test = 1;
		EBS_Enable_Internal_Test = 1;
		initial_settings = 0;
	}
	else
	{
		Relative_Distance_Internal_Test -= (((Vehicle_Speed_Internal_Test - target_vehicle_speed)*TIMER_PARAM)/(MS_TO_KMH));

		if(Status_Dec_Inc == ACCELERATION_DECREASED)
		{
			Vehicle_Speed_Internal_Test -= (Output_Acceleration*TIMER_PARAM * MS_TO_KMH);
		}
		else if(Status_Dec_Inc == ACCELERATION_INCREASED)
		{
			Vehicle_Speed_Internal_Test += (Output_Acceleration*TIMER_PARAM * MS_TO_KMH);
		}
		else
		{
			/* do nothing */
		}


		if((target_vehicle_speed - 1.f)<= 0.f)
		{
			target_vehicle_speed = 0;
		}
		else
		{
			target_vehicle_speed -= 1.f;
		}


	}

}

#endif


#if ACTIVE_TEST_SCHENARIO == TEST_SCHENARIO_4
static void Test_Schenario_4(void)
{
	static float target_vehicle_speed;
	static unsigned int counter = 0;
	static unsigned int side_car_enter_line = 1;
	if(initial_settings == 1)
	{
		Vehicle_Speed_Internal_Test = 50;
		Speed_SetbyDriver_Internal_Test = 70;
		Relative_Distance_Internal_Test = 300;
		CC_Enable_Internal_Test = 1;
		ACC_Enable_Internal_Test = 1;
		CWAS_Enable_Internal_Test = 1;
		EBS_Enable_Internal_Test = 1;
		initial_settings = 0;
	}
	else if (counter < 100U)
	{
		if(Status_Dec_Inc == ACCELERATION_DECREASED)
		{
			Vehicle_Speed_Internal_Test -= (Output_Acceleration*TIMER_PARAM * MS_TO_KMH);
		}
		else if(Status_Dec_Inc == ACCELERATION_INCREASED)
		{
			Vehicle_Speed_Internal_Test += (Output_Acceleration*TIMER_PARAM * MS_TO_KMH);
		}
		else
		{
			/* do nothing */
		}
		Speed_SetbyDriver_Internal_Test = 70;
		Relative_Distance_Internal_Test = 300;
		CC_Enable_Internal_Test = 1;
		ACC_Enable_Internal_Test = 1;
		CWAS_Enable_Internal_Test = 1;
		EBS_Enable_Internal_Test = 1;
		counter ++;
	}
	else
	{
		if(side_car_enter_line == 1)
		{
			Relative_Distance_Internal_Test = 67;
			target_vehicle_speed = 60;
			side_car_enter_line = 0;
		}
		else
		{
			Relative_Distance_Internal_Test -= (((Vehicle_Speed_Internal_Test - target_vehicle_speed)*TIMER_PARAM)/(MS_TO_KMH));
		}


		if(Status_Dec_Inc == ACCELERATION_DECREASED)
		{
			Vehicle_Speed_Internal_Test -= (Output_Acceleration*TIMER_PARAM * MS_TO_KMH);
		}
		else if(Status_Dec_Inc == ACCELERATION_INCREASED)
		{
			Vehicle_Speed_Internal_Test += (Output_Acceleration*TIMER_PARAM * MS_TO_KMH);
		}
		else
		{
			/* do nothing */
		}


	}

}


#endif


#if ACTIVE_TEST_SCHENARIO == TEST_SCHENARIO_5

static void Test_Schenario_5(void)
{
	static float target_vehicle_speed = 60;
	static unsigned int decreases_contiune = 1;
	if(initial_settings == 1)
	{
		Vehicle_Speed_Internal_Test = 70;
		Speed_SetbyDriver_Internal_Test = 90;
		Relative_Distance_Internal_Test = 50;
		CC_Enable_Internal_Test = 1;
		ACC_Enable_Internal_Test = 1;
		CWAS_Enable_Internal_Test = 1;
		EBS_Enable_Internal_Test = 1;
		initial_settings = 0;
	}
	else
	{
		Relative_Distance_Internal_Test -= (((Vehicle_Speed_Internal_Test - target_vehicle_speed)*TIMER_PARAM)/(MS_TO_KMH));

		if(Relative_Distance_Internal_Test > 300.f)
		{
			Relative_Distance_Internal_Test = 300.f;
		}

		if(Status_Dec_Inc == ACCELERATION_DECREASED)
		{
			Vehicle_Speed_Internal_Test -= (Output_Acceleration*TIMER_PARAM * MS_TO_KMH);
		}
		else if(Status_Dec_Inc == ACCELERATION_INCREASED)
		{
			Vehicle_Speed_Internal_Test += (Output_Acceleration*TIMER_PARAM * MS_TO_KMH);
		}
		else
		{
			/* do nothing */
		}


		if(decreases_contiune == 1)
		{
			if(target_vehicle_speed >= 35)
			{
				target_vehicle_speed -= (ACC_ACCEL_MAX *TIMER_PARAM * MS_TO_KMH);
			}
			else
			{
				decreases_contiune = 0;
			}
		}
		else
		{
			if(target_vehicle_speed < 100)
			{
				target_vehicle_speed += (ACC_ACCEL_MAX *TIMER_PARAM * MS_TO_KMH);
			}
			else
			{
				target_vehicle_speed = 100;
			}
		}

	}

}

#endif



#if ACTIVE_TEST_SCHENARIO == TEST_SCHENARIO_6

static void Test_Schenario_6(void)
{
	static float target_vehicle_speed = 40;
	if(initial_settings == 1)
	{
		Vehicle_Speed_Internal_Test = 50;
		Speed_SetbyDriver_Internal_Test = 70;
		Relative_Distance_Internal_Test = 14;
		CC_Enable_Internal_Test = 1;
		ACC_Enable_Internal_Test = 1;
		CWAS_Enable_Internal_Test = 1;
		EBS_Enable_Internal_Test = 1;
		initial_settings = 0;
	}
	else
	{
		Relative_Distance_Internal_Test -= (((Vehicle_Speed_Internal_Test - target_vehicle_speed)*TIMER_PARAM)/(MS_TO_KMH));

		if(Relative_Distance_Internal_Test > 300.f)
		{
			Relative_Distance_Internal_Test = 300.f;
		}

		if(Status_Dec_Inc == ACCELERATION_DECREASED)
		{
			Vehicle_Speed_Internal_Test -= (Output_Acceleration*TIMER_PARAM * MS_TO_KMH);
		}
		else if(Status_Dec_Inc == ACCELERATION_INCREASED)
		{
			Vehicle_Speed_Internal_Test += (Output_Acceleration*TIMER_PARAM * MS_TO_KMH);
		}
		else
		{
			/* do nothing */
		}

		if(target_vehicle_speed < 100)
		{
			target_vehicle_speed += (ACC_ACCEL_MAX*TIMER_PARAM * MS_TO_KMH);
		}
		else
		{
			target_vehicle_speed = 100;
		}

	}

}

#endif


void Run_Test_with_Internal_Variable(void)
{
#if ACTIVE_TEST_SCHENARIO == TEST_SCHENARIO_1

	Test_Schenario_1();
#endif

#if ACTIVE_TEST_SCHENARIO == TEST_SCHENARIO_2
	Test_Schenario_2();
#endif

#if ACTIVE_TEST_SCHENARIO == TEST_SCHENARIO_3
	Test_Schenario_3();
#endif

#if ACTIVE_TEST_SCHENARIO == TEST_SCHENARIO_4
	Test_Schenario_4();
#endif

#if ACTIVE_TEST_SCHENARIO == TEST_SCHENARIO_5
	Test_Schenario_5();
#endif

#if ACTIVE_TEST_SCHENARIO == TEST_SCHENARIO_6
	Test_Schenario_6();
#endif

}
