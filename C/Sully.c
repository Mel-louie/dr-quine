#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#define CODE "#include <stdio.h>%1$c#include <unistd.h>%1$c#include <stdlib.h>%1$c#define CODE %2$c%3$s%2$c%1$cint	main(void)%1$c{%1$c%4$cint i = %5$d;%1$c%4$cchar file[12];%1$c%4$cchar executable[12];%1$c%4$cchar cmd[40];%1$c%4$cFILE *fptr;%1$c%1$c%4$cif (access(%2$cSully_5.c%2$c, F_OK) != -1)%1$c%4$c%4$c--i;%1$c%1$c%4$cif (i >= 0)%1$c%4$c{%1$c%4$c%4$csprintf(file, %2$cSully_%%d.c%2$c, i);%1$c%4$c%4$csprintf(executable, %2$cSully_%%d%2$c, i);%1$c%4$c%4$cfptr = fopen(file, %2$cw%2$c);%1$c%4$c%4$cfprintf(fptr, CODE, 10, 34, CODE, 9, i);%1$c%4$c%4$cfclose(fptr);%1$c%4$c%4$csystem(cmd);%1$c%4$c}%1$c}"
int	main(void)
{
	int i = 5;
	char file[12];
	char executable[12];
	char cmd[40];
	FILE *fptr;

	if (access("Sully_5.c", F_OK) != -1)
		--i;

	if (i >= 0)
	{
		sprintf(file, "Sully_%d.c", i);
		sprintf(executable, "Sully_%d", i);
		fptr = fopen(file, "w");
		fprintf(fptr, CODE, 10, 34, CODE, 9, i);
		fclose(fptr);
		system(cmd);
	}
}