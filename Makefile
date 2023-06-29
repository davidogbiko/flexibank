.PHONY: start stop terminate migrateup migratedown

start:
	docker compose up -d

stop:
	docker compose down

terminate:
	docker compose down -v

migrateup:
	migrate -path db/migration -database "postgresql://postgres:supersecuresecret@localhost:5432/flexibank?sslmode=disable" -verbose up

migratedown:
	migrate -path db/migration -database "postgresql://postgres:supersecuresecret@localhost:5432/flexibank?sslmode=disable" -verbose down
