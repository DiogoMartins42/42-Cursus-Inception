COMPOSE_SRSC=./srcs/docker-compose.yml
NAME=inception

all: build up

build:
	docker-compose -f $(COMPOSE_SRCS) -p $(NAME) build
up: 
	docker-compose -f $(COMPOSE_SRSC) -p $(NAME) up -d
down: 
	docker-compose -f $(COMPOSE_SRSC) -p $(NAME) down