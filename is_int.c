/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   is_int.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hezzahir <hamza.ezzahiry@gmail.com>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/01/04 17:52:16 by hezzahir          #+#    #+#             */
/*   Updated: 2020/01/04 17:54:50 by hezzahir         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int		is_int(char *word)
{
	int	i;

	i = 0;
	if (word[i] == '-' || word[i] == '+')
		i++;
	while (word[i])
	{
		if (!ft_isdigit(word[i]))
			return (0);
		i++;
	}
	return (1);
}
