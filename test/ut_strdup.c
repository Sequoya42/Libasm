/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ut_strdup.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rbaum <rbaum@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/30 23:12:07 by rbaum             #+#    #+#             */
/*   Updated: 2015/03/30 23:43:18 by rbaum            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "test.h"

void	ut_strdup(void)
{
	NAME("UT_STRDUP");

	char s[] = "Unicorns have feelings too you know ! ..\n";
	char *ss = "deuxieme chaine juste pour le fun";
	char *s2;
	char *s3;


	s3 = strdup(s);
	s2 = ft_strdup(s);
	if (strcmp(s2, s3))
		FAIL(s2);

	s3 = ft_strdup(ss);
	s2 = strdup(ss);
	if (strcmp(s2, s3))
		FAIL(s2);
	OK;
}
