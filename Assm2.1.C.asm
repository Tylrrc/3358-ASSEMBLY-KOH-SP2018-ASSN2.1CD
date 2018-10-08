##########################################################################
# Tyler Cummings, CS 2318-260, Assignment 2 Part 1 Program C
#
#	Description: This program creates a three-element array and
#		swaps the values of the elements.
#
############################ data segment ################################

			.data
intArr:			.word 1001 2002 3003
lab1:			.asciiz "The first element contains: "
lab2:			.asciiz "The second element contains: "
lab3:			.asciiz "The third element contains: "
swap1:			.asciiz "Swapping the 1st and 2nd elements..."
swap2:			.asciiz "Swapping the 1st and 3rd elements..."
swap3:			.asciiz "Swapping the 2nd and 3rd elements..."

############################ code segment ################################

			.text
			.globl main
main:
			la $t0, intArr			# $t0 has address of intArr
			
################################ Display contents #################################			
			
			li $v0, 4			# print lab1
			la $a0, lab1
			syscall
			
			lw $t1, 0($t0)			# $t1 contains intArr[0]
					
			li $v0, 1			# print intArr[0]
			move $a0, $t1
			syscall
			
			li $v0, 11			# print newline
			li $a0, '\n'
			syscall
			
			li $v0, 4			# print lab2
			la $a0, lab2
			syscall
			
			lw $t2, 4($t0)			# $t2 contains intArr[1]	
			
			li $v0, 1			# print intArr[1]
			move $a0, $t2
			syscall
			
			li $v0, 11			# print newline
			li $a0, '\n'
			syscall
			
			li $v0, 4			# print lab3
			la $a0, lab3
			syscall
			
			lw $t3, 8($t0)			# $t3 contains intArr[2]
			
			li $v0, 1			# print intArr[2]
			move $a0, $t3
			syscall
			
			li $v0, 11			# print newline
			li $a0, '\n'
			syscall
			
############################### Swapping 1 and 2 ##################################
				
			
			sw $t2, 0($t0)			# put int in $t2 into intArr[0]
			sw $t1, 4($t0)			# put int in $t1 into intArr[1}
					
			li $v0, 11			# print newline
			li $a0, '\n'
			syscall
			
			li $v0, 4			# print swap1
			la $a0, swap1
			syscall
			
			li $v0, 11			# print newline
			li $a0, '\n'
			syscall
			
################################ Display contents #################################			
			
			li $v0, 4
			la $a0, lab1
			syscall
			li $v0, 1
			lw $a0, 0($t0)
			syscall
			li $v0, 11			# print newline
			li $a0, '\n'
			syscall
			li $v0, 4
			la $a0, lab2
			syscall
			li $v0, 1
			lw $a0, 4($t0)
			syscall
			li $v0, 11			# print newline
			li $a0, '\n'
			syscall
			li $v0, 4
			la $a0, lab3
			syscall
			li $v0, 1
			lw $a0, 8($t0)
			syscall
			li $v0, 11			# print newline
			li $a0, '\n'
			syscall
			
############################### Swapping 1 and 3 ##################################
			
			sw $t3, 0($t0)			# put int in $t3 into intArr[0}
			sw $t2, 8($t0)			# put int in $t2 into intArr[2}
					
			li $v0, 11			# print newline
			li $a0, '\n'
			syscall
			
			li $v0, 4			# print swap2
			la $a0, swap2
			syscall
			
			li $v0, 11			# print newline
			li $a0, '\n'
			syscall
			
################################ Display contents #################################			
			
			li $v0, 4
			la $a0, lab1
			syscall
			li $v0, 1
			lw $a0, 0($t0)
			syscall
			li $v0, 11			# print newline
			li $a0, '\n'
			syscall
			li $v0, 4
			la $a0, lab2
			syscall
			li $v0, 1
			lw $a0, 4($t0)
			syscall
			li $v0, 11			# print newline
			li $a0, '\n'
			syscall
			li $v0, 4
			la $a0, lab3
			syscall
			li $v0, 1
			lw $a0, 8($t0)
			syscall
			li $v0, 11			# print newline
			li $a0, '\n'
			syscall
			
############################### Swapping 2 and 3 ##################################			
			
			sw $t2, 4($t0)			# put int in $t2 into intArr[1}
			sw $t1, 8($t0)			# put int in $t1 into intArr[2}
					
			li $v0, 11			# print newline
			li $a0, '\n'
			syscall
			
			li $v0, 4			# print swap3
			la $a0, swap3
			syscall
			
			li $v0, 11			# print newline
			li $a0, '\n'
			syscall

################################ Display contents #################################			
									
			li $v0, 4
			la $a0, lab1
			syscall
			li $v0, 1
			lw $a0, 0($t0)
			syscall
			li $v0, 11			# print newline
			li $a0, '\n'
			syscall
			li $v0, 4
			la $a0, lab2
			syscall
			li $v0, 1
			lw $a0, 4($t0)
			syscall
			li $v0, 11			# print newline
			li $a0, '\n'
			syscall
			li $v0, 4
			la $a0, lab3
			syscall
			li $v0, 1
			lw $a0, 8($t0)
			syscall
			li $v0, 11			# print newline
			li $a0, '\n'
			syscall
						
			li $v0, 10			#exit	
                	syscall
