; comment outside of the program
section .data
	code db "; comment outside of the program%1$csection .data%1$c%2$ccode db %3$c%4$s%3$c, 0%1$c%1$csection .text%1$c%2$cglobal main%1$c%1$cextern printf%1$c%1$cmain:%1$c%2$cpush rbp%1$c%2$cmov rbp, rsp%1$c%1$c%2$ccall func%1$c; comment in the main function%1$c%2$cleave%1$c%2$cret%1$c%1$cfunc:%1$c%2$cpush rbp%1$c%2$cmov rbp, rsp%1$c%1$c%2$cmov rdi, code%1$c%2$cmov rsi, 0x0A%1$c%2$cmov rdx, 0x09%1$c%2$cmov rcx, 0x22%1$c%2$cmov r8, code%1$c%1$c%2$ccall printf%1$c%1$c%2$cleave%1$c%2$cret", 0

section .text
	global main

extern printf

main:
	push rbp
	mov rbp, rsp

	call func
; comment in the main function
	leave
	ret

func:
	push rbp
	mov rbp, rsp

	mov rdi, code
	mov rsi, 0x0A
	mov rdx, 0x09
	mov rcx, 0x22
	mov r8, code

	call printf

	leave
	ret