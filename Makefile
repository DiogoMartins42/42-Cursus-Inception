COMPOSE_SRSC=./srcs/docker-compose.yml
NAME=inception

all: build up

build:
	mkdir -p /home/vboxuser/data/database
	mkdir -p /home/vboxuser/data/wordpress_files
	sudo chmod -R 777 /home/vboxuser/data
	sudo docker compose -f $(COMPOSE_SRSC) -p $(NAME) build --no-cache
	@sudo grep -Fq "dmanuel-.42.fr" /etc/hosts || sudo sed -i '/127\.0\.0\.1/ s/$$/ dmanuel-.42.fr/' /etc/hosts
up: 
	sudo docker compose -f $(COMPOSE_SRSC) -p $(NAME) up -d
down: 
	sudo docker compose -f $(COMPOSE_SRSC) -p $(NAME) down -v
stop:
	sudo docker compose -f $(COMPOSE_SRSC) -p $(NAME) stop
rm: stop
	sudo docker compose -f $(COMPOSE_SRSC) -p $(NAME) rm
rm_vol:
	sudo docker compose -f ./srcs/docker-compose.yml down --volumes
	@sudo rm -rf /home/dmanuel-/data
prune_docker:
	sudo docker system prune
delete_volumes:
	sudo docker compose -f ./srcs/docker-compose.yml down --volumes
	@sudo rm -rf /home/vboxuser/data
fclean:
	@docker stop $$(docker ps -aq) 2>/dev/null || true
	@docker rm -f $$(docker ps -aq) 2>/dev/null || true
	@docker rmi -f $$(docker images -aq) 2>/dev/null || true
	@docker volume rm $$(docker volume ls -q) 2>/dev/null || true
	@docker network rm $$(docker network ls -q) 2>/dev/null || true
	@docker system prune -a --volumes --force

re: fclean all

