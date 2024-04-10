	.file	"Calc_Relative_Speed.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
.global	__subsf3
.global	__divsf3
.global	__mulsf3
	.section	.text.Calc_Relative_Speed,"ax",@progbits
.global	Calc_Relative_Speed
	.type	Calc_Relative_Speed, @function
Calc_Relative_Speed:
	push r12
	push r13
	push r14
	push r15
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r12,r22
	movw r14,r24
	lds r24,skip_first
	cpse r24,__zero_reg__
	rjmp .L2
	ldi r24,lo8(1)
	sts skip_first,r24
	rjmp .L3
.L2:
	movw r20,r14
	movw r18,r12
	lds r22,Relative_Distance_Prev
	lds r23,Relative_Distance_Prev+1
	lds r24,Relative_Distance_Prev+2
	lds r25,Relative_Distance_Prev+3
	call __subsf3
	ldi r18,lo8(-51)
	ldi r19,lo8(-52)
	ldi r20,lo8(-52)
	ldi r21,lo8(61)
	call __divsf3
	ldi r18,lo8(102)
	ldi r19,lo8(102)
	ldi r20,lo8(102)
	ldi r21,lo8(64)
	call __mulsf3
	sts Relative_Speed,r22
	sts Relative_Speed+1,r23
	sts Relative_Speed+2,r24
	sts Relative_Speed+3,r25
.L3:
	sts Relative_Distance_Prev,r12
	sts Relative_Distance_Prev+1,r13
	sts Relative_Distance_Prev+2,r14
	sts Relative_Distance_Prev+3,r15
/* epilogue start */
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	Calc_Relative_Speed, .-Calc_Relative_Speed
	.section	.bss.skip_first,"aw",@nobits
	.type	skip_first, @object
	.size	skip_first, 1
skip_first:
	.zero	1
.global	Relative_Speed
	.section	.bss.Relative_Speed,"aw",@nobits
	.type	Relative_Speed, @object
	.size	Relative_Speed, 4
Relative_Speed:
	.zero	4
	.section	.bss.Relative_Distance_Prev,"aw",@nobits
	.type	Relative_Distance_Prev, @object
	.size	Relative_Distance_Prev, 4
Relative_Distance_Prev:
	.zero	4
	.ident	"GCC: (GNU) 4.9.2"
.global __do_clear_bss
