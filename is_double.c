/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   is_double.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hezzahir <hamza.ezzahiry@gmail.com>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/01/04 17:52:56 by hezzahir          #+#    #+#             */
/*   Updated: 2020/01/04 17:54:39 by hezzahir         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int		is_double(char *word)
{
	int	i;
	int	nb_point;

	i = 0;
	nb_point = 0;
	if (word[i] == '-' || word[i] == '+')
		i++;
	if (!ft_isdigit(word[i]))
		return (0);
	while (word[i])
	{
		if (ft_isdigit(word[i]) || word[i] == '.')
		{
			if (word[i] == '.')
				nb_point++;
		}
		else
			return (0);
		i++;
	}
	if (word[i - 1] == '.' || nb_point > 1)
		return (0);
	return (1);
}
