	.file	"Test_Internal_Variable.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
.global	__subsf3
.global	__mulsf3
.global	__divsf3
.global	__gtsf2
.global	__addsf3
.global	__ltsf2
	.section	.text.Run_Test_with_Internal_Variable,"ax",@progbits
.global	Run_Test_with_Internal_Variable
	.type	Run_Test_with_Internal_Variable, @function
Run_Test_with_Internal_Variable:
	push r4
	push r5
	push r6
	push r7
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
/* prologue: function */
/* frame size = 0 */
/* stack size = 12 */
.L__stack_usage = 12
	lds r24,initial_settings
	lds r25,initial_settings+1
	cpi r24,1
	cpc r25,__zero_reg__
	brne .L2
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(72)
	ldi r23,lo8(66)
	sts Vehicle_Speed_Internal_Test,r20
	sts Vehicle_Speed_Internal_Test+1,r21
	sts Vehicle_Speed_Internal_Test+2,r22
	sts Vehicle_Speed_Internal_Test+3,r23
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(-116)
	ldi r23,lo8(66)
	sts Speed_SetbyDriver_Internal_Test,r20
	sts Speed_SetbyDriver_Internal_Test+1,r21
	sts Speed_SetbyDriver_Internal_Test+2,r22
	sts Speed_SetbyDriver_Internal_Test+3,r23
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(96)
	ldi r23,lo8(65)
	sts Relative_Distance_Internal_Test,r20
	sts Relative_Distance_Internal_Test+1,r21
	sts Relative_Distance_Internal_Test+2,r22
	sts Relative_Distance_Internal_Test+3,r23
	sts CC_Enable_Internal_Test+1,r25
	sts CC_Enable_Internal_Test,r24
	sts ACC_Enable_Internal_Test+1,r25
	sts ACC_Enable_Internal_Test,r24
	sts CWAS_Enable_Internal_Test+1,r25
	sts CWAS_Enable_Internal_Test,r24
	sts EBS_Enable_Internal_Test+1,r25
	sts EBS_Enable_Internal_Test,r24
	sts initial_settings+1,__zero_reg__
	sts initial_settings,__zero_reg__
	rjmp .L1
.L2:
	lds r8,Vehicle_Speed_Internal_Test
	lds r9,Vehicle_Speed_Internal_Test+1
	lds r10,Vehicle_Speed_Internal_Test+2
	lds r11,Vehicle_Speed_Internal_Test+3
	lds r12,target_vehicle_speed.1488
	lds r13,target_vehicle_speed.1488+1
	lds r14,target_vehicle_speed.1488+2
	lds r15,target_vehicle_speed.1488+3
	movw r20,r14
	movw r18,r12
	movw r24,r10
	movw r22,r8
	call __subsf3
	ldi r18,lo8(-51)
	ldi r19,lo8(-52)
	ldi r20,lo8(-52)
	ldi r21,lo8(61)
	call __mulsf3
	ldi r18,lo8(102)
	ldi r19,lo8(102)
	ldi r20,lo8(102)
	ldi r21,lo8(64)
	call __divsf3
	movw r18,r22
	movw r20,r24
	lds r22,Relative_Distance_Internal_Test
	lds r23,Relative_Distance_Internal_Test+1
	lds r24,Relative_Distance_Internal_Test+2
	lds r25,Relative_Distance_Internal_Test+3
	call __subsf3
	movw r4,r22
	movw r6,r24
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-106)
	ldi r21,lo8(67)
	call __gtsf2
	cp __zero_reg__,r24
	brlt .L4
	sts Relative_Distance_Internal_Test,r4
	sts Relative_Distance_Internal_Test+1,r5
	sts Relative_Distance_Internal_Test+2,r6
	sts Relative_Distance_Internal_Test+3,r7
	rjmp .L5
.L4:
	ldi r24,0
	ldi r25,0
	ldi r26,lo8(-106)
	ldi r27,lo8(67)
	sts Relative_Distance_Internal_Test,r24
	sts Relative_Distance_Internal_Test+1,r25
	sts Relative_Distance_Internal_Test+2,r26
	sts Relative_Distance_Internal_Test+3,r27
.L5:
	lds r24,Status_Dec_Inc
	lds r25,Status_Dec_Inc+1
	sbiw r24,0
	brne .L6
	ldi r18,lo8(-51)
	ldi r19,lo8(-52)
	ldi r20,lo8(-52)
	ldi r21,lo8(61)
	lds r22,Output_Acceleration
	lds r23,Output_Acceleration+1
	lds r24,Output_Acceleration+2
	lds r25,Output_Acceleration+3
	call __mulsf3
	ldi r18,lo8(102)
	ldi r19,lo8(102)
	ldi r20,lo8(102)
	ldi r21,lo8(64)
	call __mulsf3
	movw r18,r22
	movw r20,r24
	movw r24,r10
	movw r22,r8
	call __subsf3
	rjmp .L12
.L6:
	sbiw r24,1
	brne .L7
	ldi r18,lo8(-51)
	ldi r19,lo8(-52)
	ldi r20,lo8(-52)
	ldi r21,lo8(61)
	lds r22,Output_Acceleration
	lds r23,Output_Acceleration+1
	lds r24,Output_Acceleration+2
	lds r25,Output_Acceleration+3
	call __mulsf3
	ldi r18,lo8(102)
	ldi r19,lo8(102)
	ldi r20,lo8(102)
	ldi r21,lo8(64)
	call __mulsf3
	movw r18,r22
	movw r20,r24
	movw r24,r10
	movw r22,r8
	call __addsf3
.L12:
	sts Vehicle_Speed_Internal_Test,r22
	sts Vehicle_Speed_Internal_Test+1,r23
	sts Vehicle_Speed_Internal_Test+2,r24
	sts Vehicle_Speed_Internal_Test+3,r25
.L7:
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-56)
	ldi r21,lo8(66)
	movw r24,r14
	movw r22,r12
	call __ltsf2
	sbrs r24,7
	rjmp .L11
	ldi r18,lo8(113)
	ldi r19,lo8(61)
	ldi r20,lo8(-118)
	ldi r21,lo8(63)
	movw r24,r14
	movw r22,r12
	call __addsf3
	sts target_vehicle_speed.1488,r22
	sts target_vehicle_speed.1488+1,r23
	sts target_vehicle_speed.1488+2,r24
	sts target_vehicle_speed.1488+3,r25
	rjmp .L1
.L11:
	ldi r24,0
	ldi r25,0
	ldi r26,lo8(-56)
	ldi r27,lo8(66)
	sts target_vehicle_speed.1488,r24
	sts target_vehicle_speed.1488+1,r25
	sts target_vehicle_speed.1488+2,r26
	sts target_vehicle_speed.1488+3,r27
.L1:
/* epilogue start */
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	ret
	.size	Run_Test_with_Internal_Variable, .-Run_Test_with_Internal_Variable
	.section	.data.target_vehicle_speed.1488,"aw",@progbits
	.type	target_vehicle_speed.1488, @object
	.size	target_vehicle_speed.1488, 4
target_vehicle_speed.1488:
	.byte	0
	.byte	0
	.byte	32
	.byte	66
	.section	.data.initial_settings,"aw",@progbits
	.type	initial_settings, @object
	.size	initial_settings, 2
initial_settings:
	.word	1
	.comm	Speed_SetbyDriver_Internal_Test,4,1
	.comm	Relative_Distance_Internal_Test,4,1
	.comm	Vehicle_Speed_Internal_Test,4,1
	.comm	EBS_Enable_Internal_Test,2,1
	.comm	CWAS_Enable_Internal_Test,2,1
	.comm	ACC_Enable_Internal_Test,2,1
	.comm	CC_Enable_Internal_Test,2,1
	.ident	"GCC: (GNU) 4.9.2"
.global __do_copy_data
.global __do_clear_bss
