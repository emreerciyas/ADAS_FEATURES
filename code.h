/*
  code.h - Commen Header file


  Copyright (c) 2024 Emre Erciyas

  This file is created to declare the functions and global variables.
*/

#ifndef CODE_H
#define CODE_H


extern void Calc_Relative_Speed(float Relative_Distance);
extern void Acc_Dec_Dtrmn_Sys(void);
extern void Process_Output(void);
extern void Process_Input(void);
extern void Run_Test_with_Internal_Variable(void);

extern float Relative_Distance;
extern float Relative_Speed;
extern float Relative_Speed_ms;
extern float Speed_SetbyDriver;

extern float Output_Acceleration;
extern int Status_Accel_Decel;
extern int Status_Dec_Inc;

extern float Safety_Distance;

extern unsigned int CC_Enable;
extern unsigned int ACC_Enable;
extern unsigned int CWAS_Enable;
extern unsigned int EBS_Enable;

extern char output_char[31];

#define MAX_FLOAT 3.40282347e+38F

extern float Vehicle_Speed;


#define ACCELERATION_DECREASED 0
#define ACCELERATION_INCREASED 1
#define ACCELERATION_N_A 2

#define DEFAULT_CONTROL 0
#define EBS_FULL 1
#define EBS_HALF 2
#define FWC 3
#define ACC 4
#define CC 5

#endif

