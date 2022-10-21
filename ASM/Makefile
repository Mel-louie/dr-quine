#### COLORS ####
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

C_NAME		:= Colleen
G_NAME		:= Grace
S_NAME		:= Sully
LD			:= clang
LDFLAGS		:= -Wall -Wextra -Werror

CC			:= nasm
CFLAGS		:= -f elf64

C_SRCS 		:= Colleen.s
C_OBJS		:= $(C_SRCS:.s=.o)
G_SRCS 		:= Grace.s
G_OBJS		:= $(G_SRCS:.s=.o)
S_SRCS 		:= Sully.s
S_OBJS		:= $(S_SRCS:.s=.o)

all:	$(C_NAME) $(G_NAME) $(S_NAME)
	@echo $(GREEN) "Done!"

$(C_NAME): $(C_OBJS)
	@$(LD) $(LDFLAGS) $(C_OBJS) -o $(C_NAME)
$(G_NAME):	$(G_OBJS)
	@$(LD) $(LDFLAGS) $(G_OBJS) -o $(G_NAME)
$(S_NAME):	$(S_OBJS)
	@$(LD) $(LDFLAGS) $(S_OBJS) -o $(S_NAME)

%.o :%.s
	@$(CC) $(CFLAGS) $< -o $@

test: re
	@echo
	@echo $(RESET) Colleen:
	@echo $(RED)
	@./Colleen > tmp_Colleen; diff tmp_Colleen Colleen.s; rm tmp_Colleen

clean:
	@rm -rf $(C_OBJS)
	@rm -f $(C_NAME).out
	@rm -f $(G_OBJS)
	@rm -f $(G_NAME).out
	@rm -f $(S_OBJS)
	@rm -f $(S_NAME).out
	@rm -rf tmp_Colleen

fclean: clean
	@rm -f $(C_NAME)
	@rm -f $(G_NAME)
	@rm -f $(S_NAME)
	@rm -f Grace_kid.s

re: fclean all

PHONY:	all clean fclean re
