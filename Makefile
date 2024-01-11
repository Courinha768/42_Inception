all		: up scipt

up		:
	@DOCKER_BUILDKIT=0 docker compose -f ./srcs/docker-compose.yml up -d

build	:
	@DOCKER_BUILDKIT=0 docker compose -f ./srcs/docker-compose.yml up --build -d

down	:
	@docker compose -f ./srcs/docker-compose.yml down

downv	:
	@docker compose -f ./srcs/docker-compose.yml down -v

r		: downv build

scipt	:
	@echo "\e[1;31m"
	@echo "    _____   __________________  ______________  _   __"
	@echo "   /  _/ | / / ____/ ____/ __ \/_  __/  _/ __ \/ | / /"
	@echo "   / //  |/ / /   / __/ / /_/ / / /  / // / / /  |/ / "
	@echo " _/ // /|  / /___/ /___/ ____/ / / _/ // /_/ / /|  /  "
	@echo "/___/_/ |_/\____/_____/_/     /_/ /___/\____/_/ |_/   "
	@echo "\e[0m"