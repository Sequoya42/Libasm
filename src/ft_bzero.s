;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rbaum <rbaum@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/26 20:11:27 by rbaum             #+#    #+#              ;
;    Updated: 2015/03/27 03:28:56 by rbaum            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

	
	section .text
			global ft_bzero

	ft_bzero:
			cmp		rdi, 0
			je		exit
			dec		rsi
			cmp 	rsi, 0
			jl		exit
			mov		byte[rdi + rsi], 0
			jmp		ft_bzero
	exit:
		ret