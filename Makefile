.PHONY: dev
dev:
	@echo "Running project in development mode..."
	docker compose up -d -f docker/compose.dev.yml

.PHONY: prod
prod:
	@echo "Running project in production mode..."
	docker compose up -d -f docker/compose.yml

.PHONY: stop
stop:
	@echo "Stopping all containers..."
	cd docker && docker compose down && cd ..