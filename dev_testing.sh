# Run testing and coverage
docker-compose -f docker-compose.dev.yml exec web coverage run -m pytest
docker-compose -f docker-compose.dev.yml exec web coverage report
docker-compose -f docker-compose.dev.yml exec web coverage html
chromium-browser htmlcov/index.html
