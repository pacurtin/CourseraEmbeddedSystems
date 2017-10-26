	.cpu cortex-m4
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.bss
	.align	2
g1:
	.space	4
	.size	g1, 4
	.global	g2
	.section	.rodata
	.align	2
	.type	g2, %object
	.size	g2, 4
g2:
	.word	45
	.global	g3
	.data
	.type	g3, %object
	.size	g3, 1
g3:
	.byte	12
	.global	g4
	.bss
	.type	g4, %object
	.size	g4, 1
g4:
	.space	1
	.text
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	main, %function
main:
.LFB0:
	.file 1 "main.c"
	.loc 1 33 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 36 0
	movs	r3, #12
	str	r3, [r7]
	.loc 1 38 0
	movs	r3, #45
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #1
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [r7, #4]
	.loc 1 40 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L2
	.loc 1 42 0
	mov	r3, #-1
	b	.L3
.L2:
	.loc 1 45 0
	movs	r4, #0
	b	.L4
.L5:
	.loc 1 47 0 discriminator 3
	ldr	r0, [r7, #4]
	bl	func
	mov	r2, r0
	ldr	r3, .L6
	str	r2, [r3]
	.loc 1 45 0 discriminator 3
	ldr	r3, [r7]
	adds	r3, r3, #1
	str	r3, [r7]
.L4:
	.loc 1 45 0 is_stmt 0 discriminator 1
	movs	r3, #45
	cmp	r4, r3
	blt	.L5
	.loc 1 50 0 is_stmt 1
	movs	r3, #0
.L3:
	.loc 1 51 0
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 12
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r7, pc}
.L7:
	.align	2
.L6:
	.word	g1
	.cfi_endproc
.LFE0:
	.size	main, .-main
.Letext0:
	.file 2 "/usr/arm-none-eabi/include/sys/lock.h"
	.file 3 "/usr/arm-none-eabi/include/sys/_types.h"
	.file 4 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
	.file 5 "/usr/arm-none-eabi/include/sys/reent.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x93b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF121
	.byte	0xc
	.4byte	.LASF122
	.4byte	.LASF123
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.4byte	0x5d
	.uleb128 0x5
	.4byte	0x5d
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x6
	.4byte	.LASF9
	.byte	0x2
	.byte	0x22
	.4byte	0x80
	.uleb128 0x7
	.byte	0x4
	.4byte	0x86
	.uleb128 0x8
	.4byte	.LASF117
	.uleb128 0x6
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2c
	.4byte	0x41
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x3
	.byte	0x72
	.4byte	0x41
	.uleb128 0x9
	.4byte	.LASF12
	.byte	0x4
	.2byte	0x165
	.4byte	0x6e
	.uleb128 0xa
	.byte	0x4
	.byte	0x3
	.byte	0xa6
	.4byte	0xcc
	.uleb128 0xb
	.4byte	.LASF13
	.byte	0x3
	.byte	0xa8
	.4byte	0xa1
	.uleb128 0xb
	.4byte	.LASF14
	.byte	0x3
	.byte	0xa9
	.4byte	0xcc
	.byte	0
	.uleb128 0xc
	.4byte	0x2c
	.4byte	0xdc
	.uleb128 0xd
	.4byte	0xdc
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0xe
	.byte	0x8
	.byte	0x3
	.byte	0xa3
	.4byte	0x104
	.uleb128 0xf
	.4byte	.LASF16
	.byte	0x3
	.byte	0xa5
	.4byte	0x5d
	.byte	0
	.uleb128 0xf
	.4byte	.LASF17
	.byte	0x3
	.byte	0xaa
	.4byte	0xad
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x3
	.byte	0xab
	.4byte	0xe3
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x3
	.byte	0xaf
	.4byte	0x75
	.uleb128 0x10
	.byte	0x4
	.uleb128 0x7
	.byte	0x4
	.4byte	0x122
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF20
	.uleb128 0x4
	.4byte	0x122
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x5
	.byte	0x16
	.4byte	0x48
	.uleb128 0x11
	.4byte	.LASF26
	.byte	0x18
	.byte	0x5
	.byte	0x2f
	.4byte	0x18c
	.uleb128 0xf
	.4byte	.LASF22
	.byte	0x5
	.byte	0x31
	.4byte	0x18c
	.byte	0
	.uleb128 0x12
	.ascii	"_k\000"
	.byte	0x5
	.byte	0x32
	.4byte	0x5d
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF23
	.byte	0x5
	.byte	0x32
	.4byte	0x5d
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x5
	.byte	0x32
	.4byte	0x5d
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x5
	.byte	0x32
	.4byte	0x5d
	.byte	0x10
	.uleb128 0x12
	.ascii	"_x\000"
	.byte	0x5
	.byte	0x33
	.4byte	0x192
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x139
	.uleb128 0xc
	.4byte	0x12e
	.4byte	0x1a2
	.uleb128 0xd
	.4byte	0xdc
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF27
	.byte	0x24
	.byte	0x5
	.byte	0x37
	.4byte	0x21b
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x5
	.byte	0x39
	.4byte	0x5d
	.byte	0
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x5
	.byte	0x3a
	.4byte	0x5d
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x5
	.byte	0x3b
	.4byte	0x5d
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x5
	.byte	0x3c
	.4byte	0x5d
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x5
	.byte	0x3d
	.4byte	0x5d
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x5
	.byte	0x3e
	.4byte	0x5d
	.byte	0x14
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x5
	.byte	0x3f
	.4byte	0x5d
	.byte	0x18
	.uleb128 0xf
	.4byte	.LASF35
	.byte	0x5
	.byte	0x40
	.4byte	0x5d
	.byte	0x1c
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0x5
	.byte	0x41
	.4byte	0x5d
	.byte	0x20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF37
	.2byte	0x108
	.byte	0x5
	.byte	0x4a
	.4byte	0x25b
	.uleb128 0xf
	.4byte	.LASF38
	.byte	0x5
	.byte	0x4b
	.4byte	0x25b
	.byte	0
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0x5
	.byte	0x4c
	.4byte	0x25b
	.byte	0x80
	.uleb128 0x14
	.4byte	.LASF40
	.byte	0x5
	.byte	0x4e
	.4byte	0x12e
	.2byte	0x100
	.uleb128 0x14
	.4byte	.LASF41
	.byte	0x5
	.byte	0x51
	.4byte	0x12e
	.2byte	0x104
	.byte	0
	.uleb128 0xc
	.4byte	0x11a
	.4byte	0x26b
	.uleb128 0xd
	.4byte	0xdc
	.byte	0x1f
	.byte	0
	.uleb128 0x13
	.4byte	.LASF42
	.2byte	0x190
	.byte	0x5
	.byte	0x5d
	.4byte	0x2a9
	.uleb128 0xf
	.4byte	.LASF22
	.byte	0x5
	.byte	0x5e
	.4byte	0x2a9
	.byte	0
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x5
	.byte	0x5f
	.4byte	0x5d
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x5
	.byte	0x61
	.4byte	0x2af
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x5
	.byte	0x62
	.4byte	0x21b
	.byte	0x88
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x26b
	.uleb128 0xc
	.4byte	0x2bf
	.4byte	0x2bf
	.uleb128 0xd
	.4byte	0xdc
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x2c5
	.uleb128 0x15
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x8
	.byte	0x5
	.byte	0x75
	.4byte	0x2eb
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x5
	.byte	0x76
	.4byte	0x2eb
	.byte	0
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x5
	.byte	0x77
	.4byte	0x5d
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x2c
	.uleb128 0x11
	.4byte	.LASF48
	.byte	0x68
	.byte	0x5
	.byte	0xb5
	.4byte	0x41b
	.uleb128 0x12
	.ascii	"_p\000"
	.byte	0x5
	.byte	0xb6
	.4byte	0x2eb
	.byte	0
	.uleb128 0x12
	.ascii	"_r\000"
	.byte	0x5
	.byte	0xb7
	.4byte	0x5d
	.byte	0x4
	.uleb128 0x12
	.ascii	"_w\000"
	.byte	0x5
	.byte	0xb8
	.4byte	0x5d
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x5
	.byte	0xb9
	.4byte	0x33
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x5
	.byte	0xba
	.4byte	0x33
	.byte	0xe
	.uleb128 0x12
	.ascii	"_bf\000"
	.byte	0x5
	.byte	0xbb
	.4byte	0x2c6
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0x5
	.byte	0xbc
	.4byte	0x5d
	.byte	0x18
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0x5
	.byte	0xc3
	.4byte	0x11a
	.byte	0x1c
	.uleb128 0xf
	.4byte	.LASF53
	.byte	0x5
	.byte	0xc5
	.4byte	0x576
	.byte	0x20
	.uleb128 0xf
	.4byte	.LASF54
	.byte	0x5
	.byte	0xc7
	.4byte	0x5a0
	.byte	0x24
	.uleb128 0xf
	.4byte	.LASF55
	.byte	0x5
	.byte	0xca
	.4byte	0x5c4
	.byte	0x28
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x5
	.byte	0xcb
	.4byte	0x5de
	.byte	0x2c
	.uleb128 0x12
	.ascii	"_ub\000"
	.byte	0x5
	.byte	0xce
	.4byte	0x2c6
	.byte	0x30
	.uleb128 0x12
	.ascii	"_up\000"
	.byte	0x5
	.byte	0xcf
	.4byte	0x2eb
	.byte	0x38
	.uleb128 0x12
	.ascii	"_ur\000"
	.byte	0x5
	.byte	0xd0
	.4byte	0x5d
	.byte	0x3c
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0x5
	.byte	0xd3
	.4byte	0x5e4
	.byte	0x40
	.uleb128 0xf
	.4byte	.LASF58
	.byte	0x5
	.byte	0xd4
	.4byte	0x5f4
	.byte	0x43
	.uleb128 0x12
	.ascii	"_lb\000"
	.byte	0x5
	.byte	0xd7
	.4byte	0x2c6
	.byte	0x44
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0x5
	.byte	0xda
	.4byte	0x5d
	.byte	0x4c
	.uleb128 0xf
	.4byte	.LASF60
	.byte	0x5
	.byte	0xdb
	.4byte	0x8b
	.byte	0x50
	.uleb128 0xf
	.4byte	.LASF61
	.byte	0x5
	.byte	0xde
	.4byte	0x439
	.byte	0x54
	.uleb128 0xf
	.4byte	.LASF62
	.byte	0x5
	.byte	0xe2
	.4byte	0x10f
	.byte	0x58
	.uleb128 0xf
	.4byte	.LASF63
	.byte	0x5
	.byte	0xe4
	.4byte	0x104
	.byte	0x5c
	.uleb128 0xf
	.4byte	.LASF64
	.byte	0x5
	.byte	0xe5
	.4byte	0x5d
	.byte	0x64
	.byte	0
	.uleb128 0x16
	.4byte	0x5d
	.4byte	0x439
	.uleb128 0x17
	.4byte	0x439
	.uleb128 0x17
	.4byte	0x11a
	.uleb128 0x17
	.4byte	0x11c
	.uleb128 0x17
	.4byte	0x5d
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x444
	.uleb128 0x4
	.4byte	0x439
	.uleb128 0x18
	.4byte	.LASF65
	.2byte	0x428
	.byte	0x5
	.2byte	0x239
	.4byte	0x576
	.uleb128 0x19
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x23b
	.4byte	0x5d
	.byte	0
	.uleb128 0x19
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x240
	.4byte	0x64b
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x240
	.4byte	0x64b
	.byte	0x8
	.uleb128 0x19
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x240
	.4byte	0x64b
	.byte	0xc
	.uleb128 0x19
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x242
	.4byte	0x5d
	.byte	0x10
	.uleb128 0x19
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x243
	.4byte	0x82d
	.byte	0x14
	.uleb128 0x19
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x246
	.4byte	0x5d
	.byte	0x30
	.uleb128 0x19
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x247
	.4byte	0x842
	.byte	0x34
	.uleb128 0x19
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x249
	.4byte	0x5d
	.byte	0x38
	.uleb128 0x19
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x24b
	.4byte	0x853
	.byte	0x3c
	.uleb128 0x19
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x24e
	.4byte	0x18c
	.byte	0x40
	.uleb128 0x19
	.4byte	.LASF77
	.byte	0x5
	.2byte	0x24f
	.4byte	0x5d
	.byte	0x44
	.uleb128 0x19
	.4byte	.LASF78
	.byte	0x5
	.2byte	0x250
	.4byte	0x18c
	.byte	0x48
	.uleb128 0x19
	.4byte	.LASF79
	.byte	0x5
	.2byte	0x251
	.4byte	0x859
	.byte	0x4c
	.uleb128 0x19
	.4byte	.LASF80
	.byte	0x5
	.2byte	0x254
	.4byte	0x5d
	.byte	0x50
	.uleb128 0x19
	.4byte	.LASF81
	.byte	0x5
	.2byte	0x255
	.4byte	0x11c
	.byte	0x54
	.uleb128 0x19
	.4byte	.LASF82
	.byte	0x5
	.2byte	0x278
	.4byte	0x80b
	.byte	0x58
	.uleb128 0x1a
	.4byte	.LASF42
	.byte	0x5
	.2byte	0x27c
	.4byte	0x2a9
	.2byte	0x148
	.uleb128 0x1a
	.4byte	.LASF83
	.byte	0x5
	.2byte	0x27d
	.4byte	0x26b
	.2byte	0x14c
	.uleb128 0x1a
	.4byte	.LASF84
	.byte	0x5
	.2byte	0x281
	.4byte	0x86a
	.2byte	0x2dc
	.uleb128 0x1a
	.4byte	.LASF85
	.byte	0x5
	.2byte	0x286
	.4byte	0x610
	.2byte	0x2e0
	.uleb128 0x1a
	.4byte	.LASF86
	.byte	0x5
	.2byte	0x287
	.4byte	0x876
	.2byte	0x2ec
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x41b
	.uleb128 0x16
	.4byte	0x5d
	.4byte	0x59a
	.uleb128 0x17
	.4byte	0x439
	.uleb128 0x17
	.4byte	0x11a
	.uleb128 0x17
	.4byte	0x59a
	.uleb128 0x17
	.4byte	0x5d
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x129
	.uleb128 0x7
	.byte	0x4
	.4byte	0x57c
	.uleb128 0x16
	.4byte	0x96
	.4byte	0x5c4
	.uleb128 0x17
	.4byte	0x439
	.uleb128 0x17
	.4byte	0x11a
	.uleb128 0x17
	.4byte	0x96
	.uleb128 0x17
	.4byte	0x5d
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5a6
	.uleb128 0x16
	.4byte	0x5d
	.4byte	0x5de
	.uleb128 0x17
	.4byte	0x439
	.uleb128 0x17
	.4byte	0x11a
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5ca
	.uleb128 0xc
	.4byte	0x2c
	.4byte	0x5f4
	.uleb128 0xd
	.4byte	0xdc
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.4byte	0x2c
	.4byte	0x604
	.uleb128 0xd
	.4byte	0xdc
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x5
	.2byte	0x11f
	.4byte	0x2f1
	.uleb128 0x1b
	.4byte	.LASF88
	.byte	0xc
	.byte	0x5
	.2byte	0x123
	.4byte	0x645
	.uleb128 0x19
	.4byte	.LASF22
	.byte	0x5
	.2byte	0x125
	.4byte	0x645
	.byte	0
	.uleb128 0x19
	.4byte	.LASF89
	.byte	0x5
	.2byte	0x126
	.4byte	0x5d
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF90
	.byte	0x5
	.2byte	0x127
	.4byte	0x64b
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x610
	.uleb128 0x7
	.byte	0x4
	.4byte	0x604
	.uleb128 0x1b
	.4byte	.LASF91
	.byte	0xe
	.byte	0x5
	.2byte	0x13f
	.4byte	0x686
	.uleb128 0x19
	.4byte	.LASF92
	.byte	0x5
	.2byte	0x140
	.4byte	0x686
	.byte	0
	.uleb128 0x19
	.4byte	.LASF93
	.byte	0x5
	.2byte	0x141
	.4byte	0x686
	.byte	0x6
	.uleb128 0x19
	.4byte	.LASF94
	.byte	0x5
	.2byte	0x142
	.4byte	0x3a
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.4byte	0x3a
	.4byte	0x696
	.uleb128 0xd
	.4byte	0xdc
	.byte	0x2
	.byte	0
	.uleb128 0x1c
	.byte	0xd0
	.byte	0x5
	.2byte	0x259
	.4byte	0x797
	.uleb128 0x19
	.4byte	.LASF95
	.byte	0x5
	.2byte	0x25b
	.4byte	0x6e
	.byte	0
	.uleb128 0x19
	.4byte	.LASF96
	.byte	0x5
	.2byte	0x25c
	.4byte	0x11c
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x25d
	.4byte	0x797
	.byte	0x8
	.uleb128 0x19
	.4byte	.LASF98
	.byte	0x5
	.2byte	0x25e
	.4byte	0x1a2
	.byte	0x24
	.uleb128 0x19
	.4byte	.LASF99
	.byte	0x5
	.2byte	0x25f
	.4byte	0x5d
	.byte	0x48
	.uleb128 0x19
	.4byte	.LASF100
	.byte	0x5
	.2byte	0x260
	.4byte	0x56
	.byte	0x50
	.uleb128 0x19
	.4byte	.LASF101
	.byte	0x5
	.2byte	0x261
	.4byte	0x651
	.byte	0x58
	.uleb128 0x19
	.4byte	.LASF102
	.byte	0x5
	.2byte	0x262
	.4byte	0x104
	.byte	0x68
	.uleb128 0x19
	.4byte	.LASF103
	.byte	0x5
	.2byte	0x263
	.4byte	0x104
	.byte	0x70
	.uleb128 0x19
	.4byte	.LASF104
	.byte	0x5
	.2byte	0x264
	.4byte	0x104
	.byte	0x78
	.uleb128 0x19
	.4byte	.LASF105
	.byte	0x5
	.2byte	0x265
	.4byte	0x7a7
	.byte	0x80
	.uleb128 0x19
	.4byte	.LASF106
	.byte	0x5
	.2byte	0x266
	.4byte	0x7b7
	.byte	0x88
	.uleb128 0x19
	.4byte	.LASF107
	.byte	0x5
	.2byte	0x267
	.4byte	0x5d
	.byte	0xa0
	.uleb128 0x19
	.4byte	.LASF108
	.byte	0x5
	.2byte	0x268
	.4byte	0x104
	.byte	0xa4
	.uleb128 0x19
	.4byte	.LASF109
	.byte	0x5
	.2byte	0x269
	.4byte	0x104
	.byte	0xac
	.uleb128 0x19
	.4byte	.LASF110
	.byte	0x5
	.2byte	0x26a
	.4byte	0x104
	.byte	0xb4
	.uleb128 0x19
	.4byte	.LASF111
	.byte	0x5
	.2byte	0x26b
	.4byte	0x104
	.byte	0xbc
	.uleb128 0x19
	.4byte	.LASF112
	.byte	0x5
	.2byte	0x26c
	.4byte	0x104
	.byte	0xc4
	.uleb128 0x19
	.4byte	.LASF113
	.byte	0x5
	.2byte	0x26d
	.4byte	0x5d
	.byte	0xcc
	.byte	0
	.uleb128 0xc
	.4byte	0x122
	.4byte	0x7a7
	.uleb128 0xd
	.4byte	0xdc
	.byte	0x19
	.byte	0
	.uleb128 0xc
	.4byte	0x122
	.4byte	0x7b7
	.uleb128 0xd
	.4byte	0xdc
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.4byte	0x122
	.4byte	0x7c7
	.uleb128 0xd
	.4byte	0xdc
	.byte	0x17
	.byte	0
	.uleb128 0x1c
	.byte	0xf0
	.byte	0x5
	.2byte	0x272
	.4byte	0x7eb
	.uleb128 0x19
	.4byte	.LASF114
	.byte	0x5
	.2byte	0x275
	.4byte	0x7eb
	.byte	0
	.uleb128 0x19
	.4byte	.LASF115
	.byte	0x5
	.2byte	0x276
	.4byte	0x7fb
	.byte	0x78
	.byte	0
	.uleb128 0xc
	.4byte	0x2eb
	.4byte	0x7fb
	.uleb128 0xd
	.4byte	0xdc
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.4byte	0x6e
	.4byte	0x80b
	.uleb128 0xd
	.4byte	0xdc
	.byte	0x1d
	.byte	0
	.uleb128 0x1d
	.byte	0xf0
	.byte	0x5
	.2byte	0x257
	.4byte	0x82d
	.uleb128 0x1e
	.4byte	.LASF65
	.byte	0x5
	.2byte	0x26e
	.4byte	0x696
	.uleb128 0x1e
	.4byte	.LASF116
	.byte	0x5
	.2byte	0x277
	.4byte	0x7c7
	.byte	0
	.uleb128 0xc
	.4byte	0x122
	.4byte	0x83d
	.uleb128 0xd
	.4byte	0xdc
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.4byte	.LASF118
	.uleb128 0x7
	.byte	0x4
	.4byte	0x83d
	.uleb128 0x1f
	.4byte	0x853
	.uleb128 0x17
	.4byte	0x439
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x848
	.uleb128 0x7
	.byte	0x4
	.4byte	0x18c
	.uleb128 0x1f
	.4byte	0x86a
	.uleb128 0x17
	.4byte	0x5d
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x870
	.uleb128 0x7
	.byte	0x4
	.4byte	0x85f
	.uleb128 0xc
	.4byte	0x604
	.4byte	0x886
	.uleb128 0xd
	.4byte	0xdc
	.byte	0x2
	.byte	0
	.uleb128 0x20
	.4byte	.LASF119
	.byte	0x5
	.2byte	0x2fe
	.4byte	0x439
	.uleb128 0x20
	.4byte	.LASF120
	.byte	0x5
	.2byte	0x2ff
	.4byte	0x43f
	.uleb128 0x21
	.ascii	"g1\000"
	.byte	0x1
	.byte	0x1a
	.4byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	g1
	.uleb128 0x22
	.ascii	"g2\000"
	.byte	0x1
	.byte	0x1b
	.4byte	0x64
	.uleb128 0x5
	.byte	0x3
	.4byte	g2
	.uleb128 0x22
	.ascii	"g3\000"
	.byte	0x1
	.byte	0x1c
	.4byte	0x122
	.uleb128 0x5
	.byte	0x3
	.4byte	g3
	.uleb128 0x22
	.ascii	"g4\000"
	.byte	0x1
	.byte	0x1d
	.4byte	0x122
	.uleb128 0x5
	.byte	0x3
	.4byte	g4
	.uleb128 0xc
	.4byte	0x122
	.4byte	0x8ee
	.uleb128 0xd
	.4byte	0xdc
	.byte	0x9
	.byte	0
	.uleb128 0x23
	.ascii	"g5\000"
	.byte	0x1
	.byte	0x1e
	.4byte	0x8de
	.uleb128 0x24
	.4byte	.LASF124
	.byte	0x1
	.byte	0x20
	.4byte	0x5d
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x938
	.uleb128 0x21
	.ascii	"l1\000"
	.byte	0x1
	.byte	0x22
	.4byte	0x5d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x21
	.ascii	"l2\000"
	.byte	0x1
	.byte	0x23
	.4byte	0x938
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.ascii	"l3\000"
	.byte	0x1
	.byte	0x24
	.4byte	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5d
	.byte	0
	.section	.debug_abbrev,"",%progbits
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
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
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
	.uleb128 0xe
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
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x17
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
	.uleb128 0x1e
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
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF39:
	.ascii	"_dso_handle\000"
.LASF47:
	.ascii	"_size\000"
.LASF91:
	.ascii	"_rand48\000"
.LASF71:
	.ascii	"_emergency\000"
.LASF61:
	.ascii	"_data\000"
.LASF111:
	.ascii	"_wcrtomb_state\000"
.LASF112:
	.ascii	"_wcsrtombs_state\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF51:
	.ascii	"_lbfsize\000"
.LASF118:
	.ascii	"__locale_t\000"
.LASF109:
	.ascii	"_mbrtowc_state\000"
.LASF104:
	.ascii	"_wctomb_state\000"
.LASF28:
	.ascii	"__tm_sec\000"
.LASF6:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF57:
	.ascii	"_ubuf\000"
.LASF46:
	.ascii	"_base\000"
.LASF30:
	.ascii	"__tm_hour\000"
.LASF86:
	.ascii	"__sf\000"
.LASF37:
	.ascii	"_on_exit_args\000"
.LASF52:
	.ascii	"_cookie\000"
.LASF85:
	.ascii	"__sglue\000"
.LASF4:
	.ascii	"long int\000"
.LASF49:
	.ascii	"_flags\000"
.LASF41:
	.ascii	"_is_cxa\000"
.LASF67:
	.ascii	"_stdin\000"
.LASF59:
	.ascii	"_blksize\000"
.LASF81:
	.ascii	"_cvtbuf\000"
.LASF60:
	.ascii	"_offset\000"
.LASF110:
	.ascii	"_mbsrtowcs_state\000"
.LASF108:
	.ascii	"_mbrlen_state\000"
.LASF38:
	.ascii	"_fnargs\000"
.LASF44:
	.ascii	"_fns\000"
.LASF24:
	.ascii	"_sign\000"
.LASF19:
	.ascii	"_flock_t\000"
.LASF69:
	.ascii	"_stderr\000"
.LASF26:
	.ascii	"_Bigint\000"
.LASF99:
	.ascii	"_gamma_signgam\000"
.LASF53:
	.ascii	"_read\000"
.LASF77:
	.ascii	"_result_k\000"
.LASF27:
	.ascii	"__tm\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF14:
	.ascii	"__wchb\000"
.LASF68:
	.ascii	"_stdout\000"
.LASF80:
	.ascii	"_cvtlen\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF50:
	.ascii	"_file\000"
.LASF89:
	.ascii	"_niobs\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF83:
	.ascii	"_atexit0\000"
.LASF106:
	.ascii	"_signal_buf\000"
.LASF97:
	.ascii	"_asctime_buf\000"
.LASF76:
	.ascii	"_result\000"
.LASF13:
	.ascii	"__wch\000"
.LASF9:
	.ascii	"_LOCK_T\000"
.LASF122:
	.ascii	"main.c\000"
.LASF12:
	.ascii	"wint_t\000"
.LASF62:
	.ascii	"_lock\000"
.LASF64:
	.ascii	"_flags2\000"
.LASF54:
	.ascii	"_write\000"
.LASF33:
	.ascii	"__tm_year\000"
.LASF15:
	.ascii	"sizetype\000"
.LASF114:
	.ascii	"_nextf\000"
.LASF32:
	.ascii	"__tm_mon\000"
.LASF42:
	.ascii	"_atexit\000"
.LASF74:
	.ascii	"__sdidinit\000"
.LASF10:
	.ascii	"_off_t\000"
.LASF79:
	.ascii	"_freelist\000"
.LASF121:
	.ascii	"GNU C99 6.3.1 20170620 (release) [ARM/embedded-6-br"
	.ascii	"anch revision 249437] -mcpu=cortex-m4 -mthumb -marc"
	.ascii	"h=armv7e-m -mfloat-abi=hard -mfpu=fpv4-sp-d16 -g -O"
	.ascii	"0 -std=c99\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF82:
	.ascii	"_new\000"
.LASF113:
	.ascii	"_h_errno\000"
.LASF2:
	.ascii	"short int\000"
.LASF35:
	.ascii	"__tm_yday\000"
.LASF45:
	.ascii	"__sbuf\000"
.LASF90:
	.ascii	"_iobs\000"
.LASF87:
	.ascii	"__FILE\000"
.LASF18:
	.ascii	"_mbstate_t\000"
.LASF48:
	.ascii	"__sFILE\000"
.LASF63:
	.ascii	"_mbstate\000"
.LASF100:
	.ascii	"_rand_next\000"
.LASF102:
	.ascii	"_mblen_state\000"
.LASF70:
	.ascii	"_inc\000"
.LASF43:
	.ascii	"_ind\000"
.LASF73:
	.ascii	"_locale\000"
.LASF75:
	.ascii	"__cleanup\000"
.LASF72:
	.ascii	"_unspecified_locale_info\000"
.LASF23:
	.ascii	"_maxwds\000"
.LASF65:
	.ascii	"_reent\000"
.LASF92:
	.ascii	"_seed\000"
.LASF16:
	.ascii	"__count\000"
.LASF117:
	.ascii	"__lock\000"
.LASF17:
	.ascii	"__value\000"
.LASF55:
	.ascii	"_seek\000"
.LASF119:
	.ascii	"_impure_ptr\000"
.LASF11:
	.ascii	"_fpos_t\000"
.LASF66:
	.ascii	"_errno\000"
.LASF20:
	.ascii	"char\000"
.LASF29:
	.ascii	"__tm_min\000"
.LASF93:
	.ascii	"_mult\000"
.LASF22:
	.ascii	"_next\000"
.LASF96:
	.ascii	"_strtok_last\000"
.LASF40:
	.ascii	"_fntypes\000"
.LASF94:
	.ascii	"_add\000"
.LASF21:
	.ascii	"__ULong\000"
.LASF107:
	.ascii	"_getdate_err\000"
.LASF123:
	.ascii	"/home/paddy/EmbeddedCAssignments/CourseraEmbeddedSy"
	.ascii	"stems/Week3AllocatedMemory\000"
.LASF120:
	.ascii	"_global_impure_ptr\000"
.LASF95:
	.ascii	"_unused_rand\000"
.LASF25:
	.ascii	"_wds\000"
.LASF34:
	.ascii	"__tm_wday\000"
.LASF88:
	.ascii	"_glue\000"
.LASF115:
	.ascii	"_nmalloc\000"
.LASF105:
	.ascii	"_l64a_buf\000"
.LASF84:
	.ascii	"_sig_func\000"
.LASF58:
	.ascii	"_nbuf\000"
.LASF116:
	.ascii	"_unused\000"
.LASF36:
	.ascii	"__tm_isdst\000"
.LASF98:
	.ascii	"_localtime_buf\000"
.LASF56:
	.ascii	"_close\000"
.LASF101:
	.ascii	"_r48\000"
.LASF103:
	.ascii	"_mbtowc_state\000"
.LASF78:
	.ascii	"_p5s\000"
.LASF124:
	.ascii	"main\000"
.LASF31:
	.ascii	"__tm_mday\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors 6-2017-q2-update) 6.3.1 20170620 (release) [ARM/embedded-6-branch revision 249437]"
