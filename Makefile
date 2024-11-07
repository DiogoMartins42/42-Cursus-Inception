COMPOSE_SRSC=./srcs/docker-compose.yml
NAME=inception

all: build up

build:
	sudo mkdir -p /home/dmanuel-/data/{wordpress,mariadb}
	sudo chown -R 1000:1000 /home/dmanuel-/data/{wordpress,mariadb}
	sudo docker compose -f $(COMPOSE_SRSC) -p $(NAME) build
up: 
	sudo docker compose -f $(COMPOSE_SRSC) -p $(NAME) up -d
down: 
	sudo docker compose -f $(COMPOSE_SRSC) -p $(NAME) down
stop:
	sudo docker compose -f $(COMPOSE_SRSC) -p $(NAME) stop
rm: stop
	sudo docker compose -f $(COMPOSE_SRSC) -p $(NAME) rm