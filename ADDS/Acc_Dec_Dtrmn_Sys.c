/** \file   Acc_Dec_Dtrmn_Sys.c
 *  \brief  Determination for the value of Acceleration or Deceleration
 *
 *  This files contains the implementation of the Acceleration Deceleration Determination System
 *
 *
 *  \author Emre Erciyas
 *  \date   2024
 */

#include "Arduino.h"

#include "config.h"
#include "code.h"




float Safety_Distance;
float Output_Acceleration = 0.f;
int Status_Accel_Decel = DEFAULT_CONTROL;
int Status_Dec_Inc = ACCELERATION_N_A;


static char skip_first_two_dat = 0;
static float Vehicle_Speed_Prev;
static float Relative_Speed_Prev;
static float Target_Veh_Accel;



#if ACTIVE_SAFETY_DISTANCE == SAFETY_DISTANCE_REGULATION
static float Safety_Distance_Regulation;
#endif

#if ACTIVE_SAFETY_DISTANCE == SAFETY_DISTANCE_CTH
static float Safety_Distance_CTH;
#endif

#if ACTIVE_SAFETY_DISTANCE == SAFETY_DISTANCE_VTH
static float Safety_Distance_VTH;
#endif

static float TTC;
static float TTC_HalfBrake;
static float TTC_FullBrake;
static float TTC_HalfFullBrake;
static float TTC_SafetyDistMin;
static float TTC_AccDisabled;
static float TTC_AccMin;
static float TTC_AccMax;

static float SafetyDistance_HalfBrake;
static float SafetyDistance_FullBrake;
static float SafetyDistance_HalfFullBrake;
static float SafetyDistance_AccDisabled;
static float SafetyDistance_AccMin;
static float SafetyDistance_AccMax;


static void ACDS_Dtrmn_Acc_Target_Veh(void)
{
	  if(skip_first_two_dat < 2)
	  {
		  skip_first_two_dat++;
	  }
	  else
	  {
		  Target_Veh_Accel = ((Vehicle_Speed - Vehicle_Speed_Prev) + (Relative_Speed_Prev - Relative_Speed))/TIMER_PARAM;
	  }

	  Vehicle_Speed_Prev = Vehicle_Speed;
	  Relative_Speed_Prev = Relative_Speed;

}

#if ACTIVE_SAFETY_DISTANCE == SAFETY_DISTANCE_REGULATION
static void ACDS_Dtrmn_Safety_Dist_Reg(void)
{
	/*
	 * Safety distance in meter
	 * */
	Safety_Distance_Regulation = Vehicle_Speed/2;

}
#endif

#if ACTIVE_SAFETY_DISTANCE == SAFETY_DISTANCE_CTH
static void Calc_Safety_Dist_CTH(void)
{
	/*
	 * Safety distance in meter
	 * */
	float th_CTH;

	th_CTH = T_ZERO-(CONSTANT_1*Relative_Speed/MS_TO_KMH);

	if(th_CTH > th_MAX)
	{
		th_CTH = th_MAX;
	}
	else if (th_CTH <= th_MIN)
	{
		th_CTH = th_MIN;
	}
	else
	{
		/*do nothi,ng*/
	}

	Safety_Distance_CTH = MINIMUM_SAFE_DISTANCE +((Vehicle_Speed/MS_TO_KMH)*th_CTH);

}
#endif

#if ACTIVE_SAFETY_DISTANCE == SAFETY_DISTANCE_VTH
static void Calc_Safety_Dist_VTH(void)
{
	/*
	 * Safety distance in meter
	 * */

	float th_VTH;

	th_VTH = T_ZERO-(CONSTANT_1*Relative_Speed/MS_TO_KMH)-(CONSTANT_2*Target_Veh_Accel);

	if(th_VTH > th_MAX)
	{
		th_VTH = th_MAX;
	}
	else if (th_VTH <= th_MIN)
	{
		th_VTH = th_MIN;
	}
	else
	{
		/*do nothi,ng*/
	}
	Safety_Distance_VTH = MINIMUM_SAFE_DISTANCE +((Vehicle_Speed/MS_TO_KMH)*th_VTH);

}
#endif

static void Calc_AllTTCs(void)
{
	/*
	 *
	 * */

	float Vehicle_Speed_ms;

	Vehicle_Speed_ms = Vehicle_Speed/MS_TO_KMH;

	if(Relative_Speed != 0)
	{
		TTC = Relative_Distance/(Relative_Speed/MS_TO_KMH);


		TTC_HalfBrake = (((Vehicle_Speed_ms) * (Vehicle_Speed_ms)) /(2*HALFBRAKE_MS2))/(Relative_Speed/MS_TO_KMH);

		TTC_HalfFullBrake = (((Vehicle_Speed_ms) * (Vehicle_Speed_ms)) /(2*HALFFULLBRAKE_MS2))/(Relative_Speed/MS_TO_KMH);

		TTC_FullBrake = (((Vehicle_Speed_ms) * (Vehicle_Speed_ms)) /(2*FULLBRAKE_MS2))/(Relative_Speed/MS_TO_KMH);

		TTC_AccDisabled = (((Vehicle_Speed_ms) * (Vehicle_Speed_ms)) /(2*ACCDISABLED_MS2))/(Relative_Speed/MS_TO_KMH);

		TTC_AccMin = (((Vehicle_Speed_ms) * (Vehicle_Speed_ms)) /(2*ACCMIN_MS2))/(Relative_Speed/MS_TO_KMH);

		TTC_AccMax = (((Vehicle_Speed_ms) * (Vehicle_Speed_ms)) /(2*ACCMAX_MS2))/(Relative_Speed/MS_TO_KMH);

		TTC_SafetyDistMin = Safety_Distance/(Relative_Speed/MS_TO_KMH);

	}
	else
	{
		TTC = MAX_FLOAT;


		TTC_HalfBrake = MAX_FLOAT;

		TTC_HalfFullBrake = MAX_FLOAT;

		TTC_FullBrake = MAX_FLOAT;

		TTC_AccDisabled = MAX_FLOAT;

		TTC_AccMin = MAX_FLOAT;

		TTC_AccMax = MAX_FLOAT;

		TTC_SafetyDistMin = MAX_FLOAT;
	}



}


static void Calc_AllSafeDist(void)
{
	/*
	 *
	 * */

	float Vehicle_Speed_ms;

	Vehicle_Speed_ms = Vehicle_Speed/MS_TO_KMH;


	SafetyDistance_HalfBrake = (((Vehicle_Speed_ms) * (Vehicle_Speed_ms)) /(2*HALFBRAKE_MS2));

	SafetyDistance_HalfFullBrake = (((Vehicle_Speed_ms) * (Vehicle_Speed_ms)) /(2*HALFFULLBRAKE_MS2));

	SafetyDistance_FullBrake = (((Vehicle_Speed_ms) * (Vehicle_Speed_ms)) /(2*FULLBRAKE_MS2));

	SafetyDistance_AccDisabled = (((Vehicle_Speed_ms) * (Vehicle_Speed_ms)) /(2*ACCDISABLED_MS2));

	SafetyDistance_AccMin = (((Vehicle_Speed_ms) * (Vehicle_Speed_ms)) /(2*ACCMIN_MS2));

	SafetyDistance_AccMax = (((Vehicle_Speed_ms) * (Vehicle_Speed_ms)) /(2*ACCMAX_MS2));



}

static void Dtrmn_AccelDecelandStatus(void)
{
	/*
	 *
	 * */

	Output_Acceleration= 0.f;

	/*Case of the EBS in Full Brake as the sytem is lower than the min distance*/

	if( ((Relative_Speed > 0.f) && (TTC <= TTC_FullBrake)) ||
		((Relative_Speed <= 0.f) && (Relative_Distance <= SafetyDistance_FullBrake )))
	{
		/*Section1*/
		Output_Acceleration= FULLBRAKE_MS2;
		Status_Accel_Decel = EBS_FULL;
		Status_Dec_Inc = ACCELERATION_DECREASED;
	}
	else if( ((Relative_Speed > 0.f) && (TTC <= TTC_HalfFullBrake)) ||
			 ((Relative_Speed <= 0.f) && (Relative_Distance <= SafetyDistance_HalfFullBrake )))
	{
		/*Section2*/
		Output_Acceleration= ((Vehicle_Speed/MS_TO_KMH) *( Vehicle_Speed/MS_TO_KMH))/(2*Relative_Distance);
		Status_Accel_Decel = EBS_FULL;
		Status_Dec_Inc = ACCELERATION_DECREASED;
	}
	else if( ((Relative_Speed > 0.f) && (TTC <= TTC_HalfBrake)) ||
			((Relative_Speed <= 0.f) && (Relative_Distance <= SafetyDistance_HalfBrake )))
	{
		/*Section3*/
		Output_Acceleration= ((Vehicle_Speed/MS_TO_KMH) *( Vehicle_Speed/MS_TO_KMH))/(2*Relative_Distance);
		Status_Accel_Decel = EBS_HALF;
		Status_Dec_Inc = ACCELERATION_DECREASED;
	}
	else if( ((Relative_Speed > 0.f) && (TTC <= TTC_SafetyDistMin)) ||
			((Relative_Speed <= 0.f) && (Relative_Distance <= Safety_Distance )))
	{
		/*Section4*/
		Output_Acceleration= ((Vehicle_Speed/MS_TO_KMH) *( Vehicle_Speed/MS_TO_KMH))/(2*Relative_Distance);
		Status_Accel_Decel = FWC;
		Status_Dec_Inc = ACCELERATION_DECREASED;
	}
	else if( ((Relative_Speed > 0.f) && (TTC <= TTC_AccDisabled)) ||
			((Relative_Speed <= 0.f) && (Relative_Distance <= SafetyDistance_AccDisabled )))
	{
		/*Section5*/
		Output_Acceleration= 0.f;
		Status_Accel_Decel = DEFAULT_CONTROL;
		Status_Dec_Inc = ACCELERATION_N_A;
	}
	else if( ((Relative_Speed > 0.f) && (TTC <= TTC_AccMin)) ||
			((Relative_Speed <= 0.f) && (Relative_Distance <= SafetyDistance_AccMin )))
	{
		/*Section6*/
		Output_Acceleration= ((Vehicle_Speed/MS_TO_KMH) *( Vehicle_Speed/MS_TO_KMH))/(2*Relative_Distance);
		if(Output_Acceleration > ACC_ACCEL_MAX)
		{
			Output_Acceleration = ACC_ACCEL_MAX;
		}
		Status_Accel_Decel = ACC;
		Status_Dec_Inc = ACCELERATION_DECREASED;

	}
	else if( ((Relative_Speed > 0.f) && (TTC <= TTC_AccMax)) ||
			((Relative_Speed <= 0.f) && (Relative_Distance <= SafetyDistance_AccMax )))
	{
		if(Relative_Speed > 0.f)
		{
			/*Section7-1*/
			Output_Acceleration= ((Relative_Speed/MS_TO_KMH) *( Relative_Speed/MS_TO_KMH))/(2*(Relative_Distance - SafetyDistance_AccMin));
			if(Output_Acceleration > ACC_ACCEL_MAX)
			{
				Output_Acceleration = ACC_ACCEL_MAX;
			}
			Status_Accel_Decel = ACC;
			Status_Dec_Inc = ACCELERATION_DECREASED;
		}
		else if (Relative_Speed < 0.f)
		{
			/*Section7-2*/
			if(Speed_SetbyDriver > Vehicle_Speed )
			{
				Output_Acceleration= ((Relative_Speed/MS_TO_KMH) *( Relative_Speed/MS_TO_KMH))/(2*(Relative_Distance - SafetyDistance_AccMin));
				if(Output_Acceleration > ACC_ACCEL_MAX)
				{
					Output_Acceleration = ACC_ACCEL_MAX;
				}
				Status_Accel_Decel = ACC;
				Status_Dec_Inc = ACCELERATION_INCREASED;
			}
			else if(Speed_SetbyDriver < Vehicle_Speed)
			{
				if((Speed_SetbyDriver - Vehicle_Speed) < ACC_DECEL_MAX)
				{
					Output_Acceleration = ACC_ACCEL_MAX;
					Status_Accel_Decel = ACC;
					Status_Dec_Inc = ACCELERATION_DECREASED;
				}
				else
				{
					Output_Acceleration = Vehicle_Speed - Speed_SetbyDriver;
					Status_Accel_Decel = ACC;
					Status_Dec_Inc = ACCELERATION_DECREASED;
				}
			}
			else
			{
				Output_Acceleration = 0.f;
				Status_Accel_Decel = ACC;
				Status_Dec_Inc = ACCELERATION_N_A;
			}

		}
		else
		{
			/*Section7-3*/
			Output_Acceleration= 0.f;
			Status_Accel_Decel = ACC;
			Status_Dec_Inc = ACCELERATION_N_A;
		}
	}
	else if( ((Relative_Speed > 0.f) && (TTC > TTC_AccMax)) ||
			((Relative_Speed <= 0.f) && (Relative_Distance > SafetyDistance_AccMax )))
	{
		/*Section 8 */
		if(Speed_SetbyDriver > Vehicle_Speed )
		{
			if((Speed_SetbyDriver - Vehicle_Speed) > ACC_ACCEL_MAX)
			{
				Output_Acceleration = ACC_ACCEL_MAX;
				Status_Accel_Decel = CC;
				Status_Dec_Inc = ACCELERATION_INCREASED;
			}
			else
			{
				Output_Acceleration = Speed_SetbyDriver - Vehicle_Speed;
				Status_Accel_Decel = CC;
				Status_Dec_Inc = ACCELERATION_INCREASED;
			}
		}
		else if(Speed_SetbyDriver < Vehicle_Speed)
		{
			if((Speed_SetbyDriver - Vehicle_Speed) < ACC_DECEL_MAX)
			{
				Output_Acceleration = ACC_ACCEL_MAX;
				Status_Accel_Decel = CC;
				Status_Dec_Inc = ACCELERATION_DECREASED;
			}
			else
			{
				Output_Acceleration = Vehicle_Speed - Speed_SetbyDriver;
				Status_Accel_Decel = CC;
				Status_Dec_Inc = ACCELERATION_DECREASED;
			}
		}
		else
		{
			Output_Acceleration = 0;
			Status_Accel_Decel = CC;
			Status_Dec_Inc = ACCELERATION_N_A;
		}
	}
	else
	{
			/*do nothing*/
	}

}


void Check_Enable_of_SubFeatures(void)
{
    if(Status_Accel_Decel == CC)
    {
   	 if((CC_Enable == 1) || (ACC_Enable == 1))
        {
       	 /*keep same values*/
        }
        else
        {
    		Output_Acceleration= 0.f;
    		Status_Accel_Decel = DEFAULT_CONTROL;
    		Status_Dec_Inc = ACCELERATION_N_A;

        }
    }
    else if(Status_Accel_Decel == ACC)
    {
   	 if(ACC_Enable == 1)
        {
       	 /*keep same values*/
        }
        else
        {
    		Output_Acceleration= 0.f;
    		Status_Accel_Decel = DEFAULT_CONTROL;
    		Status_Dec_Inc = ACCELERATION_N_A;

        }
    }
    else if(Status_Accel_Decel == FWC)
    {
   	 if(CWAS_Enable == 1)
        {
       	 /*keep same values*/
        }
        else
        {
    		Output_Acceleration= 0.f;
    		Status_Accel_Decel = DEFAULT_CONTROL;
    		Status_Dec_Inc = ACCELERATION_N_A;

        }
    }
    else if((Status_Accel_Decel == EBS_FULL) || (Status_Accel_Decel == EBS_HALF))
    {
   	 if(EBS_Enable == 1)
        {
         	 /*keep same values*/
        }
        else
        {
      	    Output_Acceleration= 0.f;
      	    Status_Accel_Decel = DEFAULT_CONTROL;
      		Status_Dec_Inc = ACCELERATION_N_A;

        }
   	      /*keep same values*/
    }
    else
    {
           /*do nothing*/

    }


}

void Acc_Dec_Dtrmn_Sys(void)
{


	if((CC_Enable ==1)||
	   (ACC_Enable==1) ||
	    (CWAS_Enable==1) ||
	    (EBS_Enable==1))
	{
		ACDS_Dtrmn_Acc_Target_Veh();

#if ACTIVE_SAFETY_DISTANCE == SAFETY_DISTANCE_REGULATION
		ACDS_Dtrmn_Safety_Dist_Reg();
		Safety_Distance = Safety_Distance_Regulation;
#endif

#if ACTIVE_SAFETY_DISTANCE == SAFETY_DISTANCE_CTH
		Calc_Safety_Dist_CTH();
		Safety_Distance = Safety_Distance_CTH;
#endif

#if ACTIVE_SAFETY_DISTANCE == SAFETY_DISTANCE_VTH
		Calc_Safety_Dist_VTH();
		Safety_Distance = Safety_Distance_VTH;
#endif

		Calc_AllSafeDist();
		Calc_AllTTCs();

		Dtrmn_AccelDecelandStatus();
		Check_Enable_of_SubFeatures();

	}
	else
	{
		Output_Acceleration= 0.f;
		Status_Accel_Decel = DEFAULT_CONTROL;
 		Status_Dec_Inc = ACCELERATION_N_A;

	}
}
