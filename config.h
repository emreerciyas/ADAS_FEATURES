/*
 * config.h
 *
 *  Created on: 10 Apr 2024
 *  This file is created to declare the configuration parameters.
 *      Author: Emre Erciyas
 */


#ifndef CONFIG_H_
#define CONFIG_H_

#define MS_TO_KMH 3.6f
#define TIMER_PARAM 0.1f


#define T_ZERO 1.423f
#define CONSTANT_1 0.03588f
#define CONSTANT_2 0.0369f
#define MINIMUM_SAFE_DISTANCE 5.f

#define th_MIN 0.2f
#define th_MAX 2.2f


#define HALFBRAKE_MS2 6.f
#define HALFFULLBRAKE_MS2 7.f
#define FULLBRAKE_MS2  8.f
#define ACCDISABLED_MS2 3.f
#define ACCMIN_MS2 2.5f
#define ACCMAX_MS2 2.f

#define ACC_ACCEL_MAX 3.f
#define ACC_DECEL_MAX -3.f

#define VEHICLE_SPEED_MIN 1.f
#define RELATIVE_DIST_MIN 0.5f


#define SAFETY_DISTANCE_REGULATION   0
#define SAFETY_DISTANCE_CTH          1
#define SAFETY_DISTANCE_VTH          2

#define ACTIVE_SAFETY_DISTANCE SAFETY_DISTANCE_VTH


#define TEST_WITH_INTERNAL_VARIABLE 0
#define TEST_WITH_EXTERNAL_VARIABLE 1

#define ACTIVE_TEST_SESSION TEST_WITH_INTERNAL_VARIABLE



#endif /* CONFIG_H_ */
