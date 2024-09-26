
all: up

up: 
	@docker-compose -f ./srcs/docker-compose.yml up --build

down:
	@docker-compose -f ./srcs/docker-compose.yml down

re:
	@docker-compose -f ./srcs/docker-compose.yml up --build --no-cache

clean:
	@docker stop $$(docker ps -qa)
	docker rm $$(docker ps -qa)
	docker rmi -f $$(docker images -qa)
	docker volume rm $$(docker volume ls -q)

# docker system prune -a

.PHONY: all re down clean
