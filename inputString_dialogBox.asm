/**
Write a MIPS program to open an input dialog box and read a string value.  
Write the string back to the user using a message box.  
**/

.data
	msg:	.asciiz	"Enter string:"
	str: .space 100
	
.text
	main: 
		# promt user to enter string
		li $v0,54	
		la $a0, msg	
		la $a1, str
		li $a2, 100
		syscall
		
		
		# end of main 
		li $v0,10		
		syscall
	
	
