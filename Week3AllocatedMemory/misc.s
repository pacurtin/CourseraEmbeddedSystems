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
	.file	"misc.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.global	g5
	.data
	.align	2
	.type	g5, %object
	.size	g5, 40
g5:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Hello World!\012\000"
	.text
	.align	1
	.global	func
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	func, %function
func:
.LFB0:
	.file 1 "misc.c"
	.loc 1 27 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 29 0
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 1 30 0
	ldr	r3, .L5
	str	r3, [r7, #8]
	.loc 1 32 0
	ldr	r3, .L5+4
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L5+4
	str	r3, [r2]
	.loc 1 33 0
	ldr	r3, .L5+4
	ldr	r3, [r3]
	lsls	r3, r3, #2
	ldr	r2, .L5+8
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	str	r2, [r3]
	.loc 1 35 0
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L2
.L3:
	.loc 1 37 0 discriminator 3
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]
	uxtb	r3, r3
	mov	r1, r3
	ldr	r2, .L5+8
	ldr	r3, [r7, #12]
	str	r1, [r2, r3, lsl #2]
	.loc 1 38 0 discriminator 3
	ldr	r3, .L5+4
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L5+4
	str	r3, [r2]
	.loc 1 35 0 discriminator 3
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L2:
	.loc 1 35 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	cmp	r3, #5
	bls	.L3
	.loc 1 41 0 is_stmt 1
	ldr	r3, .L5+4
	ldr	r3, [r3]
	.loc 1 42 0
	mov	r0, r3
	adds	r7, r7, #20
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
.L6:
	.align	2
.L5:
	.word	.LC0
	.word	f2.5109
	.word	g5
	.cfi_endproc
.LFE0:
	.size	func, .-func
	.bss
	.align	2
f2.5109:
	.space	4
	.size	f2.5109, 4
	.text
.Letext0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xc0
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF3
	.byte	0xc
	.4byte	.LASF4
	.4byte	.LASF5
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	0x3c
	.4byte	0x35
	.uleb128 0x3
	.4byte	0x35
	.byte	0x9
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x6
	.ascii	"g5\000"
	.byte	0x1
	.byte	0x18
	.4byte	0x25
	.uleb128 0x5
	.byte	0x3
	.4byte	g5
	.uleb128 0x7
	.4byte	.LASF6
	.byte	0x1
	.byte	0x1a
	.4byte	0x3c
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa4
	.uleb128 0x8
	.ascii	"f1\000"
	.byte	0x1
	.byte	0x1a
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.ascii	"f2\000"
	.byte	0x1
	.byte	0x1c
	.4byte	0x3c
	.uleb128 0x5
	.byte	0x3
	.4byte	f2.5109
	.uleb128 0x9
	.ascii	"f3\000"
	.byte	0x1
	.byte	0x1d
	.4byte	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x9
	.ascii	"f4\000"
	.byte	0x1
	.byte	0x1e
	.4byte	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x3c
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0xa
	.byte	0x4
	.4byte	0xbe
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0xb
	.4byte	0xb7
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
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
.LASF1:
	.ascii	"unsigned int\000"
.LASF6:
	.ascii	"func\000"
.LASF3:
	.ascii	"GNU C99 6.3.1 20170620 (release) [ARM/embedded-6-br"
	.ascii	"anch revision 249437] -mcpu=cortex-m4 -mthumb -marc"
	.ascii	"h=armv7e-m -mfloat-abi=hard -mfpu=fpv4-sp-d16 -g -O"
	.ascii	"0 -std=c99\000"
.LASF4:
	.ascii	"misc.c\000"
.LASF0:
	.ascii	"sizetype\000"
.LASF2:
	.ascii	"char\000"
.LASF5:
	.ascii	"/home/paddy/EmbeddedCAssignments/CourseraEmbeddedSy"
	.ascii	"stems/Week3AllocatedMemory\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors 6-2017-q2-update) 6.3.1 20170620 (release) [ARM/embedded-6-branch revision 249437]"
