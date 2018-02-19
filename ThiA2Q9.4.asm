#  Write a MIPS code to do this 225 (2 to the power 25)

.data
	x: .word 1 #to multiply & store the result
.text
	main:
	lw $t0, x
	sll $t1, $t0,25
	sw $t1, x