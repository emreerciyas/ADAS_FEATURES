	.file	"Process_Input.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text.Process_Input,"ax",@progbits
.global	Process_Input
	.type	Process_Input, @function
Process_Input:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,CC_Enable_Internal_Test
	lds r25,CC_Enable_Internal_Test+1
	sts CC_Enable+1,r25
	sts CC_Enable,r24
	lds r24,ACC_Enable_Internal_Test
	lds r25,ACC_Enable_Internal_Test+1
	sts ACC_Enable+1,r25
	sts ACC_Enable,r24
	lds r24,CWAS_Enable_Internal_Test
	lds r25,CWAS_Enable_Internal_Test+1
	sts CWAS_Enable+1,r25
	sts CWAS_Enable,r24
	lds r24,EBS_Enable_Internal_Test
	lds r25,EBS_Enable_Internal_Test+1
	sts EBS_Enable+1,r25
	sts EBS_Enable,r24
	lds r24,Vehicle_Speed_Internal_Test
	lds r25,Vehicle_Speed_Internal_Test+1
	lds r26,Vehicle_Speed_Internal_Test+2
	lds r27,Vehicle_Speed_Internal_Test+3
	sts Vehicle_Speed,r24
	sts Vehicle_Speed+1,r25
	sts Vehicle_Speed+2,r26
	sts Vehicle_Speed+3,r27
	lds r24,Relative_Distance_Internal_Test
	lds r25,Relative_Distance_Internal_Test+1
	lds r26,Relative_Distance_Internal_Test+2
	lds r27,Relative_Distance_Internal_Test+3
	sts Relative_Distance,r24
	sts Relative_Distance+1,r25
	sts Relative_Distance+2,r26
	sts Relative_Distance+3,r27
	lds r24,Speed_SetbyDriver_Internal_Test
	lds r25,Speed_SetbyDriver_Internal_Test+1
	lds r26,Speed_SetbyDriver_Internal_Test+2
	lds r27,Speed_SetbyDriver_Internal_Test+3
	sts Speed_SetbyDriver,r24
	sts Speed_SetbyDriver+1,r25
	sts Speed_SetbyDriver+2,r26
	sts Speed_SetbyDriver+3,r27
	ret
	.size	Process_Input, .-Process_Input
	.comm	Speed_SetbyDriver,4,1
	.comm	Relative_Distance,4,1
	.comm	Vehicle_Speed,4,1
	.comm	EBS_Enable,2,1
	.comm	CWAS_Enable,2,1
	.comm	ACC_Enable,2,1
	.comm	CC_Enable,2,1
	.ident	"GCC: (GNU) 4.9.2"
.global __do_clear_bss
