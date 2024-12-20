/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: galambey <galambey@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/05/06 10:34:22 by garance           #+#    #+#             */
/*   Updated: 2023/06/23 16:34:04 by galambey         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_H
# define LIBFT_H

# include <stdio.h>
# include <stdlib.h>
# include <string.h>
# include <unistd.h>
# include <fcntl.h>
# include <limits.h>
# include <stdint.h>

# ifndef BUFFER_SIZE
#  define BUFFER_SIZE 50
# endif

/*ALLOC*/
char				*ft_strdup(const char *s);
void				*ft_calloc(size_t nmemb, size_t size);

/*LINKED-_LIST*/
typedef struct s_list
{
	void			*content;
	struct s_list	*next;
}					t_list;

void				ft_lstadd_front(t_list **lst, t_list *new);
t_list				*ft_lstnew(void *content);
void				ft_lstadd_back(t_list **lst, t_list *new);
t_list				*ft_lstlast(t_list *lst);
void				ft_lstdelone(t_list *lst, void (*del)(void *));
void				ft_lstclear(t_list **lst, void (*del)(void *));
int					ft_lstsize(t_list *lst);
void				ft_lstiter(t_list *lst, void (*f)(void *));
t_list				*ft_lstmap(t_list *lst, void *(*f)(void *),
						void (*del)(void *));

/*DOUBLE_LINKED_LIST*/
typedef struct s_lst_two
{
	struct s_lst_two	*prev;
	void				*data;
	struct s_lst_two	*next;
}						t_lst_two;

typedef struct s_cont
{
	t_lst_two			*first;
	t_lst_two			*last;
	int					size;
}						t_cont;

t_lst_two				*lst_two_addnew(void *data);
void					lst_two_addback(t_cont *cont, t_lst_two *new);
int						lst_two_size(t_cont *cont);
void					lst_two_clear(t_lst_two **lst, void (*del)(void *));
void					lst_two_delone(t_lst_two *lst, void (*del)(void *));
void					lst_two_iter(t_cont *cont, void (*f)(void *));
t_cont					lst_two_map(t_cont cont, void *(*f)(void *),
							void (*del)(void *));

/*NUMBER*/
int					ft_atoi(const char *nptr);
int					ft_atoi_handle_overflow(const char *nptr, int *err);
char				*ft_itoa(int n);
void				digit_len(unsigned int *n, int *count, unsigned int base);
void				ft_swap_int(int *a, int *b);
int					ft_abs(int n);
double				ft_dabs(double n);
float				ft_fabs(float n);
int					ft_sign(int n);

/*MEMMORY*/
void				*ft_memset(void *s, int c, size_t n);
void				*ft_memchr(const void *s, int c, size_t n);
void				*ft_memcpy(void *dest, const void *src, size_t n);
int					ft_memcmp(const void *s1, const void *s2, size_t n);
void				ft_bzero(void *s, size_t n);
void				*ft_memmove(void *dest, const void *src, size_t n);

/*PRINT*/
void				ft_putchar_fd(char c, int fd);
void				ft_putstr_fd(char *s, int fd);
void				ft_putendl_fd(char *s, int fd);
void				ft_putnbr_fd(int n, int fd);

/*STRING*/
size_t				ft_strlen(const char *s);
size_t				ft_strlen_afr_char(const char *str, char c);
size_t				ft_strlen_bfr_char(const char *str, char c);
int					ft_arraylen(char **array);
char				*ft_strcpy(char *dst, const char *src);
size_t				ft_strlcpy(char *dst, const char *src, size_t size);
char				*ft_strcat(char *dst, const char *src);
size_t				ft_strlcat(char *dst, const char *src, size_t size);
int					ft_strcmp(const char *s1, const char *s2);
int					ft_strncmp(const char *s1, const char *s2, size_t n);
char				**ft_split(char const *s, char c);
char				**ft_split_iss(char const *s);
void				*ft_free_split(char **strs);
char				*ft_strjoin(char const *s1, char const *s2);
char				*ft_strjoin_aftr_char(char const *s1, char const *s2, char c);
char				*ft_strjoin_bfr_char(char const *s1, char const *s2, char c);
char				*ft_strjoin_char(char const *s1, char c);
char				*ft_strtrim(char const *s1, char const *set);
char				*ft_strtrim_except_tips(char const *s1, char const *set, int rule);
char				*ft_strtrim_exept_set(char const *s1, char const *set);
char				*ft_substr(char const *s, unsigned int start, size_t len);
void				ft_striteri(char *s, void (*f)(unsigned int, char *));
char				*ft_strmapi(char const *s, char (*ft)(unsigned int, char));
char				*ft_strchr(const char *s, int c);
char				*ft_strrchr(const char *s, int c);
char				*ft_strnstr(const char *big, const char *little,
						size_t len);
int					ft_is_char(char *buffer, char c);
int					ck_char(char *s, char c);
int					ck_sset(char *s, char *set);
char				*ft_random_string(int n);
void				ft_replace_char(char *str, char to_replace, char new);

/*FILE*/
char				*ft_random_filename(char *path, int n);

/*TEST*/
int					ft_isalpha(int c);
int					ft_islower(int c);
int					ft_isupp(int c);
int					ft_isdigit(int c);
int					ft_isalnum(int c);
int					ft_isascii(int c);
int					ft_isprint(int c);
int					ft_toupper(int c);
int					ft_tolower(int c);
#endif
