%define FILE "Grace_kid.s"
%define CODE "Hi! Oy!"
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
	call fprintf

	mov rdi, [f_ptr]
	call fclose

	leave
	ret