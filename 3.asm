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
	.frame	$fp,848,$31		# vars= 816, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-848   # allocating space in stack for static variables
	sw	$31,844($sp)
	sw	$fp,840($sp)
	move	$fp,$sp
	.cprestore	16
	movz	$31,$31,$0
	addiu	$2,$fp,36
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
	sw	$2,36($fp)
	li	$2,1			# 0x1
	sw	$2,40($fp)
	li	$2,2			# 0x2
	sw	$2,24($fp)
	b	$L2
	nop

$L5:
	lw	$2,24($fp)
	nop
	sll	$2,$2,2
	addiu	$3,$fp,24
	addu	$2,$3,$2        #add value of $2 and $3 and store them in $2.
	lw	$2,12($2)
	nop
	bne	$2,$0,$L2        # if the value of $2 is zero then branch to statement to statement L2
	nop

	lw	$2,24($fp)
	nop
	sll	$2,$2,1          # access the byte memory address of $2
	sw	$2,32($fp)
	b	$L3
	nop

$L4:
	lw	$2,32($fp)
	nop
	sll	$2,$2,2
	addiu	$3,$fp,24
	addu	$2,$3,$2
	li	$3,1			# 0x1
	sw	$3,12($2)
$L3:
	lw	$2,32($fp)
	nop
	slt	$2,$2,101
	bne	$2,$0,$L4		 # if the value of $2 is zero then branch to statement to statement L4
	nop

$L2:
	lw	$2,24($fp)
	nop
	slt	$2,$2,101
	bne	$2,$0,$L5		 # if the value of $2 is zero then branch to statement to statement L5
	nop

	sw	$0,28($fp)
	sw	$0,24($fp)
	b	$L6
	nop

$L8:
	lw	$2,24($fp)
	nop
	sll	$2,$2,2
	addiu	$3,$fp,24
	addu	$2,$3,$2
	lw	$2,12($2)
	nop
	bne	$2,$0,$L7		 # if the value of $2 is zero then branch to statement to statement L7
	nop

	lw	$3,28($fp)
	nop
	addiu	$2,$3,1
	sw	$2,28($fp)
	lw	$2,24($fp)
	nop
	sll	$2,$2,2
	addiu	$4,$fp,24
	addu	$2,$4,$2
	lw	$4,12($2)
	sll	$2,$3,2
	addiu	$3,$fp,24
	addu	$2,$3,$2
	sw	$4,416($2)
$L7:
	lw	$2,24($fp)
	nop
	addiu	$2,$2,1
	sw	$2,24($fp)
$L6:
	lw	$2,24($fp)
	nop
	slt	$2,$2,100
	bne	$2,$0,$L8
	nop

	move	$2,$0
	move	$sp,$fp
	lw	$31,844($sp)
	lw	$fp,840($sp)
	addiu	$sp,$sp,848		#clear the stack space
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
