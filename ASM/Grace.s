%define FILE "Grace_kid.s"
%define CODE "%%define FILE %3$cGrace_kid.s%3$c%1$c%%define CODE %3$c%4$s%3$c%1$c%%define FUNC main%1$c%1$cextern fprintf%1$cextern fopen%1$cextern fclose%1$c; a comment%1$csection .data%1$c%2$ccode db CODE, 0%1$c%2$cfile db FILE, 0%1$c%2$cmode db %3$cw%3$c, 0%1$c%2$cf_ptr db 0%1$c%1$csection .text%1$c%2$cglobal FUNC%1$c%1$cFUNC:%1$c%2$cpush rbp%1$c%2$cmov rbp, rsp%1$c%1$c%2$cmov rdi, file%1$c%2$cmov rsi, mode%1$c%2$ccall fopen%1$c%1$c%2$cmov [f_ptr], rax%1$c%1$c%2$cmov rdi, [f_ptr]%1$c%2$cmov rsi, code%1$c%2$cmov rdx, 0x0A%1$c%2$cmov rcx, 0x09%1$c%2$cmov r8, 0x22%1$c%2$cmov r9, code%1$c%2$ccall fprintf%1$c%1$c%2$cmov rdi, [f_ptr]%1$c%2$ccall fclose%1$c%1$c%2$cleave%1$c%2$cret"
%define FUNC main

extern fprintf
extern fopen
extern fclose
; a comment
section .data
	code db CODE, 0
	file db FILE, 0
	mode db "w", 0
	f_ptr db 0

section .text
	global FUNC

FUNC:
	push rbp
	mov rbp, rsp

	mov rdi, file
	mov rsi, mode
	call fopen

	mov [f_ptr], rax

	mov rdi, [f_ptr]
	mov rsi, code
	mov rdx, 0x0A
	mov rcx, 0x09
	mov r8, 0x22
	mov r9, code
	call fprintf

	mov rdi, [f_ptr]
	call fclose

	leave
	ret