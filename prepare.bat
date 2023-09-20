mkdir mongodb
docker-compose up -d
docker exec -it nuxt npx prisma db push --skip-generate

docker-compose stop
pause