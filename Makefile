.POSIX:

.PHONY: help
help: ## Show this help
	@egrep -h '\s##\s' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

.PHONY: install
install: ## Install Node modules
	npm install

.PHONY: run
run: ## Build and run Hugo's own webserver
	npm install
	npm run build
	hugo server

.PHONY: build
build: ## Build Hugo and get static output
	npm install
	npm run build
	hugo
