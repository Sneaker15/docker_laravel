git clone https://github.com/laravel/laravel.git
copy laravel\.env.example laravel\.env

docker run --rm -v %cd%\laravel:/app composer/composer install

docker-compose up -d
