include .env.local

# General Maintenance

tag:
	echo ${TAG}

new-tag:
	echo ${PROJECT_NAME}_$(shell date -u +%Y%m%d).${VERSION}

# Dev

dev-build:
	docker compose -f compose.dev.yml build

dev-build-app:
	docker compose -f compose.dev.yml build api_dev postgres_dev

dev-up:
	docker compose -f compose.dev.yml up -d

dev-down:
	docker compose -f compose.dev.yml down

dev-logs:
	docker compose -f compose.dev.yml logs -f

dev-rebuild: dev-down dev-build dev-up dev-logs

# Test

# Prod
