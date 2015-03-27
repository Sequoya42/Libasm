#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rbaum <rbaum@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/27 00:36:34 by rbaum             #+#    #+#              #
#    Updated: 2015/03/27 17:55:07 by rbaum            ###   ########.fr        #
#                                                                              #
#******************************************************************************#

SRC=	test_if.c	 ut_bzero.c		ut_isdigit.c 	ut_isalpha.c\
		ut_isalnum.c\

all:
	@make -C ../ re
	@gcc -Wall -Wextra -Werror main.c $(SRC) -I ../inc ../libftasm.a
	@echo "test created as a.out"