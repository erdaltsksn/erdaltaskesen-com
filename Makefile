.POSIX:

.PHONY: help
help: ## Show this help
	@egrep -h '\s##\s' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

.PHONY: init
init: ## Install Node modules
	npm install

.PHONY: run
run: ## Build and run Hugo's own webserver
	make init
	npm run build
	hugo server --bind=0.0.0.0

.PHONY: build
build: ## Build Hugo and get static output
	make init
	npm run build
	hugo
