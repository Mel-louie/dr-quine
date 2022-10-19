section .data
	hello_world db "Hello world!", 0x0A

section .text
	global main

main:
	mov rax, 4
	mov rdi, 1
	mov rsi, hello_world
	mov rdx, 13
	syscall

	; Terminate the programm
	mov rax, 1
	mov rdi, 0
	syscall