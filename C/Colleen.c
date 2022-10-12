/*
	out comment
*/
#include <stdio.h>
void	func(char *s)
{
	printf(s, 10, 9, 10, 10, 10, 9, 10, 10, 9, 10, 10, 10, 9, 10, 10, 9, 10, 9, 9, 10, 9, 10, 9, 34, s, 34, 59, 10, 9, 10);
}

int	main(void)
{
	/*
		in comment
	*/
	char *s="/*%c%cout comment%c*/%c#include <stdio.h>%cvoid%cfunc(char *s)%c{%c%cprintf(s, 10, 9, 10, 10, 10, 9, 10, 10, 9, 10, 10, 10, 9, 10, 10, 9, 10, 9, 9, 10, 9, 10, 9, 34, s, 34, 59, 10, 9, 10);%c}%c%cint%cmain(void)%c{%c%c/*%c%c%cin comment%c%c*/%c%cchar *s=%c%s%c%c%c%cfunc(s);%c}";
	func(s);
}