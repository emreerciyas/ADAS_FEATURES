	.file	"Process_Input.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
.global	Speed_SetbyDriver
	.section	.data.Speed_SetbyDriver,"aw",@progbits
	.type	Speed_SetbyDriver, @object
	.size	Speed_SetbyDriver, 4
Speed_SetbyDriver:
	.byte	0
	.byte	0
	.byte	-116
	.byte	66
.global	Relative_Distance
	.section	.data.Relative_Distance,"aw",@progbits
	.type	Relative_Distance, @object
	.size	Relative_Distance, 4
Relative_Distance:
	.byte	0
	.byte	0
	.byte	72
	.byte	66
.global	Vehicle_Speed
	.section	.data.Vehicle_Speed,"aw",@progbits
	.type	Vehicle_Speed, @object
	.size	Vehicle_Speed, 4
Vehicle_Speed:
	.byte	0
	.byte	0
	.byte	72
	.byte	66
.global	EBS_Enable
	.section	.bss.EBS_Enable,"aw",@nobits
	.type	EBS_Enable, @object
	.size	EBS_Enable, 2
EBS_Enable:
	.zero	2
.global	CWAS_Enable
	.section	.bss.CWAS_Enable,"aw",@nobits
	.type	CWAS_Enable, @object
	.size	CWAS_Enable, 2
CWAS_Enable:
	.zero	2
.global	ACC_Enable
	.section	.bss.ACC_Enable,"aw",@nobits
	.type	ACC_Enable, @object
	.size	ACC_Enable, 2
ACC_Enable:
	.zero	2
.global	CC_Enable
	.section	.data.CC_Enable,"aw",@progbits
	.type	CC_Enable, @object
	.size	CC_Enable, 2
CC_Enable:
	.word	1
	.ident	"GCC: (GNU) 4.9.2"
.global __do_copy_data
.global __do_clear_bss
