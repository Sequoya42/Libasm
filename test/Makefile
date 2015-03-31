#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rbaum <rbaum@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/27 00:36:34 by rbaum             #+#    #+#              #
#    Updated: 2015/03/31 02:47:29 by rbaum            ###   ########.fr        #
#                                                                              #
#******************************************************************************#

SRC=	test_if.c	 ut_bzero.c		ut_isdigit.c 	ut_isalpha.c\
		ut_isalnum.c	ut_isascii.c	ut_isprint.c ut_toupper.c\
		ut_tolower.c	ut_isupper.c	ut_islower.c	ut_putchar.c\
		ut_strlen.c		ut_memset.c		ut_memcpy.c		ut_strdup.c\
		ut_strcat.c		ut_cat.c		ut_puts.c\


all:
	@make -C ../ re
	@gcc  -Wall -Wextra -Werror main.c $(SRC) -I ../inc  -L ../ -lfts
	@echo "test created as a.out"