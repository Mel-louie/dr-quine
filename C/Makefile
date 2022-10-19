#### COLORS ####
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

FLAGS = -Wall -Wextra -Werror #-fsanitize=address
CC = clang
NAME = Colleen Grace Sully

NAME: all

all: $(NAME)
	@echo $(GREEN) "Done!"

Colleen: Colleen.c
	@$(CC) $(FLAGS) -c Colleen.c -o Colleen.o
	@$(CC) $(FLAGS) Colleen.o -o Colleen
Grace: Grace.c
	@$(CC) $(FLAGS) -c Grace.c -o Grace.o
	@$(CC) $(FLAGS) Grace.o -o Grace
Sully: Sully.c
	@$(CC) $(FLAGS) -c Sully.c -o Sully.o
	@$(CC) $(FLAGS) Sully.o -o Sully

test: re
	@echo
	@echo $(RESET) Colleen:
	@echo $(RED)
	@./Colleen > tmp_Colleen; diff tmp_Colleen Colleen.c; rm tmp_Colleen
	@echo $(RESET) Grace:
	@echo $(RED)
	@./Grace; diff Grace.c Grace_kid.c

clean:
	@rm -f Colleen.o
	@rm -f Grace.o
	@rm -f Sully.o
	@echo "Cleaning done"

fclean: clean
	@rm -rf Colleen Grace Sully
	@rm -f Sully_*
	@rm -f Grace_kid.c
	@echo "fcleaning done"

re: fclean all

.PHONY: all clean fclean re
