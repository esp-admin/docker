# ESP Admin docker

This repo proposes a docker-compose to self-host the application. It uses SQLite for database and filesystem for storage. 

The included services are

- `becemgharbi/esp-admin` to run the full-stack application, [link](https://hub.docker.com/r/becemgharbi/esp-admin).
- `eclipse-mosquitto` to run mqtt broker, [link](https://hub.docker.com/_/eclipse-mosquitto).

## ✍️ Prerequisites

1. Installed docker engine and docker compose.
2. Proxy to expose secure connections (e.g Cloudflare).
   
## ⚙️ Setup

1. Clone this repository.
2. Rename `example.env` to `.env` and set variables.
3. Execute `docker-compose up -d` to start.
4. Run `docker exec -it nuxt npx prisma migrate dev --schema prisma/sql.schema.prisma  --skip-generate` to effect database migration.
5. Set mosquitto password
    - Run `docker exec mosquitto chown root /mosquitto/config/password_file.txt` to set permissions.
   - Run `docker exec mosquitto mosquitto_passwd -c -b /mosquitto/config/password_file.txt {USERNAME} {PASSWORD}` to change password.
6. Restart containers `docker-compose restart`.

## ✨ That's it 
Now the application is running on port `3000` and the mqtt broker on ports `1883` `9001` respectively for MQTT and Websockets connections.
