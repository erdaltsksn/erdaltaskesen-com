.POSIX:

.PHONY: help
help: ## Show this help
	@egrep -h '\s##\s' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

DOCKER_CMD := @docker-compose -f ./docker/docker-compose.dev.yml run --service-ports hugo

.PHONY: hugo
hugo: ## Run Hugo's own webserver
	@docker-compose -f ./docker/docker-compose.dev.yml up --build --force-recreate --remove-orphans

.PHONY: nginx
nginx: ## Serve website with nginx
	@docker-compose -f ./docker/docker-compose.prod.yml up --build --force-recreate --remove-orphans

.PHONY: build
build: ## Build Hugo and get static output
	$(DOCKER_CMD) hugo

.PHONY: post
post: ## Create a new blog post. USAGE: make post title="this-is-awesome"
	$(DOCKER_CMD) hugo new blog/$$(date +%Y-%m-%d)-$(title).md

.PHONY: clean
clean: ## Clean all generated files
	rm -rf ./resources/_gen/
	find ./public/
