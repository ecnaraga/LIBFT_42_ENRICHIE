# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: galambey <galambey@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/02 14:09:36 by galambey          #+#    #+#              #
#    Updated: 2023/06/23 16:47:22 by galambey         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
SRC = src/print/ft_putchar_fd.c \
      src/print/ft_putstr_fd.c \
      src/print/ft_putendl_fd.c \
      src/print/ft_putnbr_fd.c \
      src/print/get_next_line/get_next_line.c \
      src/print/get_next_line/get_next_line_multiple_fd.c \
      src/print/get_next_line/get_next_line_utils.c \
	src/print/ft_printf/ft_printf.c \
	src/print/ft_printf/do_print.c \
      src/print/ft_printf/manage_arg.c \
      src/print/ft_printf/ft_atoi_printf.c \
      src/print/ft_printf/ft_print_char.c \
      src/print/ft_printf/ft_print_int.c \
      src/print/ft_printf/check_flag.c \
      src/print/ft_printf/ft_print_unsignedint.c \
      src/print/ft_printf/ft_print_lowhexa.c \
      src/print/ft_printf/ft_print_upphexa.c \
      src/print/ft_printf/ft_print_str.c \
      src/print/ft_printf/ft_print_ptr.c \
      \
      src/number/ft_atoi.c \
      src/number/ft_itoa.c \
      src/number/digit_len.c \
      \
      src/string/ft_strlen.c \
      src/string/ft_strlcpy.c \
      src/string/ft_strcat.c \
      src/string/ft_strlcat.c \
      src/string/ft_strncmp.c \
      src/string/ft_split.c \
      src/string/ft_strjoin.c \
      src/string/ft_toupper.c \
      src/string/ft_tolower.c \
      src/string/ft_strchr.c \
      src/string/ft_strrchr.c \
      src/string/ft_strnstr.c \
      src/string/ft_strtrim.c \
      src/string/ft_substr.c \
      src/string/ft_striteri.c \
      src/string/ft_strmapi.c \
      src/string/ft_is_char.c \
      src/string/ck_char.c \
      src/string/ck_sset.c \
      \
      src/test/ft_isalpha.c \
      src/test/ft_isdigit.c \
      src/test/ft_isalnum.c \
      src/test/ft_isascii.c \
      src/test/ft_isprint.c \
      \
      src/memmory/ft_memset.c \
      src/memmory/ft_memchr.c \
      src/memmory/ft_memcpy.c \
      src/memmory/ft_memcmp.c \
      src/memmory/ft_bzero.c \
      src/memmory/ft_memmove.c \
      \
      src/alloc/ft_calloc.c \
      src/alloc/ft_strdup.c \
      \
      src/linked_list/ft_lstadd_front.c \
      src/linked_list/ft_lstnew.c \
      src/linked_list/ft_lstsize.c \
      src/linked_list/ft_lstadd_back.c \
      src/linked_list/ft_lstlast.c \
      src/linked_list/ft_lstdelone.c \
      src/linked_list/ft_lstclear.c \
      src/linked_list/ft_lstiter.c \
      src/linked_list/ft_lstmap.c
SRC_BONUS = src/linked_list/ft_lstadd_front.c \
	    src/linked_list/ft_lstnew.c \
	    src/linked_list/ft_lstsize.c \
	    src/linked_list/ft_lstadd_back.c \
	    src/linked_list/ft_lstlast.c \
	    src/linked_list/ft_lstdelone.c \
	    src/linked_list/ft_lstclear.c \
	    src/linked_list/ft_lstiter.c \
	    src/linked_list/ft_lstmap.c
OBJS = $(SRC:.c=.o)
OBJS_BONUS = $(SRC_BONUS:.c=.o)
CC = gcc
CFLAGS = -Wall -Wextra -Werror

all : $(NAME)

$(NAME) : $(OBJS)
	ar -rcs $@ $(OBJS)

%.o:%.c
	$(CC) $(CFLAGS) -c $< -o $@

bonus : $(OBJS_BONUS)
	ar -rcs $(NAME) $(OBJS_BONUS)
          
clean :
	rm -f $(OBJS) $(OBJS_BONUS)

fclean : clean
	rm -f $(NAME)

re : fclean
	make all

.PHONY :  all bonus clean fclean re