COMPOSE=srcs/docker-compose.yml
NAME=inception

all:
    build up

build:
    docker-compose -f $(COMPOSE) -p $(NAME) build

up:
    docker-compose -f $(COMPOSE) -p $(NAME) up -d

down:
    docker-compose -f $(COMPOSE) -p $(NAME) down