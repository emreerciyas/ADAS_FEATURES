# 1 "C:\\Project\\MASTER~1\\ADAS_F~1\\Test_Internal_Variable\\Test_Internal_Variable.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:\\Project\\MASTER~1\\ADAS_F~1\\Test_Internal_Variable\\Test_Internal_Variable.c"







# 1 "C:\\Project\\MASTER~1\\ADAS_F~1/config.h" 1
# 9 "C:\\Project\\MASTER~1\\ADAS_F~1\\Test_Internal_Variable\\Test_Internal_Variable.c" 2
# 1 "C:\\Project\\MASTER~1\\ADAS_F~1/code.h" 1
# 14 "C:\\Project\\MASTER~1\\ADAS_F~1/code.h"
extern void Calc_Relative_Speed(float Relative_Distance);
extern void Acc_Dec_Dtrmn_Sys(void);
extern void Process_Output(void);
extern void Process_Input(void);
extern void Run_Test_with_Internal_Variable(void);

extern float Relative_Distance;
extern float Relative_Speed;
extern float Speed_SetbyDriver;

extern float Output_Acceleration;
extern int Status_Accel_Decel;
extern int Status_Dec_Inc;

extern float Safety_Distance;

extern unsigned int CC_Enable;
extern unsigned int ACC_Enable;
extern unsigned int CWAS_Enable;
extern unsigned int EBS_Enable;

extern char output_char[30];



extern float Vehicle_Speed;
# 10 "C:\\Project\\MASTER~1\\ADAS_F~1\\Test_Internal_Variable\\Test_Internal_Variable.c" 2
# 1 "C:\\Project\\MASTER~1\\ADAS_F~1/test_config.h" 1
# 12 "C:\\Project\\MASTER~1\\ADAS_F~1/test_config.h"
extern unsigned int CC_Enable_Internal_Test;
extern unsigned int ACC_Enable_Internal_Test;
extern unsigned int CWAS_Enable_Internal_Test;
extern unsigned int EBS_Enable_Internal_Test;

extern float Vehicle_Speed_Internal_Test;

extern float Relative_Distance_Internal_Test;

extern float Speed_SetbyDriver_Internal_Test;
# 11 "C:\\Project\\MASTER~1\\ADAS_F~1\\Test_Internal_Variable\\Test_Internal_Variable.c" 2

unsigned int CC_Enable_Internal_Test;
unsigned int ACC_Enable_Internal_Test;
unsigned int CWAS_Enable_Internal_Test;
unsigned int EBS_Enable_Internal_Test;

float Vehicle_Speed_Internal_Test;

float Relative_Distance_Internal_Test;

float Speed_SetbyDriver_Internal_Test;

static int initial_settings = 1;
# 275 "C:\\Project\\MASTER~1\\ADAS_F~1\\Test_Internal_Variable\\Test_Internal_Variable.c"
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
  Relative_Distance_Internal_Test -= (((Vehicle_Speed_Internal_Test - target_vehicle_speed)*0.1f)/(3.6f));

  if(Relative_Distance_Internal_Test > 300.f)
  {
   Relative_Distance_Internal_Test = 300.f;
  }

  if(Status_Dec_Inc == 0)
  {
   Vehicle_Speed_Internal_Test -= (Output_Acceleration*0.1f * 3.6f);
  }
  else if(Status_Dec_Inc == 1)
  {
   Vehicle_Speed_Internal_Test += (Output_Acceleration*0.1f * 3.6f);
  }
  else
  {

  }

  if(target_vehicle_speed < 100)
  {
   target_vehicle_speed += (3.f*0.1f * 3.6f);
  }
  else
  {
   target_vehicle_speed = 100;
  }

 }

}




void Run_Test_with_Internal_Variable(void)
{
# 351 "C:\\Project\\MASTER~1\\ADAS_F~1\\Test_Internal_Variable\\Test_Internal_Variable.c"
 Test_Schenario_6();


}
