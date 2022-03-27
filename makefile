dc := UID=$(shell id -u) GID=$(shell id -g) UNAME=$(shell whoami) docker compose -f ./docker/docker-compose.yml

.PHONY: up
up:
	$(dc) up -d --build

.PHONY: down
down:
	$(dc) down
