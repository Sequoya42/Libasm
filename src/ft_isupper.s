;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rbaum <rbaum@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/30 16:33:31 by rbaum             #+#    #+#              ;
;    Updated: 2015/03/30 16:47:16 by rbaum            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

	section .text
	global ft_isupper

	ft_isupper:
			mov rax, 1
			cmp rdi, 'A'
			jl fail
			cmp rdi, 'Z'
			jg fail
			ret

	fail:
		mov rax, 0
		ret
	