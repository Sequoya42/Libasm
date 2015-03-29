;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_toupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rbaum <rbaum@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/30 00:17:30 by rbaum             #+#    #+#              ;
;    Updated: 2015/03/30 00:25:16 by rbaum            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

	section .text
	global	ft_toupper

	ft_toupper:
			mov rax, rdi
			cmp rdi, 'a'
			jl fail
			cmp rdi, 'z'
			jg fail
			sub rax, 32
			ret

	fail:
		ret