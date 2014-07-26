/*data section */
.data  
.balign 4  /*balign means define data barrier as 4 bytes */
myvar1:    /* for this case myvar1: is a label, (the address)
	      which later used below as addr_of_myvar1: .word myvar1(address) */
	.word 3  /* word means given value, for this case is 3 */

.balign 4
myvar2:
	.word 4

/*--------------------------------*/

/*code section*/
.text
.balign 4
.global main
main:
	ldr r1, addr_of_myvar1  /* 	r1 <- &myvar1 	*/
	ldr r1 , [r1]		/* 	r1 <- *r1 	*/
	ldr r2, addr_of_myvar2 	/*	r2 <- &myvar2	*/
	ldr r2, [r2]		/*	r2 <- *r2	*/
	add r0,r1,r2
	bx lr

addr_of_myvar1: .word myvar1
addr_of_myvar2: .word myvar2


