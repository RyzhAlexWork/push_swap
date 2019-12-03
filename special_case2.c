/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   special_case2.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jbowen <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/11/24 00:28:53 by jbowen            #+#    #+#             */
/*   Updated: 2019/11/24 00:28:55 by jbowen           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

void	case_for_five(t_list **stack_a, t_list **stack_b, int i, t_main *l_main)
{
	while (i < 2)
	{
		if ((*stack_a)->order < l_main->next + 2)
		{
			ft_push_b(stack_a, stack_b);
			i++;
			write(1, "pb\n", 3);
		}
		else
		{
			ft_rotate_a(stack_a);
			write(1, "ra\n", 3);
		}
	}
	case_for_three(stack_a, l_main->next + 1);
	ft_push_a(stack_a, stack_b);
	ft_push_a(stack_a, stack_b);
	write(1, "pa\npa\n", 6);
	if ((*stack_a)->order == 2)
	{
		ft_swap_a(stack_a);
		write(1, "sa\n", 3);
	}
}
