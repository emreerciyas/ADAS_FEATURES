/*
 * Process_Output.c
 *
 *  Created on: 27 Apr 2024
 *      Author: erciy
 */

#include "Arduino.h"

#include "config.h"
#include "code.h"



void Process_Output(void)
{
	int index = 0;
	output_char[index]=  '<';
	{
		int relative_dist = (int)(Relative_Distance* 10) ;
		int rel_dist_count = relative_dist;
		int count=0;
		while(rel_dist_count > 0)
		{
			rel_dist_count /=10;
			count++;

		}
		char str[count+1];
		snprintf(str, sizeof(str), "%d", relative_dist);

		for(int i= 0; i<count; i++)
		{
			index++;
			output_char[index]=  str[i];
		}
	}

	index ++;
	output_char[index]=  '.';
{
		int veh_speed = (int)(Vehicle_Speed + 0.5f);
		int veh_speed_count = veh_speed;
		int count=0;
		while(veh_speed_count > 0)
		{
			veh_speed_count /=10;
			count++;

		}
		char str[count+1];
		snprintf(str, sizeof(str), "%d", veh_speed);
		for(int i= 0; i<count; i++)
		{
			index++;
			output_char[index]=  str[i];
		}
	}
	index ++;
	output_char[index]=  '.';

	{
		int rel_speed = (int)(Relative_Speed *10);
		if(rel_speed < 0)
		{
			index ++;
			output_char[index]=  '-';
			rel_speed *= -1U;
		}
		int rel_speed_count = rel_speed;
		int count=0;
		while(rel_speed_count > 0)
		{
			rel_speed_count /=10;
			count++;

		}
		char str[count+1];
		snprintf(str, sizeof(str), "%d", rel_speed);
		for(int i= 0; i<count; i++)
		{
			index++;
			output_char[index]=  str[i];
		}
	}



	index ++;
	output_char[index]=  '.';


	{
		int safe_dist = (int)(Safety_Distance*10);
		int safe_dist_count = safe_dist;
		int count=0;
		while(safe_dist_count > 0)
		{
			safe_dist_count /=10;
			count++;

		}
		char str[count+1];
		snprintf(str, sizeof(str), "%d", safe_dist);
		for(int i= 0; i<count; i++)
		{
			index++;
			output_char[index]=  str[i];
		}
	}



	index ++;
	output_char[index]=  '.';

	{
		int out_accel = (int)(Output_Acceleration*1000);
		int out_accel_count = out_accel;
		if((Status_Dec_Inc == ACCELERATION_DECREASED) && (out_accel_count != 0U))
		{
			index ++;
			output_char[index]=  '-';
		}
		int count=0;
		while(out_accel_count > 0)
		{
			out_accel_count /=10;
			count++;

		}
		char str[count+1];
		snprintf(str, sizeof(str), "%d", out_accel);
		for(int i= 0; i<count; i++)
		{
			index++;
			output_char[index]=  str[i];
		}
	}



	index ++;
	output_char[index]=  '.';

	index ++;

	output_char[index]=  (char)(Status_Accel_Decel + '0');

	index ++;
	output_char[index]=  '>';
	index ++;
	output_char[index]=  '\0';


}
