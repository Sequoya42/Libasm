/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.h                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rbaum <rbaum@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/27 00:32:20 by rbaum             #+#    #+#             */
/*   Updated: 2015/03/27 00:35:35 by rbaum            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef TEST_H
# define TEST_H

# define C_BOLD "\033[1m"
# define C_NONE "\033[0m"
# define C_CYAN "\033[36m"
# define C_RED "\033[31m"
# define C_UNDER "\033[4m"

#include "../inc/libftasm.h"
#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <string.h>
#include <ctype.h>

void		ut_bzero(void);
void		ut_strcat(void);
void		ut_isalpha(void);
void		ut_isdigit(void);
void		ut_isalnum(void);
void		ut_isascii(void);
void		ut_isaprint(void);
void		ut_put(void);
void		ut_toupper(void);
void		ut_tolower(void);
void		ut_strlen(void);
void		ut_memset(void);
void		ut_memcpy(void);
void		ut_puts(void);
void		ut_strdup(void);
void		ut_cat(void);
void		ut_isprint(void);

#endif

