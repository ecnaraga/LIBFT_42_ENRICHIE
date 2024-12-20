/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ck_char.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: galambey <galambey@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/06/23 16:18:11 by galambey          #+#    #+#             */
/*   Updated: 2023/06/23 16:18:17 by galambey         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

/*
Return 0 if c is absent in the string
*/
int	ck_char(char *s, char c)
{
	int	i;
	int	count;

	i = -1;
	count = 0;
	if (s)
	{
		while (s[++i])
		{
			if (s[i] == c)
				count++;
		}
	}
	return (count);
}
