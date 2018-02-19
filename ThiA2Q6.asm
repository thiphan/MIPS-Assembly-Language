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
	
	
