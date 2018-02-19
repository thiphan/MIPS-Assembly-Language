/** 
An address (Pointer) in C  converting to MIPS
// $s0 -> int *p = intArr; 
// $s1 -> a 
p[0] = 0; 
int a = 2; 
p[1] = a; 
p[a] = a;
**/

.data
	a: .word 2
	p: .space 12 #array
.text
	main:
	la $s0, p #load address array p to $s0

	#assign 0 to P[0]
	li $t1, 0
	sw $t1, ($s0)
	
	# int a = 2, assign a to P[1]
	lw $s1, a
	sw $s1, 4($s0)
	
	#assign a to p[a]
	mul $t2, $s1, 4
	sw $s1, p($t2)
	
	#test
	#lw $t3, p($zero)
	#li $v0,1
	#addi $a0, $t3,0
	#syscall
	
	#end main:
	li $v0, 10
	syscall
