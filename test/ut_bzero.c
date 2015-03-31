/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ut_bzero.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rbaum <rbaum@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/27 00:38:51 by rbaum             #+#    #+#             */
/*   Updated: 2015/03/31 03:29:34 by rbaum            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "test.h"


void	ut_bzero(void)
{
	NAME("UT_BZERO");
	char s[] = "Lets try some stuff here";
	char s2[] = "Lets try some stuff here";
	int i = 0;
	while (i < 10)
	{
	bzero(s, i);
	ft_bzero(s2, i);
	if (strcmp(s, s2))
		FAIL(s);
	i++;
	}
		OK;
}
