FLAGS = -Wall -Wextra -Werror #-fsanitize=address
CC = clang
NAME = Colleen #Grace Sully

NAME: all

all: $(NAME)

Colleen: Colleen.c
	$(CC) $(FLAGS) -c Colleen.c -o Colleen.o
	$(CC) $(FLAGS) Colleen.o -o Colleen
# Grace: Grace.c
# 	$(CC) $(FLAGS) -c Grace.c -o Grace.o
# 	$(CC) $(FLAGS) Grace.o -o Grace
# Sully: Sully.c
# 	$(CC) $(FLAGS) -c Sully.c -o Sully.o
# 	$(CC) $(FLAGS) Sully.o -o Sully



clean:
	@rm -f Colleen.o
	#@rm -f Grace.o
	#@rm -f Sully.o
	@echo "Cleaning done"

fclean: clean
	@rm -rf Colleen Grace Sully
	#@rm -f Sully_*
	#@rm -f Grace_kid.c
	@echo "fcleaning done"

re: fclean all

.PHONY: all clean fclean re
