# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eej-jama <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/05 15:26:11 by eej-jama          #+#    #+#              #
#    Updated: 2022/11/06 18:25:57 by eej-jama         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
CFLAGS = -Wall -Wextra -Werror

SRC = ft_printf.c ft_putchar.c  ft_putstr.c\
		ft_putnbr.c ft_putnbr_u.c ft_strlen.c  dec_to_hex.c hex_pointer.c

OBJ = ft_printf.o ft_putchar.o  ft_putstr.o\
		ft_putnbr.o ft_putnbr_u.o ft_strlen.o dec_to_hex.o hex_pointer.o

all : $(NAME)

$(NAME) : $(OBJ)
	ar -rc $(NAME) $(OBJ)

clean :
	rm -f $(OBJ)

fclean : clean
	rm -f $(NAME)

re : fclean all
