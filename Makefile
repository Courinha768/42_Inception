all		: up

up		:
	docker compose -f ./srcs/docker-compose.yml up -d

build	:
	docker compose -f ./srcs/docker-compose.yml up --build -d

down	:
	docker compose -f ./srcs/docker-compose.yml down

downv	:
	docker compose -f ./srcs/docker-compose.yml down -v