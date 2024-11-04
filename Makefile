COMPOSE_SRSC=./srcs/docker-compose.yml
NAME=inception

all: build up

build:
	sudo docker compose -f $(COMPOSE_SRSC) -p $(NAME) build
up: 
	sudo docker compose -f $(COMPOSE_SRSC) -p $(NAME) up -d
down: 
	sudo docker compose -f $(COMPOSE_SRSC) -p $(NAME) down
stop:
	sudo docker compose -f $(COMPOSE_SRSC) -p $(NAME) stop
rm: stop
	sudo docker compose -f $(COMPOSE_SRSC) -p $(NAME) rm