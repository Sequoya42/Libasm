/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rbaum <rbaum@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/26 22:36:47 by rbaum             #+#    #+#             */
/*   Updated: 2015/03/30 00:26:15 by rbaum            ###   ########.fr       */
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
	return (0);
}
