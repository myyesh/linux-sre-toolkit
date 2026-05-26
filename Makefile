build:
	docker build -t sre-ops-static-site .

run:
	docker compose up -d

stop:
	docker compose down

status:
	docker compose ps

logs:
	docker compose logs

health:
	curl http://localhost:8080

clean:
	docker system prune -f
