## On `push rbp mov rbp, rsp` and `mov rbp, rsp pop rbp`:
`push rbp mov rbp, rsp`:

> rbp is the frame pointer on x86_64. In your generated code, it gets a snapshot of the stack pointer (rsp) so that when adjustments are made to rsp (i.e. reserving space for local variables or pushing values on to the stack), local variables and function parameters are still accessible from a constant offset from rbp.

https://stackoverflow.com/questions/41912684/what-is-the-purpose-of-the-rbp-register-in-x86-64-assembler

So, it's a function prologue. 
Pushes the old base pointer onto the stack, so it can be restored later:
```push    rbp```
Assigns the value of stack pointer into base pointer, then a new stack frame will be created on top of the old stack frame:
```mov     rbp, rsp```
> Some compilers offer the option of not using frame pointers, which frees up ebp to be used as a generic register (it would still need to be saved)
So, just need `push rbp`
https://stackoverflow.com/questions/26684506/what-does-ebp-and-esp-in-a-disassembly-code-mean

`mov rbp, rsp pop rbp` (can be replace by LEAVE):
> LEAVE is the counterpart to ENTER. The ENTER instruction sets up a stack frame by first pushing EBP onto the stack and then copies ESP into EBP, so LEAVE has to do the opposite, i.e. copy EBP to ESP and then restore the old EBP from the stack.
> ENTER is very slow and compilers don't use it, but LEAVE is fine.

https://stackoverflow.com/questions/29790175/assembly-x86-leave-instruction

More on stack frame and their use: https://stackoverflow.com/questions/15655553/why-to-use-ebp-in-function-prologue-epilogue

## The RET instruction:
https://www.gladir.com/LEXIQUE/ASM/ret.htm

https://c9x.me/x86/html/file_module_x86_id_280.html


## To view the ASM of a C program:
`clang -S file.c` or `gcc -S file.c`. And check the new `file.s` The two compilers send slightly different ASM codes, so it's pretty cool to compare the two.

`gdb binaryName` open your binary for debug. `disas functionYouWantToCheck` show you the function disassembled.

## Cheatsheet
x64 assembly cheatsheet https://cs.brown.edu/courses/cs033/docs/guides/x64_cheatsheet.pdf

