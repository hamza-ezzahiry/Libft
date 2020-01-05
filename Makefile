# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hezzahir <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/11/08 15:00:21 by hezzahir          #+#    #+#              #
#    Updated: 2018/11/16 02:26:02 by hezzahir         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hezzahir <hezzahir@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/11/08 15:00:21 by hezzahir          #+#    #+#              #
#    Updated: 2020/01/04 20:35:13 by hezzahir         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

HEAD = libft.h

SRC = ft_atoi.c ft_bzero.c ft_isalnum.c ft_isalpha.c ft_isascii.c \
	ft_isdigit.c ft_islower.c ft_isnegative.c ft_isprint.c \
	ft_isupper.c ft_itoa.c ft_lstadd.c ft_lstdel.c ft_lstdelone.c \
	ft_lstiter.c ft_lstmap.c ft_lstnew.c ft_memalloc.c ft_memccpy.c \
	ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memdel.c ft_memmove.c \
	ft_memset.c ft_putchar.c ft_putchar_fd.c ft_putendl.c ft_putendl_fd.c \
	ft_putnbr.c ft_putnbr_fd.c ft_putstr.c ft_putstr_fd.c ft_sqrt.c \
	ft_strchr.c ft_strclr.c ft_strcmp.c ft_strcpy.c ft_strdel.c \
	ft_strequ.c ft_striter.c ft_striteri.c ft_strjoin.c ft_strlcat.c \
	ft_strmap.c ft_strmapi.c ft_strncat.c ft_strncmp.c ft_strncpy.c \
	ft_strnew.c ft_strnstr.c ft_strrchr.c ft_strsplit.c ft_strstr.c \
	ft_strsub.c ft_strtrim.c ft_swap.c ft_tolower.c ft_strlen.c \
	ft_toupper.c ft_strdup.c ft_strcat.c ft_strnequ.c get_next_line.c \
	is_int.c is_double.c is_color.c

all: $(NAME)

$(NAME):
	@gcc -I$(HEAD) -Wall -Werror -Wextra -c $(SRC)
	@ar rcs $(NAME) *.o
	@echo "Compilation libft: \033[1;32mOK\033[m"
clean:
	/bin/rm -rf *.o
fclean: clean
	/bin/rm -f $(NAME)
re: fclean all

