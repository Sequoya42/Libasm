/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ut_putchar.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rbaum <rbaum@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/30 17:15:42 by rbaum             #+#    #+#             */
/*   Updated: 2015/03/30 18:17:11 by rbaum            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "test.h"

void	ut_putchar(void)
{
	NAME("UT_PUTCHAR");
	printf(NONE "\t\t\n");

	int i = 0;
	char *str = "Putchar fonctionne correctement.\n";
	ft_putchar('\t');
	while (str[i])
	{
		ft_putchar(str[i]);
		i++;
	}
}
