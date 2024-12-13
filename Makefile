COMPOSE_SRSC=./srcs/docker-compose.yml
NAME=inception

all: build up

build:
	sudo mkdir -p /home/dmanuel-/data/wordpress /home/dmanuel-/data/mariadb
	sudo docker compose -f $(COMPOSE_SRSC) -p $(NAME) build --no-cache
up: 
	sudo docker compose -f $(COMPOSE_SRSC) -p $(NAME) up -d
down: 
	sudo docker compose -f $(COMPOSE_SRSC) -p $(NAME) down
stop:
	sudo docker compose -f $(COMPOSE_SRSC) -p $(NAME) stop
rm: stop
	sudo docker compose -f $(COMPOSE_SRSC) -p $(NAME) rm
rm_vol:
	sudo docker compose -f ./srcs/docker-compose.yml down --volumes
	@sudo rm -rf /home/dmanuel-/data
prune_docker:
	sudo docker system prune