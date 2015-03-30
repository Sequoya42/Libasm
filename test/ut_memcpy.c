/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ut_memcpy.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rbaum <rbaum@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/30 22:17:12 by rbaum             #+#    #+#             */
/*   Updated: 2015/03/30 22:45:16 by rbaum            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "test.h"

void	ut_memcpy(void)
{
	NAME("UT_MEMCPY");
	char s[] = "Ceci est un test voyez vous";
	char s2[] = "Peut etre";

	int i = 0;
	while (i < 20)
	{
		if (memcpy(s, s2, 5) != ft_memcpy(s, s2, 5))
			FAIL(s);
		i++;
	}
	OK;
}
