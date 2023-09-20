# ESP Admin docker
This repo proposes a docker-compose to self-host the application. The included services are
- `becemgharbi/esp-admin` https://hub.docker.com/r/becemgharbi/esp-admin
- `bitnami/mongodb` https://hub.docker.com/r/bitnami/mongodb
- `cloudflare/cloudflared` https://hub.docker.com/r/cloudflare/cloudflared/tags

## Setup
1. Configure [Cloudflare tunnel](https://github.com/cloudflare/cloudflared) to expose `http://nuxt:3000`.
2. Clone this repository.
3. Rename `example.env` to `.env` and set variables.
4. Execute `prepare.bat` to run db migration.
5. Execute `start.bat` to start containers.