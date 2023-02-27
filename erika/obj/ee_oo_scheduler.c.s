	.file	"ee_oo_scheduler.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.osEE_scheduler_core_rq_preempt_stk,"ax",@progbits
.global	osEE_scheduler_core_rq_preempt_stk
	.type	osEE_scheduler_core_rq_preempt_stk, @function
osEE_scheduler_core_rq_preempt_stk:
.LFB58:
	.file 1 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\src\\ee_oo_scheduler.c"
	.loc 1 240 0
	.cfi_startproc
.LVL0:
	push r16
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	.loc 1 241 0
	movw r28,r24
	ld r26,Y
	ldd r27,Y+1
.LVL1:
	.loc 1 242 0
	movw r28,r22
	ld r30,Y
	ldd r31,Y+1
.LVL2:
	.loc 1 243 0
	adiw r26,6
	ld r28,X+
	ld r29,X
	sbiw r26,6+1
.LVL3:
	.loc 1 248 0
	sbiw r28,0
	breq .L2
	.loc 1 249 0
	ldd r24,Y+2
	ldd r25,Y+3
.LVL4:
	.loc 1 250 0
	sbiw r30,0
	breq .L8
.LBB9:
	.loc 1 252 0
	movw r28,r24
.LVL5:
	ldd r16,Y+4
	ldd r17,Y+5
.LVL6:
	.loc 1 254 0
	ldd r18,Z+2
	ldd r19,Z+3
	movw r28,r18
	ldd r20,Y+4
	ldd r21,Y+5
	.loc 1 253 0
	movw r28,r16
	ldd r19,Y+1
	movw r28,r20
	ldd r18,Y+1
	cp r19,r18
	brsh .L8
.LVL7:
	.loc 1 260 0
	ldi r18,lo8(2)
	ldi r19,0
	movw r28,r16
	rjmp .L10
.LVL8:
.L2:
.LBE9:
	.loc 1 264 0
	sbiw r30,0
	breq .L8
	.loc 1 269 0
	movw r28,r24
.LVL9:
	ldd r24,Y+4
	ldd r25,Y+5
.LVL10:
	.loc 1 270 0
	movw r28,r24
.LVL11:
	ldd r20,Y+4
	ldd r21,Y+5
	ldi r18,lo8(2)
	ldi r19,0
	movw r28,r20
.L10:
	std Y+3,r19
	std Y+2,r18
.LVL12:
	.loc 1 279 0
	ld r18,Z
	ldd r19,Z+1
	movw r28,r22
	std Y+1,r19
	st Y,r18
.LVL13:
.LBB10:
.LBB11:
	.loc 1 63 0
	ldd r28,Z+2
	ldd r29,Z+3
.LVL14:
	.loc 1 64 0
	ldd r20,Y+4
	ldd r21,Y+5
.LVL15:
	.loc 1 72 0
	adiw r26,6
	ld r18,X+
	ld r19,X
	sbiw r26,6+1
	std Z+1,r19
	st Z,r18
	.loc 1 74 0
	adiw r26,6+1
	st X,r31
	st -X,r30
	sbiw r26,6
	.loc 1 75 0
	st X+,r28
	st X,r29
.LBB12:
	.loc 1 80 0
	ldd r18,Y+12
.LVL16:
	.loc 1 81 0
	movw r30,r20
.LVL17:
	ldd r19,Z+1
	cp r19,r18
	brsh .L9
	.loc 1 82 0
	movw r30,r20
	std Z+1,r18
.LVL18:
	rjmp .L9
.LVL19:
.L8:
.LBE12:
.LBE11:
.LBE10:
	.loc 1 287 0
	ldi r24,0
	ldi r25,0
.LVL20:
.L9:
/* epilogue start */
	.loc 1 295 0
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.cfi_endproc
.LFE58:
	.size	osEE_scheduler_core_rq_preempt_stk, .-osEE_scheduler_core_rq_preempt_stk
	.section	.text.osEE_sn_priority_insert,"ax",@progbits
.global	osEE_sn_priority_insert
	.type	osEE_sn_priority_insert, @function
osEE_sn_priority_insert:
.LFB59:
	.loc 1 306 0
	.cfi_startproc
.LVL21:
	push r16
.LCFI4:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI5:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI6:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI7:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	.loc 1 307 0
	movw r26,r22
	adiw r26,2
	ld r30,X+
	ld r31,X
	sbiw r26,2+1
.LVL22:
	.loc 1 308 0
	ldd r26,Z+4
	ldd r27,Z+5
.LVL23:
	.loc 1 309 0
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L13
	.loc 1 309 0 is_stmt 0 discriminator 1
	ldd r18,Z+11
	rjmp .L14
.L13:
	.loc 1 309 0 discriminator 2
	adiw r26,1
	ld r18,X
.L14:
.LVL24:
	.loc 1 314 0 is_stmt 1 discriminator 4
	movw r28,r24
	ld r30,Y
	ldd r31,Y+1
.LVL25:
	.loc 1 313 0 discriminator 4
	ldi r26,0
	ldi r27,0
.LVL26:
.L15:
	.loc 1 318 0
	sbiw r30,0
	breq .L18
.LBB13:
	.loc 1 320 0
	ldd r28,Z+2
	ldd r29,Z+3
.LVL27:
	.loc 1 321 0
	ldd r16,Y+4
	ldd r17,Y+5
.LVL28:
	.loc 1 323 0
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L16
	.loc 1 324 0
	ldd r19,Y+11
.LVL29:
	rjmp .L17
.LVL30:
.L16:
	.loc 1 326 0
	movw r28,r16
.LVL31:
	ldd r19,Y+1
.LVL32:
.L17:
	.loc 1 329 0
	cp r19,r18
	brlo .L18
.LVL33:
	.loc 1 332 0
	movw r26,r30
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
.LVL34:
	rjmp .L15
.LVL35:
.L18:
.LBE13:
	.loc 1 338 0
	sbiw r26,0
	breq .L20
	.loc 1 339 0
	st X+,r22
	st X,r23
	.loc 1 315 0
	ldi r24,0
	ldi r25,0
.LVL36:
	rjmp .L21
.LVL37:
.L20:
	.loc 1 341 0
	movw r26,r24
.LVL38:
	st X+,r22
	st X,r23
.LVL39:
	.loc 1 342 0
	ldi r24,lo8(1)
	ldi r25,0
.LVL40:
.L21:
	.loc 1 345 0
	movw r28,r22
	std Y+1,r31
	st Y,r30
/* epilogue start */
	.loc 1 348 0
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.cfi_endproc
.LFE59:
	.size	osEE_sn_priority_insert, .-osEE_sn_priority_insert
	.section	.text.osEE_scheduler_rq_insert,"ax",@progbits
.global	osEE_scheduler_rq_insert
	.type	osEE_scheduler_rq_insert, @function
osEE_scheduler_rq_insert:
.LFB57:
	.loc 1 224 0
	.cfi_startproc
.LVL41:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 225 0
	movw r30,r22
	std Z+3,r21
	std Z+2,r20
	.loc 1 228 0
	ldi r20,lo8(1)
	ldi r21,0
.LVL42:
	jmp osEE_sn_priority_insert
.LVL43:
	.cfi_endproc
.LFE57:
	.size	osEE_scheduler_rq_insert, .-osEE_scheduler_rq_insert
	.section	.text.osEE_scheduler_core_pop_running,"ax",@progbits
.global	osEE_scheduler_core_pop_running
	.type	osEE_scheduler_core_pop_running, @function
osEE_scheduler_core_pop_running:
.LFB60:
	.loc 1 356 0
	.cfi_startproc
.LVL44:
	push r14
.LCFI8:
	.cfi_def_cfa_offset 3
	.cfi_offset 14, -2
	push r15
.LCFI9:
	.cfi_def_cfa_offset 4
	.cfi_offset 15, -3
	push r16
.LCFI10:
	.cfi_def_cfa_offset 5
	.cfi_offset 16, -4
	push r17
.LCFI11:
	.cfi_def_cfa_offset 6
	.cfi_offset 17, -5
	push r28
.LCFI12:
	.cfi_def_cfa_offset 7
	.cfi_offset 28, -6
	push r29
.LCFI13:
	.cfi_def_cfa_offset 8
	.cfi_offset 29, -7
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	movw r16,r24
	.loc 1 357 0
	movw r30,r24
	ld r28,Z
	ldd r29,Z+1
.LVL45:
	.loc 1 358 0
	ldd r14,Y+6
	ldd r15,Y+7
.LVL46:
	.loc 1 364 0
	movw r30,r14
	ld r24,Z
	ldd r25,Z+1
.LVL47:
	std Y+7,r25
	std Y+6,r24
.LVL48:
.LBB14:
	.loc 1 387 0
	movw r24,r16
.LVL49:
	call osEE_scheduler_core_rq_preempt_stk
.LVL50:
	.loc 1 389 0
	ldd r30,Y+6
	ldd r31,Y+7
.LVL51:
	.loc 1 392 0
	or r24,r25
	brne .L24
.LBB15:
	.loc 1 403 0
	sbiw r30,0
	breq .L25
	.loc 1 405 0
	ldd r24,Z+2
	ldd r25,Z+3
.LVL52:
	rjmp .L26
.LVL53:
.L25:
	.loc 1 408 0
	movw r30,r16
.LVL54:
	ldd r24,Z+4
	ldd r25,Z+5
.LVL55:
.L26:
	.loc 1 411 0
	std Y+1,r25
	st Y,r24
.LVL56:
.L24:
.LBE15:
.LBE14:
	.loc 1 423 0
	movw r24,r14
/* epilogue start */
	pop r29
	pop r28
.LVL57:
	pop r17
	pop r16
.LVL58:
	pop r15
	pop r14
.LVL59:
	ret
	.cfi_endproc
.LFE60:
	.size	osEE_scheduler_core_pop_running, .-osEE_scheduler_core_pop_running
	.text
.Letext0:
	.file 2 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\stdint.h"
	.file 3 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\inc/ee_platform_types.h"
	.file 4 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\inc/ee_api_types.h"
	.file 5 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\inc/ee_scheduler_types.h"
	.file 6 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\inc/ee_kernel_types.h"
	.file 7 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\inc/ee_hal_internal_types.h"
	.file 8 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\src\\ee_scheduler.h"
	.file 9 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\src\\ee_kernel.h"
	.file 10 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\inc/ee_get_kernel_and_core.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xbf4
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF166
	.byte	0x1
	.long	.LASF167
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x4
	.long	.LASF5
	.byte	0x2
	.byte	0x7e
	.long	0x53
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x4
	.long	.LASF6
	.byte	0x2
	.byte	0x80
	.long	0x2c
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x5
	.byte	0x2
	.byte	0x3
	.byte	0x51
	.long	0x8f
	.uleb128 0x6
	.long	.LASF10
	.sleb128 0
	.uleb128 0x6
	.long	.LASF11
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.long	.LASF12
	.byte	0x3
	.byte	0x54
	.long	0x7a
	.uleb128 0x4
	.long	.LASF13
	.byte	0x3
	.byte	0x5b
	.long	0x48
	.uleb128 0x4
	.long	.LASF14
	.byte	0x3
	.byte	0x65
	.long	0x5a
	.uleb128 0x4
	.long	.LASF15
	.byte	0x3
	.byte	0x6d
	.long	0x5a
	.uleb128 0x7
	.byte	0x2
	.long	0xc1
	.uleb128 0x8
	.byte	0x1
	.uleb128 0x4
	.long	.LASF16
	.byte	0x4
	.byte	0x60
	.long	0x48
	.uleb128 0x4
	.long	.LASF17
	.byte	0x4
	.byte	0x78
	.long	0x9a
	.uleb128 0x4
	.long	.LASF18
	.byte	0x4
	.byte	0xc8
	.long	0x48
	.uleb128 0x4
	.long	.LASF19
	.byte	0x4
	.byte	0xf4
	.long	0x48
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.word	0x13a
	.long	0xbb
	.uleb128 0xa
	.byte	0x2
	.byte	0x4
	.word	0x145
	.long	0x11d
	.uleb128 0x6
	.long	.LASF21
	.sleb128 0
	.uleb128 0x6
	.long	.LASF22
	.sleb128 1
	.uleb128 0x6
	.long	.LASF23
	.sleb128 2
	.uleb128 0x6
	.long	.LASF24
	.sleb128 3
	.byte	0
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.word	0x153
	.long	0xfb
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.word	0x157
	.long	0x11d
	.uleb128 0xa
	.byte	0x2
	.byte	0x4
	.word	0x15d
	.long	0x163
	.uleb128 0x6
	.long	.LASF27
	.sleb128 0
	.uleb128 0x6
	.long	.LASF28
	.sleb128 1
	.uleb128 0x6
	.long	.LASF29
	.sleb128 2
	.uleb128 0x6
	.long	.LASF30
	.sleb128 3
	.uleb128 0x6
	.long	.LASF31
	.sleb128 4
	.uleb128 0x6
	.long	.LASF32
	.sleb128 5
	.byte	0
	.uleb128 0x9
	.long	.LASF33
	.byte	0x4
	.word	0x16e
	.long	0x135
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.word	0x17e
	.long	0x163
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.word	0x237
	.long	0xb0
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.word	0x2a3
	.long	0xa5
	.uleb128 0xa
	.byte	0x2
	.byte	0x4
	.word	0x2b1
	.long	0x24b
	.uleb128 0x6
	.long	.LASF37
	.sleb128 0
	.uleb128 0x6
	.long	.LASF38
	.sleb128 1
	.uleb128 0x6
	.long	.LASF39
	.sleb128 2
	.uleb128 0x6
	.long	.LASF40
	.sleb128 3
	.uleb128 0x6
	.long	.LASF41
	.sleb128 4
	.uleb128 0x6
	.long	.LASF42
	.sleb128 5
	.uleb128 0x6
	.long	.LASF43
	.sleb128 6
	.uleb128 0x6
	.long	.LASF44
	.sleb128 7
	.uleb128 0x6
	.long	.LASF45
	.sleb128 8
	.uleb128 0x6
	.long	.LASF46
	.sleb128 9
	.uleb128 0x6
	.long	.LASF47
	.sleb128 10
	.uleb128 0x6
	.long	.LASF48
	.sleb128 11
	.uleb128 0x6
	.long	.LASF49
	.sleb128 12
	.uleb128 0x6
	.long	.LASF50
	.sleb128 13
	.uleb128 0x6
	.long	.LASF51
	.sleb128 14
	.uleb128 0x6
	.long	.LASF52
	.sleb128 15
	.uleb128 0x6
	.long	.LASF53
	.sleb128 16
	.uleb128 0x6
	.long	.LASF54
	.sleb128 17
	.uleb128 0x6
	.long	.LASF55
	.sleb128 18
	.uleb128 0x6
	.long	.LASF56
	.sleb128 19
	.uleb128 0x6
	.long	.LASF57
	.sleb128 20
	.uleb128 0x6
	.long	.LASF58
	.sleb128 21
	.uleb128 0x6
	.long	.LASF59
	.sleb128 22
	.uleb128 0x6
	.long	.LASF60
	.sleb128 23
	.uleb128 0x6
	.long	.LASF61
	.sleb128 24
	.uleb128 0x6
	.long	.LASF62
	.sleb128 25
	.uleb128 0x6
	.long	.LASF63
	.sleb128 26
	.uleb128 0x6
	.long	.LASF64
	.sleb128 27
	.uleb128 0x6
	.long	.LASF65
	.sleb128 28
	.byte	0
	.uleb128 0x9
	.long	.LASF66
	.byte	0x4
	.word	0x2d4
	.long	0x193
	.uleb128 0x9
	.long	.LASF67
	.byte	0x4
	.word	0x2d9
	.long	0x24b
	.uleb128 0xb
	.long	.LASF70
	.byte	0x4
	.byte	0x5
	.byte	0x4b
	.long	0x28c
	.uleb128 0xc
	.long	.LASF68
	.byte	0x5
	.byte	0x4d
	.long	0x28c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF69
	.byte	0x5
	.byte	0x4f
	.long	0x318
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x263
	.uleb128 0xd
	.long	.LASF71
	.byte	0xe
	.byte	0x6
	.word	0x108
	.long	0x318
	.uleb128 0xe
	.string	"hdb"
	.byte	0x6
	.word	0x10b
	.long	0x4f9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.long	.LASF72
	.byte	0x6
	.word	0x10e
	.long	0x5a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"tid"
	.byte	0x6
	.word	0x110
	.long	0xce
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xf
	.long	.LASF73
	.byte	0x6
	.word	0x112
	.long	0x129
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xf
	.long	.LASF74
	.byte	0x6
	.word	0x114
	.long	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xf
	.long	.LASF75
	.byte	0x6
	.word	0x117
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xf
	.long	.LASF76
	.byte	0x6
	.word	0x11a
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.long	.LASF77
	.byte	0x6
	.word	0x11c
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x31e
	.uleb128 0x10
	.long	0x292
	.uleb128 0x4
	.long	.LASF78
	.byte	0x5
	.byte	0x50
	.long	0x263
	.uleb128 0x4
	.long	.LASF79
	.byte	0x5
	.byte	0xd5
	.long	0x339
	.uleb128 0x7
	.byte	0x2
	.long	0x323
	.uleb128 0xb
	.long	.LASF80
	.byte	0x14
	.byte	0x7
	.byte	0x43
	.long	0x44e
	.uleb128 0x11
	.string	"r29"
	.byte	0x7
	.byte	0x44
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"r28"
	.byte	0x7
	.byte	0x45
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x11
	.string	"r17"
	.byte	0x7
	.byte	0x46
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.string	"r16"
	.byte	0x7
	.byte	0x47
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x11
	.string	"r15"
	.byte	0x7
	.byte	0x48
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"r14"
	.byte	0x7
	.byte	0x49
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x11
	.string	"r13"
	.byte	0x7
	.byte	0x4a
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x11
	.string	"r12"
	.byte	0x7
	.byte	0x4b
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x11
	.string	"r11"
	.byte	0x7
	.byte	0x4c
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"r10"
	.byte	0x7
	.byte	0x4d
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x11
	.string	"r9"
	.byte	0x7
	.byte	0x4e
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x11
	.string	"r8"
	.byte	0x7
	.byte	0x4f
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x11
	.string	"r7"
	.byte	0x7
	.byte	0x50
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.string	"r6"
	.byte	0x7
	.byte	0x51
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x11
	.string	"r5"
	.byte	0x7
	.byte	0x52
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x11
	.string	"r4"
	.byte	0x7
	.byte	0x53
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x11
	.string	"r3"
	.byte	0x7
	.byte	0x54
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.string	"r2"
	.byte	0x7
	.byte	0x55
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xc
	.long	.LASF81
	.byte	0x7
	.byte	0x56
	.long	0x44e
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x33f
	.uleb128 0x4
	.long	.LASF82
	.byte	0x7
	.byte	0x57
	.long	0x33f
	.uleb128 0xb
	.long	.LASF83
	.byte	0x2
	.byte	0x7
	.byte	0x5a
	.long	0x47a
	.uleb128 0xc
	.long	.LASF84
	.byte	0x7
	.byte	0x5b
	.long	0x47a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x454
	.uleb128 0x4
	.long	.LASF85
	.byte	0x7
	.byte	0x5c
	.long	0x45f
	.uleb128 0xb
	.long	.LASF86
	.byte	0x4
	.byte	0x7
	.byte	0x5e
	.long	0x4b4
	.uleb128 0xc
	.long	.LASF87
	.byte	0x7
	.byte	0x5f
	.long	0x47a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF88
	.byte	0x7
	.byte	0x60
	.long	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF89
	.byte	0x7
	.byte	0x61
	.long	0x4bf
	.uleb128 0x10
	.long	0x48b
	.uleb128 0xb
	.long	.LASF90
	.byte	0x4
	.byte	0x7
	.byte	0x63
	.long	0x4ed
	.uleb128 0xc
	.long	.LASF91
	.byte	0x7
	.byte	0x64
	.long	0x4ed
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF92
	.byte	0x7
	.byte	0x65
	.long	0x4f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x4b4
	.uleb128 0x7
	.byte	0x2
	.long	0x480
	.uleb128 0x4
	.long	.LASF93
	.byte	0x7
	.byte	0x69
	.long	0x504
	.uleb128 0x10
	.long	0x4c4
	.uleb128 0x4
	.long	.LASF94
	.byte	0x6
	.byte	0x53
	.long	0x48
	.uleb128 0x5
	.byte	0x2
	.byte	0x6
	.byte	0x73
	.long	0x535
	.uleb128 0x6
	.long	.LASF95
	.sleb128 0
	.uleb128 0x6
	.long	.LASF96
	.sleb128 1
	.uleb128 0x6
	.long	.LASF97
	.sleb128 2
	.uleb128 0x6
	.long	.LASF98
	.sleb128 3
	.byte	0
	.uleb128 0x4
	.long	.LASF99
	.byte	0x6
	.byte	0x7d
	.long	0x514
	.uleb128 0x12
	.byte	0xa
	.byte	0x6
	.byte	0xe0
	.long	0x59d
	.uleb128 0xc
	.long	.LASF100
	.byte	0x6
	.byte	0xe4
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF101
	.byte	0x6
	.byte	0xea
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xc
	.long	.LASF102
	.byte	0x6
	.byte	0xec
	.long	0x16f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF103
	.byte	0x6
	.byte	0xf3
	.long	0x17b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	.LASF104
	.byte	0x6
	.byte	0xf5
	.long	0x17b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.long	.LASF105
	.byte	0x6
	.byte	0xfb
	.long	0x339
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.long	.LASF106
	.byte	0x6
	.word	0x101
	.long	0x540
	.uleb128 0x7
	.byte	0x2
	.long	0x59d
	.uleb128 0x9
	.long	.LASF107
	.byte	0x6
	.word	0x122
	.long	0x31e
	.uleb128 0x7
	.byte	0x2
	.long	0x5af
	.uleb128 0xd
	.long	.LASF108
	.byte	0x4
	.byte	0x6
	.word	0x2c7
	.long	0x5ed
	.uleb128 0xf
	.long	.LASF109
	.byte	0x6
	.word	0x2c9
	.long	0x5f8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.long	.LASF110
	.byte	0x6
	.word	0x2cb
	.long	0x187
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x13
	.long	0x318
	.long	0x5f8
	.uleb128 0x14
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x5ed
	.uleb128 0x9
	.long	.LASF111
	.byte	0x6
	.word	0x2cc
	.long	0x60a
	.uleb128 0x10
	.long	0x5c1
	.uleb128 0x15
	.byte	0x12
	.byte	0x6
	.word	0x2d9
	.long	0x6cc
	.uleb128 0xf
	.long	.LASF112
	.byte	0x6
	.word	0x2dc
	.long	0x5bb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"rq"
	.byte	0x6
	.word	0x2ee
	.long	0x32e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.long	.LASF113
	.byte	0x6
	.word	0x2f0
	.long	0x339
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.long	.LASF114
	.byte	0x6
	.word	0x2ff
	.long	0x339
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xf
	.long	.LASF115
	.byte	0x6
	.word	0x301
	.long	0x6cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.long	.LASF116
	.byte	0x6
	.word	0x305
	.long	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xf
	.long	.LASF117
	.byte	0x6
	.word	0x307
	.long	0x257
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xf
	.long	.LASF118
	.byte	0x6
	.word	0x327
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xf
	.long	.LASF119
	.byte	0x6
	.word	0x329
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xf
	.long	.LASF120
	.byte	0x6
	.word	0x32b
	.long	0x509
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xf
	.long	.LASF121
	.byte	0x6
	.word	0x32d
	.long	0x509
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.long	.LASF122
	.byte	0x6
	.word	0x330
	.long	0x509
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0x16
	.long	0x535
	.uleb128 0x9
	.long	.LASF123
	.byte	0x6
	.word	0x33a
	.long	0x60f
	.uleb128 0x15
	.byte	0xa
	.byte	0x6
	.word	0x344
	.long	0x732
	.uleb128 0xf
	.long	.LASF124
	.byte	0x6
	.word	0x34a
	.long	0x732
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.long	.LASF125
	.byte	0x6
	.word	0x351
	.long	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.long	.LASF126
	.byte	0x6
	.word	0x354
	.long	0x5bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.long	.LASF127
	.byte	0x6
	.word	0x35c
	.long	0x743
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xf
	.long	.LASF128
	.byte	0x6
	.word	0x35e
	.long	0x187
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x6d1
	.uleb128 0x13
	.long	0x5fe
	.long	0x743
	.uleb128 0x14
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x738
	.uleb128 0x9
	.long	.LASF129
	.byte	0x6
	.word	0x36a
	.long	0x755
	.uleb128 0x10
	.long	0x6dd
	.uleb128 0x15
	.byte	0x1
	.byte	0x6
	.word	0x36f
	.long	0x773
	.uleb128 0xf
	.long	.LASF130
	.byte	0x6
	.word	0x3b1
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.long	.LASF131
	.byte	0x6
	.word	0x3b3
	.long	0x75a
	.uleb128 0x15
	.byte	0x6
	.byte	0x6
	.word	0x3c3
	.long	0x7b6
	.uleb128 0xf
	.long	.LASF132
	.byte	0x6
	.word	0x3c5
	.long	0x7b6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.long	.LASF109
	.byte	0x6
	.word	0x3d1
	.long	0x5f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.long	.LASF110
	.byte	0x6
	.word	0x3d4
	.long	0x187
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x773
	.uleb128 0x9
	.long	.LASF133
	.byte	0x6
	.word	0x3fc
	.long	0x7c8
	.uleb128 0x10
	.long	0x77f
	.uleb128 0x4
	.long	.LASF134
	.byte	0x8
	.byte	0x50
	.long	0x5af
	.uleb128 0x17
	.long	.LASF135
	.byte	0x9
	.word	0x19c
	.byte	0x1
	.byte	0x3
	.long	0x7f3
	.uleb128 0x18
	.long	.LASF124
	.byte	0x9
	.word	0x19e
	.long	0x7f3
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x7f9
	.uleb128 0x10
	.long	0x6d1
	.uleb128 0x19
	.long	.LASF136
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.byte	0x1
	.long	0x845
	.uleb128 0x1a
	.long	.LASF124
	.byte	0x1
	.byte	0x3b
	.long	0x732
	.uleb128 0x1a
	.long	.LASF137
	.byte	0x1
	.byte	0x3c
	.long	0x339
	.uleb128 0x1b
	.long	.LASF69
	.byte	0x1
	.byte	0x3f
	.long	0x845
	.uleb128 0x1b
	.long	.LASF72
	.byte	0x1
	.byte	0x40
	.long	0x84a
	.uleb128 0x1c
	.uleb128 0x1b
	.long	.LASF76
	.byte	0x1
	.byte	0x50
	.long	0x84f
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x5bb
	.uleb128 0x10
	.long	0x5a9
	.uleb128 0x10
	.long	0xd9
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF144
	.byte	0x1
	.byte	0xeb
	.byte	0x1
	.long	0x951
	.long	.LFB58
	.long	.LFE58
	.long	.LLST0
	.byte	0x1
	.long	0x951
	.uleb128 0x1e
	.long	.LASF138
	.byte	0x1
	.byte	0xed
	.long	0x957
	.long	.LLST1
	.uleb128 0x1f
	.long	.LASF139
	.byte	0x1
	.byte	0xee
	.long	0x95d
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x20
	.long	.LASF124
	.byte	0x1
	.byte	0xf1
	.long	0x963
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x21
	.long	.LASF137
	.byte	0x1
	.byte	0xf2
	.long	0x968
	.long	.LLST2
	.uleb128 0x21
	.long	.LASF140
	.byte	0x1
	.byte	0xf3
	.long	0x96d
	.long	.LLST3
	.uleb128 0x21
	.long	.LASF141
	.byte	0x1
	.byte	0xf5
	.long	0x8f
	.long	.LLST4
	.uleb128 0x21
	.long	.LASF142
	.byte	0x1
	.byte	0xf6
	.long	0x5bb
	.long	.LLST5
	.uleb128 0x22
	.long	.LBB9
	.long	.LBE9
	.long	0x8fe
	.uleb128 0x21
	.long	.LASF143
	.byte	0x1
	.byte	0xfc
	.long	0x84a
	.long	.LLST6
	.byte	0
	.uleb128 0x23
	.long	0x7fe
	.long	.LBB10
	.long	.LBE10
	.byte	0x1
	.word	0x11a
	.uleb128 0x24
	.long	0x816
	.long	.LLST7
	.uleb128 0x24
	.long	0x80b
	.long	.LLST8
	.uleb128 0x25
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x26
	.long	0x821
	.long	.LLST9
	.uleb128 0x26
	.long	0x82c
	.long	.LLST10
	.uleb128 0x25
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x26
	.long	0x838
	.long	.LLST11
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x7cd
	.uleb128 0x7
	.byte	0x2
	.long	0x749
	.uleb128 0x7
	.byte	0x2
	.long	0x32e
	.uleb128 0x10
	.long	0x732
	.uleb128 0x10
	.long	0x339
	.uleb128 0x7
	.byte	0x2
	.long	0x973
	.uleb128 0x10
	.long	0x323
	.uleb128 0x27
	.byte	0x1
	.long	.LASF145
	.byte	0x1
	.word	0x12c
	.byte	0x1
	.long	0x8f
	.long	.LFB59
	.long	.LFE59
	.long	.LLST12
	.byte	0x1
	.long	0xa66
	.uleb128 0x28
	.long	.LASF146
	.byte	0x1
	.word	0x12e
	.long	0xa66
	.long	.LLST13
	.uleb128 0x29
	.long	.LASF147
	.byte	0x1
	.word	0x12f
	.long	0x339
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x29
	.long	.LASF148
	.byte	0x1
	.word	0x130
	.long	0xa6c
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x2a
	.long	.LASF149
	.byte	0x1
	.word	0x133
	.long	0x845
	.long	.LLST14
	.uleb128 0x2a
	.long	.LASF150
	.byte	0x1
	.word	0x134
	.long	0xa71
	.long	.LLST15
	.uleb128 0x2b
	.long	.LASF151
	.byte	0x1
	.word	0x135
	.long	0x84f
	.byte	0x1
	.byte	0x62
	.uleb128 0x2a
	.long	.LASF152
	.byte	0x1
	.word	0x139
	.long	0x339
	.long	.LLST16
	.uleb128 0x2a
	.long	.LASF112
	.byte	0x1
	.word	0x13a
	.long	0x339
	.long	.LLST17
	.uleb128 0x2a
	.long	.LASF153
	.byte	0x1
	.word	0x13b
	.long	0x8f
	.long	.LLST18
	.uleb128 0x25
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x2a
	.long	.LASF154
	.byte	0x1
	.word	0x13f
	.long	0xd9
	.long	.LLST19
	.uleb128 0x2a
	.long	.LASF155
	.byte	0x1
	.word	0x140
	.long	0x845
	.long	.LLST20
	.uleb128 0x2a
	.long	.LASF156
	.byte	0x1
	.word	0x141
	.long	0xa71
	.long	.LLST21
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x339
	.uleb128 0x10
	.long	0x8f
	.uleb128 0x10
	.long	0xa76
	.uleb128 0x7
	.byte	0x2
	.long	0xa7c
	.uleb128 0x10
	.long	0x59d
	.uleb128 0x2c
	.byte	0x1
	.long	.LASF157
	.byte	0x1
	.byte	0xda
	.byte	0x1
	.long	0x8f
	.long	.LFB57
	.long	.LFE57
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xafa
	.uleb128 0x1e
	.long	.LASF139
	.byte	0x1
	.byte	0xdc
	.long	0x95d
	.long	.LLST22
	.uleb128 0x1e
	.long	.LASF147
	.byte	0x1
	.byte	0xdd
	.long	0x339
	.long	.LLST23
	.uleb128 0x1e
	.long	.LASF149
	.byte	0x1
	.byte	0xde
	.long	0x845
	.long	.LLST24
	.uleb128 0x2d
	.long	.LVL43
	.byte	0x1
	.long	0x978
	.uleb128 0x2e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x2e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x2e
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF158
	.byte	0x1
	.word	0x15f
	.byte	0x1
	.long	0x339
	.long	.LFB60
	.long	.LFE60
	.long	.LLST25
	.byte	0x1
	.long	0xbd3
	.uleb128 0x28
	.long	.LASF138
	.byte	0x1
	.word	0x161
	.long	0x957
	.long	.LLST26
	.uleb128 0x28
	.long	.LASF139
	.byte	0x1
	.word	0x162
	.long	0x95d
	.long	.LLST27
	.uleb128 0x2a
	.long	.LASF124
	.byte	0x1
	.word	0x165
	.long	0x963
	.long	.LLST28
	.uleb128 0x2a
	.long	.LASF159
	.byte	0x1
	.word	0x166
	.long	0x968
	.long	.LLST29
	.uleb128 0x2a
	.long	.LASF160
	.byte	0x1
	.word	0x168
	.long	0x968
	.long	.LLST30
	.uleb128 0x25
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x2a
	.long	.LASF161
	.byte	0x1
	.word	0x183
	.long	0xbd3
	.long	.LLST31
	.uleb128 0x2a
	.long	.LASF162
	.byte	0x1
	.word	0x185
	.long	0xbd8
	.long	.LLST32
	.uleb128 0x22
	.long	.LBB15
	.long	.LBE15
	.long	0xbb0
	.uleb128 0x2a
	.long	.LASF163
	.byte	0x1
	.word	0x189
	.long	0x5bb
	.long	.LLST33
	.byte	0
	.uleb128 0x2f
	.long	.LVL50
	.long	0x854
	.uleb128 0x2e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x2e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x951
	.uleb128 0x10
	.long	0x96d
	.uleb128 0x30
	.long	.LASF164
	.byte	0xa
	.byte	0x3f
	.long	0x7bc
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.long	.LASF165
	.byte	0xa
	.byte	0x40
	.long	0x749
	.byte	0x1
	.byte	0x1
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB58
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI0
	.long	.LCFI1
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI1
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI3
	.long	.LFE58
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL4
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL4
	.long	.LVL8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL8
	.long	.LVL10
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL10
	.long	.LVL11
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL11
	.long	.LFE58
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL2
	.long	.LVL17
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL17
	.long	.LVL18
	.word	0x2
	.byte	0x8a
	.sleb128 6
	.long	.LVL19
	.long	.LVL20
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST3:
	.long	.LVL3
	.long	.LVL5
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL5
	.long	.LVL8
	.word	0x2
	.byte	0x8a
	.sleb128 6
	.long	.LVL8
	.long	.LVL9
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL9
	.long	.LVL13
	.word	0x2
	.byte	0x8a
	.sleb128 6
	.long	.LVL19
	.long	.LVL20
	.word	0x2
	.byte	0x8a
	.sleb128 6
	.long	0
	.long	0
.LLST4:
	.long	.LVL3
	.long	.LVL12
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL12
	.long	.LVL19
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL19
	.long	.LVL20
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL4
	.long	.LVL8
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL10
	.long	.LVL19
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST6:
	.long	.LVL6
	.long	.LVL8
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST7:
	.long	.LVL13
	.long	.LVL17
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL17
	.long	.LVL18
	.word	0x2
	.byte	0x8a
	.sleb128 6
	.long	0
	.long	0
.LLST8:
	.long	.LVL13
	.long	.LVL19
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST9:
	.long	.LVL14
	.long	.LVL19
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST10:
	.long	.LVL15
	.long	.LVL19
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST11:
	.long	.LVL16
	.long	.LVL19
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST12:
	.long	.LFB59
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI7
	.long	.LFE59
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST13:
	.long	.LVL21
	.long	.LVL36
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL36
	.long	.LVL37
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL37
	.long	.LVL40
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL40
	.long	.LFE59
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL22
	.long	.LVL25
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL25
	.long	.LVL39
	.word	0x2
	.byte	0x86
	.sleb128 2
	.long	0
	.long	0
.LLST15:
	.long	.LVL23
	.long	.LVL26
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL26
	.long	.LVL39
	.word	0x6
	.byte	0x86
	.sleb128 2
	.byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.long	0
	.long	0
.LLST16:
	.long	.LVL24
	.long	.LVL26
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL26
	.long	.LVL33
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL33
	.long	.LVL34
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL34
	.long	.LVL38
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST17:
	.long	.LVL25
	.long	.LVL33
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL33
	.long	.LVL34
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	.LVL34
	.long	.LFE59
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST18:
	.long	.LVL25
	.long	.LVL39
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL39
	.long	.LVL40
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL40
	.long	.LFE59
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST19:
	.long	.LVL29
	.long	.LVL30
	.word	0x1
	.byte	0x63
	.long	.LVL32
	.long	.LVL35
	.word	0x1
	.byte	0x63
	.long	0
	.long	0
.LLST20:
	.long	.LVL27
	.long	.LVL31
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL31
	.long	.LVL34
	.word	0x2
	.byte	0x8e
	.sleb128 2
	.long	.LVL34
	.long	.LVL35
	.word	0x2
	.byte	0x8a
	.sleb128 2
	.long	0
	.long	0
.LLST21:
	.long	.LVL28
	.long	.LVL35
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST22:
	.long	.LVL41
	.long	.LVL43-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL43-1
	.long	.LFE57
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST23:
	.long	.LVL41
	.long	.LVL43-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL43-1
	.long	.LFE57
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LVL41
	.long	.LVL42
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL42
	.long	.LVL43-1
	.word	0x2
	.byte	0x86
	.sleb128 2
	.long	.LVL43-1
	.long	.LFE57
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LFB60
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI13
	.long	.LFE60
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	0
	.long	0
.LLST26:
	.long	.LVL44
	.long	.LVL47
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL47
	.long	.LVL58
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL58
	.long	.LFE60
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST27:
	.long	.LVL44
	.long	.LVL50-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL50-1
	.long	.LFE60
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST28:
	.long	.LVL45
	.long	.LVL57
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST29:
	.long	.LVL46
	.long	.LVL59
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL59
	.long	.LFE60
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST30:
	.long	.LVL46
	.long	.LVL48
	.word	0x2
	.byte	0x7e
	.sleb128 0
	.long	.LVL48
	.long	.LVL49
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL49
	.long	.LVL50-1
	.word	0x2
	.byte	0x8c
	.sleb128 6
	.long	0
	.long	0
.LLST31:
	.long	.LVL50
	.long	.LVL52
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL53
	.long	.LVL55
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST32:
	.long	.LVL51
	.long	.LVL54
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL54
	.long	.LVL57
	.word	0x2
	.byte	0x8c
	.sleb128 6
	.long	0
	.long	0
.LLST33:
	.long	.LVL52
	.long	.LVL53
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL55
	.long	.LVL56
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x34
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB58
	.long	.LFE58-.LFB58
	.long	.LFB59
	.long	.LFE59-.LFB59
	.long	.LFB57
	.long	.LFE57-.LFB57
	.long	.LFB60
	.long	.LFE60-.LFB60
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB58
	.long	.LFE58
	.long	.LFB59
	.long	.LFE59
	.long	.LFB57
	.long	.LFE57
	.long	.LFB60
	.long	.LFE60
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF15:
	.string	"OsEE_event_mask"
.LASF94:
	.string	"OsEE_byte"
.LASF127:
	.string	"p_autostart_tdb_array"
.LASF114:
	.string	"p_stk_sn"
.LASF116:
	.string	"app_mode"
.LASF13:
	.string	"OsEE_reg"
.LASF107:
	.string	"OsEE_TDB"
.LASF21:
	.string	"OSEE_TASK_TYPE_BASIC"
.LASF54:
	.string	"E_OS_PROTECTION_ARRIVAL"
.LASF141:
	.string	"is_rq_preemption"
.LASF164:
	.string	"osEE_kdb_var"
.LASF24:
	.string	"OSEE_TASK_TYPE_IDLE"
.LASF9:
	.string	"long long unsigned int"
.LASF67:
	.string	"StatusType"
.LASF33:
	.string	"OsEE_task_status"
.LASF85:
	.string	"OsEE_SCB"
.LASF27:
	.string	"OSEE_TASK_SUSPENDED"
.LASF23:
	.string	"OSEE_TASK_TYPE_ISR2"
.LASF129:
	.string	"OsEE_CDB"
.LASF73:
	.string	"task_type"
.LASF147:
	.string	"p_sn_new"
.LASF113:
	.string	"p_free_sn"
.LASF1:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF35:
	.string	"EventMaskType"
.LASF53:
	.string	"E_OS_PROTECTION_TIME"
.LASF65:
	.string	"E_OS_SYS_ACT"
.LASF156:
	.string	"p_cur_tcb"
.LASF126:
	.string	"p_idle_task"
.LASF158:
	.string	"osEE_scheduler_core_pop_running"
.LASF25:
	.string	"OsEE_task_type"
.LASF18:
	.string	"TaskPrio"
.LASF7:
	.string	"long int"
.LASF162:
	.string	"p_curr_stk_sn"
.LASF134:
	.string	"OsEE_preempt"
.LASF60:
	.string	"E_OS_CORE"
.LASF38:
	.string	"E_OS_ACCESS"
.LASF93:
	.string	"OsEE_HDB"
.LASF6:
	.string	"uint16_t"
.LASF99:
	.string	"OsEE_kernel_status"
.LASF89:
	.string	"OsEE_SDB"
.LASF166:
	.string	"GNU C 4.9.2 -fpreprocessed -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g -Os -std=gnu11 -ffunction-sections -fdata-sections"
.LASF84:
	.string	"p_tos"
.LASF40:
	.string	"E_OS_ID"
.LASF75:
	.string	"ready_prio"
.LASF36:
	.string	"MemSize"
.LASF62:
	.string	"E_OS_SYS_SUSPEND_NESTING_LIMIT"
.LASF96:
	.string	"OSEE_KERNEL_STARTING"
.LASF130:
	.string	"dummy"
.LASF55:
	.string	"E_OS_PROTECTION_LOCKED"
.LASF74:
	.string	"task_func"
.LASF77:
	.string	"max_num_of_act"
.LASF128:
	.string	"autostart_tdb_array_size"
.LASF0:
	.string	"unsigned int"
.LASF103:
	.string	"wait_mask"
.LASF155:
	.string	"p_cur_tdb"
.LASF11:
	.string	"OSEE_TRUE"
.LASF8:
	.string	"long unsigned int"
.LASF52:
	.string	"E_OS_PROTECTION_MEMORY"
.LASF159:
	.string	"p_prev_stk_sn"
.LASF132:
	.string	"p_kcb"
.LASF20:
	.string	"TaskFunc"
.LASF17:
	.string	"TaskType"
.LASF148:
	.string	"as_ready"
.LASF115:
	.string	"os_status"
.LASF16:
	.string	"AppModeType"
.LASF71:
	.string	"OsEE_TDB_tag"
.LASF83:
	.string	"OsEE_SCB_tag"
.LASF32:
	.string	"OSEE_TASK_CHAINED"
.LASF142:
	.string	"p_ret_tdb"
.LASF79:
	.string	"OsEE_RQ"
.LASF123:
	.string	"OsEE_CCB"
.LASF10:
	.string	"OSEE_FALSE"
.LASF125:
	.string	"p_idle_hook"
.LASF145:
	.string	"osEE_sn_priority_insert"
.LASF118:
	.string	"prev_s_isr_all_status"
.LASF37:
	.string	"E_OK"
.LASF44:
	.string	"E_OS_STATE"
.LASF30:
	.string	"OSEE_TASK_WAITING"
.LASF139:
	.string	"p_rq"
.LASF122:
	.string	"d_isr_all_cnt"
.LASF154:
	.string	"prio_to_check"
.LASF112:
	.string	"p_curr"
.LASF140:
	.string	"p_ret_sn"
.LASF98:
	.string	"OSEE_KERNEL_SHUTDOWN"
.LASF63:
	.string	"E_OS_SYS_TASK"
.LASF2:
	.string	"long double"
.LASF111:
	.string	"OsEE_autostart_tdb"
.LASF19:
	.string	"TaskActivation"
.LASF150:
	.string	"p_tcb_new"
.LASF51:
	.string	"E_OS_PARAM_POINTER"
.LASF104:
	.string	"event_mask"
.LASF87:
	.string	"p_bos"
.LASF49:
	.string	"E_OS_DISABLEDINT"
.LASF131:
	.string	"OsEE_KCB"
.LASF78:
	.string	"OsEE_SN"
.LASF121:
	.string	"s_isr_os_cnt"
.LASF48:
	.string	"E_OS_MISSINGEND"
.LASF12:
	.string	"OsEE_bool"
.LASF29:
	.string	"OSEE_TASK_READY_STACKED"
.LASF45:
	.string	"E_OS_VALUE"
.LASF86:
	.string	"OsEE_SDB_tag"
.LASF137:
	.string	"p_rq_sn"
.LASF152:
	.string	"p_prev"
.LASF100:
	.string	"current_num_of_act"
.LASF72:
	.string	"p_tcb"
.LASF4:
	.string	"unsigned char"
.LASF56:
	.string	"E_OS_PROTECTION_EXCEPTION"
.LASF135:
	.string	"osEE_call_post_task_hook"
.LASF80:
	.string	"OsEE_CTX_tag"
.LASF64:
	.string	"E_OS_SYS_STACK"
.LASF97:
	.string	"OSEE_KERNEL_STARTED"
.LASF149:
	.string	"p_tdb_new"
.LASF161:
	.string	"p_preempt"
.LASF58:
	.string	"E_OS_INTERFERENCE_DEADLOCK"
.LASF133:
	.string	"OsEE_KDB"
.LASF109:
	.string	"p_tdb_ptr_array"
.LASF68:
	.string	"p_next"
.LASF28:
	.string	"OSEE_TASK_READY"
.LASF41:
	.string	"E_OS_LIMIT"
.LASF124:
	.string	"p_ccb"
.LASF163:
	.string	"p_tdb_stk"
.LASF165:
	.string	"osEE_cdb_var"
.LASF108:
	.string	"OsEE_autostart_tdb_tag"
.LASF22:
	.string	"OSEE_TASK_TYPE_EXTENDED"
.LASF167:
	.string	"C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\src\\ee_oo_scheduler.c"
.LASF119:
	.string	"prev_s_isr_os_status"
.LASF117:
	.string	"last_error"
.LASF70:
	.string	"OsEE_SN_tag"
.LASF101:
	.string	"current_prio"
.LASF61:
	.string	"E_OS_SYS_INIT"
.LASF66:
	.string	"OsEE_status_type"
.LASF69:
	.string	"p_tdb"
.LASF95:
	.string	"OSEE_KERNEL_INITIALIZED"
.LASF47:
	.string	"E_OS_ILLEGAL_ADDRESS"
.LASF14:
	.string	"OsEE_mem_size"
.LASF105:
	.string	"p_own_sn"
.LASF157:
	.string	"osEE_scheduler_rq_insert"
.LASF92:
	.string	"p_scb"
.LASF34:
	.string	"TaskStateType"
.LASF153:
	.string	"head_changed"
.LASF146:
	.string	"pp_first"
.LASF138:
	.string	"p_cdb"
.LASF136:
	.string	"osEE_scheduler_stk_next"
.LASF43:
	.string	"E_OS_RESOURCE"
.LASF110:
	.string	"tdb_array_size"
.LASF120:
	.string	"s_isr_all_cnt"
.LASF160:
	.string	"p_next_stk_sn"
.LASF102:
	.string	"status"
.LASF59:
	.string	"E_OS_NESTING_DEADLOCK"
.LASF76:
	.string	"dispatch_prio"
.LASF5:
	.string	"uint8_t"
.LASF144:
	.string	"osEE_scheduler_core_rq_preempt_stk"
.LASF46:
	.string	"E_OS_SERVICEID"
.LASF88:
	.string	"stack_size"
.LASF106:
	.string	"OsEE_TCB"
.LASF90:
	.string	"OsEE_HDB_tag"
.LASF151:
	.string	"new_task_prio"
.LASF42:
	.string	"E_OS_NOFUNC"
.LASF91:
	.string	"p_sdb"
.LASF39:
	.string	"E_OS_CALLEVEL"
.LASF26:
	.string	"TaskExecutionType"
.LASF31:
	.string	"OSEE_TASK_RUNNING"
.LASF50:
	.string	"E_OS_STACKFAULT"
.LASF143:
	.string	"p_ret_tcb"
.LASF81:
	.string	"p_ctx"
.LASF57:
	.string	"E_OS_SPINLOCK"
.LASF82:
	.string	"OsEE_CTX"
	.ident	"GCC: (GNU) 4.9.2"
