# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mregrag <mregrag@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/01/19 23:08:09 by mregrag           #+#    #+#              #
#    Updated: 2025/01/21 17:14:09 by mregrag          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


CC = gcc
AS = nasm

ASFLAGS = -f elf64
CFLAGS = -Wall -Wextra -Werror

NAME = libfasm.a

ASM_SRC = ft_write.s ft_strlen.s ft_open.s ft_read.s ft_isdigit.s
C_SRC = main.c

OBJ = $(ASM_SRC:.s=.o) $(C_SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	ar rcs $@ $(OBJ)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

%.o: %.s
	$(AS) $(ASFLAGS) $< -o $@

run:
	$(CC) $(CFLAGS) main.c $(NAME) -o run && ./run

clean:
	rm -f $(OBJ) $(NAME) run

fclean: clean

re: fclean all

