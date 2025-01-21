# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mregrag <mregrag@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/01/19 23:08:09 by mregrag           #+#    #+#              #
#    Updated: 2025/01/21 19:37:41 by mregrag          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


CC = gcc
AS = nasm

ASFLAGS = -f elf64
CFLAGS = -Wall -Wextra -Werror

NAME = libfasm.a

ASM_SRC = ft_write.s ft_strlen.s ft_open.s ft_read.s ft_isdigit.s ft_strcmp.s
C_SRC = main.c

OBJ = $(ASM_SRC:.s=.o) $(C_SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	ar rcs $@ $(OBJ)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

%.o: %.s
	$(AS) $(ASFLAGS) $< -o $@

run_c:
	$(CC) $(CFLAGS) main.c $(NAME) -o run_c && ./run_c

run_s:
	$(AS) $(ASFLAGS) main.s -o main.o
	$(CC) main.o $(NAME) -nostartfiles -o run_s && ./run_s

clean:
	rm -f $(OBJ) $(NAME) run_s run_c

fclean: clean

re: fclean all

