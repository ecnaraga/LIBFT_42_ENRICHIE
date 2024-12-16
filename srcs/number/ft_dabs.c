/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_dabs.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: galambey <galambey@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/08/31 13:03:30 by galambey          #+#    #+#             */
/*   Updated: 2023/08/31 14:12:35 by galambey         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

double	ft_dabs(double n)
{
	if (n < 0.0)
		return (-n);
	return (n);
}