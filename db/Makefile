

DockerFile = "dockerCompose.yml"

.PHONY: db-up
db-up: 
	docker compose -f $(DockerFile) up -d

.PHONY: db-down
db-down:
	docker compose -f $(DockerFile) down