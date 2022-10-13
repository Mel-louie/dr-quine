# dr-quine
 
This small algo project will get you acquainted with auto-replication problems and confront the Kleene recursion theorem.

| Skills                 |
| :--------------------- |
| Imperative programming |
| Unix                   |
| Optimisation           | 
| Algorithms & AI        |

- Must use C/ASM and submit a Makefile;
- The Makefile must compile the project and must contain the usual rules. It must recompile and re-link the program only if necessary;
- Errors should be handle carefully. In no way the programs can quit in an unexpected manner (segmentation fault, bus error, double free, etc).

For this project, three different programs must be recode, each with different properties. Each programs will have to be coded in C and in Assembly, and respectivly in a folder named C and ASM, each folders containing its own Makefile.

## The first program:
The executable must be named Colleen.
- When executed, the program must display on the standard output an output identical to the source code of the file used to compile the program.
- The source code must contain at least:
  - A main function;
  - Two different comments;
  - One of the comments must be present in the main function;
  - One of the comments must be present outside of your program;
  - Another function in addition to the main function (which of course will be called).

## The second program:
- The executable must be named Grace.
- When executed, the program writes in a file named Grace_kid.c/Grace_kid.s the source code of the file used to compile the program.
- The source code must strickly contain:
  - No main declared;
  - Three defines only;
  - One comment;
- The program will run by calling a macro.

## The third program:
- The executable must be named Sully.
- When executed the program writes in a file named Sully_X.c/Sully_X.s. The X will be an interger given in the source. Once the file is created, the program compiles this file and then runs the new program (which will have the name of its source file).
- Stopping the program depends on the file name : the resulting program will be executed only if the integer X is greater than 0.
- An integer is therefore present in the source of your program and will have to evolve by decrementing every time you create a source file from the execution of the program.
- You have no constraints on the source code, apart from the integer that will be set to 5 at first.

## Bonus part
The only Bonus accepted during the evaluation is to have redone this project entirely in the language of your choice.

## Ressources
https://cs.lmu.edu/~ray/notes/quineprograms/

http://www.madore.org/~david/computers/quine.html

https://towardsdatascience.com/how-to-write-your-first-quine-program-947f2b7e4a6f

https://esolangs.org/wiki/User:Hakerh400/How_to_write_quines

http://dwcope.freeshell.org/projects/quine/

https://www.reddit.com/r/programming/comments/ki1jb6/quine_or_self_reproducing_program_written_using_c/
https://github.com/Alexdelia/42-dr-quine


https://scienceetonnante.com/2012/03/19/les-quines-des-programmes-informatiques-auto-replicateurs/

https://stackoverflow.com/questions/33534671/how-does-this-quine-work

https://stackoverflow.com/questions/60212717/quine-program-example-in-c

https://stackoverflow.com/questions/10238670/c-c-program-that-prints-its-own-source-code-as-its-output



https://www.youtube.com/watch?v=Jf8piyPSS70
