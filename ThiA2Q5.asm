.data

.text
	main:
		li $v0,42
		li $a1, 100
		syscall
		
		li $v0,1
		syscall

		#end main
		li $v0,10
		syscall