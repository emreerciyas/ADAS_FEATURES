	.file	"ee_oo_api_extension.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.WaitSem,"ax",@progbits
.global	WaitSem
	.type	WaitSem, @function
WaitSem:
.LFB56:
	.file 1 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\src\\ee_oo_api_extension.c"
	.loc 1 87 0
	.cfi_startproc
.LVL0:
	push r10
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 10, -2
	push r11
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -3
	push r13
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 13, -4
	push r14
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 14, -5
	push r15
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 15, -6
	push r16
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 16, -7
	push r17
.LCFI6:
	.cfi_def_cfa_offset 9
	.cfi_offset 17, -8
	push r28
.LCFI7:
	.cfi_def_cfa_offset 10
	.cfi_offset 28, -9
	push r29
.LCFI8:
	.cfi_def_cfa_offset 11
	.cfi_offset 29, -10
	rcall .
.LCFI9:
	.cfi_def_cfa_offset 13
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI10:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 2 */
/* stack size = 11 */
.L__stack_usage = 11
	movw r30,r24
	.loc 1 91 0
	or r24,r25
	breq .L5
.LBB56:
.LBB57:
.LBB58:
	.file 2 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\src\\ee_kernel.h"
	.loc 2 172 0
	lds r26,osEE_cdb_var
	lds r27,osEE_cdb_var+1
	ld r14,X+
	ld r15,X
.LBE58:
.LBE57:
.LBB59:
.LBB60:
.LBB61:
.LBB62:
	.file 3 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\src\\ee_hal_internal.h"
	.loc 3 116 0
	in r13,__SREG__
.LVL1:
.LBB63:
.LBB64:
	.loc 3 105 0
/* #APP */
 ;  105 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE64:
.LBE63:
.LBE62:
.LBE61:
.LBE60:
.LBE59:
	.loc 1 99 0
	movw r26,r14
	adiw r26,7
	ld r24,X+
	ld r25,X
	sbiw r26,7+1
.LVL2:
	sbiw r24,1
	brne .L6
	.loc 1 103 0
	ldd r25,Z+2
	tst r25
	breq .L4
	.loc 1 104 0
	subi r25,lo8(-(-1))
	std Z+2,r25
	rjmp .L7
.L4:
	movw r16,r30
.LBB65:
	.loc 1 109 0
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	ldi r24,lo8(osEE_kdb_var)
	ldi r25,hi8(osEE_kdb_var)
	call osEE_scheduler_task_block_current
.LVL3:
	movw r10,r24
.LVL4:
	.loc 1 111 0
	ldd r22,Y+1
	ldd r23,Y+2
	ldi r20,0
	ldi r21,0
	movw r24,r16
	call osEE_sn_priority_insert
.LVL5:
	.loc 1 119 0
	movw r22,r10
	movw r24,r14
	call osEE_change_context_from_running
.LVL6:
.L7:
.LBE65:
	.loc 1 122 0
	ldi r24,0
	ldi r25,0
	rjmp .L3
.LVL7:
.L6:
	.loc 1 100 0
	ldi r24,lo8(1)
	ldi r25,0
.LVL8:
.L3:
.LBB66:
.LBB67:
.LBB68:
.LBB69:
	.loc 3 123 0
	.loc 3 124 0
	out __SREG__,r13
	rjmp .L2
.LVL9:
.L5:
.LBE69:
.LBE68:
.LBE67:
.LBE66:
.LBE56:
	.loc 1 92 0
	ldi r24,lo8(14)
	ldi r25,0
.LVL10:
.L2:
/* epilogue start */
	.loc 1 127 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r11
	pop r10
	ret
	.cfi_endproc
.LFE56:
	.size	WaitSem, .-WaitSem
	.section	.text.PostSem,"ax",@progbits
.global	PostSem
	.type	PostSem, @function
PostSem:
.LFB57:
	.loc 1 134 0
	.cfi_startproc
.LVL11:
	push r28
.LCFI11:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	movw r30,r24
	.loc 1 138 0
	or r24,r25
	breq .L13
.LBB70:
.LBB71:
.LBB72:
.LBB73:
.LBB74:
	.loc 3 116 0
	in r28,__SREG__
.LVL12:
.LBB75:
.LBB76:
	.loc 3 105 0
/* #APP */
 ;  105 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE76:
.LBE75:
.LBE74:
.LBE73:
.LBE72:
.LBE71:
	.loc 1 145 0
	ld r22,Z
	ldd r23,Z+1
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L11
.LVL13:
.LBB77:
	.loc 1 154 0
	movw r26,r22
	ld r24,X+
	ld r25,X
.LVL14:
	std Z+1,r25
	st Z,r24
	.loc 1 157 0
	ldi r24,lo8(osEE_kdb_var)
	ldi r25,hi8(osEE_kdb_var)
	call osEE_scheduler_task_unblocked
.LVL15:
	.loc 1 161 0
	or r24,r25
	breq .L12
	.loc 1 162 0
	ldi r24,lo8(osEE_kdb_var)
	ldi r25,hi8(osEE_kdb_var)
.LVL16:
	call osEE_scheduler_task_preemption_point
.LVL17:
	rjmp .L12
.LVL18:
.L11:
.LBE77:
	.loc 1 165 0
	ldd r24,Z+2
.LVL19:
	subi r24,lo8(-(1))
	std Z+2,r24
.LVL20:
.L12:
.LBB78:
.LBB79:
.LBB80:
.LBB81:
	.loc 3 123 0
	.loc 3 124 0
	out __SREG__,r28
.LVL21:
.LBE81:
.LBE80:
.LBE79:
.LBE78:
	.loc 1 169 0
	ldi r24,0
	ldi r25,0
	rjmp .L10
.LVL22:
.L13:
.LBE70:
	.loc 1 139 0
	ldi r24,lo8(14)
	ldi r25,0
.LVL23:
.L10:
/* epilogue start */
	.loc 1 173 0
	pop r28
	ret
	.cfi_endproc
.LFE57:
	.size	PostSem, .-PostSem
	.text
.Letext0:
	.file 4 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\stdint.h"
	.file 5 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\inc/ee_platform_types.h"
	.file 6 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\inc/ee_api_types.h"
	.file 7 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\inc/ee_oo_api_extension.h"
	.file 8 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\inc/ee_scheduler_types.h"
	.file 9 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\inc/ee_kernel_types.h"
	.file 10 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\inc/ee_hal_internal_types.h"
	.file 11 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\inc/ee_get_kernel_and_core.h"
	.file 12 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\src\\ee_scheduler.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xc6b
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF163
	.byte	0x1
	.long	.LASF164
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
	.byte	0x4
	.byte	0x7e
	.long	0x53
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x4
	.long	.LASF6
	.byte	0x4
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
	.byte	0x5
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
	.byte	0x5
	.byte	0x54
	.long	0x7a
	.uleb128 0x4
	.long	.LASF13
	.byte	0x5
	.byte	0x5b
	.long	0x48
	.uleb128 0x4
	.long	.LASF14
	.byte	0x5
	.byte	0x65
	.long	0x5a
	.uleb128 0x4
	.long	.LASF15
	.byte	0x5
	.byte	0x6d
	.long	0x5a
	.uleb128 0x7
	.byte	0x2
	.long	0xc1
	.uleb128 0x8
	.byte	0x1
	.uleb128 0x4
	.long	.LASF16
	.byte	0x6
	.byte	0x60
	.long	0x48
	.uleb128 0x4
	.long	.LASF17
	.byte	0x6
	.byte	0x78
	.long	0x9a
	.uleb128 0x4
	.long	.LASF18
	.byte	0x6
	.byte	0xc8
	.long	0x48
	.uleb128 0x4
	.long	.LASF19
	.byte	0x6
	.byte	0xf4
	.long	0x48
	.uleb128 0x9
	.long	.LASF20
	.byte	0x6
	.word	0x13a
	.long	0xbb
	.uleb128 0xa
	.byte	0x2
	.byte	0x6
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
	.byte	0x6
	.word	0x153
	.long	0xfb
	.uleb128 0x9
	.long	.LASF26
	.byte	0x6
	.word	0x157
	.long	0x11d
	.uleb128 0xa
	.byte	0x2
	.byte	0x6
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
	.byte	0x6
	.word	0x16e
	.long	0x135
	.uleb128 0x9
	.long	.LASF34
	.byte	0x6
	.word	0x17e
	.long	0x163
	.uleb128 0x9
	.long	.LASF35
	.byte	0x6
	.word	0x237
	.long	0xb0
	.uleb128 0x9
	.long	.LASF36
	.byte	0x6
	.word	0x2a3
	.long	0xa5
	.uleb128 0xa
	.byte	0x2
	.byte	0x6
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
	.byte	0x6
	.word	0x2d4
	.long	0x193
	.uleb128 0x9
	.long	.LASF67
	.byte	0x6
	.word	0x2d9
	.long	0x24b
	.uleb128 0x4
	.long	.LASF68
	.byte	0x7
	.byte	0x47
	.long	0x26e
	.uleb128 0x7
	.byte	0x2
	.long	0x274
	.uleb128 0xb
	.long	.LASF72
	.byte	0x3
	.byte	0x8
	.byte	0xdb
	.long	0x29d
	.uleb128 0xc
	.long	.LASF69
	.byte	0x8
	.byte	0xe1
	.long	0x37e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF70
	.byte	0x8
	.byte	0xe3
	.long	0x29d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF71
	.byte	0x7
	.byte	0x51
	.long	0x9a
	.uleb128 0xb
	.long	.LASF73
	.byte	0x4
	.byte	0x8
	.byte	0x4b
	.long	0x2d1
	.uleb128 0xc
	.long	.LASF74
	.byte	0x8
	.byte	0x4d
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF75
	.byte	0x8
	.byte	0x4f
	.long	0x35d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x2a8
	.uleb128 0xd
	.long	.LASF76
	.byte	0xe
	.byte	0x9
	.word	0x108
	.long	0x35d
	.uleb128 0xe
	.string	"hdb"
	.byte	0x9
	.word	0x10b
	.long	0x53e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.long	.LASF77
	.byte	0x9
	.word	0x10e
	.long	0x5ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"tid"
	.byte	0x9
	.word	0x110
	.long	0xce
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xf
	.long	.LASF78
	.byte	0x9
	.word	0x112
	.long	0x129
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xf
	.long	.LASF79
	.byte	0x9
	.word	0x114
	.long	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xf
	.long	.LASF80
	.byte	0x9
	.word	0x117
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xf
	.long	.LASF81
	.byte	0x9
	.word	0x11a
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.long	.LASF82
	.byte	0x9
	.word	0x11c
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x363
	.uleb128 0x10
	.long	0x2d7
	.uleb128 0x4
	.long	.LASF83
	.byte	0x8
	.byte	0x50
	.long	0x2a8
	.uleb128 0x4
	.long	.LASF84
	.byte	0x8
	.byte	0xd5
	.long	0x37e
	.uleb128 0x7
	.byte	0x2
	.long	0x368
	.uleb128 0xb
	.long	.LASF85
	.byte	0x14
	.byte	0xa
	.byte	0x43
	.long	0x493
	.uleb128 0x11
	.string	"r29"
	.byte	0xa
	.byte	0x44
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"r28"
	.byte	0xa
	.byte	0x45
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x11
	.string	"r17"
	.byte	0xa
	.byte	0x46
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.string	"r16"
	.byte	0xa
	.byte	0x47
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x11
	.string	"r15"
	.byte	0xa
	.byte	0x48
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"r14"
	.byte	0xa
	.byte	0x49
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x11
	.string	"r13"
	.byte	0xa
	.byte	0x4a
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x11
	.string	"r12"
	.byte	0xa
	.byte	0x4b
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x11
	.string	"r11"
	.byte	0xa
	.byte	0x4c
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"r10"
	.byte	0xa
	.byte	0x4d
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x11
	.string	"r9"
	.byte	0xa
	.byte	0x4e
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x11
	.string	"r8"
	.byte	0xa
	.byte	0x4f
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x11
	.string	"r7"
	.byte	0xa
	.byte	0x50
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.string	"r6"
	.byte	0xa
	.byte	0x51
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x11
	.string	"r5"
	.byte	0xa
	.byte	0x52
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x11
	.string	"r4"
	.byte	0xa
	.byte	0x53
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x11
	.string	"r3"
	.byte	0xa
	.byte	0x54
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.string	"r2"
	.byte	0xa
	.byte	0x55
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xc
	.long	.LASF86
	.byte	0xa
	.byte	0x56
	.long	0x493
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x384
	.uleb128 0x4
	.long	.LASF87
	.byte	0xa
	.byte	0x57
	.long	0x384
	.uleb128 0xb
	.long	.LASF88
	.byte	0x2
	.byte	0xa
	.byte	0x5a
	.long	0x4bf
	.uleb128 0xc
	.long	.LASF89
	.byte	0xa
	.byte	0x5b
	.long	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x499
	.uleb128 0x4
	.long	.LASF90
	.byte	0xa
	.byte	0x5c
	.long	0x4a4
	.uleb128 0xb
	.long	.LASF91
	.byte	0x4
	.byte	0xa
	.byte	0x5e
	.long	0x4f9
	.uleb128 0xc
	.long	.LASF92
	.byte	0xa
	.byte	0x5f
	.long	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF93
	.byte	0xa
	.byte	0x60
	.long	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF94
	.byte	0xa
	.byte	0x61
	.long	0x504
	.uleb128 0x10
	.long	0x4d0
	.uleb128 0xb
	.long	.LASF95
	.byte	0x4
	.byte	0xa
	.byte	0x63
	.long	0x532
	.uleb128 0xc
	.long	.LASF96
	.byte	0xa
	.byte	0x64
	.long	0x532
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF97
	.byte	0xa
	.byte	0x65
	.long	0x538
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x4f9
	.uleb128 0x7
	.byte	0x2
	.long	0x4c5
	.uleb128 0x4
	.long	.LASF98
	.byte	0xa
	.byte	0x69
	.long	0x549
	.uleb128 0x10
	.long	0x509
	.uleb128 0x4
	.long	.LASF99
	.byte	0x9
	.byte	0x53
	.long	0x48
	.uleb128 0x5
	.byte	0x2
	.byte	0x9
	.byte	0x73
	.long	0x57a
	.uleb128 0x6
	.long	.LASF100
	.sleb128 0
	.uleb128 0x6
	.long	.LASF101
	.sleb128 1
	.uleb128 0x6
	.long	.LASF102
	.sleb128 2
	.uleb128 0x6
	.long	.LASF103
	.sleb128 3
	.byte	0
	.uleb128 0x4
	.long	.LASF104
	.byte	0x9
	.byte	0x7d
	.long	0x559
	.uleb128 0x12
	.byte	0xa
	.byte	0x9
	.byte	0xe0
	.long	0x5e2
	.uleb128 0xc
	.long	.LASF105
	.byte	0x9
	.byte	0xe4
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF106
	.byte	0x9
	.byte	0xea
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xc
	.long	.LASF107
	.byte	0x9
	.byte	0xec
	.long	0x16f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF108
	.byte	0x9
	.byte	0xf3
	.long	0x17b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	.LASF109
	.byte	0x9
	.byte	0xf5
	.long	0x17b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.long	.LASF110
	.byte	0x9
	.byte	0xfb
	.long	0x37e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.long	.LASF111
	.byte	0x9
	.word	0x101
	.long	0x585
	.uleb128 0x7
	.byte	0x2
	.long	0x5e2
	.uleb128 0x9
	.long	.LASF112
	.byte	0x9
	.word	0x122
	.long	0x363
	.uleb128 0x7
	.byte	0x2
	.long	0x5f4
	.uleb128 0xd
	.long	.LASF113
	.byte	0x4
	.byte	0x9
	.word	0x2c7
	.long	0x632
	.uleb128 0xf
	.long	.LASF114
	.byte	0x9
	.word	0x2c9
	.long	0x63d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.long	.LASF115
	.byte	0x9
	.word	0x2cb
	.long	0x187
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x13
	.long	0x35d
	.long	0x63d
	.uleb128 0x14
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x632
	.uleb128 0x9
	.long	.LASF116
	.byte	0x9
	.word	0x2cc
	.long	0x64f
	.uleb128 0x10
	.long	0x606
	.uleb128 0x15
	.byte	0x12
	.byte	0x9
	.word	0x2d9
	.long	0x711
	.uleb128 0xf
	.long	.LASF117
	.byte	0x9
	.word	0x2dc
	.long	0x600
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"rq"
	.byte	0x9
	.word	0x2ee
	.long	0x373
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.long	.LASF118
	.byte	0x9
	.word	0x2f0
	.long	0x37e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.long	.LASF119
	.byte	0x9
	.word	0x2ff
	.long	0x37e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xf
	.long	.LASF120
	.byte	0x9
	.word	0x301
	.long	0x711
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.long	.LASF121
	.byte	0x9
	.word	0x305
	.long	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xf
	.long	.LASF122
	.byte	0x9
	.word	0x307
	.long	0x257
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xf
	.long	.LASF123
	.byte	0x9
	.word	0x327
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xf
	.long	.LASF124
	.byte	0x9
	.word	0x329
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xf
	.long	.LASF125
	.byte	0x9
	.word	0x32b
	.long	0x54e
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xf
	.long	.LASF126
	.byte	0x9
	.word	0x32d
	.long	0x54e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.long	.LASF127
	.byte	0x9
	.word	0x330
	.long	0x54e
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0x16
	.long	0x57a
	.uleb128 0x9
	.long	.LASF128
	.byte	0x9
	.word	0x33a
	.long	0x654
	.uleb128 0x15
	.byte	0xa
	.byte	0x9
	.word	0x344
	.long	0x777
	.uleb128 0xf
	.long	.LASF129
	.byte	0x9
	.word	0x34a
	.long	0x777
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.long	.LASF130
	.byte	0x9
	.word	0x351
	.long	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.long	.LASF131
	.byte	0x9
	.word	0x354
	.long	0x600
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.long	.LASF132
	.byte	0x9
	.word	0x35c
	.long	0x788
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xf
	.long	.LASF133
	.byte	0x9
	.word	0x35e
	.long	0x187
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x716
	.uleb128 0x13
	.long	0x643
	.long	0x788
	.uleb128 0x14
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x77d
	.uleb128 0x9
	.long	.LASF134
	.byte	0x9
	.word	0x36a
	.long	0x79a
	.uleb128 0x10
	.long	0x722
	.uleb128 0x15
	.byte	0x1
	.byte	0x9
	.word	0x36f
	.long	0x7b8
	.uleb128 0xf
	.long	.LASF135
	.byte	0x9
	.word	0x3b1
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.long	.LASF136
	.byte	0x9
	.word	0x3b3
	.long	0x79f
	.uleb128 0x15
	.byte	0x6
	.byte	0x9
	.word	0x3c3
	.long	0x7fb
	.uleb128 0xf
	.long	.LASF137
	.byte	0x9
	.word	0x3c5
	.long	0x7fb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.long	.LASF114
	.byte	0x9
	.word	0x3d1
	.long	0x63d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.long	.LASF115
	.byte	0x9
	.word	0x3d4
	.long	0x187
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x7b8
	.uleb128 0x9
	.long	.LASF138
	.byte	0x9
	.word	0x3fc
	.long	0x80d
	.uleb128 0x10
	.long	0x7c4
	.uleb128 0x17
	.long	.LASF165
	.byte	0x3
	.byte	0x67
	.byte	0x1
	.byte	0x3
	.uleb128 0x18
	.long	.LASF166
	.byte	0x3
	.byte	0x72
	.byte	0x1
	.long	0x9a
	.byte	0x3
	.long	0x837
	.uleb128 0x19
	.string	"sr"
	.byte	0x3
	.byte	0x74
	.long	0x9a
	.byte	0
	.uleb128 0x1a
	.long	.LASF141
	.byte	0x3
	.byte	0x79
	.byte	0x1
	.byte	0x3
	.long	0x850
	.uleb128 0x1b
	.long	.LASF143
	.byte	0x3
	.byte	0x79
	.long	0x9a
	.byte	0
	.uleb128 0x1c
	.long	.LASF139
	.byte	0xb
	.byte	0x4b
	.byte	0x1
	.long	0x85d
	.byte	0x3
	.uleb128 0x7
	.byte	0x2
	.long	0x78e
	.uleb128 0x1c
	.long	.LASF140
	.byte	0x3
	.byte	0x91
	.byte	0x1
	.long	0x9a
	.byte	0x3
	.uleb128 0x1a
	.long	.LASF142
	.byte	0x3
	.byte	0x98
	.byte	0x1
	.byte	0x3
	.long	0x889
	.uleb128 0x1b
	.long	.LASF144
	.byte	0x3
	.byte	0x98
	.long	0x9a
	.byte	0
	.uleb128 0x1c
	.long	.LASF145
	.byte	0xb
	.byte	0x54
	.byte	0x1
	.long	0x896
	.byte	0x3
	.uleb128 0x7
	.byte	0x2
	.long	0x801
	.uleb128 0x1c
	.long	.LASF146
	.byte	0x2
	.byte	0xa7
	.byte	0x1
	.long	0x600
	.byte	0x3
	.uleb128 0x1c
	.long	.LASF147
	.byte	0x2
	.byte	0xf9
	.byte	0x1
	.long	0x9a
	.byte	0x3
	.uleb128 0x1d
	.long	.LASF148
	.byte	0x2
	.word	0x102
	.byte	0x1
	.byte	0x3
	.long	0x8d1
	.uleb128 0x1e
	.long	.LASF143
	.byte	0x2
	.word	0x104
	.long	0x9a
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF152
	.byte	0x1
	.byte	0x53
	.byte	0x1
	.long	0x257
	.long	.LFB56
	.long	.LFE56
	.long	.LLST0
	.byte	0x1
	.long	0xa70
	.uleb128 0x20
	.string	"Sem"
	.byte	0x1
	.byte	0x55
	.long	0x263
	.long	.LLST1
	.uleb128 0x21
	.string	"ev"
	.byte	0x1
	.byte	0x59
	.long	0x257
	.long	.LLST2
	.uleb128 0x22
	.long	.LBB56
	.long	.LBE56
	.uleb128 0x23
	.long	.LASF149
	.byte	0x1
	.byte	0x5e
	.long	0xa70
	.uleb128 0x23
	.long	.LASF117
	.byte	0x1
	.byte	0x60
	.long	0xa75
	.uleb128 0x23
	.long	.LASF143
	.byte	0x1
	.byte	0x61
	.long	0xa7a
	.uleb128 0x24
	.long	0x89c
	.long	.LBB57
	.long	.LBE57
	.byte	0x1
	.byte	0x60
	.uleb128 0x25
	.long	0x8a9
	.long	.LBB59
	.long	.LBE59
	.byte	0x1
	.byte	0x61
	.long	0x99b
	.uleb128 0x26
	.long	0x863
	.long	.LBB60
	.long	.LBE60
	.byte	0x2
	.byte	0xfe
	.uleb128 0x26
	.long	0x81b
	.long	.LBB61
	.long	.LBE61
	.byte	0x3
	.byte	0x93
	.uleb128 0x22
	.long	.LBB62
	.long	.LBE62
	.uleb128 0x27
	.long	0x82c
	.long	.LLST3
	.uleb128 0x24
	.long	0x812
	.long	.LBB63
	.long	.LBE63
	.byte	0x3
	.byte	0x75
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LBB65
	.long	.LBE65
	.long	0xa22
	.uleb128 0x29
	.long	.LASF150
	.byte	0x1
	.byte	0x6b
	.long	0x37e
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x2a
	.long	.LASF151
	.byte	0x1
	.byte	0x6d
	.long	0xa75
	.long	.LLST4
	.uleb128 0x2b
	.long	.LVL3
	.long	0xbda
	.long	0x9de
	.uleb128 0x2c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.byte	0
	.uleb128 0x2b
	.long	.LVL5
	.long	0xbfd
	.long	0xa01
	.uleb128 0x2c
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
	.uleb128 0x2c
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.long	.LVL6
	.long	0xc24
	.uleb128 0x2c
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x2c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x8b6
	.long	.LBB66
	.long	.LBE66
	.byte	0x1
	.byte	0x7c
	.uleb128 0x2e
	.long	0x8c4
	.long	.LLST5
	.uleb128 0x2f
	.long	0x870
	.long	.LBB67
	.long	.LBE67
	.byte	0x2
	.word	0x107
	.uleb128 0x2e
	.long	0x87d
	.long	.LLST5
	.uleb128 0x26
	.long	0x837
	.long	.LBB68
	.long	.LBE68
	.byte	0x3
	.byte	0x9a
	.uleb128 0x2e
	.long	0x844
	.long	.LLST5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x896
	.uleb128 0x10
	.long	0x600
	.uleb128 0x10
	.long	0x9a
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF153
	.byte	0x1
	.byte	0x82
	.byte	0x1
	.long	0x257
	.long	.LFB57
	.long	.LFE57
	.long	.LLST8
	.byte	0x1
	.long	0xbbb
	.uleb128 0x20
	.string	"Sem"
	.byte	0x1
	.byte	0x84
	.long	0x263
	.long	.LLST9
	.uleb128 0x21
	.string	"ev"
	.byte	0x1
	.byte	0x88
	.long	0x257
	.long	.LLST10
	.uleb128 0x22
	.long	.LBB70
	.long	.LBE70
	.uleb128 0x23
	.long	.LASF143
	.byte	0x1
	.byte	0x8d
	.long	0xa7a
	.uleb128 0x25
	.long	0x8a9
	.long	.LBB71
	.long	.LBE71
	.byte	0x1
	.byte	0x8d
	.long	0xb24
	.uleb128 0x26
	.long	0x863
	.long	.LBB72
	.long	.LBE72
	.byte	0x2
	.byte	0xfe
	.uleb128 0x26
	.long	0x81b
	.long	.LBB73
	.long	.LBE73
	.byte	0x3
	.byte	0x93
	.uleb128 0x22
	.long	.LBB74
	.long	.LBE74
	.uleb128 0x27
	.long	0x82c
	.long	.LLST11
	.uleb128 0x24
	.long	0x812
	.long	.LBB75
	.long	.LBE75
	.byte	0x3
	.byte	0x75
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LBB77
	.long	.LBE77
	.long	0xb6d
	.uleb128 0x2a
	.long	.LASF154
	.byte	0x1
	.byte	0x93
	.long	0x8f
	.long	.LLST12
	.uleb128 0x23
	.long	.LASF149
	.byte	0x1
	.byte	0x95
	.long	0xa70
	.uleb128 0x2a
	.long	.LASF155
	.byte	0x1
	.byte	0x97
	.long	0xbbb
	.long	.LLST13
	.uleb128 0x30
	.long	.LVL15
	.long	0xc3d
	.uleb128 0x30
	.long	.LVL17
	.long	0xc5a
	.byte	0
	.uleb128 0x26
	.long	0x8b6
	.long	.LBB78
	.long	.LBE78
	.byte	0x1
	.byte	0xa8
	.uleb128 0x2e
	.long	0x8c4
	.long	.LLST14
	.uleb128 0x2f
	.long	0x870
	.long	.LBB79
	.long	.LBE79
	.byte	0x2
	.word	0x107
	.uleb128 0x2e
	.long	0x87d
	.long	.LLST14
	.uleb128 0x26
	.long	0x837
	.long	.LBB80
	.long	.LBE80
	.byte	0x3
	.byte	0x9a
	.uleb128 0x2e
	.long	0x844
	.long	.LLST14
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x37e
	.uleb128 0x31
	.long	.LASF156
	.byte	0xb
	.byte	0x3f
	.long	0x801
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.long	.LASF157
	.byte	0xb
	.byte	0x40
	.long	0x78e
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.byte	0x1
	.long	.LASF158
	.byte	0xc
	.byte	0x8c
	.byte	0x1
	.long	0x600
	.byte	0x1
	.long	0xbf7
	.uleb128 0x33
	.long	0x896
	.uleb128 0x33
	.long	0xbf7
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x37e
	.uleb128 0x32
	.byte	0x1
	.long	.LASF159
	.byte	0x8
	.byte	0x92
	.byte	0x1
	.long	0x8f
	.byte	0x1
	.long	0xc1f
	.uleb128 0x33
	.long	0xbf7
	.uleb128 0x33
	.long	0x37e
	.uleb128 0x33
	.long	0xc1f
	.byte	0
	.uleb128 0x10
	.long	0x8f
	.uleb128 0x34
	.byte	0x1
	.long	.LASF161
	.byte	0x2
	.byte	0x58
	.byte	0x1
	.byte	0x1
	.long	0xc3d
	.uleb128 0x33
	.long	0x600
	.uleb128 0x33
	.long	0x600
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.long	.LASF160
	.byte	0xc
	.byte	0x94
	.byte	0x1
	.long	0x8f
	.byte	0x1
	.long	0xc5a
	.uleb128 0x33
	.long	0x896
	.uleb128 0x33
	.long	0x37e
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.long	.LASF162
	.byte	0xc
	.byte	0x85
	.byte	0x1
	.long	0x8f
	.byte	0x1
	.uleb128 0x33
	.long	0x896
	.byte	0
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
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB56
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
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI10
	.long	.LFE56
	.word	0x2
	.byte	0x8c
	.sleb128 13
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL2
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL2
	.long	.LVL3-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL3-1
	.long	.LVL6
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL6
	.long	.LVL7
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL7
	.long	.LVL8
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL8
	.long	.LVL9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL9
	.long	.LVL10
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL10
	.long	.LFE56
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL8
	.long	.LVL9
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL10
	.long	.LFE56
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST3:
	.long	.LVL1
	.long	.LVL9
	.word	0x1
	.byte	0x5d
	.long	0
	.long	0
.LLST4:
	.long	.LVL4
	.long	.LVL6
	.word	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST5:
	.long	.LVL8
	.long	.LVL9
	.word	0x1
	.byte	0x5d
	.long	0
	.long	0
.LLST8:
	.long	.LFB57
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI11
	.long	.LFE57
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	0
	.long	0
.LLST9:
	.long	.LVL11
	.long	.LVL14
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL14
	.long	.LVL15-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL15-1
	.long	.LVL18
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL18
	.long	.LVL19
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL19
	.long	.LVL20
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL20
	.long	.LVL22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL22
	.long	.LVL23
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL23
	.long	.LFE57
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL21
	.long	.LVL22
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL23
	.long	.LFE57
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST11:
	.long	.LVL12
	.long	.LVL22
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST12:
	.long	.LVL15
	.long	.LVL16
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST13:
	.long	.LVL13
	.long	.LVL15-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST14:
	.long	.LVL20
	.long	.LVL22
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x24
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB56
	.long	.LFE56-.LFB56
	.long	.LFB57
	.long	.LFE57-.LFB57
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB56
	.long	.LFE56
	.long	.LFB57
	.long	.LFE57
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF70:
	.string	"count"
.LASF15:
	.string	"OsEE_event_mask"
.LASF152:
	.string	"WaitSem"
.LASF99:
	.string	"OsEE_byte"
.LASF132:
	.string	"p_autostart_tdb_array"
.LASF119:
	.string	"p_stk_sn"
.LASF121:
	.string	"app_mode"
.LASF13:
	.string	"OsEE_reg"
.LASF72:
	.string	"OsEE_sem_tag"
.LASF112:
	.string	"OsEE_TDB"
.LASF21:
	.string	"OSEE_TASK_TYPE_BASIC"
.LASF54:
	.string	"E_OS_PROTECTION_ARRIVAL"
.LASF24:
	.string	"OSEE_TASK_TYPE_IDLE"
.LASF9:
	.string	"long long unsigned int"
.LASF67:
	.string	"StatusType"
.LASF33:
	.string	"OsEE_task_status"
.LASF90:
	.string	"OsEE_SCB"
.LASF27:
	.string	"OSEE_TASK_SUSPENDED"
.LASF23:
	.string	"OSEE_TASK_TYPE_ISR2"
.LASF134:
	.string	"OsEE_CDB"
.LASF78:
	.string	"task_type"
.LASF156:
	.string	"osEE_kdb_var"
.LASF118:
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
.LASF131:
	.string	"p_idle_task"
.LASF25:
	.string	"OsEE_task_type"
.LASF18:
	.string	"TaskPrio"
.LASF7:
	.string	"long int"
.LASF60:
	.string	"E_OS_CORE"
.LASF38:
	.string	"E_OS_ACCESS"
.LASF147:
	.string	"osEE_begin_primitive"
.LASF98:
	.string	"OsEE_HDB"
.LASF6:
	.string	"uint16_t"
.LASF104:
	.string	"OsEE_kernel_status"
.LASF94:
	.string	"OsEE_SDB"
.LASF163:
	.string	"GNU C 4.9.2 -fpreprocessed -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g -Os -std=gnu11 -ffunction-sections -fdata-sections"
.LASF89:
	.string	"p_tos"
.LASF40:
	.string	"E_OS_ID"
.LASF80:
	.string	"ready_prio"
.LASF36:
	.string	"MemSize"
.LASF62:
	.string	"E_OS_SYS_SUSPEND_NESTING_LIMIT"
.LASF101:
	.string	"OSEE_KERNEL_STARTING"
.LASF135:
	.string	"dummy"
.LASF55:
	.string	"E_OS_PROTECTION_LOCKED"
.LASF79:
	.string	"task_func"
.LASF164:
	.string	"C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\src\\ee_oo_api_extension.c"
.LASF82:
	.string	"max_num_of_act"
.LASF133:
	.string	"autostart_tdb_array_size"
.LASF0:
	.string	"unsigned int"
.LASF108:
	.string	"wait_mask"
.LASF165:
	.string	"osEE_hal_disableIRQ"
.LASF11:
	.string	"OSEE_TRUE"
.LASF68:
	.string	"SemRefType"
.LASF8:
	.string	"long unsigned int"
.LASF52:
	.string	"E_OS_PROTECTION_MEMORY"
.LASF137:
	.string	"p_kcb"
.LASF141:
	.string	"osEE_hal_resumeIRQ"
.LASF20:
	.string	"TaskFunc"
.LASF17:
	.string	"TaskType"
.LASF149:
	.string	"p_kdb"
.LASF161:
	.string	"osEE_change_context_from_running"
.LASF120:
	.string	"os_status"
.LASF16:
	.string	"AppModeType"
.LASF76:
	.string	"OsEE_TDB_tag"
.LASF88:
	.string	"OsEE_SCB_tag"
.LASF146:
	.string	"osEE_get_curr_task"
.LASF32:
	.string	"OSEE_TASK_CHAINED"
.LASF145:
	.string	"osEE_get_kernel"
.LASF84:
	.string	"OsEE_RQ"
.LASF128:
	.string	"OsEE_CCB"
.LASF10:
	.string	"OSEE_FALSE"
.LASF130:
	.string	"p_idle_hook"
.LASF159:
	.string	"osEE_sn_priority_insert"
.LASF123:
	.string	"prev_s_isr_all_status"
.LASF151:
	.string	"p_to"
.LASF37:
	.string	"E_OK"
.LASF44:
	.string	"E_OS_STATE"
.LASF30:
	.string	"OSEE_TASK_WAITING"
.LASF127:
	.string	"d_isr_all_cnt"
.LASF154:
	.string	"is_preemption"
.LASF117:
	.string	"p_curr"
.LASF103:
	.string	"OSEE_KERNEL_SHUTDOWN"
.LASF63:
	.string	"E_OS_SYS_TASK"
.LASF2:
	.string	"long double"
.LASF116:
	.string	"OsEE_autostart_tdb"
.LASF19:
	.string	"TaskActivation"
.LASF51:
	.string	"E_OS_PARAM_POINTER"
.LASF109:
	.string	"event_mask"
.LASF92:
	.string	"p_bos"
.LASF49:
	.string	"E_OS_DISABLEDINT"
.LASF136:
	.string	"OsEE_KCB"
.LASF83:
	.string	"OsEE_SN"
.LASF126:
	.string	"s_isr_os_cnt"
.LASF48:
	.string	"E_OS_MISSINGEND"
.LASF12:
	.string	"OsEE_bool"
.LASF29:
	.string	"OSEE_TASK_READY_STACKED"
.LASF45:
	.string	"E_OS_VALUE"
.LASF91:
	.string	"OsEE_SDB_tag"
.LASF71:
	.string	"CountType"
.LASF139:
	.string	"osEE_get_curr_core"
.LASF105:
	.string	"current_num_of_act"
.LASF153:
	.string	"PostSem"
.LASF77:
	.string	"p_tcb"
.LASF160:
	.string	"osEE_scheduler_task_unblocked"
.LASF4:
	.string	"unsigned char"
.LASF56:
	.string	"E_OS_PROTECTION_EXCEPTION"
.LASF85:
	.string	"OsEE_CTX_tag"
.LASF64:
	.string	"E_OS_SYS_STACK"
.LASF102:
	.string	"OSEE_KERNEL_STARTED"
.LASF58:
	.string	"E_OS_INTERFERENCE_DEADLOCK"
.LASF138:
	.string	"OsEE_KDB"
.LASF114:
	.string	"p_tdb_ptr_array"
.LASF74:
	.string	"p_next"
.LASF28:
	.string	"OSEE_TASK_READY"
.LASF41:
	.string	"E_OS_LIMIT"
.LASF129:
	.string	"p_ccb"
.LASF157:
	.string	"osEE_cdb_var"
.LASF113:
	.string	"OsEE_autostart_tdb_tag"
.LASF22:
	.string	"OSEE_TASK_TYPE_EXTENDED"
.LASF124:
	.string	"prev_s_isr_os_status"
.LASF122:
	.string	"last_error"
.LASF73:
	.string	"OsEE_SN_tag"
.LASF144:
	.string	"flag"
.LASF106:
	.string	"current_prio"
.LASF61:
	.string	"E_OS_SYS_INIT"
.LASF66:
	.string	"OsEE_status_type"
.LASF75:
	.string	"p_tdb"
.LASF100:
	.string	"OSEE_KERNEL_INITIALIZED"
.LASF47:
	.string	"E_OS_ILLEGAL_ADDRESS"
.LASF162:
	.string	"osEE_scheduler_task_preemption_point"
.LASF14:
	.string	"OsEE_mem_size"
.LASF110:
	.string	"p_own_sn"
.LASF158:
	.string	"osEE_scheduler_task_block_current"
.LASF97:
	.string	"p_scb"
.LASF34:
	.string	"TaskStateType"
.LASF150:
	.string	"blocked_sn"
.LASF155:
	.string	"p_sn_released"
.LASF43:
	.string	"E_OS_RESOURCE"
.LASF142:
	.string	"osEE_hal_end_nested_primitive"
.LASF148:
	.string	"osEE_end_primitive"
.LASF115:
	.string	"tdb_array_size"
.LASF125:
	.string	"s_isr_all_cnt"
.LASF140:
	.string	"osEE_hal_begin_nested_primitive"
.LASF107:
	.string	"status"
.LASF59:
	.string	"E_OS_NESTING_DEADLOCK"
.LASF81:
	.string	"dispatch_prio"
.LASF5:
	.string	"uint8_t"
.LASF143:
	.string	"flags"
.LASF46:
	.string	"E_OS_SERVICEID"
.LASF93:
	.string	"stack_size"
.LASF111:
	.string	"OsEE_TCB"
.LASF95:
	.string	"OsEE_HDB_tag"
.LASF42:
	.string	"E_OS_NOFUNC"
.LASF166:
	.string	"osEE_hal_suspendIRQ"
.LASF96:
	.string	"p_sdb"
.LASF39:
	.string	"E_OS_CALLEVEL"
.LASF26:
	.string	"TaskExecutionType"
.LASF31:
	.string	"OSEE_TASK_RUNNING"
.LASF69:
	.string	"blocked_queue"
.LASF50:
	.string	"E_OS_STACKFAULT"
.LASF86:
	.string	"p_ctx"
.LASF57:
	.string	"E_OS_SPINLOCK"
.LASF87:
	.string	"OsEE_CTX"
	.ident	"GCC: (GNU) 4.9.2"
