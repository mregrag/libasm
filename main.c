/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mregrag <mregrag@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/01/19 23:09:44 by mregrag           #+#    #+#             */
/*   Updated: 2025/01/21 19:39:10 by mregrag          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <unistd.h>

size_t ft_strlen(const char *str);
size_t ft_write(int fd, const void *buf, size_t count);
int	ft_isdigit(int c);
int	ft_open(const char *pathname, int flags);
int	ft_open(const char *pathname, int flags);
int	ft_strcmp(const char *s1, const char *s2);



int main()
{
    printf("%zu = \n", ft_write(-1, "Hello world\n", 12));
    printf("isdigit = %d\n", ft_isdigit(1));
    printf("strcmp = %d\n", ft_strcmp("abcd", "abcd"));
    return (0);
}


