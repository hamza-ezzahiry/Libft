/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   is_color.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hezzahir <hamza.ezzahiry@gmail.com>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/01/04 17:56:21 by hezzahir          #+#    #+#             */
/*   Updated: 2020/01/04 17:57:35 by hezzahir         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int		is_color(char *word)
{
	int	i;

	i = 0;
	if (ft_strlen(word) > 3)
		return (0);
	while (word[i])
	{
		if (!ft_isdigit(word[i]))
			return (0);
		i++;
	}
	if (ft_atoi(word) > 255)
		return (0);
	return (1);
}
