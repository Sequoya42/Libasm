/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ut_strlen.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rbaum <rbaum@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/30 19:25:03 by rbaum             #+#    #+#             */
/*   Updated: 2015/03/30 20:43:30 by rbaum            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "test.h"

void	ut_strlen(void)
{
	NAME("UT_STRLEN");
	char *s = "Quelle est la longueur de cette chaine ?";
	char *s2 = "et celle-ci ?";
	int i = (int)strlen(s);
	int j = (int)ft_strlen(s);
	if (i != j)
		FAILINT(j);
	 i = (int)strlen(s2);
	 j = (int)ft_strlen(s2);
	 if (i != j)
		 FAILINT(j);
	 OK;
}
