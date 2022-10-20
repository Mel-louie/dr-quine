section .data
    msg     db  'Hello, world!', 0

section .text
	global main

extern printf

main:
	push rbp
	mov rbp, rsp

	call func

	leave
	ret

func:
	push rbp
	mov rbp, rsp

    mov rdi, msg
	mov rsi, msg

	call printf

	leave
	ret
