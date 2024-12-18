/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atoi_handle_overflow.c                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: galambey <galambey@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/05/02 12:11:56 by galambey          #+#    #+#             */
/*   Updated: 2024/04/02 16:21:20 by galambey         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../includes/libft.h"

static void	ft_init_var(int *a, int *b, long int *c, int *d)
{
	*a = 0;
	*b = 1;
	*c = 0;
	*d = 0;
}

int	ft_atoi_handle_overflow(const char *nptr, int *err)
{
	int			i;
	int			s;
	long int	result;
	int			digit;

	ft_init_var(&i, &s, &result, &digit);
	while ((nptr[i] >= '\t' && nptr[i] <= '\r') || nptr[i] == ' ')
		i++;
	if (nptr[i] == '+' || nptr[i] == '-')
	{
		if (nptr[i] == '-')
			s = -s;
		i++;
	}
	while (nptr[i] == '0')
		i++;
	while (nptr[i] >= '0' && nptr[i] <= '9')
	{
		result = result * 10 + nptr[i] - '0';
		digit++;
		i++;
	}
	if (digit > 10 || result > INT_MAX || result < INT_MIN)
		*err = 1;
	return ((int)result * s);
}
