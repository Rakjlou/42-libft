# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nsierra- <nsierra-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/22 13:56:55 by nsierra-          #+#    #+#              #
#    Updated: 2021/12/02 02:20:53 by nsierra-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

LIBFT_DIR = libft/
LIBFT_SRC = ft_isalpha.c \
	ft_isdigit.c \
	ft_isalnum.c \
	ft_isascii.c \
	ft_isprint.c \
	ft_strlen.c \
	ft_memset.c \
	ft_bzero.c \
	ft_memcpy.c \
	ft_memmove.c \
	ft_strlcpy.c \
	ft_strlcat.c \
	ft_toupper.c \
	ft_tolower.c \
	ft_strchr.c \
	ft_strrchr.c \
	ft_strncmp.c \
	ft_memchr.c \
	ft_memcmp.c \
	ft_strnstr.c \
	ft_atoi.c \
	ft_calloc.c \
	ft_strdup.c \
	ft_substr.c \
	ft_strjoin.c \
	ft_strtrim.c \
	ft_split.c \
	ft_itoa.c \
	ft_strmapi.c \
	ft_striteri.c \
	ft_putchar_fd.c \
	ft_putstr_fd.c \
	ft_putendl_fd.c \
	ft_putnbr_fd.c \
	ft_lstnew.c \
	ft_lstadd_front.c \
	ft_lstsize.c \
	ft_lstlast.c \
	ft_lstadd_back.c \
	ft_lstdelone.c \
	ft_lstclear.c \
	ft_lstiter.c \
	ft_lstmap.c \
	ft_utoa_base.c \
	ft_ltoa_base.c \
	ft_fill_str.c

PRINTF_DIR = printf/
PRINTF_SRC = ft_printf.c \
	utils.c \
	state/state_default.c \
	state/state_conversion_flags.c \
	state/state_conversion_length.c \
	state/state_conversion_precision.c \
	state/state_conversion_print.c \
	state/state_wrong_flag.c \
	conversion/print_character.c \
	conversion/print_string.c \
	conversion/print_pointer.c \
	conversion/print_int.c \
	conversion/print_unsigned_int.c \
	conversion/print_hex_lowercase.c \
	conversion/print_hex_uppercase.c \
	conversion/print_flag.c \

OBJ = $(addprefix $(LIBFT_DIR), $(LIBFT_SRC:.c=.o)) \
	$(addprefix $(PRINTF_DIR), $(PRINTF_SRC:.c=.o))

CC = gcc

CFLAGS = -Wall -Wextra -Werror
IFLAGS = -I.

all: $(NAME)

%.o:%.c
	$(CC) $(CFLAGS) $(IFLAGS) -c $< -o $@

$(NAME): $(OBJ)
	ar rcs  $(NAME) $(OBJ)

clean:
	rm -f $(OBJ) $(OBJ_BONUS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: clean fclean bonus all
