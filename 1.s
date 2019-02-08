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
	.frame	$fp,56,$31		# vars= 40, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-56             #allocate memory in stack for static variables
	sw	$fp,52($sp)             #store frame pointer in stack
	move	$fp,$sp
	li	$2,5			# set value of register $2 to 0x5
	sw	$2,8($fp)                #set value of the address [fp]+8 to 5.
	movz	$31,$31,$0
	li	$2,7			# 0x7
	sw	$2,12($fp)
	lw	$3,8($fp)
	lw	$2,12($fp)
	nop
	addu	$2,$3,$2                # add unsigned values of the registers $2 and $3 and store them in $2.
	sw	$2,16($fp)
	lw	$3,12($fp)
	lw	$2,8($fp)
	nop
	subu	$2,$3,$2		# subtract unsigned values of the registers $2 and $3 and store them in $2.
	sw	$2,20($fp)
	lw	$3,8($fp)
	lw	$2,12($fp)
	nop
	mult	$3,$2      		# multiply values of the registers $2 and $3 and store them in $2.             
	mflo	$2
	sw	$2,24($fp)
	lw	$3,12($fp)
	lw	$2,8($fp)
	nop
	bne	$2,$0,1f
	div	$0,$3,$2	# divide values of the registers $3 and $2 and store them in $0.
	break	7
1:
	mfhi	$2
	mflo	$2
	sw	$2,28($fp)     #store value of $2 in [fp]+28 address
	lw	$3,8($fp)
	lw	$2,12($fp)
	nop
	or	$2,$3,$2
	sw	$2,32($fp)
	lw	$3,8($fp)
	lw	$2,12($fp)
	nop
	and	$2,$3,$2       #store value of $2 and $3 in $2
	sw	$2,36($fp)
	lw	$3,8($fp)
	lw	$2,12($fp)
	nop
	xor	$2,$3,$2  	#store value of $2 xor $3 in $2     
	sw	$2,40($fp)
	move	$2,$0
	move	$sp,$fp
	lw	$fp,52($sp)
	addiu	$sp,$sp,56	#clear the stack
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
