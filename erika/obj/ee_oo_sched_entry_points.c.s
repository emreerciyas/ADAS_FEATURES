	.file	"ee_oo_sched_entry_points.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.osEE_scheduler_task_wrapper_restore,"ax",@progbits
.global	osEE_scheduler_task_wrapper_restore
	.type	osEE_scheduler_task_wrapper_restore, @function
osEE_scheduler_task_wrapper_restore:
.LFB57:
	.file 1 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\src\\ee_oo_sched_entry_points.c"
	.loc 1 192 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 219 0
	movw r26,r24
	adiw r26,4
	ld r30,X+
	ld r31,X
	sbiw r26,4+1
	ldi r24,lo8(4)
	ldi r25,0
.LVL1:
	std Z+3,r25
	std Z+2,r24
	ret
	.cfi_endproc
.LFE57:
	.size	osEE_scheduler_task_wrapper_restore, .-osEE_scheduler_task_wrapper_restore
	.section	.text.osEE_scheduler_task_wrapper_run,"ax",@progbits
.global	osEE_scheduler_task_wrapper_run
	.type	osEE_scheduler_task_wrapper_run, @function
osEE_scheduler_task_wrapper_run:
.LFB58:
	.loc 1 267 0
	.cfi_startproc
.LVL2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r28,r24
	.loc 1 268 0
	ldd r30,Y+4
	ldd r31,Y+5
	ldd r24,Z+1
.LVL3:
.LBB76:
.LBB77:
	.loc 1 219 0
	ldi r18,lo8(4)
	ldi r19,0
	std Z+3,r19
	std Z+2,r18
.LBE77:
.LBE76:
	.loc 1 271 0
	cpi r24,lo8(-1)
	breq .L3
.LVL4:
.LBB78:
.LBB79:
	.file 2 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\src\\ee_hal_internal.h"
	.loc 2 110 0
/* #APP */
 ;  110 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_hal_internal.h" 1
	sei
 ;  0 "" 2
.LVL5:
/* #NOAPP */
.L3:
.LBE79:
.LBE78:
	.loc 1 276 0
	ldd r30,Y+9
	ldd r31,Y+10
	icall
.LVL6:
.LBB80:
.LBB81:
	.loc 1 118 0
	lds r30,osEE_cdb_var
	lds r31,osEE_cdb_var+1
.LVL7:
	.loc 1 124 0
	std Z+16,__zero_reg__
	.loc 1 127 0
	ldd r24,Z+15
	tst r24
	breq .L4
	.loc 1 128 0
	std Z+15,__zero_reg__
	.loc 1 129 0
	ldd r24,Z+13
.LVL8:
.LBB82:
.LBB83:
	.loc 2 123 0
	.loc 2 124 0
	out __SREG__,r24
.LVL9:
.L4:
.LBE83:
.LBE82:
	.loc 1 131 0
	ldd r24,Z+17
	tst r24
	breq .L5
	.loc 1 132 0
	std Z+17,__zero_reg__
.LBB84:
.LBB85:
	.loc 2 110 0
/* #APP */
 ;  110 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_hal_internal.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
.L5:
.LBE85:
.LBE84:
.LBB86:
.LBB87:
.LBB88:
.LBB89:
	.loc 2 116 0
	in r24,__SREG__
.LBB90:
.LBB91:
	.loc 2 105 0
/* #APP */
 ;  105 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
.LVL10:
/* #NOAPP */
.LBE91:
.LBE90:
.LBE89:
.LBE88:
.LBE87:
.LBE86:
.LBB92:
.LBB93:
	.file 3 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\src\\ee_std_change_context.h"
	.loc 3 141 0
	ldi r22,lo8(gs(osEE_scheduler_task_end))
	ldi r23,hi8(gs(osEE_scheduler_task_end))
	ldd r24,Y+2
	ldd r25,Y+3
	call osEE_hal_terminate_ctx
.LVL11:
.LBE93:
.LBE92:
.LBE81:
.LBE80:
	.cfi_endproc
.LFE58:
	.size	osEE_scheduler_task_wrapper_run, .-osEE_scheduler_task_wrapper_run
	.section	.text.osEE_idle_hook_wrapper,"ax",@progbits
.global	osEE_idle_hook_wrapper
	.type	osEE_idle_hook_wrapper, @function
osEE_idle_hook_wrapper:
.LFB59:
	.loc 1 287 0
	.cfi_startproc
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
.LBB94:
.LBB95:
.LBB96:
.LBB97:
	.loc 2 116 0
	in r28,__SREG__
.LVL12:
.LBB98:
.LBB99:
	.loc 2 105 0
/* #APP */
 ;  105 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_hal_internal.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE99:
.LBE98:
.LBE97:
.LBE96:
.LBE95:
.LBE94:
	.loc 1 293 0
	ldi r24,lo8(osEE_kdb_var)
	ldi r25,hi8(osEE_kdb_var)
	call osEE_scheduler_task_preemption_point
.LVL13:
.LBB100:
.LBB101:
.LBB102:
.LBB103:
	.loc 2 123 0
	.loc 2 124 0
	out __SREG__,r28
.LBE103:
.LBE102:
.LBE101:
.LBE100:
	.loc 1 296 0
	lds r16,osEE_cdb_var
	lds r17,osEE_cdb_var+1
.LBB104:
	.loc 1 298 0
	lds r28,osEE_cdb_var+2
	lds r29,osEE_cdb_var+2+1
.LVL14:
.L18:
.LBE104:
	.loc 1 296 0
	movw r30,r16
	ldd r24,Z+8
	ldd r25,Z+9
	sbiw r24,2
	brne .L22
.LVL15:
.LBB105:
	.loc 1 299 0
	sbiw r28,0
	breq .L18
	.loc 1 300 0
	movw r30,r28
	icall
.LVL16:
	rjmp .L18
.LVL17:
.L22:
.LBE105:
	.loc 1 306 0
	lds r24,osEE_cdb_var+4
	lds r25,osEE_cdb_var+4+1
/* epilogue start */
	.loc 1 307 0
	pop r29
	pop r28
	pop r17
	pop r16
	.loc 1 306 0
	jmp osEE_idle_task_terminate
.LVL18:
	.cfi_endproc
.LFE59:
	.size	osEE_idle_hook_wrapper, .-osEE_idle_hook_wrapper
	.text
.Letext0:
	.file 4 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\stdint.h"
	.file 5 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\inc/ee_platform_types.h"
	.file 6 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\inc/ee_api_types.h"
	.file 7 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\inc/ee_scheduler_types.h"
	.file 8 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\inc/ee_kernel_types.h"
	.file 9 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\inc/ee_hal_internal_types.h"
	.file 10 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\src\\ee_kernel.h"
	.file 11 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\inc/ee_get_kernel_and_core.h"
	.file 12 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\src\\ee_scheduler.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xd37
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF191
	.byte	0x1
	.long	.LASF192
	.long	.Ldebug_ranges0+0x18
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
	.uleb128 0xa
	.byte	0x2
	.byte	0x6
	.word	0x2f4
	.long	0x305
	.uleb128 0x6
	.long	.LASF68
	.sleb128 0
	.uleb128 0x6
	.long	.LASF69
	.sleb128 2
	.uleb128 0x6
	.long	.LASF70
	.sleb128 4
	.uleb128 0x6
	.long	.LASF71
	.sleb128 6
	.uleb128 0x6
	.long	.LASF72
	.sleb128 8
	.uleb128 0x6
	.long	.LASF73
	.sleb128 10
	.uleb128 0x6
	.long	.LASF74
	.sleb128 12
	.uleb128 0x6
	.long	.LASF75
	.sleb128 14
	.uleb128 0x6
	.long	.LASF76
	.sleb128 16
	.uleb128 0x6
	.long	.LASF77
	.sleb128 18
	.uleb128 0x6
	.long	.LASF78
	.sleb128 20
	.uleb128 0x6
	.long	.LASF79
	.sleb128 22
	.uleb128 0x6
	.long	.LASF80
	.sleb128 28
	.uleb128 0x6
	.long	.LASF81
	.sleb128 30
	.uleb128 0x6
	.long	.LASF82
	.sleb128 32
	.uleb128 0x6
	.long	.LASF83
	.sleb128 34
	.uleb128 0x6
	.long	.LASF84
	.sleb128 70
	.uleb128 0x6
	.long	.LASF85
	.sleb128 72
	.uleb128 0x6
	.long	.LASF86
	.sleb128 74
	.uleb128 0x6
	.long	.LASF87
	.sleb128 78
	.uleb128 0x6
	.long	.LASF88
	.sleb128 80
	.uleb128 0x6
	.long	.LASF89
	.sleb128 82
	.uleb128 0x6
	.long	.LASF90
	.sleb128 84
	.uleb128 0x6
	.long	.LASF91
	.sleb128 86
	.byte	0
	.uleb128 0x9
	.long	.LASF92
	.byte	0x6
	.word	0x336
	.long	0x263
	.uleb128 0x9
	.long	.LASF93
	.byte	0x6
	.word	0x339
	.long	0x305
	.uleb128 0xb
	.long	.LASF96
	.byte	0x4
	.byte	0x7
	.byte	0x4b
	.long	0x346
	.uleb128 0xc
	.long	.LASF94
	.byte	0x7
	.byte	0x4d
	.long	0x346
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF95
	.byte	0x7
	.byte	0x4f
	.long	0x3d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x31d
	.uleb128 0xd
	.long	.LASF97
	.byte	0xe
	.byte	0x8
	.word	0x108
	.long	0x3d2
	.uleb128 0xe
	.string	"hdb"
	.byte	0x8
	.word	0x10b
	.long	0x5b3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.long	.LASF98
	.byte	0x8
	.word	0x10e
	.long	0x66e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"tid"
	.byte	0x8
	.word	0x110
	.long	0xce
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xf
	.long	.LASF99
	.byte	0x8
	.word	0x112
	.long	0x129
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xf
	.long	.LASF100
	.byte	0x8
	.word	0x114
	.long	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xf
	.long	.LASF101
	.byte	0x8
	.word	0x117
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xf
	.long	.LASF102
	.byte	0x8
	.word	0x11a
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.long	.LASF103
	.byte	0x8
	.word	0x11c
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x3d8
	.uleb128 0x10
	.long	0x34c
	.uleb128 0x4
	.long	.LASF104
	.byte	0x7
	.byte	0x50
	.long	0x31d
	.uleb128 0x4
	.long	.LASF105
	.byte	0x7
	.byte	0xd5
	.long	0x3f3
	.uleb128 0x7
	.byte	0x2
	.long	0x3dd
	.uleb128 0xb
	.long	.LASF106
	.byte	0x14
	.byte	0x9
	.byte	0x43
	.long	0x508
	.uleb128 0x11
	.string	"r29"
	.byte	0x9
	.byte	0x44
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"r28"
	.byte	0x9
	.byte	0x45
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x11
	.string	"r17"
	.byte	0x9
	.byte	0x46
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.string	"r16"
	.byte	0x9
	.byte	0x47
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x11
	.string	"r15"
	.byte	0x9
	.byte	0x48
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"r14"
	.byte	0x9
	.byte	0x49
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x11
	.string	"r13"
	.byte	0x9
	.byte	0x4a
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x11
	.string	"r12"
	.byte	0x9
	.byte	0x4b
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x11
	.string	"r11"
	.byte	0x9
	.byte	0x4c
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"r10"
	.byte	0x9
	.byte	0x4d
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x11
	.string	"r9"
	.byte	0x9
	.byte	0x4e
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x11
	.string	"r8"
	.byte	0x9
	.byte	0x4f
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x11
	.string	"r7"
	.byte	0x9
	.byte	0x50
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.string	"r6"
	.byte	0x9
	.byte	0x51
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x11
	.string	"r5"
	.byte	0x9
	.byte	0x52
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x11
	.string	"r4"
	.byte	0x9
	.byte	0x53
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x11
	.string	"r3"
	.byte	0x9
	.byte	0x54
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.string	"r2"
	.byte	0x9
	.byte	0x55
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xc
	.long	.LASF107
	.byte	0x9
	.byte	0x56
	.long	0x508
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x3f9
	.uleb128 0x4
	.long	.LASF108
	.byte	0x9
	.byte	0x57
	.long	0x3f9
	.uleb128 0xb
	.long	.LASF109
	.byte	0x2
	.byte	0x9
	.byte	0x5a
	.long	0x534
	.uleb128 0xc
	.long	.LASF110
	.byte	0x9
	.byte	0x5b
	.long	0x534
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x50e
	.uleb128 0x4
	.long	.LASF111
	.byte	0x9
	.byte	0x5c
	.long	0x519
	.uleb128 0xb
	.long	.LASF112
	.byte	0x4
	.byte	0x9
	.byte	0x5e
	.long	0x56e
	.uleb128 0xc
	.long	.LASF113
	.byte	0x9
	.byte	0x5f
	.long	0x534
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF114
	.byte	0x9
	.byte	0x60
	.long	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF115
	.byte	0x9
	.byte	0x61
	.long	0x579
	.uleb128 0x10
	.long	0x545
	.uleb128 0xb
	.long	.LASF116
	.byte	0x4
	.byte	0x9
	.byte	0x63
	.long	0x5a7
	.uleb128 0xc
	.long	.LASF117
	.byte	0x9
	.byte	0x64
	.long	0x5a7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF118
	.byte	0x9
	.byte	0x65
	.long	0x5ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x56e
	.uleb128 0x7
	.byte	0x2
	.long	0x53a
	.uleb128 0x4
	.long	.LASF119
	.byte	0x9
	.byte	0x69
	.long	0x5be
	.uleb128 0x10
	.long	0x57e
	.uleb128 0x4
	.long	.LASF120
	.byte	0x8
	.byte	0x51
	.long	0xbb
	.uleb128 0x4
	.long	.LASF121
	.byte	0x8
	.byte	0x53
	.long	0x48
	.uleb128 0x5
	.byte	0x2
	.byte	0x8
	.byte	0x73
	.long	0x5fa
	.uleb128 0x6
	.long	.LASF122
	.sleb128 0
	.uleb128 0x6
	.long	.LASF123
	.sleb128 1
	.uleb128 0x6
	.long	.LASF124
	.sleb128 2
	.uleb128 0x6
	.long	.LASF125
	.sleb128 3
	.byte	0
	.uleb128 0x4
	.long	.LASF126
	.byte	0x8
	.byte	0x7d
	.long	0x5d9
	.uleb128 0x12
	.byte	0xa
	.byte	0x8
	.byte	0xe0
	.long	0x662
	.uleb128 0xc
	.long	.LASF127
	.byte	0x8
	.byte	0xe4
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF128
	.byte	0x8
	.byte	0xea
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xc
	.long	.LASF129
	.byte	0x8
	.byte	0xec
	.long	0x16f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF130
	.byte	0x8
	.byte	0xf3
	.long	0x17b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	.LASF131
	.byte	0x8
	.byte	0xf5
	.long	0x17b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.long	.LASF132
	.byte	0x8
	.byte	0xfb
	.long	0x3f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.long	.LASF133
	.byte	0x8
	.word	0x101
	.long	0x605
	.uleb128 0x7
	.byte	0x2
	.long	0x662
	.uleb128 0x9
	.long	.LASF134
	.byte	0x8
	.word	0x122
	.long	0x3d8
	.uleb128 0x7
	.byte	0x2
	.long	0x674
	.uleb128 0xd
	.long	.LASF135
	.byte	0x4
	.byte	0x8
	.word	0x2c7
	.long	0x6b2
	.uleb128 0xf
	.long	.LASF136
	.byte	0x8
	.word	0x2c9
	.long	0x6bd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.long	.LASF137
	.byte	0x8
	.word	0x2cb
	.long	0x187
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x13
	.long	0x3d2
	.long	0x6bd
	.uleb128 0x14
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x6b2
	.uleb128 0x9
	.long	.LASF138
	.byte	0x8
	.word	0x2cc
	.long	0x6cf
	.uleb128 0x10
	.long	0x686
	.uleb128 0x15
	.byte	0x12
	.byte	0x8
	.word	0x2d9
	.long	0x791
	.uleb128 0xf
	.long	.LASF139
	.byte	0x8
	.word	0x2dc
	.long	0x680
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"rq"
	.byte	0x8
	.word	0x2ee
	.long	0x3e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.long	.LASF140
	.byte	0x8
	.word	0x2f0
	.long	0x3f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.long	.LASF141
	.byte	0x8
	.word	0x2ff
	.long	0x3f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xf
	.long	.LASF142
	.byte	0x8
	.word	0x301
	.long	0x791
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.long	.LASF143
	.byte	0x8
	.word	0x305
	.long	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xf
	.long	.LASF144
	.byte	0x8
	.word	0x307
	.long	0x257
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xf
	.long	.LASF145
	.byte	0x8
	.word	0x327
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xf
	.long	.LASF146
	.byte	0x8
	.word	0x329
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xf
	.long	.LASF147
	.byte	0x8
	.word	0x32b
	.long	0x5ce
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xf
	.long	.LASF148
	.byte	0x8
	.word	0x32d
	.long	0x5ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.long	.LASF149
	.byte	0x8
	.word	0x330
	.long	0x5ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0x16
	.long	0x5fa
	.uleb128 0x9
	.long	.LASF150
	.byte	0x8
	.word	0x33a
	.long	0x6d4
	.uleb128 0x15
	.byte	0xa
	.byte	0x8
	.word	0x344
	.long	0x7f7
	.uleb128 0xf
	.long	.LASF151
	.byte	0x8
	.word	0x34a
	.long	0x7f7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.long	.LASF152
	.byte	0x8
	.word	0x351
	.long	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.long	.LASF153
	.byte	0x8
	.word	0x354
	.long	0x680
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.long	.LASF154
	.byte	0x8
	.word	0x35c
	.long	0x808
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xf
	.long	.LASF155
	.byte	0x8
	.word	0x35e
	.long	0x187
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x796
	.uleb128 0x13
	.long	0x6c3
	.long	0x808
	.uleb128 0x14
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x7fd
	.uleb128 0x9
	.long	.LASF156
	.byte	0x8
	.word	0x36a
	.long	0x81a
	.uleb128 0x10
	.long	0x7a2
	.uleb128 0x15
	.byte	0x1
	.byte	0x8
	.word	0x36f
	.long	0x838
	.uleb128 0xf
	.long	.LASF157
	.byte	0x8
	.word	0x3b1
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.long	.LASF158
	.byte	0x8
	.word	0x3b3
	.long	0x81f
	.uleb128 0x15
	.byte	0x6
	.byte	0x8
	.word	0x3c3
	.long	0x87b
	.uleb128 0xf
	.long	.LASF159
	.byte	0x8
	.word	0x3c5
	.long	0x87b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.long	.LASF136
	.byte	0x8
	.word	0x3d1
	.long	0x6bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.long	.LASF137
	.byte	0x8
	.word	0x3d4
	.long	0x187
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x838
	.uleb128 0x9
	.long	.LASF160
	.byte	0x8
	.word	0x3fc
	.long	0x88d
	.uleb128 0x10
	.long	0x844
	.uleb128 0x17
	.long	.LASF178
	.byte	0x2
	.byte	0x67
	.byte	0x1
	.byte	0x3
	.uleb128 0x18
	.long	.LASF161
	.byte	0x2
	.byte	0x7f
	.byte	0x1
	.byte	0x3
	.long	0x8b4
	.uleb128 0x19
	.long	.LASF163
	.byte	0x2
	.byte	0x7f
	.long	0xd9
	.byte	0
	.uleb128 0x1a
	.long	.LASF193
	.byte	0x2
	.byte	0x72
	.byte	0x1
	.long	0x9a
	.byte	0x3
	.long	0x8d0
	.uleb128 0x1b
	.string	"sr"
	.byte	0x2
	.byte	0x74
	.long	0x9a
	.byte	0
	.uleb128 0x18
	.long	.LASF162
	.byte	0x2
	.byte	0x79
	.byte	0x1
	.byte	0x3
	.long	0x8e9
	.uleb128 0x19
	.long	.LASF164
	.byte	0x2
	.byte	0x79
	.long	0x9a
	.byte	0
	.uleb128 0x1c
	.long	.LASF176
	.byte	0x2
	.byte	0x91
	.byte	0x1
	.long	0x9a
	.byte	0x3
	.uleb128 0x18
	.long	.LASF165
	.byte	0x2
	.byte	0x98
	.byte	0x1
	.byte	0x3
	.long	0x90f
	.uleb128 0x19
	.long	.LASF166
	.byte	0x2
	.byte	0x98
	.long	0x9a
	.byte	0
	.uleb128 0x1d
	.long	.LASF167
	.byte	0xa
	.word	0x1e0
	.byte	0x1
	.byte	0x3
	.long	0x936
	.uleb128 0x1e
	.long	.LASF151
	.byte	0xa
	.word	0x1e2
	.long	0x936
	.uleb128 0x1e
	.long	.LASF168
	.byte	0xa
	.word	0x1e3
	.long	0x257
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x93c
	.uleb128 0x10
	.long	0x796
	.uleb128 0x1d
	.long	.LASF169
	.byte	0xa
	.word	0x1f8
	.byte	0x1
	.byte	0x3
	.long	0x968
	.uleb128 0x1e
	.long	.LASF151
	.byte	0xa
	.word	0x1fa
	.long	0x936
	.uleb128 0x1e
	.long	.LASF170
	.byte	0xa
	.word	0x1fb
	.long	0x311
	.byte	0
	.uleb128 0x1d
	.long	.LASF171
	.byte	0xa
	.word	0x3ed
	.byte	0x1
	.byte	0x3
	.long	0x983
	.uleb128 0x1e
	.long	.LASF172
	.byte	0xa
	.word	0x3ef
	.long	0x983
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x80e
	.uleb128 0x18
	.long	.LASF173
	.byte	0x3
	.byte	0x87
	.byte	0x1
	.byte	0x3
	.long	0x9ad
	.uleb128 0x19
	.long	.LASF174
	.byte	0x3
	.byte	0x89
	.long	0x9ad
	.uleb128 0x19
	.long	.LASF175
	.byte	0x3
	.byte	0x8a
	.long	0x5c3
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0x5b3
	.uleb128 0x1c
	.long	.LASF177
	.byte	0xb
	.byte	0x4b
	.byte	0x1
	.long	0x983
	.byte	0x3
	.uleb128 0x17
	.long	.LASF179
	.byte	0x2
	.byte	0x6c
	.byte	0x1
	.byte	0x3
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF189
	.byte	0x1
	.byte	0xbc
	.byte	0x1
	.byte	0x1
	.long	0x9e3
	.uleb128 0x19
	.long	.LASF180
	.byte	0x1
	.byte	0xbe
	.long	0x680
	.byte	0
	.uleb128 0x1c
	.long	.LASF181
	.byte	0xa
	.byte	0xf9
	.byte	0x1
	.long	0x9a
	.byte	0x3
	.uleb128 0x1c
	.long	.LASF182
	.byte	0xb
	.byte	0x54
	.byte	0x1
	.long	0x9fd
	.byte	0x3
	.uleb128 0x7
	.byte	0x2
	.long	0x881
	.uleb128 0x1d
	.long	.LASF183
	.byte	0xa
	.word	0x102
	.byte	0x1
	.byte	0x3
	.long	0xa1e
	.uleb128 0x1e
	.long	.LASF164
	.byte	0xa
	.word	0x104
	.long	0x9a
	.byte	0
	.uleb128 0x20
	.long	0x9c9
	.long	.LFB57
	.long	.LFE57
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xa3e
	.uleb128 0x21
	.long	0x9d7
	.long	.LLST0
	.byte	0
	.uleb128 0x18
	.long	.LASF184
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.byte	0x1
	.long	0xa6d
	.uleb128 0x19
	.long	.LASF174
	.byte	0x1
	.byte	0x70
	.long	0x680
	.uleb128 0x22
	.long	.LASF172
	.byte	0x1
	.byte	0x74
	.long	0xa6d
	.uleb128 0x22
	.long	.LASF151
	.byte	0x1
	.byte	0x76
	.long	0xa72
	.byte	0
	.uleb128 0x10
	.long	0x983
	.uleb128 0x10
	.long	0x7f7
	.uleb128 0x23
	.byte	0x1
	.long	.LASF185
	.byte	0x1
	.word	0x107
	.byte	0x1
	.long	.LFB58
	.long	.LFE58
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xbc3
	.uleb128 0x24
	.long	.LASF180
	.byte	0x1
	.word	0x109
	.long	0x680
	.long	.LLST1
	.uleb128 0x25
	.long	.LASF194
	.byte	0x1
	.word	0x10c
	.long	0xbc3
	.long	.LLST2
	.uleb128 0x26
	.long	0x9c9
	.long	.LBB76
	.long	.LBE76
	.byte	0x1
	.word	0x10d
	.long	0xad3
	.uleb128 0x27
	.long	0x9d7
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x28
	.long	0x9c0
	.long	.LBB78
	.long	.LBE78
	.byte	0x1
	.word	0x112
	.uleb128 0x29
	.long	0xa3e
	.long	.LBB80
	.long	.LBE80
	.byte	0x1
	.word	0x117
	.uleb128 0x27
	.long	0xa4b
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x2a
	.long	.LBB81
	.long	.LBE81
	.uleb128 0x2b
	.long	0xa56
	.uleb128 0x2c
	.long	0xa61
	.long	.LLST3
	.uleb128 0x2d
	.long	0x8d0
	.long	.LBB82
	.long	.LBE82
	.byte	0x1
	.byte	0x81
	.long	0xb33
	.uleb128 0x21
	.long	0x8dd
	.long	.LLST4
	.byte	0
	.uleb128 0x2e
	.long	0x9c0
	.long	.LBB84
	.long	.LBE84
	.byte	0x1
	.byte	0x85
	.uleb128 0x2d
	.long	0x9e3
	.long	.LBB86
	.long	.LBE86
	.byte	0x1
	.byte	0x88
	.long	0xb96
	.uleb128 0x2f
	.long	0x8e9
	.long	.LBB87
	.long	.LBE87
	.byte	0xa
	.byte	0xfe
	.uleb128 0x2f
	.long	0x8b4
	.long	.LBB88
	.long	.LBE88
	.byte	0x2
	.byte	0x93
	.uleb128 0x2a
	.long	.LBB89
	.long	.LBE89
	.uleb128 0x30
	.long	0x8c5
	.byte	0x1
	.byte	0x68
	.uleb128 0x2e
	.long	0x892
	.long	.LBB90
	.long	.LBE90
	.byte	0x2
	.byte	0x75
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	0x989
	.long	.LBB92
	.long	.LBE92
	.byte	0x1
	.byte	0xb7
	.uleb128 0x27
	.long	0x996
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x31
	.long	0x9a1
	.uleb128 0x32
	.long	.LVL11
	.long	0xcf9
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0xd9
	.uleb128 0x33
	.byte	0x1
	.long	.LASF186
	.byte	0x1
	.word	0x11b
	.byte	0x1
	.long	.LFB59
	.long	.LFE59
	.long	.LLST5
	.byte	0x1
	.long	0xcd5
	.uleb128 0x34
	.long	.LASF172
	.byte	0x1
	.word	0x121
	.long	0xa6d
	.uleb128 0x34
	.long	.LASF164
	.byte	0x1
	.word	0x124
	.long	0xcd5
	.uleb128 0x26
	.long	0x9e3
	.long	.LBB94
	.long	.LBE94
	.byte	0x1
	.word	0x124
	.long	0xc52
	.uleb128 0x2f
	.long	0x8e9
	.long	.LBB95
	.long	.LBE95
	.byte	0xa
	.byte	0xfe
	.uleb128 0x2f
	.long	0x8b4
	.long	.LBB96
	.long	.LBE96
	.byte	0x2
	.byte	0x93
	.uleb128 0x2a
	.long	.LBB97
	.long	.LBE97
	.uleb128 0x2c
	.long	0x8c5
	.long	.LLST6
	.uleb128 0x2e
	.long	0x892
	.long	.LBB98
	.long	.LBE98
	.byte	0x2
	.byte	0x75
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0xa03
	.long	.LBB100
	.long	.LBE100
	.byte	0x1
	.word	0x126
	.long	0xca3
	.uleb128 0x21
	.long	0xa11
	.long	.LLST7
	.uleb128 0x29
	.long	0x8f6
	.long	.LBB101
	.long	.LBE101
	.byte	0xa
	.word	0x107
	.uleb128 0x21
	.long	0x903
	.long	.LLST7
	.uleb128 0x2f
	.long	0x8d0
	.long	.LBB102
	.long	.LBE102
	.byte	0x2
	.byte	0x9a
	.uleb128 0x21
	.long	0x8dd
	.long	.LLST7
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.Ldebug_ranges0+0
	.long	0xcc1
	.uleb128 0x34
	.long	.LASF152
	.byte	0x1
	.word	0x12a
	.long	0xcda
	.uleb128 0x36
	.long	.LVL16
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.long	.LVL13
	.long	0xd12
	.uleb128 0x37
	.long	.LVL18
	.byte	0x1
	.long	0xd2a
	.byte	0
	.uleb128 0x10
	.long	0x9a
	.uleb128 0x10
	.long	0xef
	.uleb128 0x38
	.long	.LASF187
	.byte	0xb
	.byte	0x3f
	.long	0x881
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.long	.LASF188
	.byte	0xb
	.byte	0x40
	.long	0x80e
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.byte	0x1
	.long	.LASF190
	.byte	0x3
	.byte	0x77
	.byte	0x1
	.byte	0x1
	.long	0xd12
	.uleb128 0x3a
	.long	0x5ad
	.uleb128 0x3a
	.long	0x5c3
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.long	.LASF195
	.byte	0xc
	.byte	0x85
	.byte	0x1
	.long	0x8f
	.byte	0x1
	.long	0xd2a
	.uleb128 0x3a
	.long	0x9fd
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.long	.LASF196
	.byte	0x3
	.byte	0x9b
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.long	0x680
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1
	.long	.LFE57
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST1:
	.long	.LVL2
	.long	.LVL3
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL3
	.long	.LFE58
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST2:
	.long	.LVL3
	.long	.LVL6-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST3:
	.long	.LVL7
	.long	.LVL11-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST4:
	.long	.LVL8
	.long	.LVL9
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST5:
	.long	.LFB59
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
	.long	.LFE59
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST6:
	.long	.LVL12
	.long	.LVL14
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST7:
	.long	.LVL13
	.long	.LVL14
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB57
	.long	.LFE57-.LFB57
	.long	.LFB58
	.long	.LFE58-.LFB58
	.long	.LFB59
	.long	.LFE59-.LFB59
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB104
	.long	.LBE104
	.long	.LBB105
	.long	.LBE105
	.long	0
	.long	0
	.long	.LFB57
	.long	.LFE57
	.long	.LFB58
	.long	.LFE58
	.long	.LFB59
	.long	.LFE59
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF184:
	.string	"osEE_scheduler_task_not_terminated"
.LASF68:
	.string	"OSServiceId_ActivateTask"
.LASF15:
	.string	"OsEE_event_mask"
.LASF154:
	.string	"p_autostart_tdb_array"
.LASF141:
	.string	"p_stk_sn"
.LASF143:
	.string	"app_mode"
.LASF13:
	.string	"OsEE_reg"
.LASF84:
	.string	"OSServiceId_GetActiveApplicationMode"
.LASF90:
	.string	"OSId_Kernel"
.LASF21:
	.string	"OSEE_TASK_TYPE_BASIC"
.LASF54:
	.string	"E_OS_PROTECTION_ARRIVAL"
.LASF71:
	.string	"OSServiceId_Schedule"
.LASF93:
	.string	"OSServiceIdType"
.LASF24:
	.string	"OSEE_TASK_TYPE_IDLE"
.LASF9:
	.string	"long long unsigned int"
.LASF83:
	.string	"OSServiceId_WaitEvent"
.LASF67:
	.string	"StatusType"
.LASF33:
	.string	"OsEE_task_status"
.LASF111:
	.string	"OsEE_SCB"
.LASF74:
	.string	"OSServiceId_DisableAllInterrupts"
.LASF196:
	.string	"osEE_idle_task_terminate"
.LASF27:
	.string	"OSEE_TASK_SUSPENDED"
.LASF23:
	.string	"OSEE_TASK_TYPE_ISR2"
.LASF156:
	.string	"OsEE_CDB"
.LASF99:
	.string	"task_type"
.LASF187:
	.string	"osEE_kdb_var"
.LASF140:
	.string	"p_free_sn"
.LASF134:
	.string	"OsEE_TDB"
.LASF1:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF69:
	.string	"OSServiceId_TerminateTask"
.LASF35:
	.string	"EventMaskType"
.LASF87:
	.string	"OSId_TaskBody"
.LASF176:
	.string	"osEE_hal_begin_nested_primitive"
.LASF53:
	.string	"E_OS_PROTECTION_TIME"
.LASF65:
	.string	"E_OS_SYS_ACT"
.LASF153:
	.string	"p_idle_task"
.LASF169:
	.string	"osEE_set_service_id"
.LASF76:
	.string	"OSServiceId_SuspendAllInterrupts"
.LASF25:
	.string	"OsEE_task_type"
.LASF18:
	.string	"TaskPrio"
.LASF7:
	.string	"long int"
.LASF92:
	.string	"OsEE_service_id_type"
.LASF60:
	.string	"E_OS_CORE"
.LASF38:
	.string	"E_OS_ACCESS"
.LASF181:
	.string	"osEE_begin_primitive"
.LASF180:
	.string	"p_tdb_to"
.LASF119:
	.string	"OsEE_HDB"
.LASF6:
	.string	"uint16_t"
.LASF126:
	.string	"OsEE_kernel_status"
.LASF115:
	.string	"OsEE_SDB"
.LASF191:
	.string	"GNU C 4.9.2 -fpreprocessed -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g -Os -std=gnu11 -ffunction-sections -fdata-sections"
.LASF110:
	.string	"p_tos"
.LASF77:
	.string	"OSServiceId_ResumeAllInterrupts"
.LASF40:
	.string	"E_OS_ID"
.LASF192:
	.string	"C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\src\\ee_oo_sched_entry_points.c"
.LASF101:
	.string	"ready_prio"
.LASF36:
	.string	"MemSize"
.LASF62:
	.string	"E_OS_SYS_SUSPEND_NESTING_LIMIT"
.LASF123:
	.string	"OSEE_KERNEL_STARTING"
.LASF157:
	.string	"dummy"
.LASF55:
	.string	"E_OS_PROTECTION_LOCKED"
.LASF163:
	.string	"virt_prio"
.LASF100:
	.string	"task_func"
.LASF103:
	.string	"max_num_of_act"
.LASF155:
	.string	"autostart_tdb_array_size"
.LASF0:
	.string	"unsigned int"
.LASF130:
	.string	"wait_mask"
.LASF174:
	.string	"p_to_term"
.LASF75:
	.string	"OSServiceId_EnableAllInterrupts"
.LASF161:
	.string	"osEE_hal_set_ipl"
.LASF11:
	.string	"OSEE_TRUE"
.LASF8:
	.string	"long unsigned int"
.LASF175:
	.string	"kernel_cb"
.LASF52:
	.string	"E_OS_PROTECTION_MEMORY"
.LASF159:
	.string	"p_kcb"
.LASF162:
	.string	"osEE_hal_resumeIRQ"
.LASF20:
	.string	"TaskFunc"
.LASF178:
	.string	"osEE_hal_disableIRQ"
.LASF17:
	.string	"TaskType"
.LASF142:
	.string	"os_status"
.LASF16:
	.string	"AppModeType"
.LASF97:
	.string	"OsEE_TDB_tag"
.LASF109:
	.string	"OsEE_SCB_tag"
.LASF32:
	.string	"OSEE_TASK_CHAINED"
.LASF173:
	.string	"osEE_hal_terminate_activation"
.LASF105:
	.string	"OsEE_RQ"
.LASF150:
	.string	"OsEE_CCB"
.LASF10:
	.string	"OSEE_FALSE"
.LASF152:
	.string	"p_idle_hook"
.LASF145:
	.string	"prev_s_isr_all_status"
.LASF91:
	.string	"OsId_Invalid"
.LASF170:
	.string	"service_id"
.LASF37:
	.string	"E_OK"
.LASF44:
	.string	"E_OS_STATE"
.LASF30:
	.string	"OSEE_TASK_WAITING"
.LASF149:
	.string	"d_isr_all_cnt"
.LASF168:
	.string	"Error"
.LASF139:
	.string	"p_curr"
.LASF182:
	.string	"osEE_get_kernel"
.LASF125:
	.string	"OSEE_KERNEL_SHUTDOWN"
.LASF63:
	.string	"E_OS_SYS_TASK"
.LASF70:
	.string	"OSServiceId_ChainTask"
.LASF2:
	.string	"long double"
.LASF138:
	.string	"OsEE_autostart_tdb"
.LASF19:
	.string	"TaskActivation"
.LASF51:
	.string	"E_OS_PARAM_POINTER"
.LASF186:
	.string	"osEE_idle_hook_wrapper"
.LASF131:
	.string	"event_mask"
.LASF113:
	.string	"p_bos"
.LASF49:
	.string	"E_OS_DISABLEDINT"
.LASF158:
	.string	"OsEE_KCB"
.LASF104:
	.string	"OsEE_SN"
.LASF73:
	.string	"OSServiceId_GetTaskState"
.LASF148:
	.string	"s_isr_os_cnt"
.LASF48:
	.string	"E_OS_MISSINGEND"
.LASF179:
	.string	"osEE_hal_enableIRQ"
.LASF147:
	.string	"s_isr_all_cnt"
.LASF12:
	.string	"OsEE_bool"
.LASF29:
	.string	"OSEE_TASK_READY_STACKED"
.LASF45:
	.string	"E_OS_VALUE"
.LASF112:
	.string	"OsEE_SDB_tag"
.LASF177:
	.string	"osEE_get_curr_core"
.LASF127:
	.string	"current_num_of_act"
.LASF121:
	.string	"OsEE_byte"
.LASF98:
	.string	"p_tcb"
.LASF78:
	.string	"OSServiceId_SuspendOSInterrupts"
.LASF190:
	.string	"osEE_hal_terminate_ctx"
.LASF4:
	.string	"unsigned char"
.LASF56:
	.string	"E_OS_PROTECTION_EXCEPTION"
.LASF106:
	.string	"OsEE_CTX_tag"
.LASF64:
	.string	"E_OS_SYS_STACK"
.LASF124:
	.string	"OSEE_KERNEL_STARTED"
.LASF58:
	.string	"E_OS_INTERFERENCE_DEADLOCK"
.LASF160:
	.string	"OsEE_KDB"
.LASF136:
	.string	"p_tdb_ptr_array"
.LASF94:
	.string	"p_next"
.LASF28:
	.string	"OSEE_TASK_READY"
.LASF41:
	.string	"E_OS_LIMIT"
.LASF167:
	.string	"osEE_call_error_hook"
.LASF151:
	.string	"p_ccb"
.LASF188:
	.string	"osEE_cdb_var"
.LASF135:
	.string	"OsEE_autostart_tdb_tag"
.LASF22:
	.string	"OSEE_TASK_TYPE_EXTENDED"
.LASF120:
	.string	"OsEE_kernel_cb"
.LASF146:
	.string	"prev_s_isr_os_status"
.LASF144:
	.string	"last_error"
.LASF185:
	.string	"osEE_scheduler_task_wrapper_run"
.LASF96:
	.string	"OsEE_SN_tag"
.LASF166:
	.string	"flag"
.LASF128:
	.string	"current_prio"
.LASF61:
	.string	"E_OS_SYS_INIT"
.LASF66:
	.string	"OsEE_status_type"
.LASF95:
	.string	"p_tdb"
.LASF122:
	.string	"OSEE_KERNEL_INITIALIZED"
.LASF47:
	.string	"E_OS_ILLEGAL_ADDRESS"
.LASF195:
	.string	"osEE_scheduler_task_preemption_point"
.LASF88:
	.string	"OSId_ISR2Body"
.LASF14:
	.string	"OsEE_mem_size"
.LASF132:
	.string	"p_own_sn"
.LASF118:
	.string	"p_scb"
.LASF34:
	.string	"TaskStateType"
.LASF79:
	.string	"OSServiceId_ResumeOSInterrupts"
.LASF171:
	.string	"osEE_stack_monitoring"
.LASF172:
	.string	"p_cdb"
.LASF43:
	.string	"E_OS_RESOURCE"
.LASF165:
	.string	"osEE_hal_end_nested_primitive"
.LASF183:
	.string	"osEE_end_primitive"
.LASF137:
	.string	"tdb_array_size"
.LASF80:
	.string	"OSServiceId_SetEvent"
.LASF86:
	.string	"OSServiceId_StartOS"
.LASF72:
	.string	"OSServiceId_GetTaskID"
.LASF89:
	.string	"OSId_Action"
.LASF129:
	.string	"status"
.LASF82:
	.string	"OSServiceId_GetEvent"
.LASF59:
	.string	"E_OS_NESTING_DEADLOCK"
.LASF102:
	.string	"dispatch_prio"
.LASF5:
	.string	"uint8_t"
.LASF164:
	.string	"flags"
.LASF46:
	.string	"E_OS_SERVICEID"
.LASF81:
	.string	"OSServiceId_ClearEvent"
.LASF189:
	.string	"osEE_scheduler_task_wrapper_restore"
.LASF133:
	.string	"OsEE_TCB"
.LASF85:
	.string	"OSServiceId_ShutdownOS"
.LASF116:
	.string	"OsEE_HDB_tag"
.LASF114:
	.string	"stack_size"
.LASF42:
	.string	"E_OS_NOFUNC"
.LASF193:
	.string	"osEE_hal_suspendIRQ"
.LASF117:
	.string	"p_sdb"
.LASF39:
	.string	"E_OS_CALLEVEL"
.LASF26:
	.string	"TaskExecutionType"
.LASF31:
	.string	"OSEE_TASK_RUNNING"
.LASF194:
	.string	"task_priority"
.LASF50:
	.string	"E_OS_STACKFAULT"
.LASF107:
	.string	"p_ctx"
.LASF57:
	.string	"E_OS_SPINLOCK"
.LASF108:
	.string	"OsEE_CTX"
	.ident	"GCC: (GNU) 4.9.2"
