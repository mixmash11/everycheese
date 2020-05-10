# dev_migrate.sh
# makes migrations and executes them on the dev compose
docker-compose -f docker-compose.dev.yml exec web python manage.py makemigrations
docker-compose -f docker-compose.dev.yml exec web python manage.py migrate
./fix_permissions.sh
