#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rbaum <rbaum@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/12 17:20:35 by rbaum             #+#    #+#              #
#    Updated: 2015/03/25 07:21:29 by rbaum            ###   ########.fr        #
#                                                                              #
#******************************************************************************#


.PHONY:			all, clean, fclean, re

CC =			nasm

CFLAG =			-f macho64

NAME =			push_swap

SRC_PATH =		./src/

OBJ_PATH =		./obj/

INC_PATH =		./inc/

SRC_NAME =		ft_isdigit.s


OBJ_NAME =		$(SRC_NAME:.c=.o)

INC_NAME =		push_swap.h

SRC =			$(addprefix $(SRC_PATH),$(SRC_NAME))

OBJ =			$(addprefix $(OBJ_PATH),$(OBJ_NAME))

INC =			$(addprefix $(INC_PATH),$(INC_NAME))


all:			$(NAME)

$(NAME):		$(OBJ)
				@$(CC)  -lft -o $(NAME) $(OBJ)
				@echo "push swap created"

$(OBJ_PATH)%.o:	$(SRC_PATH)%.c
				@mkdir -p $(OBJ_PATH)
				@$(CC) $(CFLAG) -I$(INC_PATH) -I$(INCLIBFT_PATH) -o $@ -c $<

clean:
				@make -C $(LIBFT_PATH) clean
				@rm -f $(OBJ)

fclean:			
				@rm -f $(OBJ)
				@make -C $(LIBFT_PATH) fclean
				@rm -f $(NAME)

re: 			fclean all