.file	1 ""
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=32
	.module	nooddspreg
	.abicalls
	.text
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,464,$31		# vars= 432, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-464
	sw	$31,460($sp)
	sw	$fp,456($sp)
	move	$fp,$sp
	.cprestore	16
	movz	$31,$31,$0
	li	$2,1000			# 0x3e8
	sw	$2,32($fp)
	addiu	$2,$fp,48
	li	$6,404			# 0x194
	move	$5,$0
	move	$4,$2
	lw	$2,%call16(memset)($28)
	nop
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$2,1			# 0x1
	sw	$2,48($fp)
	li	$2,1			# 0x1
	sw	$2,52($fp)
	li	$2,2			# 0x2
	sw	$2,36($fp)
	b	$L2
	nop

$L5:
	lw	$2,36($fp)
	nop
	sll	$2,$2,2
	addiu	$3,$fp,24
	addu	$2,$3,$2
	lw	$2,24($2)
	nop
	bne	$2,$0,$L2
	nop

	lw	$2,36($fp)
	nop
	sll	$2,$2,1
	sw	$2,40($fp)
	b	$L3
	nop

$L4:
	lw	$2,40($fp)
	nop
	sll	$2,$2,2
	addiu	$3,$fp,24
	addu	$2,$3,$2
	li	$3,1			# 0x1
	sw	$3,24($2)
$L3:
	lw	$2,40($fp)
	nop
	slt	$2,$2,101
	bne	$2,$0,$L4
	nop

$L2:
	lw	$2,36($fp)
	nop
	slt	$2,$2,101
	bne	$2,$0,$L5
	nop

	lw	$2,32($fp)
	nop
	sll	$2,$2,2
	addiu	$3,$fp,24
	addu	$2,$3,$2
	lw	$2,24($2)
	nop
	bne	$2,$0,$L6
	nop

	li	$2,1			# 0x1
	sw	$2,24($fp)
	b	$L7
	nop

$L6:
	lw	$2,32($fp)
	nop
	andi	$2,$2,0x1
	beq	$2,$0,$L8
	nop

	li	$2,2			# 0x2
	sw	$2,24($fp)
	b	$L7
	nop

$L8:
	li	$2,3			# 0x3
	sw	$2,24($fp)
$L7:
	lw	$2,24($fp)
	li	$3,2			# 0x2
	beq	$2,$3,$L10
	nop

	li	$3,3			# 0x3
	beq	$2,$3,$L11
	nop

	li	$3,1			# 0x1
	bne	$2,$3,$L19
	nop

	lw	$2,32($fp)
	nop
	addiu	$2,$2,1
	sw	$2,32($fp)
	b	$L13
	nop

$L10:
	lw	$2,32($fp)
	nop
	sw	$2,28($fp)
	b	$L14
	nop

$L17:
	lw	$2,28($fp)
	nop
	sll	$2,$2,2
	addiu	$3,$fp,24
	addu	$2,$3,$2
	lw	$2,24($2)
	nop
	bne	$2,$0,$L15
	nop

	lw	$2,28($fp)
	nop
	sw	$2,32($fp)
	nop
	b	$L13
	nop

$L15:
	lw	$2,28($fp)
	nop
	addiu	$2,$2,1
	sw	$2,28($fp)
$L14:
	lw	$2,28($fp)
	nop
	slt	$2,$2,10001
	bne	$2,$0,$L17
	nop

	b	$L13
	nop

$L11:
	lw	$2,32($fp)
	nop
	addiu	$2,$2,1
	sw	$2,32($fp)
	b	$L13
	nop

$L19:
	sw	$0,44($fp)
$L13:
	move	$2,$0
	move	$sp,$fp
	lw	$31,460($sp)
	lw	$fp,456($sp)
	addiu	$sp,$sp,464
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
