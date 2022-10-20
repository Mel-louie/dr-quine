#### COLORS ####
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

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

test: re
	@echo
	@echo $(RESET) Colleen:
	@echo $(RED)
	@./Colleen > tmp_Colleen; diff tmp_Colleen Colleen.s; rm tmp_Colleen

clean:
	rm -rf $(C_OBJS)
	rm -f $(C_NAME).out

fclean: clean
	rm -f $(C_NAME)

re: fclean all

PHONY:	all clean fclean re
