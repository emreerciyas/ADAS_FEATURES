/** \file   Calc_Relative_Speed.c
 *  \brief  Calculation of Relative Speed with using Relative Distance
 *
 *  This files contains the implementation of the Calculation of Relative Speed
 *
 *
 *  \author Emre Erciyas
 *  \date   2024
 */
#include "Arduino.h"

#include "config.h"

 static float Relative_Distance_Prev = 0.f;
 float Relative_Speed = 0.f;
 static boolean skip_first_crs = false;

/*
 * Name : Calc_Relative_Speed
 * Desc: This function calculates the relative speed with using Relative Distance between the car
 * Inputs: float - Relative distance
 * Output : N/A
 * Provided : float- Relative_Speed
 */
void Calc_Relative_Speed(float Relative_Distance)
{

  /*
   * first cycle should be skip as the previous distance hasn't been taken yet
   */
  if(skip_first_crs == false)
  {
	  skip_first_crs = true;
  }
  else
  {
	  /*
	   * Relative speed is calculated as Vr = dD/dt
	   * where
	   * dD: distance change : Relative_Distance_Prev - Relative_Distance
	   * dt : time change    : TIMER_PARAM this is calculated from MCU timer rate
	   * MS_TO_KMH is the constant to convert speed unit from m/s to km/h
	   */
	  Relative_Speed = ((Relative_Distance_Prev - Relative_Distance) / TIMER_PARAM ) *MS_TO_KMH;

  }
  /*
   * Set the Previous relative speed as current for next cycle
   */
  Relative_Distance_Prev = Relative_Distance;

}
