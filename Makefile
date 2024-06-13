NAME	=	minishell

SRCS	=	main.c         \
		signals.c      \
		tokenizator.c  \
		cd.c           \
		check_tokens.c \
		builtins.c     \
		env.c          \
		pwd.c          \
		exit.c         \
		export.c       \
		echo.c         \
		errors.c       \
		cleaners.c     \
		number.c       \
		space.c        \
		quote.c        \
		parenthesis.c  \
		spliter.c      \
		split_input.c  \
		unset.c        \
		utils1.c       \
		utils2.c

OBJS	=	$(SRCS:.c=.o)

CC	=	cc

CFLAGS	=	-Wall -Werror -Wextra -ggdb3

RLFLAG	=	-lreadline

RM	=	rm -rf 

all: $(NAME)

$(NAME): $(OBJS)
		$(CC) -o $(NAME) $(OBJS) $(RLFLAG)

.c.o:
		$(CC) $(CFLAGS) -c $<

clean:
		$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
