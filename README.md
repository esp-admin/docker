# ESP Admin docker

This repo proposes a docker-compose to self-host the application. The included services are

- `becemgharbi/esp-admin` to run the full-stack application, [link](https://hub.docker.com/r/becemgharbi/esp-admin).
- `mongo` to run a mongodb instance with replica set for Prisma support, [link](https://hub.docker.com/_/mongo).
- `cloudflare/cloudflared` to proxy the application on Cloudflare edges with SSL termination, [link](https://hub.docker.com/r/cloudflare/cloudflared/tags).

## Prerequisites

1. Website on Cloudflare.
2. Installed Docker and docker-compose
3. Application server and MQTT broker have the same certificate authority (e.g Let's Encrypt).

## Setup

1. Configure [Cloudflare tunnel](https://github.com/cloudflare/cloudflared) to expose `http://nuxt:3000`.
2. Clone this repository.
3. Rename `example.env` to `.env` and set variables.
4. Execute `docker-compose up -d` to start.
5. Run `docker exec -it nuxt npx prisma db push --skip-generate` to effect database migration.
6. Restart containers `docker-compose restart`.
