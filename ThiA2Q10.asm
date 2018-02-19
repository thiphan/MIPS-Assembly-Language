.data
	promt: .asciiz  "Enter a number you want to negate: "
	msg1: .asciiz "Your answer in Decimal is: "
	msg2: .asciiz "\nAnswer in Hex format: "

	
.text
	main:
	# promt user
	li $v0,4
	la $a0, promt
	syscall
	
	# read input, store to $s0
	li $v0, 5
	syscall 
	move $s0, $v0

	# print msg1:
	li $v0,4
	la $a0, msg1
	syscall
	
	# flip all bits, store to s1, add 1
	xori $s1, $s0, -1
	addi $s1, $s1, 1
	addi $s2, $s1,0
	
	# Print answer in Decimal
	li $v0, 1
	move $a0, $s1
	syscall

	# Print msg2:
	li $v0, 4
	la $a0, msg2
	syscall
	
	# Print hex format:
	li $v0, 34
	move $a0, $s2
	syscall 
	
	#exit
	li $v0,10
	syscall
	
