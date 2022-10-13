#include <stdio.h>
/*
	I'm a comment
*/

#define FILE "Grace_kid.c"
#define CODE "#include <stdio.h>%c/*%c%cI'm a comment%c*/%c%c#define FILE %cGrace_kid.c%c%c#define CODE %c%s%c%c#define FUNC()int main(void){fprintf(fopen(FILE, %cw%c), CODE, 10, 10, 9, 10, 10, 10, 34, 34, 10, 34, CODE, 34, 10, 34, 34, 10, 10);}%c%cFUNC();"
#define FUNC()int main(void){fprintf(fopen(FILE, "w"), CODE, 10, 10, 9, 10, 10, 10, 34, 34, 10, 34, CODE, 34, 10, 34, 34, 10, 10);}

FUNC();