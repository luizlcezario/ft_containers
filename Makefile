NAME			=	ft_containers
CC				=	c++
CFLAGS			=	-Wall -Wextra -Werror -std=c++98 -g3

HEADER			=	-I ./header 

CLASS			= 	Stack.cpp

SRC				=	main.cpp $(addprefix class/, $(CLASS))

SOURCES_DIR		=	./

OBJ_DIR			=	obj

SOURCES			=	$(addprefix $(SOURCES_DIR)/, $(SRC))

OBJS			=	$(SOURCES:$(SOURCES_DIR)/%.cpp=$(OBJ_DIR)/%.o)

$(OBJ_DIR)/%.o:		$(SOURCES_DIR)/%.cpp
					$(CC) $(CFLAGS) $(HEADER) -c $< -o $@

all:				$(NAME)

$(NAME):			$(OBJ_DIR) $(OBJS)
					$(CC) $(CFLAGS) $(HEADER) $(OBJS) -o $(NAME)

$(OBJ_DIR):
					mkdir -p $(OBJ_DIR)
					mkdir -p $(addprefix $(OBJ_DIR)/, class)

clean:
					rm -rf $(OBJ_DIR)

fclean:				clean
					rm -rf $(NAME)

re:					fclean all

.PHONY:				all clean fclean re