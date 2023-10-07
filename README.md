# ESP Admin docker

This repo proposes a docker-compose to self-host the application. The included services are

- `becemgharbi/esp-admin` to run the full-stack application, [link](https://hub.docker.com/r/becemgharbi/esp-admin).
- `mongo` to run a mongodb instance with replica set for Prisma support, [link](https://hub.docker.com/_/mongo).
- `eclipse-mosquitto` to run mqtt broker, [link](https://hub.docker.com/_/eclipse-mosquitto).

## Prerequisites

1. Installed docker engine and docker compose.
2. Proxy to expose secure connections (e.g Cloudflare).

## Setup

1. Clone this repository.
2. Rename `example.env` to `.env` and set variables.
3. Execute `docker-compose up -d` to start.
4. Run `docker exec -it nuxt npx prisma db push --skip-generate` to effect database migration.
5. Set mosquitto password via `posquitto-pw.bat`.
6. Restart containers `docker-compose restart`.
