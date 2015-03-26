#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rbaum <rbaum@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/02/11 15:34:34 by rbaum             #+#    #+#              #
#    Updated: 2015/03/26 23:09:15 by rbaum            ###   ########.fr        #
#                                                                              #
#******************************************************************************#

.PHONY:			all, libft, clean, fclean, re

CC =			nasm

CFLAG =			-f macho64 --prefix _

NAME =			libftasm.a

SRC_PATH =		./src/

OBJ_PATH =		./obj/

INC_PATH =		./inc/

SRC_NAME =		ft_bzero.s	ft_isdigit.s\

OBJ_NAME =		$(SRC_NAME:.s=.o)

INC_NAME =		libftasm.h

SRC =			$(addprefix $(SRC_PATH),$(SRC_NAME))

OBJ =			$(addprefix $(OBJ_PATH),$(OBJ_NAME))

INC =			$(addprefix $(INC_PATH),$(INC_NAME))

all:			$(NAME)

$(NAME):		$(OBJ)
				@ar rc $@ $^
				@echo "libftasm created"

$(OBJ_PATH)%.o:	$(SRC_PATH)%.s
				@mkdir -p $(OBJ_PATH)
				@$(CC) $(CFLAG) -I$(INC_PATH)  $< -o $@

clean:
				@rm -f $(OBJ)
				@echo "clean done"
fclean:			
				@rm -f $(OBJ)
				@rm -f $(NAME)
				@echo "fclean done"

re: 			fclean all