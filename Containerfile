FROM certbot/certbot

RUN apk add --no-cache certbot-dns-rfc2136 certbot-dns-cloudflare bash

COPY . /app

ENTRYPOINT /app/dane.sh
