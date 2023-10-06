setup:
	@make build
	@make up

build:
	docker-compose build --no-cache --force-rm

up: 
	docker-compose up -d

inspect:
	docker inspect --format '{{ .NetworkSettings.IPAddress }}' laravel-php8

down: 
	docker-compose stop

composer-update:
	docker exec laravel-php8 bash -c "composer update"

container:
	docker exec -it laravel-php8 bash

data:
	docker exec laravel-php8 bash -c "php artisan migrate"
	docker exec laravel-php8 bash -c "php artisan db:seed"