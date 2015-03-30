/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test_if.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rbaum <rbaum@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/27 02:41:15 by rbaum             #+#    #+#             */
/*   Updated: 2015/03/30 20:26:56 by rbaum            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "test.h"

void	test_if(int(*f)(int c), int(*m)(int c))
{
	int	i = -10;
	while (i < 512)
	{
		if (m(i) != f(i))
			FAILINT(i);
		i++;
	}
	OK;
}

void	test_string(int(*f)(char *s), int(*m)(char *s))
{
	char *s1 = "Quelle est la longueur de cette chaine?";
	char *s2 = "Et de celle ci?";
	char *s3 = NULL;
	if (f(s1) != m(s1))
		FAIL(s1);
	if (f(s2) != m(s2))
		FAIL(s2);
	if (f(s3) != m(s3))
		FAIL(s3);
	OK;
}
