C_NAME		:= Colleen
LD			:= clang
LDFLAGS		:= -Wall -Wextra -Werror

CC			:= nasm
CFLAGS		:= -f elf64

C_SRCS 		:= Colleen.s
C_OBJS		:= $(C_SRCS:.s=.o)

all:	$(C_NAME)

$(C_NAME): $(C_OBJS)
	$(LD) $(LDFLAGS) $(C_OBJS) -o $(C_NAME)

%.o :%.s
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -rf $(C_OBJS)
	rm -f $(C_NAME).out

fclean: clean
	rm -f $(C_NAME)

re: fclean all

PHONY:	all clean fclean re
