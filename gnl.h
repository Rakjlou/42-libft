/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   gnl.h                                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nsierra- <nsierra-@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/12/03 01:43:34 by nsierra-          #+#    #+#             */
/*   Updated: 2021/12/10 05:09:53 by nsierra-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef GNL_H
# define GNL_H

# include <unistd.h>

# ifndef BUFFER_SIZE
#  define BUFFER_SIZE 4096
# endif
# define TRIGGER_C '\n'

typedef struct s_buffer
{
	unsigned int	size;
	unsigned int	start;
	int				eof;
	char			*buffer;
	struct s_buffer	*next;
}	t_buffer;

char		*get_next_line(int fd);
void		free_node(t_buffer *node);
char		*free_all(t_buffer **list);
t_buffer	*next_node(t_buffer *list);
char		*gnl(int fd);

#endif
