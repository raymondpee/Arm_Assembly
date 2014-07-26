.text
.global main
main:
	mov r1, #3
	mov r2, #2
	cmp r1, r2     /*update cpsr condition code with value of r1-r2 */
	beq case_equal /*branch to case_equal only if Z=1 */

case_different:
	mov r0,#2 	
	b end		/*branch to end */

case_equal:
	mov r0,#1	

end:
	bx lr

/*note at case_different, we dont want to run case_equal instruction, so we branch to the end */
