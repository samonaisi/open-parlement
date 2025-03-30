.PHONY: build
build:
	docker compose build

.PHONY: up
up:
	docker compose up

.PHONY: backend-bash
backend-bash:
	docker compose exec -it open-parlement-backend bash
