.text
.global main
main:
	push {r7, lr}
	mov r0, #1
	ldr r1, =string
	mov r2, #20
	mov r7, #4
	svc #0
	
	pop {r7,pc}

.data
string: .asciz "Hello\n"
