/** Convert an  “if-then-else “ C program  to MIPS
// $s0 -> a, $s1 -> b 

int a = 5, b = 10;
if (a + a == b) {
     a = 0; }
 else {
     b = a - 1;
 } 
**/


.data
	a: .word 6
	b: .word 10

.text
main: 
	lw $s0, a
	lw $s1, b
	
	# if (a+a==b) -> a=0
	add $t1, $s0,$s0
	bne $t1, $s1, else
	li $s0,0
	sw $s0, a
	#exit
	li $v0,10
	syscall
	
	#else: b = a-1
else:
	subi $s1, $s0, 1
	sw $s1, b
	
	
	
	
