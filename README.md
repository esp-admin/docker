# ESP Admin docker
This repo proposes a docker-compose to self-host the application. The included services are
- `becemgharbi/esp-admin` to run the full-stack application, [link](https://hub.docker.com/r/becemgharbi/esp-admin).
- `mongo` to run a mongodb instance with replica set for Prisma support, [link](https://hub.docker.com/_/mongo).
- `cloudflare/cloudflared` to proxy the application on Cloudflare edges with SSL termination, [link](https://hub.docker.com/r/cloudflare/cloudflared/tags).

## Prerequisites
- Website on Cloudflare with nameservers. Make sure the certificate authority is Let's Encrypt.
- Installed Docker and docker-compose
- S3 compatible object storage server such as Cloudflare R2.
- Email provider account, can be Sendgrid or Resend.
- Secure MQTT broker such as HiveMQ cloud. Make sure the certificate authority is Let's Encrypt.

## Setup
1. Configure [Cloudflare tunnel](https://github.com/cloudflare/cloudflared) to expose `http://nuxt:3000`.
2. Clone this repository.
3. Rename `example.env` to `.env` and set variables.
4. Execute `docker-compose up -d` to start.
5. Run `docker exec -it nuxt npx prisma db push --skip-generate` to effect database migration.
6. Restart containers `docker-compose restart`.
