/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.h                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rbaum <rbaum@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/27 00:32:20 by rbaum             #+#    #+#             */
/*   Updated: 2015/03/30 23:33:56 by rbaum            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef TEST_H
# define TEST_H

# define BOLD "\033[1m"
# define NONE "\033[0m"
# define CYAN "\033[36;4;1m"
# define BLUE "\033[39;4;1m"
# define GREEN "\033[32m"
# define RED "\033[31m"
# define NC "\033[0m"


#define FAIL(x) printf(RED "\t\tFAILED : "), printf("result: %s\n"NC, x)
#define FAILINT(x) printf(RED"\t\tFAILED: "), printf("result: %d\n"NC, x);
#define NAME(x) printf(CYAN"\n\t\t%s:\t"NC, x);
#define TEST(x) printf(BLUE"\n\t\t%s:\t"NC, x);
#define OK printf(GREEN"OK !\n"NC)

#include "../inc/libftasm.h"
#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <string.h>
#include <ctype.h>

void		ut_bzero(void);


void		ut_isalpha(void);
void		ut_isdigit(void);
void		ut_isalnum(void);
void		ut_isascii(void);
void		ut_isaprint(void);
void		ut_toupper(void);
void		ut_tolower(void);

void		ut_isupper(void);
void		ut_islower(void);

void		ut_putchar(void);
void		ut_strcat(void);
void		ut_strlen(void);
void		ut_memset(void);
void		ut_memcpy(void);
void		ut_puts(void);
void		ut_strdup(void);
void		ut_cat(void);
void		ut_isprint(void);

void		test_if(int(*f)(int c), int(*m)(int c));
void		test_string(int(*f)(char *s), int(*m)(char *s));
#endif

