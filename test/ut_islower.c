/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ut_islower.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rbaum <rbaum@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/30 16:49:19 by rbaum             #+#    #+#             */
/*   Updated: 2015/03/30 16:49:48 by rbaum            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "test.h"

void	ut_islower(void)
{
	NAME("UT_ISLOWER");
	test_if(islower, ft_islower);
}