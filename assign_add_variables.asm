/** Convert C to MIPS
int a=4, b=5, c=6, z;
 z = a+b+c+10;
MIPS codes
You want to assign the variables a, b, c, and (result) z to the saved temporary register ($s_) 

// $s0 -> a, $s1 -> b,  $s2 -> c, $s3 -> z 
**/

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
