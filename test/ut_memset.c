/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ut_memset.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rbaum <rbaum@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/30 20:33:09 by rbaum             #+#    #+#             */
/*   Updated: 2015/03/30 22:06:09 by rbaum            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "test.h"

void	ut_memset(void)
{
	NAME("UT_MEMSET");
	int i;

	i = 0;
	char s[] = "Ceci est une chaine sans aucun sens";
	char s2[] = "Ceci est un autre test";
	while (i < 10)
	{
 		if (memset(s, i + 50, i) != ft_memset(s, i + 50, i)) 
 			FAIL(s); 

		if (memset(s2, i +  59, i) != ft_memset(s2, i + 59, i))
			FAIL(s);
		i++;
	}
		OK;
}
