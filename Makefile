.POSIX:

.PHONY: help
help: ## Show this help
	@egrep -h '\s##\s' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

.PHONY: init
init: ## Install Node modules
	npm install

.PHONY: fmt
fmt: ## Run csscomb, sass, autoprefixer, cleancss and more
	make init
	npm run build

.PHONY: run
run: ## Build and run Hugo's own webserver
	make fmt
	hugo server --bind=0.0.0.0

.PHONY: build
build: ## Build Hugo and get static output
	make fmt
	hugo

.PHONY: clean
clean: ## Clean all generated files
	rm -rf ./node_modules/
	rm -rf ./resources/_gen/
	rm -rf ./static/styles/
	rm -rf ./package-lock.json
	find ./public/ ! -name "public" ! -name "_redirects" | xargs rm -rf
