/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ut_puts.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rbaum <rbaum@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/31 02:47:32 by rbaum             #+#    #+#             */
/*   Updated: 2015/03/31 03:21:42 by rbaum            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "test.h"

void	ut_puts(void)
{
	ft_puts(CYAN"\t\tUT_PUTS:\n"NONE);
	char s[] = "The obvious is that which is never seen until someone expresses it simply";
	char s2[] = "Khalil Gibran";
	char *s3 = NULL;
	if (puts(s) != ft_puts(s))
		FAIL(s);
	else if (puts(s2) != ft_puts(s2))
		FAIL(s2);
	else if (puts(s3) != ft_puts(s3))
		FAIL(s3);
	else
		ft_puts(GREEN"\t\tOK"NONE);
}
