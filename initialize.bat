docker run --rm -it -w /app -v %cd%:/app travix/base-alpine-git git clone https://github.com/laravel/laravel.git

copy laravel\.env.example laravel\.env

docker run --rm -v %cd%\laravel:/app composer/composer install

docker-compose up -d
docker-compose exec app php artisan key:generate