/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rbaum <rbaum@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/26 22:36:47 by rbaum             #+#    #+#             */
/*   Updated: 2015/03/31 03:27:36 by rbaum            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "test.h"

int		main(void)
{
	ut_bzero();
	ut_isalpha();
	ut_isdigit();
	ut_isalnum();
	ut_isascii();
	ut_isprint();
	ut_toupper();
	ut_tolower();
	ut_strlen();
	ut_memset();
	ut_memcpy();
	ut_strdup();
	ut_puts();
	ut_strcat();
	printf("\033[34;4;1m" "\n\t\t------BONUS------\n" NONE);
	ut_isupper();
	ut_islower();
	ut_putchar();

//	ut_cat();
		  
	return (0);
}
