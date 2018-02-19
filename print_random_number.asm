/*
Write a MIPS program to print out a random number from 1..100.  (I use the syscall function 42 )
*/

.data

.text
	main:
		li $v0,42
		li $a1, 100  #upper bound of range of returned values.
		syscall
		
		li $v0,1
		syscall

		#end main
		li $v0,10
		syscall
