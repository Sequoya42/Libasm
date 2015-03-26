/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rbaum <rbaum@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/26 22:36:47 by rbaum             #+#    #+#             */
/*   Updated: 2015/03/26 23:29:54 by rbaum            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "inc/libftasm.h"
#include <stdio.h>

int		main(void)
{
	char s[] = "bonjour";
	printf("%s\n", s);
	ft_bzero(s, 5);
	printf("%s\n", s);
	printf("succed");
	return (0);
}
