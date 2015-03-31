/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ut_cat.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rbaum <rbaum@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/31 02:14:36 by rbaum             #+#    #+#             */
/*   Updated: 2015/03/31 02:44:59 by rbaum            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "test.h"

void	ut_cat(void)
{
	puts(CYAN"\n\t\tUT_CAT:\n"NONE);
	printf(NONE);

	int fd2;

	fd2 = open("test.h", O_RDONLY);
	printf(NONE);
	puts(BLUE"\n\t\tfd = test.h\n"NONE);
	ft_cat(fd2);
	ft_cat(-1);
	puts(BLUE"\n\t\tentree standard\n"NONE);
	ft_cat(0);
}
