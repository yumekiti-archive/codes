UNAME := $(shell whoami)
dc := UNAME=$(UNAME) docker compose -f ./docker/docker-compose.yml

.PHONY: up
up:
	$(dc) up -d --build

.PHONY: down
down:
	$(dc) down

.PHONY: restart
restart:
	@make down
	@make up

.PHONY: logs
logs:
	$(dc) logs

.PHONY: code
code:
	$(dc) exec code /bin/bash

.PHONY: extension
extension:
	bash ./docker/extension.sh