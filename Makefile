db-create:
	@echo "Creating database..."
	@docker-compose exec web bin/rails db:create
db-migrate:
	@echo "Migrating database..."
	@docker-compose exec web bin/rails db:migrate
db-rollback:
	@echo "Rolling back database..."
	@docker-compose exec web bin/rails db:rollback
db-seed:
	@echo "Seeding database..."
	@docker-compose exec web bin/rails db:seed
db-reset:
	@echo "Resetting database..."
	@docker-compose exec web bin/rails db:reset
db-refresh: db-reset db-seed
	@echo "Refreshing database..."
make rails-start:
	@echo "Starting Rails server..."
	@docker-compose exec web /bin/sh -c "rm -f tmp/pids/server.pid && bundle exec rails s -p 3000 -b '0.0.0.0'"
