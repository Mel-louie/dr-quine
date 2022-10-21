%define CODE "%%define CODE "

extern fprintf
extern fopen
extern fclose
extern access
extern sprintf
extern strcat
extern system

extern printf

section .data
    i dd 5
    test db "%1$d", 0

    code db CODE, 0
    Sully_ref db "Sully_5.s", 0
    mode db "w, 0"
    f_ptr db 0
    cmd db "nasm -f elf64 Sully_%1$d.s -o Sully_%1$d.o && clang -Wall -Wextra -Werror Sully_%1$d.o -o Sully_%1$d", 0

section .text
    global main

main:
    push rbp
	mov rbp, rsp

    mov rdi, Sully_ref
    xor rsi, rsi
    call access

    cmp rax, 0
    jne .set ; jump if not zero

    .set:
        dec WORD [i] ; dec i by 1 (WORD = 4 bytes, like an int)
    
    
    leave
    ret

;     (gdb) disas main
; Dump of assembler code for function main:
;    0x00000000004011a0 <+0>:     push   %rbp
;    0x00000000004011a1 <+1>:     mov    %rsp,%rbp
;    0x00000000004011a4 <+4>:     sub    $0xc0,%rsp
;    0x00000000004011ab <+11>:    movl   $0x0,-0x4(%rbp)
;    0x00000000004011b2 <+18>:    movl   $0x5,-0x8(%rbp)
;    0x00000000004011b9 <+25>:    movabs $0x402004,%rdi
;    0x00000000004011c3 <+35>:    xor    %esi,%esi
;    0x00000000004011c5 <+37>:    call   0x401070 <access@plt>
;    0x00000000004011ca <+42>:    cmp    $0xffffffff,%eax
;    0x00000000004011cd <+45>:    je     0x4011dc <main+60>
;    0x00000000004011d3 <+51>:    mov    -0x8(%rbp),%eax
;    0x00000000004011d6 <+54>:    add    $0xffffffff,%eax
;    0x00000000004011d9 <+57>:    mov    %eax,-0x8(%rbp)
;    0x00000000004011dc <+60>:    cmpl   $0x0,-0x8(%rbp)
;    0x00000000004011e0 <+64>:    jl     0x4012e7 <main+327>
;    0x00000000004011e6 <+70>:    lea    -0x14(%rbp),%rdi
;    0x00000000004011ea <+74>:    mov    -0x8(%rbp),%edx
;    0x00000000004011ed <+77>:    movabs $0x40200e,%rsi
;    0x00000000004011f7 <+87>:    mov    $0x0,%al
;    0x00000000004011f9 <+89>:    call   0x4010a0 <sprintf@plt>
;    0x00000000004011fe <+94>:    lea    -0x20(%rbp),%rdi
;    0x0000000000401202 <+98>:    mov    -0x8(%rbp),%edx
;    0x0000000000401205 <+101>:   movabs $0x402019,%rsi
;    0x000000000040120f <+111>:   mov    $0x0,%al
;    0x0000000000401211 <+113>:   call   0x4010a0 <sprintf@plt>
;    0x0000000000401216 <+118>:   lea    -0x14(%rbp),%rdi
;    0x000000000040121a <+122>:   movabs $0x402022,%rsi
;    0x0000000000401224 <+132>:   call   0x401080 <fopen@plt>
;    0x0000000000401229 <+137>:   mov    %rax,-0x28(%rbp)
; --Type <RET> for more, q to quit, c to continue without paging--
;    0x000000000040122d <+141>:   mov    -0x28(%rbp),%rdi
;    0x0000000000401231 <+145>:   mov    -0x8(%rbp),%eax
;    0x0000000000401234 <+148>:   movabs $0x402024,%r8
;    0x000000000040123e <+158>:   mov    $0xa,%edx
;    0x0000000000401243 <+163>:   mov    $0x22,%ecx
;    0x0000000000401248 <+168>:   mov    $0x9,%r9d
;    0x000000000040124e <+174>:   mov    %r8,%rsi
;    0x0000000000401251 <+177>:   mov    %eax,(%rsp)
;    0x0000000000401254 <+180>:   mov    $0x0,%al
;    0x0000000000401256 <+182>:   call   0x401050 <fprintf@plt>
;    0x000000000040125b <+187>:   mov    -0x28(%rbp),%rdi
;    0x000000000040125f <+191>:   call   0x401030 <fclose@plt>
;    0x0000000000401264 <+196>:   lea    -0xb0(%rbp),%rdi
;    0x000000000040126b <+203>:   movabs $0x402390,%rsi
;    0x0000000000401275 <+213>:   mov    $0x80,%edx
;    0x000000000040127a <+218>:   call   0x401060 <memcpy@plt>
;    0x000000000040127f <+223>:   lea    -0xb0(%rbp),%rdi
;    0x0000000000401286 <+230>:   lea    -0x14(%rbp),%rsi
;    0x000000000040128a <+234>:   call   0x401090 <strcat@plt>
;    0x000000000040128f <+239>:   lea    -0xb0(%rbp),%rdi
;    0x0000000000401296 <+246>:   movabs $0x40237c,%rsi
;    0x00000000004012a0 <+256>:   call   0x401090 <strcat@plt>
;    0x00000000004012a5 <+261>:   lea    -0xb0(%rbp),%rdi
;    0x00000000004012ac <+268>:   lea    -0x20(%rbp),%rsi
;    0x00000000004012b0 <+272>:   call   0x401090 <strcat@plt>
;    0x00000000004012b5 <+277>:   lea    -0xb0(%rbp),%rdi
;    0x00000000004012bc <+284>:   movabs $0x402381,%rsi
;    0x00000000004012c6 <+294>:   call   0x401090 <strcat@plt>
;    0x00000000004012cb <+299>:   lea    -0xb0(%rbp),%rdi
;    0x00000000004012d2 <+306>:   lea    -0x20(%rbp),%rsi
; --Type <RET> for more, q to quit, c to continue without paging--
;    0x00000000004012d6 <+310>:   call   0x401090 <strcat@plt>
;    0x00000000004012db <+315>:   lea    -0xb0(%rbp),%rdi
;    0x00000000004012e2 <+322>:   call   0x401040 <system@plt>
;    0x00000000004012e7 <+327>:   xor    %eax,%eax
;    0x00000000004012e9 <+329>:   add    $0xc0,%rsp
;    0x00000000004012f0 <+336>:   pop    %rbp
;    0x00000000004012f1 <+337>:   ret    