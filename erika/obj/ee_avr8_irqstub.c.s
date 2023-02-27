	.file	"ee_avr8_irqstub.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.osEE_avr8_isr1_stub,"ax",@progbits
.global	osEE_avr8_isr1_stub
	.type	osEE_avr8_isr1_stub, @function
osEE_avr8_isr1_stub:
.LFB56:
	.file 1 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\src\\ee_avr8_irqstub.c"
	.loc 1 68 0
	.cfi_startproc
.LVL0:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 70 0
/* #APP */
 ;  70 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	push r1

 ;  0 "" 2
 ;  70 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	push r0

 ;  0 "" 2
 ;  70 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	in   r0, 0x3f

 ;  0 "" 2
 ;  70 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	push r0

 ;  0 "" 2
 ;  70 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	eor  r1, r1

 ;  0 "" 2
 ;  70 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	push r18

 ;  0 "" 2
 ;  70 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	push r19

 ;  0 "" 2
 ;  70 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	push r20

 ;  0 "" 2
 ;  70 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	push r21

 ;  0 "" 2
 ;  70 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	push r22

 ;  0 "" 2
 ;  70 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	push r23

 ;  0 "" 2
 ;  70 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	push r26

 ;  0 "" 2
 ;  70 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	push r27

 ;  0 "" 2
 ;  70 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	push r30

 ;  0 "" 2
 ;  70 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	push r31

 ;  0 "" 2
/* #NOAPP */
.LBB4:
.LBB5:
	.file 2 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\src\\ee_hal_internal.h"
	.loc 2 110 0
/* #APP */
 ;  110 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_hal_internal.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
.LBE5:
.LBE4:
	.loc 1 78 0
	movw r30,r24
	icall
.LVL1:
	.loc 1 80 0
/* #APP */
 ;  80 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	pop r31

 ;  0 "" 2
 ;  80 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	pop r30

 ;  0 "" 2
 ;  80 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	pop r27

 ;  0 "" 2
 ;  80 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	pop r26

 ;  0 "" 2
 ;  80 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	pop r23

 ;  0 "" 2
 ;  80 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	pop r22

 ;  0 "" 2
 ;  80 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	pop r21

 ;  0 "" 2
 ;  80 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	pop r20

 ;  0 "" 2
 ;  80 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	pop r19

 ;  0 "" 2
 ;  80 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	pop r18

 ;  0 "" 2
 ;  80 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	pop r0

 ;  0 "" 2
 ;  80 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	out 0x3f, r0

 ;  0 "" 2
 ;  80 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	pop r0

 ;  0 "" 2
 ;  80 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	pop r1

 ;  0 "" 2
	.loc 1 82 0
 ;  82 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	ret
 ;  0 "" 2
/* epilogue start */
	.loc 1 84 0
/* #NOAPP */
	.cfi_endproc
.LFE56:
	.size	osEE_avr8_isr1_stub, .-osEE_avr8_isr1_stub
	.section	.text.osEE_avr8_isr2_stub,"ax",@progbits
.global	osEE_avr8_isr2_stub
	.type	osEE_avr8_isr2_stub, @function
osEE_avr8_isr2_stub:
.LFB57:
	.loc 1 90 0
	.cfi_startproc
.LVL2:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 92 0
/* #APP */
 ;  92 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	push r1

 ;  0 "" 2
 ;  92 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	push r0

 ;  0 "" 2
 ;  92 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	in   r0, 0x3f

 ;  0 "" 2
 ;  92 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	push r0

 ;  0 "" 2
 ;  92 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	eor  r1, r1

 ;  0 "" 2
 ;  92 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	push r18

 ;  0 "" 2
 ;  92 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	push r19

 ;  0 "" 2
 ;  92 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	push r20

 ;  0 "" 2
 ;  92 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	push r21

 ;  0 "" 2
 ;  92 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	push r22

 ;  0 "" 2
 ;  92 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	push r23

 ;  0 "" 2
 ;  92 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	push r26

 ;  0 "" 2
 ;  92 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	push r27

 ;  0 "" 2
 ;  92 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	push r30

 ;  0 "" 2
 ;  92 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	push r31

 ;  0 "" 2
	.loc 1 100 0
/* #NOAPP */
	call osEE_activate_isr2
.LVL3:
	.loc 1 102 0
/* #APP */
 ;  102 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	pop r31

 ;  0 "" 2
 ;  102 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	pop r30

 ;  0 "" 2
 ;  102 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	pop r27

 ;  0 "" 2
 ;  102 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	pop r26

 ;  0 "" 2
 ;  102 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	pop r23

 ;  0 "" 2
 ;  102 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	pop r22

 ;  0 "" 2
 ;  102 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	pop r21

 ;  0 "" 2
 ;  102 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	pop r20

 ;  0 "" 2
 ;  102 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	pop r19

 ;  0 "" 2
 ;  102 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	pop r18

 ;  0 "" 2
 ;  102 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	pop r0

 ;  0 "" 2
 ;  102 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	out 0x3f, r0

 ;  0 "" 2
 ;  102 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	pop r0

 ;  0 "" 2
 ;  102 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	pop r1

 ;  0 "" 2
	.loc 1 104 0
 ;  104 "C:\Evidence\WORKSP~1\FULL_P~1\erika\src\ee_avr8_irqstub.c" 1
	ret
 ;  0 "" 2
/* epilogue start */
	.loc 1 106 0
/* #NOAPP */
	.cfi_endproc
.LFE57:
	.size	osEE_avr8_isr2_stub, .-osEE_avr8_isr2_stub
	.text
.Letext0:
	.file 3 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\stdint.h"
	.file 4 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\inc/ee_platform_types.h"
	.file 5 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\inc/ee_api_types.h"
	.file 6 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\inc/ee_scheduler_types.h"
	.file 7 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\inc/ee_kernel_types.h"
	.file 8 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\inc/ee_hal_internal_types.h"
	.file 9 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\inc/ee_get_kernel_and_core.h"
	.file 10 "C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\src\\ee_kernel.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x861
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF136
	.byte	0x1
	.long	.LASF137
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
	.byte	0x3
	.byte	0x7e
	.long	0x53
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x4
	.long	.LASF6
	.byte	0x3
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
	.byte	0x4
	.byte	0x5b
	.long	0x48
	.uleb128 0x4
	.long	.LASF11
	.byte	0x4
	.byte	0x65
	.long	0x5a
	.uleb128 0x4
	.long	.LASF12
	.byte	0x4
	.byte	0x6d
	.long	0x5a
	.uleb128 0x4
	.long	.LASF13
	.byte	0x4
	.byte	0x76
	.long	0xa6
	.uleb128 0x5
	.byte	0x2
	.long	0xac
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x4
	.long	.LASF14
	.byte	0x5
	.byte	0x60
	.long	0x48
	.uleb128 0x4
	.long	.LASF15
	.byte	0x5
	.byte	0x78
	.long	0x7a
	.uleb128 0x4
	.long	.LASF16
	.byte	0x5
	.byte	0xc8
	.long	0x48
	.uleb128 0x4
	.long	.LASF17
	.byte	0x5
	.byte	0xf4
	.long	0x48
	.uleb128 0x7
	.long	.LASF18
	.byte	0x5
	.word	0x13a
	.long	0xa6
	.uleb128 0x8
	.byte	0x2
	.byte	0x5
	.word	0x145
	.long	0x108
	.uleb128 0x9
	.long	.LASF19
	.sleb128 0
	.uleb128 0x9
	.long	.LASF20
	.sleb128 1
	.uleb128 0x9
	.long	.LASF21
	.sleb128 2
	.uleb128 0x9
	.long	.LASF22
	.sleb128 3
	.byte	0
	.uleb128 0x7
	.long	.LASF23
	.byte	0x5
	.word	0x153
	.long	0xe6
	.uleb128 0x7
	.long	.LASF24
	.byte	0x5
	.word	0x157
	.long	0x108
	.uleb128 0x8
	.byte	0x2
	.byte	0x5
	.word	0x15d
	.long	0x14e
	.uleb128 0x9
	.long	.LASF25
	.sleb128 0
	.uleb128 0x9
	.long	.LASF26
	.sleb128 1
	.uleb128 0x9
	.long	.LASF27
	.sleb128 2
	.uleb128 0x9
	.long	.LASF28
	.sleb128 3
	.uleb128 0x9
	.long	.LASF29
	.sleb128 4
	.uleb128 0x9
	.long	.LASF30
	.sleb128 5
	.byte	0
	.uleb128 0x7
	.long	.LASF31
	.byte	0x5
	.word	0x16e
	.long	0x120
	.uleb128 0x7
	.long	.LASF32
	.byte	0x5
	.word	0x17e
	.long	0x14e
	.uleb128 0x7
	.long	.LASF33
	.byte	0x5
	.word	0x237
	.long	0x90
	.uleb128 0x7
	.long	.LASF34
	.byte	0x5
	.word	0x2a3
	.long	0x85
	.uleb128 0x8
	.byte	0x2
	.byte	0x5
	.word	0x2b1
	.long	0x236
	.uleb128 0x9
	.long	.LASF35
	.sleb128 0
	.uleb128 0x9
	.long	.LASF36
	.sleb128 1
	.uleb128 0x9
	.long	.LASF37
	.sleb128 2
	.uleb128 0x9
	.long	.LASF38
	.sleb128 3
	.uleb128 0x9
	.long	.LASF39
	.sleb128 4
	.uleb128 0x9
	.long	.LASF40
	.sleb128 5
	.uleb128 0x9
	.long	.LASF41
	.sleb128 6
	.uleb128 0x9
	.long	.LASF42
	.sleb128 7
	.uleb128 0x9
	.long	.LASF43
	.sleb128 8
	.uleb128 0x9
	.long	.LASF44
	.sleb128 9
	.uleb128 0x9
	.long	.LASF45
	.sleb128 10
	.uleb128 0x9
	.long	.LASF46
	.sleb128 11
	.uleb128 0x9
	.long	.LASF47
	.sleb128 12
	.uleb128 0x9
	.long	.LASF48
	.sleb128 13
	.uleb128 0x9
	.long	.LASF49
	.sleb128 14
	.uleb128 0x9
	.long	.LASF50
	.sleb128 15
	.uleb128 0x9
	.long	.LASF51
	.sleb128 16
	.uleb128 0x9
	.long	.LASF52
	.sleb128 17
	.uleb128 0x9
	.long	.LASF53
	.sleb128 18
	.uleb128 0x9
	.long	.LASF54
	.sleb128 19
	.uleb128 0x9
	.long	.LASF55
	.sleb128 20
	.uleb128 0x9
	.long	.LASF56
	.sleb128 21
	.uleb128 0x9
	.long	.LASF57
	.sleb128 22
	.uleb128 0x9
	.long	.LASF58
	.sleb128 23
	.uleb128 0x9
	.long	.LASF59
	.sleb128 24
	.uleb128 0x9
	.long	.LASF60
	.sleb128 25
	.uleb128 0x9
	.long	.LASF61
	.sleb128 26
	.uleb128 0x9
	.long	.LASF62
	.sleb128 27
	.uleb128 0x9
	.long	.LASF63
	.sleb128 28
	.byte	0
	.uleb128 0x7
	.long	.LASF64
	.byte	0x5
	.word	0x2d4
	.long	0x17e
	.uleb128 0x7
	.long	.LASF65
	.byte	0x5
	.word	0x2d9
	.long	0x236
	.uleb128 0xa
	.long	.LASF68
	.byte	0x4
	.byte	0x6
	.byte	0x4b
	.long	0x277
	.uleb128 0xb
	.long	.LASF66
	.byte	0x6
	.byte	0x4d
	.long	0x277
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF67
	.byte	0x6
	.byte	0x4f
	.long	0x303
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x24e
	.uleb128 0xc
	.long	.LASF69
	.byte	0xe
	.byte	0x7
	.word	0x108
	.long	0x303
	.uleb128 0xd
	.string	"hdb"
	.byte	0x7
	.word	0x10b
	.long	0x4e4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.long	.LASF70
	.byte	0x7
	.word	0x10e
	.long	0x594
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"tid"
	.byte	0x7
	.word	0x110
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xe
	.long	.LASF71
	.byte	0x7
	.word	0x112
	.long	0x114
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xe
	.long	.LASF72
	.byte	0x7
	.word	0x114
	.long	0xda
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xe
	.long	.LASF73
	.byte	0x7
	.word	0x117
	.long	0xc4
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xe
	.long	.LASF74
	.byte	0x7
	.word	0x11a
	.long	0xc4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.long	.LASF75
	.byte	0x7
	.word	0x11c
	.long	0xcf
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x309
	.uleb128 0xf
	.long	0x27d
	.uleb128 0x4
	.long	.LASF76
	.byte	0x6
	.byte	0x50
	.long	0x24e
	.uleb128 0x4
	.long	.LASF77
	.byte	0x6
	.byte	0xd5
	.long	0x324
	.uleb128 0x5
	.byte	0x2
	.long	0x30e
	.uleb128 0xa
	.long	.LASF78
	.byte	0x14
	.byte	0x8
	.byte	0x43
	.long	0x439
	.uleb128 0x10
	.string	"r29"
	.byte	0x8
	.byte	0x44
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"r28"
	.byte	0x8
	.byte	0x45
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x10
	.string	"r17"
	.byte	0x8
	.byte	0x46
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x10
	.string	"r16"
	.byte	0x8
	.byte	0x47
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x10
	.string	"r15"
	.byte	0x8
	.byte	0x48
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"r14"
	.byte	0x8
	.byte	0x49
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x10
	.string	"r13"
	.byte	0x8
	.byte	0x4a
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x10
	.string	"r12"
	.byte	0x8
	.byte	0x4b
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x10
	.string	"r11"
	.byte	0x8
	.byte	0x4c
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"r10"
	.byte	0x8
	.byte	0x4d
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x10
	.string	"r9"
	.byte	0x8
	.byte	0x4e
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x10
	.string	"r8"
	.byte	0x8
	.byte	0x4f
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x10
	.string	"r7"
	.byte	0x8
	.byte	0x50
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.string	"r6"
	.byte	0x8
	.byte	0x51
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x10
	.string	"r5"
	.byte	0x8
	.byte	0x52
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x10
	.string	"r4"
	.byte	0x8
	.byte	0x53
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x10
	.string	"r3"
	.byte	0x8
	.byte	0x54
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"r2"
	.byte	0x8
	.byte	0x55
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xb
	.long	.LASF79
	.byte	0x8
	.byte	0x56
	.long	0x439
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x32a
	.uleb128 0x4
	.long	.LASF80
	.byte	0x8
	.byte	0x57
	.long	0x32a
	.uleb128 0xa
	.long	.LASF81
	.byte	0x2
	.byte	0x8
	.byte	0x5a
	.long	0x465
	.uleb128 0xb
	.long	.LASF82
	.byte	0x8
	.byte	0x5b
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x43f
	.uleb128 0x4
	.long	.LASF83
	.byte	0x8
	.byte	0x5c
	.long	0x44a
	.uleb128 0xa
	.long	.LASF84
	.byte	0x4
	.byte	0x8
	.byte	0x5e
	.long	0x49f
	.uleb128 0xb
	.long	.LASF85
	.byte	0x8
	.byte	0x5f
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF86
	.byte	0x8
	.byte	0x60
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF87
	.byte	0x8
	.byte	0x61
	.long	0x4aa
	.uleb128 0xf
	.long	0x476
	.uleb128 0xa
	.long	.LASF88
	.byte	0x4
	.byte	0x8
	.byte	0x63
	.long	0x4d8
	.uleb128 0xb
	.long	.LASF89
	.byte	0x8
	.byte	0x64
	.long	0x4d8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF90
	.byte	0x8
	.byte	0x65
	.long	0x4de
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x49f
	.uleb128 0x5
	.byte	0x2
	.long	0x46b
	.uleb128 0x4
	.long	.LASF91
	.byte	0x8
	.byte	0x69
	.long	0x4ef
	.uleb128 0xf
	.long	0x4af
	.uleb128 0x4
	.long	.LASF92
	.byte	0x7
	.byte	0x53
	.long	0x48
	.uleb128 0x11
	.byte	0x2
	.byte	0x7
	.byte	0x73
	.long	0x520
	.uleb128 0x9
	.long	.LASF93
	.sleb128 0
	.uleb128 0x9
	.long	.LASF94
	.sleb128 1
	.uleb128 0x9
	.long	.LASF95
	.sleb128 2
	.uleb128 0x9
	.long	.LASF96
	.sleb128 3
	.byte	0
	.uleb128 0x4
	.long	.LASF97
	.byte	0x7
	.byte	0x7d
	.long	0x4ff
	.uleb128 0x12
	.byte	0xa
	.byte	0x7
	.byte	0xe0
	.long	0x588
	.uleb128 0xb
	.long	.LASF98
	.byte	0x7
	.byte	0xe4
	.long	0xcf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF99
	.byte	0x7
	.byte	0xea
	.long	0xc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.long	.LASF100
	.byte	0x7
	.byte	0xec
	.long	0x15a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.long	.LASF101
	.byte	0x7
	.byte	0xf3
	.long	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF102
	.byte	0x7
	.byte	0xf5
	.long	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.long	.LASF103
	.byte	0x7
	.byte	0xfb
	.long	0x324
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF104
	.byte	0x7
	.word	0x101
	.long	0x52b
	.uleb128 0x5
	.byte	0x2
	.long	0x588
	.uleb128 0x7
	.long	.LASF105
	.byte	0x7
	.word	0x122
	.long	0x309
	.uleb128 0x5
	.byte	0x2
	.long	0x59a
	.uleb128 0xc
	.long	.LASF106
	.byte	0x4
	.byte	0x7
	.word	0x2c7
	.long	0x5d8
	.uleb128 0xe
	.long	.LASF107
	.byte	0x7
	.word	0x2c9
	.long	0x5e3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.long	.LASF108
	.byte	0x7
	.word	0x2cb
	.long	0x172
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x13
	.long	0x303
	.long	0x5e3
	.uleb128 0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x5d8
	.uleb128 0x7
	.long	.LASF109
	.byte	0x7
	.word	0x2cc
	.long	0x5f5
	.uleb128 0xf
	.long	0x5ac
	.uleb128 0x15
	.byte	0x12
	.byte	0x7
	.word	0x2d9
	.long	0x6b7
	.uleb128 0xe
	.long	.LASF110
	.byte	0x7
	.word	0x2dc
	.long	0x5a6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"rq"
	.byte	0x7
	.word	0x2ee
	.long	0x319
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.long	.LASF111
	.byte	0x7
	.word	0x2f0
	.long	0x324
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.long	.LASF112
	.byte	0x7
	.word	0x2ff
	.long	0x324
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xe
	.long	.LASF113
	.byte	0x7
	.word	0x301
	.long	0x6b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.long	.LASF114
	.byte	0x7
	.word	0x305
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xe
	.long	.LASF115
	.byte	0x7
	.word	0x307
	.long	0x242
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xe
	.long	.LASF116
	.byte	0x7
	.word	0x327
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xe
	.long	.LASF117
	.byte	0x7
	.word	0x329
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xe
	.long	.LASF118
	.byte	0x7
	.word	0x32b
	.long	0x4f4
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xe
	.long	.LASF119
	.byte	0x7
	.word	0x32d
	.long	0x4f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.long	.LASF120
	.byte	0x7
	.word	0x330
	.long	0x4f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0x16
	.long	0x520
	.uleb128 0x7
	.long	.LASF121
	.byte	0x7
	.word	0x33a
	.long	0x5fa
	.uleb128 0x15
	.byte	0xa
	.byte	0x7
	.word	0x344
	.long	0x71d
	.uleb128 0xe
	.long	.LASF122
	.byte	0x7
	.word	0x34a
	.long	0x71d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.long	.LASF123
	.byte	0x7
	.word	0x351
	.long	0xda
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.long	.LASF124
	.byte	0x7
	.word	0x354
	.long	0x5a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.long	.LASF125
	.byte	0x7
	.word	0x35c
	.long	0x72e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xe
	.long	.LASF126
	.byte	0x7
	.word	0x35e
	.long	0x172
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x6bc
	.uleb128 0x13
	.long	0x5e9
	.long	0x72e
	.uleb128 0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x723
	.uleb128 0x7
	.long	.LASF127
	.byte	0x7
	.word	0x36a
	.long	0x740
	.uleb128 0xf
	.long	0x6c8
	.uleb128 0x15
	.byte	0x1
	.byte	0x7
	.word	0x36f
	.long	0x75e
	.uleb128 0xe
	.long	.LASF128
	.byte	0x7
	.word	0x3b1
	.long	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x7
	.long	.LASF129
	.byte	0x7
	.word	0x3b3
	.long	0x745
	.uleb128 0x15
	.byte	0x6
	.byte	0x7
	.word	0x3c3
	.long	0x7a1
	.uleb128 0xe
	.long	.LASF130
	.byte	0x7
	.word	0x3c5
	.long	0x7a1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.long	.LASF107
	.byte	0x7
	.word	0x3d1
	.long	0x5e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.long	.LASF108
	.byte	0x7
	.word	0x3d4
	.long	0x172
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x75e
	.uleb128 0x7
	.long	.LASF131
	.byte	0x7
	.word	0x3fc
	.long	0x7b3
	.uleb128 0xf
	.long	0x76a
	.uleb128 0x17
	.long	.LASF138
	.byte	0x2
	.byte	0x6c
	.byte	0x1
	.byte	0x3
	.uleb128 0x18
	.byte	0x1
	.long	.LASF132
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.long	.LFB56
	.long	.LFE56
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x801
	.uleb128 0x19
	.string	"f"
	.byte	0x1
	.byte	0x43
	.long	0x9b
	.long	.LLST0
	.uleb128 0x1a
	.long	0x7b8
	.long	.LBB4
	.long	.LBE4
	.byte	0x1
	.byte	0x4a
	.uleb128 0x1b
	.long	.LVL1
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF133
	.byte	0x1
	.byte	0x59
	.byte	0x1
	.long	.LFB57
	.long	.LFE57
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x83a
	.uleb128 0x19
	.string	"t"
	.byte	0x1
	.byte	0x59
	.long	0xb9
	.long	.LLST1
	.uleb128 0x1c
	.long	.LVL3
	.long	0x854
	.uleb128 0x1d
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	.LASF134
	.byte	0x9
	.byte	0x3f
	.long	0x7a7
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.long	.LASF135
	.byte	0x9
	.byte	0x40
	.long	0x734
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF139
	.byte	0xa
	.byte	0xa1
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.long	0xb9
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
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL1-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1-1
	.long	.LFE56
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL2
	.long	.LVL3-1
	.word	0x1
	.byte	0x68
	.long	.LVL3-1
	.long	.LFE57
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
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
.LASF12:
	.string	"OsEE_event_mask"
.LASF92:
	.string	"OsEE_byte"
.LASF125:
	.string	"p_autostart_tdb_array"
.LASF112:
	.string	"p_stk_sn"
.LASF114:
	.string	"app_mode"
.LASF10:
	.string	"OsEE_reg"
.LASF105:
	.string	"OsEE_TDB"
.LASF19:
	.string	"OSEE_TASK_TYPE_BASIC"
.LASF52:
	.string	"E_OS_PROTECTION_ARRIVAL"
.LASF22:
	.string	"OSEE_TASK_TYPE_IDLE"
.LASF9:
	.string	"long long unsigned int"
.LASF65:
	.string	"StatusType"
.LASF31:
	.string	"OsEE_task_status"
.LASF83:
	.string	"OsEE_SCB"
.LASF25:
	.string	"OSEE_TASK_SUSPENDED"
.LASF21:
	.string	"OSEE_TASK_TYPE_ISR2"
.LASF127:
	.string	"OsEE_CDB"
.LASF71:
	.string	"task_type"
.LASF134:
	.string	"osEE_kdb_var"
.LASF111:
	.string	"p_free_sn"
.LASF1:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF33:
	.string	"EventMaskType"
.LASF51:
	.string	"E_OS_PROTECTION_TIME"
.LASF63:
	.string	"E_OS_SYS_ACT"
.LASF124:
	.string	"p_idle_task"
.LASF23:
	.string	"OsEE_task_type"
.LASF16:
	.string	"TaskPrio"
.LASF7:
	.string	"long int"
.LASF58:
	.string	"E_OS_CORE"
.LASF36:
	.string	"E_OS_ACCESS"
.LASF91:
	.string	"OsEE_HDB"
.LASF6:
	.string	"uint16_t"
.LASF97:
	.string	"OsEE_kernel_status"
.LASF87:
	.string	"OsEE_SDB"
.LASF136:
	.string	"GNU C 4.9.2 -fpreprocessed -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g -Os -std=gnu11 -ffunction-sections -fdata-sections"
.LASF82:
	.string	"p_tos"
.LASF38:
	.string	"E_OS_ID"
.LASF34:
	.string	"MemSize"
.LASF60:
	.string	"E_OS_SYS_SUSPEND_NESTING_LIMIT"
.LASF94:
	.string	"OSEE_KERNEL_STARTING"
.LASF128:
	.string	"dummy"
.LASF53:
	.string	"E_OS_PROTECTION_LOCKED"
.LASF72:
	.string	"task_func"
.LASF75:
	.string	"max_num_of_act"
.LASF126:
	.string	"autostart_tdb_array_size"
.LASF0:
	.string	"unsigned int"
.LASF101:
	.string	"wait_mask"
.LASF8:
	.string	"long unsigned int"
.LASF50:
	.string	"E_OS_PROTECTION_MEMORY"
.LASF130:
	.string	"p_kcb"
.LASF18:
	.string	"TaskFunc"
.LASF15:
	.string	"TaskType"
.LASF113:
	.string	"os_status"
.LASF14:
	.string	"AppModeType"
.LASF69:
	.string	"OsEE_TDB_tag"
.LASF81:
	.string	"OsEE_SCB_tag"
.LASF30:
	.string	"OSEE_TASK_CHAINED"
.LASF77:
	.string	"OsEE_RQ"
.LASF121:
	.string	"OsEE_CCB"
.LASF123:
	.string	"p_idle_hook"
.LASF116:
	.string	"prev_s_isr_all_status"
.LASF35:
	.string	"E_OK"
.LASF42:
	.string	"E_OS_STATE"
.LASF28:
	.string	"OSEE_TASK_WAITING"
.LASF120:
	.string	"d_isr_all_cnt"
.LASF110:
	.string	"p_curr"
.LASF96:
	.string	"OSEE_KERNEL_SHUTDOWN"
.LASF61:
	.string	"E_OS_SYS_TASK"
.LASF2:
	.string	"long double"
.LASF109:
	.string	"OsEE_autostart_tdb"
.LASF17:
	.string	"TaskActivation"
.LASF49:
	.string	"E_OS_PARAM_POINTER"
.LASF102:
	.string	"event_mask"
.LASF85:
	.string	"p_bos"
.LASF47:
	.string	"E_OS_DISABLEDINT"
.LASF129:
	.string	"OsEE_KCB"
.LASF76:
	.string	"OsEE_SN"
.LASF119:
	.string	"s_isr_os_cnt"
.LASF46:
	.string	"E_OS_MISSINGEND"
.LASF138:
	.string	"osEE_hal_enableIRQ"
.LASF139:
	.string	"osEE_activate_isr2"
.LASF73:
	.string	"ready_prio"
.LASF27:
	.string	"OSEE_TASK_READY_STACKED"
.LASF43:
	.string	"E_OS_VALUE"
.LASF84:
	.string	"OsEE_SDB_tag"
.LASF98:
	.string	"current_num_of_act"
.LASF70:
	.string	"p_tcb"
.LASF4:
	.string	"unsigned char"
.LASF54:
	.string	"E_OS_PROTECTION_EXCEPTION"
.LASF78:
	.string	"OsEE_CTX_tag"
.LASF62:
	.string	"E_OS_SYS_STACK"
.LASF95:
	.string	"OSEE_KERNEL_STARTED"
.LASF56:
	.string	"E_OS_INTERFERENCE_DEADLOCK"
.LASF131:
	.string	"OsEE_KDB"
.LASF107:
	.string	"p_tdb_ptr_array"
.LASF66:
	.string	"p_next"
.LASF26:
	.string	"OSEE_TASK_READY"
.LASF137:
	.string	"C:\\Evidence\\WORKSP~1\\FULL_P~1\\erika\\src\\ee_avr8_irqstub.c"
.LASF39:
	.string	"E_OS_LIMIT"
.LASF13:
	.string	"OsEE_void_cb"
.LASF135:
	.string	"osEE_cdb_var"
.LASF106:
	.string	"OsEE_autostart_tdb_tag"
.LASF20:
	.string	"OSEE_TASK_TYPE_EXTENDED"
.LASF117:
	.string	"prev_s_isr_os_status"
.LASF115:
	.string	"last_error"
.LASF68:
	.string	"OsEE_SN_tag"
.LASF99:
	.string	"current_prio"
.LASF59:
	.string	"E_OS_SYS_INIT"
.LASF64:
	.string	"OsEE_status_type"
.LASF67:
	.string	"p_tdb"
.LASF93:
	.string	"OSEE_KERNEL_INITIALIZED"
.LASF45:
	.string	"E_OS_ILLEGAL_ADDRESS"
.LASF11:
	.string	"OsEE_mem_size"
.LASF103:
	.string	"p_own_sn"
.LASF132:
	.string	"osEE_avr8_isr1_stub"
.LASF90:
	.string	"p_scb"
.LASF32:
	.string	"TaskStateType"
.LASF41:
	.string	"E_OS_RESOURCE"
.LASF108:
	.string	"tdb_array_size"
.LASF118:
	.string	"s_isr_all_cnt"
.LASF100:
	.string	"status"
.LASF57:
	.string	"E_OS_NESTING_DEADLOCK"
.LASF74:
	.string	"dispatch_prio"
.LASF5:
	.string	"uint8_t"
.LASF44:
	.string	"E_OS_SERVICEID"
.LASF86:
	.string	"stack_size"
.LASF104:
	.string	"OsEE_TCB"
.LASF133:
	.string	"osEE_avr8_isr2_stub"
.LASF88:
	.string	"OsEE_HDB_tag"
.LASF40:
	.string	"E_OS_NOFUNC"
.LASF89:
	.string	"p_sdb"
.LASF37:
	.string	"E_OS_CALLEVEL"
.LASF24:
	.string	"TaskExecutionType"
.LASF29:
	.string	"OSEE_TASK_RUNNING"
.LASF48:
	.string	"E_OS_STACKFAULT"
.LASF122:
	.string	"p_ccb"
.LASF79:
	.string	"p_ctx"
.LASF55:
	.string	"E_OS_SPINLOCK"
.LASF80:
	.string	"OsEE_CTX"
	.ident	"GCC: (GNU) 4.9.2"
