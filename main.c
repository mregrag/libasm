/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mregrag <mregrag@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/01/19 23:09:44 by mregrag           #+#    #+#             */
/*   Updated: 2025/01/21 17:20:15 by mregrag          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <unistd.h>
#include <ctype.h>

size_t ft_strlen(const char *str);
size_t ft_write(int fd, const void *buf, size_t count);
int	ft_isdigit(int c);



int main()
{


    ft_write(1, "Hello world\n", 12);
    printf("isdigit = %d\n", ft_isdigit(1));
    printf("isdigit = %d\n", isdigit(1));
    return (0);
}


