.PHONY: up down restart logs help

help:
	@echo "Available commands:"
	@echo "  make up       - Start Docker Compose services"
	@echo "  make down     - Stop Docker Compose services"
	@echo "  make restart  - Restart Docker Compose services"
	@echo "  make logs     - View Docker Compose logs"
	@echo "  make build    - Build Docker images"

up:
	docker-compose up -d
	@echo "Docker Compose services started"

down:
	docker-compose down
	@echo "Docker Compose services stopped"

restart: down up
	@echo "Docker Compose services restarted"

logs:
	docker-compose logs -f

build:
	docker-compose build
	@echo "Docker images built"
