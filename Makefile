##
## EPITECH PROJECT, 2023
## Makefile
## File description:
## Placeholder
##

NAME   = executable

CC	   = gcc

WFLAGS = -Wall -Wextra -Werror

LIBS = -lc

CFLAGS = -I./include/ $(WFLAGS) $(LIBS)

DEBUGFLAGS = -lcriterion -lgcov --coverage -g

SRC	= $(shell find src/ -type f -name "*.c")

OBJ	= $(SRC:src/%.c=obj/%.o)

RED = \033[1;31m

GREEN = \033[1;32m

BLUE = \033[1;34m

NC = \033[0m

all: $(NAME)

$(NAME): $(OBJ)
	@echo -e "$(BLUE)Compiling binary...$(NC)"
	@$(CC) -o $(NAME) $(OBJ) $(CFLAGS)

obj/%.o: src/%.c
	@echo -e "$(GREEN)Compiling $<...$(NC)"
	@mkdir -p $(dir $@)
	@$(CC) -c -o $@ $< $(CFLAGS)

clean:
	@if [ -d obj/ ]; then echo -e "$(RED)Cleaning objects.$(NC)"; fi
	@rm -rf obj

fclean: clean
	@if [ -e "$(NAME)" ]; then echo -e "$(RED)Cleaning binary.$(NC)"; fi
	@rm -f $(NAME)

tests_run:
	@gcc -o test tests/test_is_a.c src/is_a.c $(CFLAGS) $(DEBUGFLAGS)
	@./test

re: fclean all
