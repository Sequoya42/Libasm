/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ut_strcat.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rbaum <rbaum@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/31 00:36:57 by rbaum             #+#    #+#             */
/*   Updated: 2015/03/31 01:18:54 by rbaum            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */


#include "test.h"

void	ut_strcat(void)
{
	NAME("UT_STRCAT");

	char *s3;
	char *s4;
	char s[50] = "bonjour";
	char ss[50] = "bonjour";
	char s2[] = " a ta soeur";
	s3 = strcat(s, s2);
	s4 = ft_strcat(ss, s2);
	if (strcmp(s3, s4))
		FAIL(s3);
	OK;
}
