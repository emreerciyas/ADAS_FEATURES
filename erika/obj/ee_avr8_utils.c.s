	.file	"ee_avr8_utils.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.osEE_avr8_WriteCCPReg,"ax",@progbits
.global	osEE_avr8_WriteCCPReg
	.type	osEE_avr8_WriteCCPReg, @function
osEE_avr8_WriteCCPReg:
.LFB56:
	.file 1 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\src\\ee_avr8_utils.c"
	.loc 1 73 0
	.cfi_startproc
.LVL0:
	push r16
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LVL1:
	.loc 1 87 0
/* #APP */
 ;  87 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_utils.c" 1
	movw r30,  r24
	ldi  r16,  216
	out   52, r16
	st     Z,  r22
	
 ;  0 "" 2
/* epilogue start */
	.loc 1 100 0
/* #NOAPP */
	pop r16
	ret
	.cfi_endproc
.LFE56:
	.size	osEE_avr8_WriteCCPReg, .-osEE_avr8_WriteCCPReg
	.text
.Letext0:
	.file 2 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\stdint.h"
	.file 3 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\inc/ee_platform_types.h"
	.file 4 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\inc/ee_api_types.h"
	.file 5 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\inc/ee_scheduler_types.h"
	.file 6 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\inc/ee_kernel_types.h"
	.file 7 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\inc/ee_hal_internal_types.h"
	.file 8 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\inc/ee_get_kernel_and_core.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x81b
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF135
	.byte	0x1
	.long	.LASF136
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
	.uleb128 0x4
	.long	.LASF10
	.byte	0x3
	.byte	0x5b
	.long	0x48
	.uleb128 0x4
	.long	.LASF11
	.byte	0x3
	.byte	0x65
	.long	0x5a
	.uleb128 0x4
	.long	.LASF12
	.byte	0x3
	.byte	0x6d
	.long	0x5a
	.uleb128 0x5
	.byte	0x2
	.long	0xa1
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x4
	.long	.LASF13
	.byte	0x4
	.byte	0x60
	.long	0x48
	.uleb128 0x4
	.long	.LASF14
	.byte	0x4
	.byte	0x78
	.long	0x7a
	.uleb128 0x4
	.long	.LASF15
	.byte	0x4
	.byte	0xc8
	.long	0x48
	.uleb128 0x4
	.long	.LASF16
	.byte	0x4
	.byte	0xf4
	.long	0x48
	.uleb128 0x7
	.long	.LASF17
	.byte	0x4
	.word	0x13a
	.long	0x9b
	.uleb128 0x8
	.byte	0x2
	.byte	0x4
	.word	0x145
	.long	0xfd
	.uleb128 0x9
	.long	.LASF18
	.sleb128 0
	.uleb128 0x9
	.long	.LASF19
	.sleb128 1
	.uleb128 0x9
	.long	.LASF20
	.sleb128 2
	.uleb128 0x9
	.long	.LASF21
	.sleb128 3
	.byte	0
	.uleb128 0x7
	.long	.LASF22
	.byte	0x4
	.word	0x153
	.long	0xdb
	.uleb128 0x7
	.long	.LASF23
	.byte	0x4
	.word	0x157
	.long	0xfd
	.uleb128 0x8
	.byte	0x2
	.byte	0x4
	.word	0x15d
	.long	0x143
	.uleb128 0x9
	.long	.LASF24
	.sleb128 0
	.uleb128 0x9
	.long	.LASF25
	.sleb128 1
	.uleb128 0x9
	.long	.LASF26
	.sleb128 2
	.uleb128 0x9
	.long	.LASF27
	.sleb128 3
	.uleb128 0x9
	.long	.LASF28
	.sleb128 4
	.uleb128 0x9
	.long	.LASF29
	.sleb128 5
	.byte	0
	.uleb128 0x7
	.long	.LASF30
	.byte	0x4
	.word	0x16e
	.long	0x115
	.uleb128 0x7
	.long	.LASF31
	.byte	0x4
	.word	0x17e
	.long	0x143
	.uleb128 0x7
	.long	.LASF32
	.byte	0x4
	.word	0x237
	.long	0x90
	.uleb128 0x7
	.long	.LASF33
	.byte	0x4
	.word	0x2a3
	.long	0x85
	.uleb128 0x8
	.byte	0x2
	.byte	0x4
	.word	0x2b1
	.long	0x22b
	.uleb128 0x9
	.long	.LASF34
	.sleb128 0
	.uleb128 0x9
	.long	.LASF35
	.sleb128 1
	.uleb128 0x9
	.long	.LASF36
	.sleb128 2
	.uleb128 0x9
	.long	.LASF37
	.sleb128 3
	.uleb128 0x9
	.long	.LASF38
	.sleb128 4
	.uleb128 0x9
	.long	.LASF39
	.sleb128 5
	.uleb128 0x9
	.long	.LASF40
	.sleb128 6
	.uleb128 0x9
	.long	.LASF41
	.sleb128 7
	.uleb128 0x9
	.long	.LASF42
	.sleb128 8
	.uleb128 0x9
	.long	.LASF43
	.sleb128 9
	.uleb128 0x9
	.long	.LASF44
	.sleb128 10
	.uleb128 0x9
	.long	.LASF45
	.sleb128 11
	.uleb128 0x9
	.long	.LASF46
	.sleb128 12
	.uleb128 0x9
	.long	.LASF47
	.sleb128 13
	.uleb128 0x9
	.long	.LASF48
	.sleb128 14
	.uleb128 0x9
	.long	.LASF49
	.sleb128 15
	.uleb128 0x9
	.long	.LASF50
	.sleb128 16
	.uleb128 0x9
	.long	.LASF51
	.sleb128 17
	.uleb128 0x9
	.long	.LASF52
	.sleb128 18
	.uleb128 0x9
	.long	.LASF53
	.sleb128 19
	.uleb128 0x9
	.long	.LASF54
	.sleb128 20
	.uleb128 0x9
	.long	.LASF55
	.sleb128 21
	.uleb128 0x9
	.long	.LASF56
	.sleb128 22
	.uleb128 0x9
	.long	.LASF57
	.sleb128 23
	.uleb128 0x9
	.long	.LASF58
	.sleb128 24
	.uleb128 0x9
	.long	.LASF59
	.sleb128 25
	.uleb128 0x9
	.long	.LASF60
	.sleb128 26
	.uleb128 0x9
	.long	.LASF61
	.sleb128 27
	.uleb128 0x9
	.long	.LASF62
	.sleb128 28
	.byte	0
	.uleb128 0x7
	.long	.LASF63
	.byte	0x4
	.word	0x2d4
	.long	0x173
	.uleb128 0x7
	.long	.LASF64
	.byte	0x4
	.word	0x2d9
	.long	0x22b
	.uleb128 0xa
	.long	.LASF67
	.byte	0x4
	.byte	0x5
	.byte	0x4b
	.long	0x26c
	.uleb128 0xb
	.long	.LASF65
	.byte	0x5
	.byte	0x4d
	.long	0x26c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF66
	.byte	0x5
	.byte	0x4f
	.long	0x2f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x243
	.uleb128 0xc
	.long	.LASF68
	.byte	0xe
	.byte	0x6
	.word	0x108
	.long	0x2f8
	.uleb128 0xd
	.string	"hdb"
	.byte	0x6
	.word	0x10b
	.long	0x4d9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.long	.LASF69
	.byte	0x6
	.word	0x10e
	.long	0x589
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"tid"
	.byte	0x6
	.word	0x110
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xe
	.long	.LASF70
	.byte	0x6
	.word	0x112
	.long	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xe
	.long	.LASF71
	.byte	0x6
	.word	0x114
	.long	0xcf
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xe
	.long	.LASF72
	.byte	0x6
	.word	0x117
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xe
	.long	.LASF73
	.byte	0x6
	.word	0x11a
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.long	.LASF74
	.byte	0x6
	.word	0x11c
	.long	0xc4
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x2fe
	.uleb128 0xf
	.long	0x272
	.uleb128 0x4
	.long	.LASF75
	.byte	0x5
	.byte	0x50
	.long	0x243
	.uleb128 0x4
	.long	.LASF76
	.byte	0x5
	.byte	0xd5
	.long	0x319
	.uleb128 0x5
	.byte	0x2
	.long	0x303
	.uleb128 0xa
	.long	.LASF77
	.byte	0x14
	.byte	0x7
	.byte	0x43
	.long	0x42e
	.uleb128 0x10
	.string	"r29"
	.byte	0x7
	.byte	0x44
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"r28"
	.byte	0x7
	.byte	0x45
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x10
	.string	"r17"
	.byte	0x7
	.byte	0x46
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x10
	.string	"r16"
	.byte	0x7
	.byte	0x47
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x10
	.string	"r15"
	.byte	0x7
	.byte	0x48
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"r14"
	.byte	0x7
	.byte	0x49
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x10
	.string	"r13"
	.byte	0x7
	.byte	0x4a
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x10
	.string	"r12"
	.byte	0x7
	.byte	0x4b
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x10
	.string	"r11"
	.byte	0x7
	.byte	0x4c
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"r10"
	.byte	0x7
	.byte	0x4d
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x10
	.string	"r9"
	.byte	0x7
	.byte	0x4e
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x10
	.string	"r8"
	.byte	0x7
	.byte	0x4f
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x10
	.string	"r7"
	.byte	0x7
	.byte	0x50
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.string	"r6"
	.byte	0x7
	.byte	0x51
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x10
	.string	"r5"
	.byte	0x7
	.byte	0x52
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x10
	.string	"r4"
	.byte	0x7
	.byte	0x53
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x10
	.string	"r3"
	.byte	0x7
	.byte	0x54
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"r2"
	.byte	0x7
	.byte	0x55
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xb
	.long	.LASF78
	.byte	0x7
	.byte	0x56
	.long	0x42e
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x31f
	.uleb128 0x4
	.long	.LASF79
	.byte	0x7
	.byte	0x57
	.long	0x31f
	.uleb128 0xa
	.long	.LASF80
	.byte	0x2
	.byte	0x7
	.byte	0x5a
	.long	0x45a
	.uleb128 0xb
	.long	.LASF81
	.byte	0x7
	.byte	0x5b
	.long	0x45a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x434
	.uleb128 0x4
	.long	.LASF82
	.byte	0x7
	.byte	0x5c
	.long	0x43f
	.uleb128 0xa
	.long	.LASF83
	.byte	0x4
	.byte	0x7
	.byte	0x5e
	.long	0x494
	.uleb128 0xb
	.long	.LASF84
	.byte	0x7
	.byte	0x5f
	.long	0x45a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF85
	.byte	0x7
	.byte	0x60
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF86
	.byte	0x7
	.byte	0x61
	.long	0x49f
	.uleb128 0xf
	.long	0x46b
	.uleb128 0xa
	.long	.LASF87
	.byte	0x4
	.byte	0x7
	.byte	0x63
	.long	0x4cd
	.uleb128 0xb
	.long	.LASF88
	.byte	0x7
	.byte	0x64
	.long	0x4cd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF89
	.byte	0x7
	.byte	0x65
	.long	0x4d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x494
	.uleb128 0x5
	.byte	0x2
	.long	0x460
	.uleb128 0x4
	.long	.LASF90
	.byte	0x7
	.byte	0x69
	.long	0x4e4
	.uleb128 0xf
	.long	0x4a4
	.uleb128 0x4
	.long	.LASF91
	.byte	0x6
	.byte	0x53
	.long	0x48
	.uleb128 0x11
	.byte	0x2
	.byte	0x6
	.byte	0x73
	.long	0x515
	.uleb128 0x9
	.long	.LASF92
	.sleb128 0
	.uleb128 0x9
	.long	.LASF93
	.sleb128 1
	.uleb128 0x9
	.long	.LASF94
	.sleb128 2
	.uleb128 0x9
	.long	.LASF95
	.sleb128 3
	.byte	0
	.uleb128 0x4
	.long	.LASF96
	.byte	0x6
	.byte	0x7d
	.long	0x4f4
	.uleb128 0x12
	.byte	0xa
	.byte	0x6
	.byte	0xe0
	.long	0x57d
	.uleb128 0xb
	.long	.LASF97
	.byte	0x6
	.byte	0xe4
	.long	0xc4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF98
	.byte	0x6
	.byte	0xea
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.long	.LASF99
	.byte	0x6
	.byte	0xec
	.long	0x14f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.long	.LASF100
	.byte	0x6
	.byte	0xf3
	.long	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF101
	.byte	0x6
	.byte	0xf5
	.long	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.long	.LASF102
	.byte	0x6
	.byte	0xfb
	.long	0x319
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF103
	.byte	0x6
	.word	0x101
	.long	0x520
	.uleb128 0x5
	.byte	0x2
	.long	0x57d
	.uleb128 0x7
	.long	.LASF104
	.byte	0x6
	.word	0x122
	.long	0x2fe
	.uleb128 0x5
	.byte	0x2
	.long	0x58f
	.uleb128 0xc
	.long	.LASF105
	.byte	0x4
	.byte	0x6
	.word	0x2c7
	.long	0x5cd
	.uleb128 0xe
	.long	.LASF106
	.byte	0x6
	.word	0x2c9
	.long	0x5d8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.long	.LASF107
	.byte	0x6
	.word	0x2cb
	.long	0x167
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x13
	.long	0x2f8
	.long	0x5d8
	.uleb128 0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x5cd
	.uleb128 0x7
	.long	.LASF108
	.byte	0x6
	.word	0x2cc
	.long	0x5ea
	.uleb128 0xf
	.long	0x5a1
	.uleb128 0x15
	.byte	0x12
	.byte	0x6
	.word	0x2d9
	.long	0x6ac
	.uleb128 0xe
	.long	.LASF109
	.byte	0x6
	.word	0x2dc
	.long	0x59b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"rq"
	.byte	0x6
	.word	0x2ee
	.long	0x30e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.long	.LASF110
	.byte	0x6
	.word	0x2f0
	.long	0x319
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.long	.LASF111
	.byte	0x6
	.word	0x2ff
	.long	0x319
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xe
	.long	.LASF112
	.byte	0x6
	.word	0x301
	.long	0x6ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.long	.LASF113
	.byte	0x6
	.word	0x305
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xe
	.long	.LASF114
	.byte	0x6
	.word	0x307
	.long	0x237
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xe
	.long	.LASF115
	.byte	0x6
	.word	0x327
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xe
	.long	.LASF116
	.byte	0x6
	.word	0x329
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xe
	.long	.LASF117
	.byte	0x6
	.word	0x32b
	.long	0x4e9
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xe
	.long	.LASF118
	.byte	0x6
	.word	0x32d
	.long	0x4e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.long	.LASF119
	.byte	0x6
	.word	0x330
	.long	0x4e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0x16
	.long	0x515
	.uleb128 0x7
	.long	.LASF120
	.byte	0x6
	.word	0x33a
	.long	0x5ef
	.uleb128 0x15
	.byte	0xa
	.byte	0x6
	.word	0x344
	.long	0x712
	.uleb128 0xe
	.long	.LASF121
	.byte	0x6
	.word	0x34a
	.long	0x712
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.long	.LASF122
	.byte	0x6
	.word	0x351
	.long	0xcf
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.long	.LASF123
	.byte	0x6
	.word	0x354
	.long	0x59b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.long	.LASF124
	.byte	0x6
	.word	0x35c
	.long	0x723
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xe
	.long	.LASF125
	.byte	0x6
	.word	0x35e
	.long	0x167
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x6b1
	.uleb128 0x13
	.long	0x5de
	.long	0x723
	.uleb128 0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x718
	.uleb128 0x7
	.long	.LASF126
	.byte	0x6
	.word	0x36a
	.long	0x735
	.uleb128 0xf
	.long	0x6bd
	.uleb128 0x15
	.byte	0x1
	.byte	0x6
	.word	0x36f
	.long	0x753
	.uleb128 0xe
	.long	.LASF127
	.byte	0x6
	.word	0x3b1
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x7
	.long	.LASF128
	.byte	0x6
	.word	0x3b3
	.long	0x73a
	.uleb128 0x15
	.byte	0x6
	.byte	0x6
	.word	0x3c3
	.long	0x796
	.uleb128 0xe
	.long	.LASF129
	.byte	0x6
	.word	0x3c5
	.long	0x796
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.long	.LASF106
	.byte	0x6
	.word	0x3d1
	.long	0x5d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.long	.LASF107
	.byte	0x6
	.word	0x3d4
	.long	0x167
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x753
	.uleb128 0x7
	.long	.LASF130
	.byte	0x6
	.word	0x3fc
	.long	0x7a8
	.uleb128 0xf
	.long	0x75f
	.uleb128 0x17
	.byte	0x1
	.long	.LASF137
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.long	.LFB56
	.long	.LFE56
	.long	.LLST0
	.byte	0x1
	.long	0x7f9
	.uleb128 0x18
	.long	.LASF131
	.byte	0x1
	.byte	0x48
	.long	0x7f9
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x18
	.long	.LASF132
	.byte	0x1
	.byte	0x48
	.long	0x7a
	.byte	0x1
	.byte	0x66
	.uleb128 0x19
	.long	.LASF138
	.byte	0x1
	.byte	0x4d
	.long	0x7f9
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x7ff
	.uleb128 0x16
	.long	0x7a
	.uleb128 0x1a
	.long	.LASF133
	.byte	0x8
	.byte	0x3f
	.long	0x79c
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF134
	.byte	0x8
	.byte	0x40
	.long	0x729
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.long	.LFB56
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI0
	.long	.LFE56
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB56
	.long	.LFE56-.LFB56
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB56
	.long	.LFE56
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF12:
	.string	"OsEE_event_mask"
.LASF91:
	.string	"OsEE_byte"
.LASF124:
	.string	"p_autostart_tdb_array"
.LASF111:
	.string	"p_stk_sn"
.LASF137:
	.string	"osEE_avr8_WriteCCPReg"
.LASF113:
	.string	"app_mode"
.LASF10:
	.string	"OsEE_reg"
.LASF104:
	.string	"OsEE_TDB"
.LASF18:
	.string	"OSEE_TASK_TYPE_BASIC"
.LASF51:
	.string	"E_OS_PROTECTION_ARRIVAL"
.LASF21:
	.string	"OSEE_TASK_TYPE_IDLE"
.LASF9:
	.string	"long long unsigned int"
.LASF64:
	.string	"StatusType"
.LASF30:
	.string	"OsEE_task_status"
.LASF82:
	.string	"OsEE_SCB"
.LASF24:
	.string	"OSEE_TASK_SUSPENDED"
.LASF20:
	.string	"OSEE_TASK_TYPE_ISR2"
.LASF126:
	.string	"OsEE_CDB"
.LASF70:
	.string	"task_type"
.LASF133:
	.string	"osEE_kdb_var"
.LASF110:
	.string	"p_free_sn"
.LASF1:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF32:
	.string	"EventMaskType"
.LASF50:
	.string	"E_OS_PROTECTION_TIME"
.LASF62:
	.string	"E_OS_SYS_ACT"
.LASF123:
	.string	"p_idle_task"
.LASF131:
	.string	"addr"
.LASF22:
	.string	"OsEE_task_type"
.LASF15:
	.string	"TaskPrio"
.LASF7:
	.string	"long int"
.LASF57:
	.string	"E_OS_CORE"
.LASF35:
	.string	"E_OS_ACCESS"
.LASF90:
	.string	"OsEE_HDB"
.LASF6:
	.string	"uint16_t"
.LASF96:
	.string	"OsEE_kernel_status"
.LASF86:
	.string	"OsEE_SDB"
.LASF135:
	.string	"GNU C 4.9.2 -fpreprocessed -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g -Os -std=gnu11 -ffunction-sections -fdata-sections"
.LASF136:
	.string	"C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\src\\ee_avr8_utils.c"
.LASF81:
	.string	"p_tos"
.LASF37:
	.string	"E_OS_ID"
.LASF33:
	.string	"MemSize"
.LASF59:
	.string	"E_OS_SYS_SUSPEND_NESTING_LIMIT"
.LASF93:
	.string	"OSEE_KERNEL_STARTING"
.LASF127:
	.string	"dummy"
.LASF52:
	.string	"E_OS_PROTECTION_LOCKED"
.LASF71:
	.string	"task_func"
.LASF132:
	.string	"value"
.LASF74:
	.string	"max_num_of_act"
.LASF125:
	.string	"autostart_tdb_array_size"
.LASF0:
	.string	"unsigned int"
.LASF100:
	.string	"wait_mask"
.LASF8:
	.string	"long unsigned int"
.LASF49:
	.string	"E_OS_PROTECTION_MEMORY"
.LASF129:
	.string	"p_kcb"
.LASF17:
	.string	"TaskFunc"
.LASF14:
	.string	"TaskType"
.LASF112:
	.string	"os_status"
.LASF13:
	.string	"AppModeType"
.LASF68:
	.string	"OsEE_TDB_tag"
.LASF80:
	.string	"OsEE_SCB_tag"
.LASF29:
	.string	"OSEE_TASK_CHAINED"
.LASF76:
	.string	"OsEE_RQ"
.LASF120:
	.string	"OsEE_CCB"
.LASF122:
	.string	"p_idle_hook"
.LASF115:
	.string	"prev_s_isr_all_status"
.LASF34:
	.string	"E_OK"
.LASF41:
	.string	"E_OS_STATE"
.LASF27:
	.string	"OSEE_TASK_WAITING"
.LASF119:
	.string	"d_isr_all_cnt"
.LASF109:
	.string	"p_curr"
.LASF95:
	.string	"OSEE_KERNEL_SHUTDOWN"
.LASF60:
	.string	"E_OS_SYS_TASK"
.LASF2:
	.string	"long double"
.LASF108:
	.string	"OsEE_autostart_tdb"
.LASF16:
	.string	"TaskActivation"
.LASF48:
	.string	"E_OS_PARAM_POINTER"
.LASF101:
	.string	"event_mask"
.LASF84:
	.string	"p_bos"
.LASF46:
	.string	"E_OS_DISABLEDINT"
.LASF128:
	.string	"OsEE_KCB"
.LASF75:
	.string	"OsEE_SN"
.LASF118:
	.string	"s_isr_os_cnt"
.LASF45:
	.string	"E_OS_MISSINGEND"
.LASF72:
	.string	"ready_prio"
.LASF26:
	.string	"OSEE_TASK_READY_STACKED"
.LASF42:
	.string	"E_OS_VALUE"
.LASF83:
	.string	"OsEE_SDB_tag"
.LASF97:
	.string	"current_num_of_act"
.LASF69:
	.string	"p_tcb"
.LASF4:
	.string	"unsigned char"
.LASF53:
	.string	"E_OS_PROTECTION_EXCEPTION"
.LASF77:
	.string	"OsEE_CTX_tag"
.LASF61:
	.string	"E_OS_SYS_STACK"
.LASF94:
	.string	"OSEE_KERNEL_STARTED"
.LASF55:
	.string	"E_OS_INTERFERENCE_DEADLOCK"
.LASF130:
	.string	"OsEE_KDB"
.LASF106:
	.string	"p_tdb_ptr_array"
.LASF65:
	.string	"p_next"
.LASF25:
	.string	"OSEE_TASK_READY"
.LASF138:
	.string	"tmp_addr"
.LASF38:
	.string	"E_OS_LIMIT"
.LASF121:
	.string	"p_ccb"
.LASF134:
	.string	"osEE_cdb_var"
.LASF105:
	.string	"OsEE_autostart_tdb_tag"
.LASF19:
	.string	"OSEE_TASK_TYPE_EXTENDED"
.LASF116:
	.string	"prev_s_isr_os_status"
.LASF114:
	.string	"last_error"
.LASF67:
	.string	"OsEE_SN_tag"
.LASF98:
	.string	"current_prio"
.LASF58:
	.string	"E_OS_SYS_INIT"
.LASF63:
	.string	"OsEE_status_type"
.LASF66:
	.string	"p_tdb"
.LASF92:
	.string	"OSEE_KERNEL_INITIALIZED"
.LASF44:
	.string	"E_OS_ILLEGAL_ADDRESS"
.LASF11:
	.string	"OsEE_mem_size"
.LASF102:
	.string	"p_own_sn"
.LASF89:
	.string	"p_scb"
.LASF31:
	.string	"TaskStateType"
.LASF40:
	.string	"E_OS_RESOURCE"
.LASF107:
	.string	"tdb_array_size"
.LASF117:
	.string	"s_isr_all_cnt"
.LASF99:
	.string	"status"
.LASF56:
	.string	"E_OS_NESTING_DEADLOCK"
.LASF73:
	.string	"dispatch_prio"
.LASF5:
	.string	"uint8_t"
.LASF43:
	.string	"E_OS_SERVICEID"
.LASF85:
	.string	"stack_size"
.LASF103:
	.string	"OsEE_TCB"
.LASF87:
	.string	"OsEE_HDB_tag"
.LASF39:
	.string	"E_OS_NOFUNC"
.LASF88:
	.string	"p_sdb"
.LASF36:
	.string	"E_OS_CALLEVEL"
.LASF23:
	.string	"TaskExecutionType"
.LASF28:
	.string	"OSEE_TASK_RUNNING"
.LASF47:
	.string	"E_OS_STACKFAULT"
.LASF78:
	.string	"p_ctx"
.LASF54:
	.string	"E_OS_SPINLOCK"
.LASF79:
	.string	"OsEE_CTX"
	.ident	"GCC: (GNU) 4.9.2"
