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
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$fp,44($sp)
	move	$fp,$sp
	li	$2,5			# 0x5
	sw	$2,12($fp)
	movz	$31,$31,$0
	li	$2,2			# 0x2
	sw	$2,16($fp)
	li	$2,1			# 0x1
	sw	$2,20($fp)
	li	$2,2			# 0x2
	sw	$2,24($fp)
	li	$2,3			# 0x3
	sw	$2,28($fp)
	li	$2,4			# 0x4
	sw	$2,32($fp)
	li	$2,5			# 0x5
	sw	$2,36($fp)
	sw	$0,8($fp)
	b	$L2
	nop

$L3:
	lw	$2,8($fp)
	nop
	sll	$2,$2,2
	addiu	$3,$fp,8
	addu	$2,$3,$2
	lw	$3,12($2)
	lw	$2,16($fp)
	nop
	addu	$3,$3,$2
	lw	$2,8($fp)
	nop
	sll	$2,$2,2
	addiu	$4,$fp,8
	addu	$2,$4,$2
	sw	$3,12($2)
	lw	$2,8($fp)
	nop
	addiu	$2,$2,1
	sw	$2,8($fp)
$L2:
	lw	$3,8($fp)
	lw	$2,12($fp)
	nop
	slt	$2,$3,$2
	bne	$2,$0,$L3
	nop

	move	$2,$0
	move	$sp,$fp
	lw	$fp,44($sp)
	addiu	$sp,$sp,48
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
