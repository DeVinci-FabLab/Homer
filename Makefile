.PHONY: dev
dev:
	@echo "Running project in development mode..."
	docker compose up -d homer-dev

.PHONY: prod
prod:
	@echo "Running project in production mode..."
	docker compose up -d homer-prod

.PHONY: stop
stop:
	@echo "Stopping all containers..."
	docker compose down