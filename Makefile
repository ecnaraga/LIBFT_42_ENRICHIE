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
CC = cc
CFLAGS = -Wall -Wextra -Werror

################################### SOURCES ###################################

PRINT_DIR         =     print/
PRINT_SRCS        =     ft_putchar_fd.c \
                        ft_putstr_fd.c \
                        ft_putendl_fd.c \
                        ft_putnbr_fd.c \
                        get_next_line/get_next_line.c \
                        get_next_line/get_next_line_multiple_fd.c \
                        get_next_line/get_next_line_utils.c \
                        ft_printf/ft_printf.c \
                        ft_printf/do_print.c \
                        ft_printf/manage_arg.c \
                        ft_printf/ft_atoi_printf.c \
                        ft_printf/ft_print_char.c \
                        ft_printf/ft_print_int.c \
                        ft_printf/check_flag.c \
                        ft_printf/ft_print_unsignedint.c \
                        ft_printf/ft_print_lowhexa.c \
                        ft_printf/ft_print_upphexa.c \
                        ft_printf/ft_print_str.c \
                        ft_printf/ft_print_ptr.c

NUMBER_DIR        =     number/
NUMBER_SRCS       =     ft_atoi.c \
                        ft_itoa.c \
                        digit_len.c

STRING_DIR        =     string/
STRING_SRCS       =     ft_strlen.c \
                        ft_strlcpy.c \
                        ft_strcat.c \
                        ft_strlcat.c \
                        ft_strncmp.c \
                        ft_split.c \
                        ft_strjoin.c \
                        ft_toupper.c \
                        ft_tolower.c \
                        ft_strchr.c \
                        ft_strrchr.c \
                        ft_strnstr.c \
                        ft_strtrim.c \
                        ft_substr.c \
                        ft_striteri.c \
                        ft_strmapi.c \
                        ft_is_char.c \
                        ck_char.c \
                        ck_sset.c

TEST_DIR          =     test/
TEST_SRCS         =     ft_isalpha.c \
                        ft_isdigit.c \
                        ft_isalnum.c \
                        ft_isascii.c \
                        ft_isprint.c

MEMMORY_DIR       =     memmory/
MEMMORY_SRCS      =     ft_memset.c \
                        ft_memchr.c \
                        ft_memcpy.c \
                        ft_memcmp.c \
                        ft_bzero.c \
                        ft_memmove.c

ALLOC_DIR         =     alloc/
ALLOC_SRCS        =     ft_calloc.c \
                        ft_strdup.c

LINKED_LIST_DIR   =     linked_list/
LINKED_LIST_SRCS  =     ft_lstadd_front.c \
                        ft_lstnew.c \
                        ft_lstsize.c \
                        ft_lstadd_back.c \
                        ft_lstlast.c \
                        ft_lstdelone.c \
                        ft_lstclear.c \
                        ft_lstiter.c \
                        ft_lstmap.c

############################# HANDLE DIRECTORIES ##############################

SRCS_DIR          =     srcs/

SRCS			=	$(addprefix $(PRINT_DIR), $(PRINT_SRCS)) \
				$(addprefix $(NUMBER_DIR), $(NUMBER_SRCS)) \
				$(addprefix $(STRING_DIR), $(STRING_SRCS)) \
				$(addprefix $(TEST_DIR), $(TEST_SRCS)) \
				$(addprefix $(MEMMORY_DIR), $(MEMMORY_SRCS)) \
				$(addprefix $(ALLOC_DIR), $(ALLOC_SRCS)) \
				$(addprefix $(LINKED_LIST_DIR), $(LINKED_LIST_SRCS))

OBJS_DIR 		= 	.objs/

OBJS_NAMES 		= 	$(SRCS:.c=.o)

OBJS_FOLDER		=	$(addprefix $(OBJS_DIR), $(PRINT_DIR) \
                        $(NUMBER_DIR) \
                        $(STRING_DIR) \
                        $(TEST_DIR) \
                        $(MEMMORY_DIR) \
                        $(ALLOC_DIR) \
                        $(LINKED_LIST_DIR))

OBJS			= $(addprefix $(OBJS_DIR), $(OBJS_NAMES))

DEPS := $(OBJS:.o=.d)

#################################### RULES ####################################

all : $(NAME)

$(NAME) : $(OBJS)
	ar -rcs $@ $(OBJS)

$(OBJS_DIR)%.o:$(SRCS_DIR)%.c
	mkdir -p $(@D)
	$(CC) $(CFLAGS) -c $< -o $@

clean :
	rm -rf $(OBJS_DIR)

fclean :    clean
	      rm -f $(NAME)

re : fclean
	make all

.PHONY :  all bonus clean fclean re