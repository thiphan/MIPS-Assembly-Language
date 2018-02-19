.data
	a: .word 4
	b: .word 5
	c: .word 6
	z: .word

.text
main:
	lw $s0, a($zero)
	lw $s1, b($zero)
	lw $s2, c($zero)
	
	add $t0, $s0,$s1
	add $t1, $t0, $s2
	addi $t1, $t1,10

	sw $t1,z
	lw $s3,z
	# print sum 
	li $v0,1
	move $a0, $s3
	syscall 
	
	
	# end main 
	li $v0,10
	syscall
