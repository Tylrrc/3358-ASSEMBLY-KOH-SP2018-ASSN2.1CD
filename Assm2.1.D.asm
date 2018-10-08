##########################################################################
# Tyler Cummings, CS 2318-260, Assignment 2 Part 1 Program D
#
#	Description: This program prompts the user to input three
#		test scores. It then computes an average score
#		based on a formula.
#
############################ data segment ################################
			
			.data
ex1:			.asciiz "Enter exam 1 score: "
ex2:			.asciiz "Enter exam 2 score: "	
ex3:			.asciiz "Enter final exam score: "
avg:			.asciiz "Average score: "	

############################ code segment ################################
						
			.text
			.globl main
main:
			li $v0, 4
			la $a0, ex1
			syscall	
			
			li $v0, 5
			syscall
			
			move $t0, $v0		# $t0 has 1st score
			
			li $v0, 4
			la $a0, ex2
			syscall	
			
			li $v0, 5
			syscall
			
			move $t1, $v0		# $t1 has 2nd score			
			
			li $v0, 4
			la $a0, ex3
			syscall	
			
			li $v0, 5
			syscall
			
			move $t2, $v0		# $t2 has 3rd score	

			li $t3, 410		# $t3 has 410
			mult $t3, $t0		# Lo has $t3(410) * $t0
			mflo $t3		# $t3 has $t3(410) * $t0
			sra $t3, $t3, 11	# $t3 has $t3 has $t3(410) * $t0 / 2048
						
			sll $t4, $t1, 8		# $t4 has $t1 * 256
			li $t5, 853		# $t5 has 853
			div $t4, $t5		# Lo has $t1 * 256 / 853
			mflo $t4		# $t4 has $t1 * 256 / 853
			
			sra $t2, $t2, 1		# $t2 has $t2 / 2
			
			add $t2, $t2, $t3	# $t2 has $t2 + $t3
			add $t2, $t2, $t4	# $t2 has $t2 + $t4
			
			li $v0, 4
			la $a0, avg		
			syscall	
			
			li $v0, 1			
			move $a0, $t2
			syscall			# print average score
			
			li $v0, 10		
			syscall			# exit
			
			
