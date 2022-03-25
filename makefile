dc := docker compose -f ./docker/docker-compose.yml

.PHONY: up
up:
	$(dc) up -d --build

.PHONY: nvim
nvim:
	$(dc) exec nvim /bin/bash

.PHONY: ide
ide:
	@make up
	@make nvim