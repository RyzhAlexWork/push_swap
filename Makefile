# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pdonnie <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/04/04 20:12:39 by pdonnie           #+#    #+#              #
#    Updated: 2019/04/06 23:21:03 by pdonnie          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME_P = push_swap
NAME_C = checker

LIB_DIR = ./GetNextLine/libft

SOURCE = quicksort.c validation.c GetNextLine/get_next_line.c operation.c \
operation2.c operation3.c ft_list.c lastcheck.c array.c \

SOURCE_C = checker.c \

SOURCE_P = push_swap.c algorithm.c special_case.c special_case2.c \

OBJECTS = quicksort.o validation.o GetNextLine/get_next_line.o operation.o \
          operation2.o operation3.o ft_list.o lastcheck.o array.o \

OBJECTS_C = checker.o \

OBJECTS_P = push_swap.o algorithm.o special_case.o special_case2.o \

all: $(NAME_P) $(NAME_C)

libft:
	make -C $(LIB_DIR)

$(NAME_P): libft $(OBJECTS) $(OBJECTS_P)
	gcc -Wall -Wextra -Werror $(OBJECTS) $(OBJECTS_P) -I$(LIB_DIR)/ -IGetNextLine/libft/include -lft -L$(LIB_DIR)/ -o $(NAME_P)

$(NAME_C): $(OBJECTS) $(OBJECTS_C)
	gcc -Wall -Wextra -Werror $(OBJECTS) $(OBJECTS_C) -I$(LIB_DIR)/ -IGetNextLine/libft/include -lft -L$(LIB_DIR)/ -o $(NAME_C)

%.o: %.c push_swap.h
	gcc -Wall -Wextra -Werror -Iincludes -c $< -o $@

clean:
	make clean -C $(LIB_DIR)
	/bin/rm -f $(OBJECTS) $(OBJECTS_C) $(OBJECTS_P)

fclean: clean
	make fclean -C $(LIB_DIR)
	/bin/rm -f $(NAME_C) $(NAME_P)

re: fclean all
