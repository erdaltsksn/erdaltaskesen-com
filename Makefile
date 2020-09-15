.POSIX:

.PHONY: help
help: ## Show this help
	@egrep -h '\s##\s' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

DOCKER_CMD := @docker-compose run --service-ports hugo

.PHONY: init
init: ## Install Node modules
	$(DOCKER_CMD) npm install

.PHONY: fmt
fmt: ## Run csscomb, sass, autoprefixer, cleancss and more
	make init
	$(DOCKER_CMD) npm run build

.PHONY: run
run: ## Run Hugo's own webserver
	make fmt
	$(DOCKER_CMD) hugo server --bind=0.0.0.0

.PHONY: build
build: ## Build Hugo and get static output
	make fmt
	$(DOCKER_CMD) hugo

.PHONY: post
post: ## Create a new blog post. USAGE: make blog title="this-is-awesome"
	$(DOCKER_CMD) hugo new blog/$$(date +%Y-%m-%d)-$(title).md

.PHONY: clean
clean: ## Clean all generated files
	rm -rf ./node_modules/
	rm -rf ./resources/_gen/
	rm -rf ./static/styles/
	rm -rf ./package-lock.json
	find ./public/ ! -name "public" ! -name "_redirects" | xargs rm -rf
