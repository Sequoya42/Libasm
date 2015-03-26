;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: rbaum <rbaum@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/26 20:11:27 by rbaum             #+#    #+#              ;
;    Updated: 2015/03/26 23:58:18 by rbaum            ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

	
	section .text
			global ft_bzero

	ft_bzero:
			dec		rsi
			cmp 	rsi, 0
			jl		exit
			mov		byte[rdi + rsi], 0
			jmp		ft_bzero
	exit:
		ret