.data
	promt: .asciiz "Enter your favorite movie name: "
	msg1: .asciiz "\nso you like the movie: "
	input: .space 40
	msg2: .asciiz " Great !!"
.text
	# print promt string:
	li $v0, 4
	la $a0, promt
	syscall
	
	# Read input
	li $v0, 8
	la $a0, input
	li $a1, 40
	syscall
	move $t1, $v0
	
	# Play a middle "C" for 1 second
	li $v0, 32
	la $a0, 1000
	syscall 
	
	#print msg1:
	li $v0, 4
	la $a0, msg1
	syscall
	
	# Print input
	li $v0, 4
	la $a0, input
	syscall
	
	# Print msg2
	li $v0, 4
	la $a0, msg2
	syscall 
	
	# end main
	li $v0, 10
	syscall
	