	.file	"Acc_Dec_Dtrmn_Sys.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text.Check_Enable_of_SubFeatures,"ax",@progbits
.global	Check_Enable_of_SubFeatures
	.type	Check_Enable_of_SubFeatures, @function
Check_Enable_of_SubFeatures:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,Status_Accel_Decel
	lds r25,Status_Accel_Decel+1
	cpi r24,5
	cpc r25,__zero_reg__
	brne .L2
	lds r24,CC_Enable
	lds r25,CC_Enable+1
	sbiw r24,1
	breq .L1
.L4:
	lds r24,ACC_Enable
	lds r25,ACC_Enable+1
.L19:
	sbiw r24,1
	breq .L1
.L6:
	sts Output_Acceleration,__zero_reg__
	sts Output_Acceleration+1,__zero_reg__
	sts Output_Acceleration+2,__zero_reg__
	sts Output_Acceleration+3,__zero_reg__
	sts Status_Accel_Decel+1,__zero_reg__
	sts Status_Accel_Decel,__zero_reg__
	ldi r24,lo8(2)
	ldi r25,0
	sts Status_Dec_Inc+1,r25
	sts Status_Dec_Inc,r24
	ret
.L2:
	cpi r24,4
	cpc r25,__zero_reg__
	breq .L4
	cpi r24,3
	cpc r25,__zero_reg__
	brne .L5
	lds r24,CWAS_Enable
	lds r25,CWAS_Enable+1
	sbiw r24,1
	brne .L6
	ret
.L5:
	sbiw r24,1
	sbiw r24,2
	brsh .L1
	lds r24,EBS_Enable
	lds r25,EBS_Enable+1
	rjmp .L19
.L1:
	ret
	.size	Check_Enable_of_SubFeatures, .-Check_Enable_of_SubFeatures
.global	__subsf3
.global	__addsf3
.global	__divsf3
.global	__mulsf3
.global	__nesf2
.global	__gtsf2
.global	__lesf2
.global	__ltsf2
	.section	.text.Acc_Dec_Dtrmn_Sys,"ax",@progbits
.global	Acc_Dec_Dtrmn_Sys
	.type	Acc_Dec_Dtrmn_Sys, @function
Acc_Dec_Dtrmn_Sys:
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
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,28
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 28 */
/* stack size = 42 */
.L__stack_usage = 42
	lds r24,CC_Enable
	lds r25,CC_Enable+1
	sbiw r24,1
	breq .L22
	lds r24,ACC_Enable
	lds r25,ACC_Enable+1
	sbiw r24,1
	breq .L22
	lds r24,CWAS_Enable
	lds r25,CWAS_Enable+1
	sbiw r24,1
	breq .L22
	lds r24,EBS_Enable
	lds r25,EBS_Enable+1
	sbiw r24,1
	breq .+2
	rjmp .L23
.L22:
	lds r24,skip_first_two_dat
	cpi r24,lo8(2)
	brge .L24
	subi r24,lo8(-(1))
	sts skip_first_two_dat,r24
	rjmp .L25
.L24:
	lds r18,Vehicle_Speed_Prev
	lds r19,Vehicle_Speed_Prev+1
	lds r20,Vehicle_Speed_Prev+2
	lds r21,Vehicle_Speed_Prev+3
	lds r22,Vehicle_Speed
	lds r23,Vehicle_Speed+1
	lds r24,Vehicle_Speed+2
	lds r25,Vehicle_Speed+3
	call __subsf3
	movw r12,r22
	movw r14,r24
	lds r18,Relative_Speed
	lds r19,Relative_Speed+1
	lds r20,Relative_Speed+2
	lds r21,Relative_Speed+3
	lds r22,Relative_Speed_Prev
	lds r23,Relative_Speed_Prev+1
	lds r24,Relative_Speed_Prev+2
	lds r25,Relative_Speed_Prev+3
	call __subsf3
	movw r18,r22
	movw r20,r24
	movw r24,r14
	movw r22,r12
	call __addsf3
	ldi r18,lo8(-51)
	ldi r19,lo8(-52)
	ldi r20,lo8(-52)
	ldi r21,lo8(61)
	call __divsf3
	sts Target_Veh_Accel,r22
	sts Target_Veh_Accel+1,r23
	sts Target_Veh_Accel+2,r24
	sts Target_Veh_Accel+3,r25
.L25:
	lds r8,Vehicle_Speed
	lds r9,Vehicle_Speed+1
	lds r10,Vehicle_Speed+2
	lds r11,Vehicle_Speed+3
	sts Vehicle_Speed_Prev,r8
	sts Vehicle_Speed_Prev+1,r9
	sts Vehicle_Speed_Prev+2,r10
	sts Vehicle_Speed_Prev+3,r11
	lds r12,Relative_Speed
	lds r13,Relative_Speed+1
	lds r14,Relative_Speed+2
	lds r15,Relative_Speed+3
	sts Relative_Speed_Prev,r12
	sts Relative_Speed_Prev+1,r13
	sts Relative_Speed_Prev+2,r14
	sts Relative_Speed_Prev+3,r15
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,lo8(63)
	movw r24,r10
	movw r22,r8
	call __mulsf3
	std Y+1,r22
	std Y+2,r23
	std Y+3,r24
	std Y+4,r25
	sts Safety_Distance_Regulation,r22
	sts Safety_Distance_Regulation+1,r23
	sts Safety_Distance_Regulation+2,r24
	sts Safety_Distance_Regulation+3,r25
	movw r26,r24
	movw r24,r22
	sts Safety_Distance,r24
	sts Safety_Distance+1,r25
	sts Safety_Distance+2,r26
	sts Safety_Distance+3,r27
	ldi r18,lo8(102)
	ldi r19,lo8(102)
	ldi r20,lo8(102)
	ldi r21,lo8(64)
	movw r24,r10
	movw r22,r8
	call __divsf3
	movw r18,r22
	movw r20,r24
	call __mulsf3
	movw r4,r22
	movw r6,r24
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(64)
	ldi r21,lo8(65)
	call __divsf3
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	sts SafetyDistance_HalfBrake,r22
	sts SafetyDistance_HalfBrake+1,r23
	sts SafetyDistance_HalfBrake+2,r24
	sts SafetyDistance_HalfBrake+3,r25
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(96)
	ldi r21,lo8(65)
	movw r24,r6
	movw r22,r4
	call __divsf3
	std Y+9,r22
	std Y+10,r23
	std Y+11,r24
	std Y+12,r25
	sts SafetyDistance_HalfFullBrake,r22
	sts SafetyDistance_HalfFullBrake+1,r23
	sts SafetyDistance_HalfFullBrake+2,r24
	sts SafetyDistance_HalfFullBrake+3,r25
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-128)
	ldi r21,lo8(61)
	movw r24,r6
	movw r22,r4
	call __mulsf3
	std Y+13,r22
	std Y+14,r23
	std Y+15,r24
	std Y+16,r25
	sts SafetyDistance_FullBrake,r22
	sts SafetyDistance_FullBrake+1,r23
	sts SafetyDistance_FullBrake+2,r24
	sts SafetyDistance_FullBrake+3,r25
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-64)
	ldi r21,lo8(64)
	movw r24,r6
	movw r22,r4
	call __divsf3
	std Y+17,r22
	std Y+18,r23
	std Y+19,r24
	std Y+20,r25
	sts SafetyDistance_AccDisabled,r22
	sts SafetyDistance_AccDisabled+1,r23
	sts SafetyDistance_AccDisabled+2,r24
	sts SafetyDistance_AccDisabled+3,r25
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-96)
	ldi r21,lo8(64)
	movw r24,r6
	movw r22,r4
	call __divsf3
	std Y+21,r22
	std Y+22,r23
	std Y+23,r24
	std Y+24,r25
	sts SafetyDistance_AccMin,r22
	sts SafetyDistance_AccMin+1,r23
	sts SafetyDistance_AccMin+2,r24
	sts SafetyDistance_AccMin+3,r25
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-128)
	ldi r21,lo8(62)
	movw r24,r6
	movw r22,r4
	call __mulsf3
	std Y+25,r22
	std Y+26,r23
	std Y+27,r24
	std Y+28,r25
	sts SafetyDistance_AccMax,r22
	sts SafetyDistance_AccMax+1,r23
	sts SafetyDistance_AccMax+2,r24
	sts SafetyDistance_AccMax+3,r25
	ldi r18,0
	ldi r19,0
	movw r20,r18
	movw r24,r14
	movw r22,r12
	call __nesf2
	tst r24
	brne .+2
	rjmp .L142
	ldi r18,lo8(102)
	ldi r19,lo8(102)
	ldi r20,lo8(102)
	ldi r21,lo8(64)
	movw r24,r14
	movw r22,r12
	call __divsf3
	movw r4,r22
	movw r6,r24
	movw r18,r22
	movw r20,r24
	lds r22,Relative_Distance
	lds r23,Relative_Distance+1
	lds r24,Relative_Distance+2
	lds r25,Relative_Distance+3
	call __divsf3
	sts TTC,r22
	sts TTC+1,r23
	sts TTC+2,r24
	sts TTC+3,r25
	movw r20,r6
	movw r18,r4
	ldd r22,Y+5
	ldd r23,Y+6
	ldd r24,Y+7
	ldd r25,Y+8
	call __divsf3
	sts TTC_HalfBrake,r22
	sts TTC_HalfBrake+1,r23
	sts TTC_HalfBrake+2,r24
	sts TTC_HalfBrake+3,r25
	movw r20,r6
	movw r18,r4
	ldd r22,Y+9
	ldd r23,Y+10
	ldd r24,Y+11
	ldd r25,Y+12
	call __divsf3
	sts TTC_HalfFullBrake,r22
	sts TTC_HalfFullBrake+1,r23
	sts TTC_HalfFullBrake+2,r24
	sts TTC_HalfFullBrake+3,r25
	movw r20,r6
	movw r18,r4
	ldd r22,Y+13
	ldd r23,Y+14
	ldd r24,Y+15
	ldd r25,Y+16
	call __divsf3
	sts TTC_FullBrake,r22
	sts TTC_FullBrake+1,r23
	sts TTC_FullBrake+2,r24
	sts TTC_FullBrake+3,r25
	movw r20,r6
	movw r18,r4
	ldd r22,Y+17
	ldd r23,Y+18
	ldd r24,Y+19
	ldd r25,Y+20
	call __divsf3
	sts TTC_AccDisabled,r22
	sts TTC_AccDisabled+1,r23
	sts TTC_AccDisabled+2,r24
	sts TTC_AccDisabled+3,r25
	movw r20,r6
	movw r18,r4
	ldd r22,Y+21
	ldd r23,Y+22
	ldd r24,Y+23
	ldd r25,Y+24
	call __divsf3
	sts TTC_AccMin,r22
	sts TTC_AccMin+1,r23
	sts TTC_AccMin+2,r24
	sts TTC_AccMin+3,r25
	movw r20,r6
	movw r18,r4
	ldd r22,Y+25
	ldd r23,Y+26
	ldd r24,Y+27
	ldd r25,Y+28
	call __divsf3
	sts TTC_AccMax,r22
	sts TTC_AccMax+1,r23
	sts TTC_AccMax+2,r24
	sts TTC_AccMax+3,r25
	movw r20,r6
	movw r18,r4
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	call __divsf3
	sts TTC_SafetyDistMin,r22
	sts TTC_SafetyDistMin+1,r23
	sts TTC_SafetyDistMin+2,r24
	sts TTC_SafetyDistMin+3,r25
	rjmp .L28
.L142:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	ldi r26,lo8(127)
	ldi r27,lo8(127)
	sts TTC,r24
	sts TTC+1,r25
	sts TTC+2,r26
	sts TTC+3,r27
	sts TTC_HalfBrake,r24
	sts TTC_HalfBrake+1,r25
	sts TTC_HalfBrake+2,r26
	sts TTC_HalfBrake+3,r27
	sts TTC_HalfFullBrake,r24
	sts TTC_HalfFullBrake+1,r25
	sts TTC_HalfFullBrake+2,r26
	sts TTC_HalfFullBrake+3,r27
	sts TTC_FullBrake,r24
	sts TTC_FullBrake+1,r25
	sts TTC_FullBrake+2,r26
	sts TTC_FullBrake+3,r27
	sts TTC_AccDisabled,r24
	sts TTC_AccDisabled+1,r25
	sts TTC_AccDisabled+2,r26
	sts TTC_AccDisabled+3,r27
	sts TTC_AccMin,r24
	sts TTC_AccMin+1,r25
	sts TTC_AccMin+2,r26
	sts TTC_AccMin+3,r27
	sts TTC_AccMax,r24
	sts TTC_AccMax+1,r25
	sts TTC_AccMax+2,r26
	sts TTC_AccMax+3,r27
	sts TTC_SafetyDistMin,r24
	sts TTC_SafetyDistMin+1,r25
	sts TTC_SafetyDistMin+2,r26
	sts TTC_SafetyDistMin+3,r27
.L28:
	sts Output_Acceleration,__zero_reg__
	sts Output_Acceleration+1,__zero_reg__
	sts Output_Acceleration+2,__zero_reg__
	sts Output_Acceleration+3,__zero_reg__
	ldi r18,0
	ldi r19,0
	movw r20,r18
	movw r24,r14
	movw r22,r12
	call __gtsf2
	cp __zero_reg__,r24
	brge .L143
	lds r18,TTC_FullBrake
	lds r19,TTC_FullBrake+1
	lds r20,TTC_FullBrake+2
	lds r21,TTC_FullBrake+3
	lds r22,TTC
	lds r23,TTC+1
	lds r24,TTC+2
	lds r25,TTC+3
	call __lesf2
	cp __zero_reg__,r24
	brlt .L144
	rjmp .L31
.L143:
	ldi r18,0
	ldi r19,0
	movw r20,r18
	movw r24,r14
	movw r22,r12
	call __lesf2
	cp __zero_reg__,r24
	brge .+2
	rjmp .L96
.L109:
	lds r18,SafetyDistance_FullBrake
	lds r19,SafetyDistance_FullBrake+1
	lds r20,SafetyDistance_FullBrake+2
	lds r21,SafetyDistance_FullBrake+3
	lds r22,Relative_Distance
	lds r23,Relative_Distance+1
	lds r24,Relative_Distance+2
	lds r25,Relative_Distance+3
	call __lesf2
	cp __zero_reg__,r24
	brge .+2
	rjmp .L146
.L31:
	ldi r24,0
	ldi r25,0
	ldi r26,0
	ldi r27,lo8(65)
	sts Output_Acceleration,r24
	sts Output_Acceleration+1,r25
	sts Output_Acceleration+2,r26
	sts Output_Acceleration+3,r27
	rjmp .L171
.L144:
	ldi r18,0
	ldi r19,0
	movw r20,r18
	movw r24,r14
	movw r22,r12
	call __lesf2
	cp __zero_reg__,r24
	brge .L109
.L110:
	lds r18,TTC_HalfFullBrake
	lds r19,TTC_HalfFullBrake+1
	lds r20,TTC_HalfFullBrake+2
	lds r21,TTC_HalfFullBrake+3
	lds r22,TTC
	lds r23,TTC+1
	lds r24,TTC+2
	lds r25,TTC+3
	call __lesf2
	cp __zero_reg__,r24
	brlt .L147
.L40:
	ldi r18,lo8(102)
	ldi r19,lo8(102)
	ldi r20,lo8(102)
	ldi r21,lo8(64)
	lds r22,Vehicle_Speed
	lds r23,Vehicle_Speed+1
	lds r24,Vehicle_Speed+2
	lds r25,Vehicle_Speed+3
	call __divsf3
	movw r18,r22
	movw r20,r24
	call __mulsf3
	movw r12,r22
	movw r14,r24
	lds r22,Relative_Distance
	lds r23,Relative_Distance+1
	lds r24,Relative_Distance+2
	lds r25,Relative_Distance+3
	movw r18,r22
	movw r20,r24
	call __addsf3
	movw r18,r22
	movw r20,r24
	movw r24,r14
	movw r22,r12
	call __divsf3
	sts Output_Acceleration,r22
	sts Output_Acceleration+1,r23
	sts Output_Acceleration+2,r24
	sts Output_Acceleration+3,r25
.L171:
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L166
.L147:
	ldi r18,0
	ldi r19,0
	movw r20,r18
	movw r24,r14
	movw r22,r12
	call __lesf2
	cp __zero_reg__,r24
	brlt .+2
	rjmp .L111
.L112:
	lds r18,TTC_HalfBrake
	lds r19,TTC_HalfBrake+1
	lds r20,TTC_HalfBrake+2
	lds r21,TTC_HalfBrake+3
	lds r22,TTC
	lds r23,TTC+1
	lds r24,TTC+2
	lds r25,TTC+3
	call __lesf2
	cp __zero_reg__,r24
	brlt .+2
	rjmp .L48
	ldi r18,0
	ldi r19,0
	movw r20,r18
	movw r24,r14
	movw r22,r12
	call __lesf2
	cp __zero_reg__,r24
	brlt .+2
	rjmp .L113
.L114:
	lds r18,TTC_SafetyDistMin
	lds r19,TTC_SafetyDistMin+1
	lds r20,TTC_SafetyDistMin+2
	lds r21,TTC_SafetyDistMin+3
	lds r22,TTC
	lds r23,TTC+1
	lds r24,TTC+2
	lds r25,TTC+3
	call __lesf2
	cp __zero_reg__,r24
	brlt .+2
	rjmp .L56
	ldi r18,0
	ldi r19,0
	movw r20,r18
	movw r24,r14
	movw r22,r12
	call __lesf2
	cp __zero_reg__,r24
	brlt .+2
	rjmp .L115
.L116:
	lds r18,TTC_AccDisabled
	lds r19,TTC_AccDisabled+1
	lds r20,TTC_AccDisabled+2
	lds r21,TTC_AccDisabled+3
	lds r22,TTC
	lds r23,TTC+1
	lds r24,TTC+2
	lds r25,TTC+3
	call __lesf2
	cp __zero_reg__,r24
	brlt .+2
	rjmp .L64
	ldi r18,0
	ldi r19,0
	movw r20,r18
	movw r24,r14
	movw r22,r12
	call __lesf2
	cp __zero_reg__,r24
	brlt .+2
	rjmp .L117
.L118:
	lds r18,TTC_AccMin
	lds r19,TTC_AccMin+1
	lds r20,TTC_AccMin+2
	lds r21,TTC_AccMin+3
	lds r22,TTC
	lds r23,TTC+1
	lds r24,TTC+2
	lds r25,TTC+3
	call __lesf2
	cp __zero_reg__,r24
	brlt .+2
	rjmp .L72
	ldi r18,0
	ldi r19,0
	movw r20,r18
	movw r24,r14
	movw r22,r12
	call __lesf2
	cp __zero_reg__,r24
	brlt .+2
	rjmp .L119
.L120:
	lds r18,TTC_AccMax
	lds r19,TTC_AccMax+1
	lds r20,TTC_AccMax+2
	lds r21,TTC_AccMax+3
	lds r22,TTC
	lds r23,TTC+1
	lds r24,TTC+2
	lds r25,TTC+3
	call __lesf2
	cp __zero_reg__,r24
	brlt .+2
	rjmp .L82
	ldi r18,0
	ldi r19,0
	movw r20,r18
	movw r24,r14
	movw r22,r12
	call __lesf2
	cp __zero_reg__,r24
	brlt .+2
	rjmp .L121
.L122:
	lds r18,TTC_AccMax
	lds r19,TTC_AccMax+1
	lds r20,TTC_AccMax+2
	lds r21,TTC_AccMax+3
	lds r22,TTC
	lds r23,TTC+1
	lds r24,TTC+2
	lds r25,TTC+3
	call __gtsf2
	cp __zero_reg__,r24
	brlt .L98
.L96:
	ldi r18,0
	ldi r19,0
	movw r20,r18
	movw r24,r14
	movw r22,r12
	call __lesf2
	cp __zero_reg__,r24
	brge .+2
	rjmp .L37
.L123:
	lds r18,SafetyDistance_AccMax
	lds r19,SafetyDistance_AccMax+1
	lds r20,SafetyDistance_AccMax+2
	lds r21,SafetyDistance_AccMax+3
	lds r22,Relative_Distance
	lds r23,Relative_Distance+1
	lds r24,Relative_Distance+2
	lds r25,Relative_Distance+3
	call __gtsf2
	cp __zero_reg__,r24
	brlt .+2
	rjmp .L37
.L98:
	lds r12,Speed_SetbyDriver
	lds r13,Speed_SetbyDriver+1
	lds r14,Speed_SetbyDriver+2
	lds r15,Speed_SetbyDriver+3
	movw r20,r10
	movw r18,r8
	movw r24,r14
	movw r22,r12
	call __gtsf2
	movw r20,r10
	movw r18,r8
	cp __zero_reg__,r24
	brge .L160
	movw r24,r14
	movw r22,r12
	call __subsf3
	movw r12,r22
	movw r14,r24
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(64)
	ldi r21,lo8(64)
	call __gtsf2
	cp __zero_reg__,r24
	brge .L161
	ldi r24,0
	ldi r25,0
	ldi r26,lo8(64)
	ldi r27,lo8(64)
	sts Output_Acceleration,r24
	sts Output_Acceleration+1,r25
	sts Output_Acceleration+2,r26
	sts Output_Acceleration+3,r27
	rjmp .L173
.L161:
	sts Output_Acceleration,r12
	sts Output_Acceleration+1,r13
	sts Output_Acceleration+2,r14
	sts Output_Acceleration+3,r15
.L173:
	ldi r24,lo8(5)
	ldi r25,0
.L172:
	sts Status_Accel_Decel+1,r25
	sts Status_Accel_Decel,r24
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L168
.L160:
	movw r24,r14
	movw r22,r12
	call __ltsf2
	sbrs r24,7
	rjmp .L162
	movw r20,r10
	movw r18,r8
	movw r24,r14
	movw r22,r12
	call __subsf3
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(64)
	ldi r21,lo8(-64)
	call __ltsf2
	sbrs r24,7
	rjmp .L163
	ldi r24,0
	ldi r25,0
	ldi r26,lo8(64)
	ldi r27,lo8(64)
	sts Output_Acceleration,r24
	sts Output_Acceleration+1,r25
	sts Output_Acceleration+2,r26
	sts Output_Acceleration+3,r27
.L167:
	ldi r24,lo8(5)
	ldi r25,0
.L166:
	sts Status_Accel_Decel+1,r25
	sts Status_Accel_Decel,r24
	sts Status_Dec_Inc+1,__zero_reg__
	sts Status_Dec_Inc,__zero_reg__
	rjmp .L37
.L163:
	movw r20,r14
	movw r18,r12
	movw r24,r10
	movw r22,r8
	call __subsf3
	sts Output_Acceleration,r22
	sts Output_Acceleration+1,r23
	sts Output_Acceleration+2,r24
	sts Output_Acceleration+3,r25
	rjmp .L167
.L162:
	ldi r24,lo8(5)
	ldi r25,0
.L170:
	sts Status_Accel_Decel+1,r25
	sts Status_Accel_Decel,r24
.L169:
	ldi r24,lo8(2)
	ldi r25,0
.L168:
	sts Status_Dec_Inc+1,r25
	sts Status_Dec_Inc,r24
.L37:
/* epilogue start */
	adiw r28,28
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
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
	jmp Check_Enable_of_SubFeatures
.L23:
	sts Output_Acceleration,__zero_reg__
	sts Output_Acceleration+1,__zero_reg__
	sts Output_Acceleration+2,__zero_reg__
	sts Output_Acceleration+3,__zero_reg__
	sts Status_Accel_Decel+1,__zero_reg__
	sts Status_Accel_Decel,__zero_reg__
	ldi r24,lo8(2)
	ldi r25,0
	sts Status_Dec_Inc+1,r25
	sts Status_Dec_Inc,r24
/* epilogue start */
	adiw r28,28
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
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
.L146:
	ldi r18,0
	ldi r19,0
	movw r20,r18
	movw r24,r14
	movw r22,r12
	call __gtsf2
	cp __zero_reg__,r24
	brge .+2
	rjmp .L110
.L111:
	lds r18,SafetyDistance_HalfFullBrake
	lds r19,SafetyDistance_HalfFullBrake+1
	lds r20,SafetyDistance_HalfFullBrake+2
	lds r21,SafetyDistance_HalfFullBrake+3
	lds r22,Relative_Distance
	lds r23,Relative_Distance+1
	lds r24,Relative_Distance+2
	lds r25,Relative_Distance+3
	call __lesf2
	cp __zero_reg__,r24
	brlt .+2
	rjmp .L40
	ldi r18,0
	ldi r19,0
	movw r20,r18
	movw r24,r14
	movw r22,r12
	call __gtsf2
	cp __zero_reg__,r24
	brge .+2
	rjmp .L112
.L113:
	lds r18,SafetyDistance_HalfBrake
	lds r19,SafetyDistance_HalfBrake+1
	lds r20,SafetyDistance_HalfBrake+2
	lds r21,SafetyDistance_HalfBrake+3
	lds r22,Relative_Distance
	lds r23,Relative_Distance+1
	lds r24,Relative_Distance+2
	lds r25,Relative_Distance+3
	call __lesf2
	cp __zero_reg__,r24
	brlt .L150
.L48:
	ldi r18,lo8(102)
	ldi r19,lo8(102)
	ldi r20,lo8(102)
	ldi r21,lo8(64)
	lds r22,Vehicle_Speed
	lds r23,Vehicle_Speed+1
	lds r24,Vehicle_Speed+2
	lds r25,Vehicle_Speed+3
	call __divsf3
	movw r18,r22
	movw r20,r24
	call __mulsf3
	movw r12,r22
	movw r14,r24
	lds r22,Relative_Distance
	lds r23,Relative_Distance+1
	lds r24,Relative_Distance+2
	lds r25,Relative_Distance+3
	movw r18,r22
	movw r20,r24
	call __addsf3
	movw r18,r22
	movw r20,r24
	movw r24,r14
	movw r22,r12
	call __divsf3
	sts Output_Acceleration,r22
	sts Output_Acceleration+1,r23
	sts Output_Acceleration+2,r24
	sts Output_Acceleration+3,r25
	ldi r24,lo8(2)
	ldi r25,0
	rjmp .L166
.L150:
	ldi r18,0
	ldi r19,0
	movw r20,r18
	movw r24,r14
	movw r22,r12
	call __gtsf2
	cp __zero_reg__,r24
	brge .+2
	rjmp .L114
.L115:
	lds r18,Safety_Distance
	lds r19,Safety_Distance+1
	lds r20,Safety_Distance+2
	lds r21,Safety_Distance+3
	lds r22,Relative_Distance
	lds r23,Relative_Distance+1
	lds r24,Relative_Distance+2
	lds r25,Relative_Distance+3
	call __lesf2
	cp __zero_reg__,r24
	brlt .L152
.L56:
	ldi r18,lo8(102)
	ldi r19,lo8(102)
	ldi r20,lo8(102)
	ldi r21,lo8(64)
	lds r22,Vehicle_Speed
	lds r23,Vehicle_Speed+1
	lds r24,Vehicle_Speed+2
	lds r25,Vehicle_Speed+3
	call __divsf3
	movw r18,r22
	movw r20,r24
	call __mulsf3
	movw r12,r22
	movw r14,r24
	lds r22,Relative_Distance
	lds r23,Relative_Distance+1
	lds r24,Relative_Distance+2
	lds r25,Relative_Distance+3
	movw r18,r22
	movw r20,r24
	call __addsf3
	movw r18,r22
	movw r20,r24
	movw r24,r14
	movw r22,r12
	call __divsf3
	sts Output_Acceleration,r22
	sts Output_Acceleration+1,r23
	sts Output_Acceleration+2,r24
	sts Output_Acceleration+3,r25
	ldi r24,lo8(3)
	ldi r25,0
	rjmp .L166
.L152:
	ldi r18,0
	ldi r19,0
	movw r20,r18
	movw r24,r14
	movw r22,r12
	call __gtsf2
	cp __zero_reg__,r24
	brge .+2
	rjmp .L116
.L117:
	lds r18,SafetyDistance_AccDisabled
	lds r19,SafetyDistance_AccDisabled+1
	lds r20,SafetyDistance_AccDisabled+2
	lds r21,SafetyDistance_AccDisabled+3
	lds r22,Relative_Distance
	lds r23,Relative_Distance+1
	lds r24,Relative_Distance+2
	lds r25,Relative_Distance+3
	call __lesf2
	cp __zero_reg__,r24
	brlt .L154
.L64:
	sts Status_Accel_Decel+1,__zero_reg__
	sts Status_Accel_Decel,__zero_reg__
	rjmp .L169
.L154:
	ldi r18,0
	ldi r19,0
	movw r20,r18
	movw r24,r14
	movw r22,r12
	call __gtsf2
	cp __zero_reg__,r24
	brge .+2
	rjmp .L118
.L119:
	lds r18,SafetyDistance_AccMin
	lds r19,SafetyDistance_AccMin+1
	lds r20,SafetyDistance_AccMin+2
	lds r21,SafetyDistance_AccMin+3
	lds r22,Relative_Distance
	lds r23,Relative_Distance+1
	lds r24,Relative_Distance+2
	lds r25,Relative_Distance+3
	call __lesf2
	cp __zero_reg__,r24
	brge .+2
	rjmp .L156
.L72:
	ldi r18,lo8(102)
	ldi r19,lo8(102)
	ldi r20,lo8(102)
	ldi r21,lo8(64)
	lds r22,Vehicle_Speed
	lds r23,Vehicle_Speed+1
	lds r24,Vehicle_Speed+2
	lds r25,Vehicle_Speed+3
	call __divsf3
	movw r18,r22
	movw r20,r24
	call __mulsf3
	movw r12,r22
	movw r14,r24
	lds r22,Relative_Distance
	lds r23,Relative_Distance+1
	lds r24,Relative_Distance+2
	lds r25,Relative_Distance+3
.L165:
	movw r18,r22
	movw r20,r24
	call __addsf3
	movw r18,r22
	movw r20,r24
	movw r24,r14
	movw r22,r12
	call __divsf3
	sts Output_Acceleration,r22
	sts Output_Acceleration+1,r23
	sts Output_Acceleration+2,r24
	sts Output_Acceleration+3,r25
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(64)
	ldi r21,lo8(64)
	call __gtsf2
	cp __zero_reg__,r24
	brge .L79
	ldi r24,0
	ldi r25,0
	ldi r26,lo8(64)
	ldi r27,lo8(64)
	sts Output_Acceleration,r24
	sts Output_Acceleration+1,r25
	sts Output_Acceleration+2,r26
	sts Output_Acceleration+3,r27
.L79:
	ldi r24,lo8(4)
	ldi r25,0
	rjmp .L166
.L156:
	ldi r18,0
	ldi r19,0
	movw r20,r18
	movw r24,r14
	movw r22,r12
	call __gtsf2
	cp __zero_reg__,r24
	brge .+2
	rjmp .L120
.L121:
	lds r4,Relative_Distance
	lds r5,Relative_Distance+1
	lds r6,Relative_Distance+2
	lds r7,Relative_Distance+3
	lds r18,SafetyDistance_AccMax
	lds r19,SafetyDistance_AccMax+1
	lds r20,SafetyDistance_AccMax+2
	lds r21,SafetyDistance_AccMax+3
	movw r24,r6
	movw r22,r4
	call __lesf2
	ldi r18,0
	ldi r19,0
	movw r20,r18
	cp __zero_reg__,r24
	brge .+2
	rjmp .L158
	movw r24,r14
	movw r22,r12
	call __gtsf2
	cp __zero_reg__,r24
	brge .L159
.L82:
	ldi r18,lo8(102)
	ldi r19,lo8(102)
	ldi r20,lo8(102)
	ldi r21,lo8(64)
	movw r24,r14
	movw r22,r12
	call __divsf3
	movw r18,r22
	movw r20,r24
	call __mulsf3
	movw r12,r22
	movw r14,r24
	lds r18,SafetyDistance_AccMin
	lds r19,SafetyDistance_AccMin+1
	lds r20,SafetyDistance_AccMin+2
	lds r21,SafetyDistance_AccMin+3
	lds r22,Relative_Distance
	lds r23,Relative_Distance+1
	lds r24,Relative_Distance+2
	lds r25,Relative_Distance+3
	call __subsf3
	rjmp .L165
.L159:
	ldi r18,0
	ldi r19,0
	movw r20,r18
	movw r24,r14
	movw r22,r12
	call __ltsf2
	sbrs r24,7
	rjmp .L91
	lds r18,Vehicle_Speed
	lds r19,Vehicle_Speed+1
	lds r20,Vehicle_Speed+2
	lds r21,Vehicle_Speed+3
	lds r22,Speed_SetbyDriver
	lds r23,Speed_SetbyDriver+1
	lds r24,Speed_SetbyDriver+2
	lds r25,Speed_SetbyDriver+3
	call __gtsf2
	cp __zero_reg__,r24
	brlt .+2
	rjmp .L91
	ldi r18,lo8(102)
	ldi r19,lo8(102)
	ldi r20,lo8(102)
	ldi r21,lo8(64)
	movw r24,r14
	movw r22,r12
	call __divsf3
	movw r18,r22
	movw r20,r24
	call __mulsf3
	movw r12,r22
	movw r14,r24
	lds r18,SafetyDistance_AccMin
	lds r19,SafetyDistance_AccMin+1
	lds r20,SafetyDistance_AccMin+2
	lds r21,SafetyDistance_AccMin+3
	movw r24,r6
	movw r22,r4
	call __subsf3
	movw r18,r22
	movw r20,r24
	call __addsf3
	movw r18,r22
	movw r20,r24
	movw r24,r14
	movw r22,r12
	call __divsf3
	movw r12,r22
	movw r14,r24
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(64)
	ldi r21,lo8(64)
	call __gtsf2
	cp __zero_reg__,r24
	brlt .L94
	sts Output_Acceleration,r12
	sts Output_Acceleration+1,r13
	sts Output_Acceleration+2,r14
	sts Output_Acceleration+3,r15
	rjmp .L95
.L94:
	ldi r24,0
	ldi r25,0
	ldi r26,lo8(64)
	ldi r27,lo8(64)
	sts Output_Acceleration,r24
	sts Output_Acceleration+1,r25
	sts Output_Acceleration+2,r26
	sts Output_Acceleration+3,r27
.L95:
	ldi r24,lo8(4)
	ldi r25,0
	rjmp .L172
.L91:
	ldi r24,lo8(4)
	ldi r25,0
	rjmp .L170
.L158:
	movw r24,r14
	movw r22,r12
	call __gtsf2
	cp __zero_reg__,r24
	brge .+2
	rjmp .L122
	rjmp .L123
	.size	Acc_Dec_Dtrmn_Sys, .-Acc_Dec_Dtrmn_Sys
	.section	.bss.SafetyDistance_AccMax,"aw",@nobits
	.type	SafetyDistance_AccMax, @object
	.size	SafetyDistance_AccMax, 4
SafetyDistance_AccMax:
	.zero	4
	.section	.bss.SafetyDistance_AccMin,"aw",@nobits
	.type	SafetyDistance_AccMin, @object
	.size	SafetyDistance_AccMin, 4
SafetyDistance_AccMin:
	.zero	4
	.section	.bss.SafetyDistance_AccDisabled,"aw",@nobits
	.type	SafetyDistance_AccDisabled, @object
	.size	SafetyDistance_AccDisabled, 4
SafetyDistance_AccDisabled:
	.zero	4
	.section	.bss.SafetyDistance_HalfFullBrake,"aw",@nobits
	.type	SafetyDistance_HalfFullBrake, @object
	.size	SafetyDistance_HalfFullBrake, 4
SafetyDistance_HalfFullBrake:
	.zero	4
	.section	.bss.SafetyDistance_FullBrake,"aw",@nobits
	.type	SafetyDistance_FullBrake, @object
	.size	SafetyDistance_FullBrake, 4
SafetyDistance_FullBrake:
	.zero	4
	.section	.bss.SafetyDistance_HalfBrake,"aw",@nobits
	.type	SafetyDistance_HalfBrake, @object
	.size	SafetyDistance_HalfBrake, 4
SafetyDistance_HalfBrake:
	.zero	4
	.section	.bss.TTC_AccMax,"aw",@nobits
	.type	TTC_AccMax, @object
	.size	TTC_AccMax, 4
TTC_AccMax:
	.zero	4
	.section	.bss.TTC_AccMin,"aw",@nobits
	.type	TTC_AccMin, @object
	.size	TTC_AccMin, 4
TTC_AccMin:
	.zero	4
	.section	.bss.TTC_AccDisabled,"aw",@nobits
	.type	TTC_AccDisabled, @object
	.size	TTC_AccDisabled, 4
TTC_AccDisabled:
	.zero	4
	.section	.bss.TTC_SafetyDistMin,"aw",@nobits
	.type	TTC_SafetyDistMin, @object
	.size	TTC_SafetyDistMin, 4
TTC_SafetyDistMin:
	.zero	4
	.section	.bss.TTC_HalfFullBrake,"aw",@nobits
	.type	TTC_HalfFullBrake, @object
	.size	TTC_HalfFullBrake, 4
TTC_HalfFullBrake:
	.zero	4
	.section	.bss.TTC_FullBrake,"aw",@nobits
	.type	TTC_FullBrake, @object
	.size	TTC_FullBrake, 4
TTC_FullBrake:
	.zero	4
	.section	.bss.TTC_HalfBrake,"aw",@nobits
	.type	TTC_HalfBrake, @object
	.size	TTC_HalfBrake, 4
TTC_HalfBrake:
	.zero	4
	.section	.bss.TTC,"aw",@nobits
	.type	TTC, @object
	.size	TTC, 4
TTC:
	.zero	4
	.section	.bss.Safety_Distance_Regulation,"aw",@nobits
	.type	Safety_Distance_Regulation, @object
	.size	Safety_Distance_Regulation, 4
Safety_Distance_Regulation:
	.zero	4
	.section	.bss.Target_Veh_Accel,"aw",@nobits
	.type	Target_Veh_Accel, @object
	.size	Target_Veh_Accel, 4
Target_Veh_Accel:
	.zero	4
	.section	.bss.Relative_Speed_Prev,"aw",@nobits
	.type	Relative_Speed_Prev, @object
	.size	Relative_Speed_Prev, 4
Relative_Speed_Prev:
	.zero	4
	.section	.bss.Vehicle_Speed_Prev,"aw",@nobits
	.type	Vehicle_Speed_Prev, @object
	.size	Vehicle_Speed_Prev, 4
Vehicle_Speed_Prev:
	.zero	4
	.section	.bss.skip_first_two_dat,"aw",@nobits
	.type	skip_first_two_dat, @object
	.size	skip_first_two_dat, 1
skip_first_two_dat:
	.zero	1
.global	Status_Dec_Inc
	.section	.data.Status_Dec_Inc,"aw",@progbits
	.type	Status_Dec_Inc, @object
	.size	Status_Dec_Inc, 2
Status_Dec_Inc:
	.word	2
.global	Status_Accel_Decel
	.section	.bss.Status_Accel_Decel,"aw",@nobits
	.type	Status_Accel_Decel, @object
	.size	Status_Accel_Decel, 2
Status_Accel_Decel:
	.zero	2
.global	Output_Acceleration
	.section	.bss.Output_Acceleration,"aw",@nobits
	.type	Output_Acceleration, @object
	.size	Output_Acceleration, 4
Output_Acceleration:
	.zero	4
	.comm	Safety_Distance,4,1
	.ident	"GCC: (GNU) 4.9.2"
.global __do_copy_data
.global __do_clear_bss
