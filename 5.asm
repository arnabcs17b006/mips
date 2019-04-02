.file	1 ""
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=32
	.module	nooddspreg
	.abicalls
	.rdata
	.align	2
$LC0:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.align	2
$LC1:
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15
	.word	16
	.word	17
	.word	18
	.text
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,112,$31		# vars= 80, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-112    # allocate memory in stack for static variables 
	sw	$31,108($sp)
	sw	$fp,104($sp)
	move	$fp,$sp		#move the top value of stack to frame pointer
	.cprestore	16
	movz	$31,$31,$0
	lw	$2,%got($LC0)($28)
	addiu	$3,$fp,32         
	addiu	$2,$2,%lo($LC0)
	li	$4,36			# 0x24
	move	$6,$4
	move	$5,$2
	move	$4,$3
	lw	$2,%call16(memcpy)($28)
	nop
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	lw	$28,16($fp)
	nop
	lw	$2,%got($LC1)($28)
	addiu	$3,$fp,68               #store the value of the address [fp]+68 in the register $3.
	addiu	$2,$2,%lo($LC1)
	li	$4,36			# 0x24
	move	$6,$4
	move	$5,$2
	move	$4,$3
	lw	$2,%call16(memcpy)($28)
	nop
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25                     #function calling
	nop

	lw	$28,16($fp)
	sw	$0,24($fp)
	b	$L2
	nop

$L5:
	sw	$0,28($fp)
	b	$L3
	nop

$L4:
	lw	$3,24($fp)
	nop
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	lw	$3,28($fp)
	nop
	addu	$2,$2,$3
	sll	$2,$2,2
	addiu	$3,$fp,24
	addu	$2,$3,$2
	lw	$4,8($2)
	lw	$3,24($fp)
	nop
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	lw	$3,28($fp)
	nop
	addu	$2,$2,$3
	sll	$2,$2,2
	addiu	$3,$fp,24
	addu	$2,$3,$2
	lw	$2,44($2)
	nop
	addu	$4,$4,$2
	lw	$3,24($fp)
	nop
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	lw	$3,28($fp)
	nop
	addu	$2,$2,$3
	sll	$2,$2,2
	addiu	$3,$fp,24
	addu	$2,$3,$2        #add the values in the registers $2 and $3 and store them in $2
	sw	$4,8($2)
	lw	$2,28($fp)
	nop
	addiu	$2,$2,1
	sw	$2,28($fp)
$L3:
	lw	$2,28($fp)
	nop
	slt	$2,$2,3
	bne	$2,$0,$L4	# branching statement
	nop

	lw	$2,24($fp)
	nop
	addiu	$2,$2,1
	sw	$2,24($fp)
$L2:
	lw	$2,24($fp)
	nop
	slt	$2,$2,3
	bne	$2,$0,$L5
	nop

	move	$2,$0
	move	$sp,$fp
	lw	$31,108($sp)
	lw	$fp,104($sp)
	addiu	$sp,$sp,112     #pop all the variables from the stack
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
