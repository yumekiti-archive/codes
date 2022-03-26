dc := UID=$(shell id -u) GID=$(shell id -g) UNAME=$(shell echo $$USER) docker compose -f ./docker/docker-compose.yml

.PHONY: up
up:
	mkdir -p workspace
	$(dc) up -d --build

.PHONY: down
down:
	$(dc) down

.PHONY: nvim
nvim:
	$(dc) exec nvim /bin/ash

.PHONY: ide
ide:
	@make up
	@make nvim