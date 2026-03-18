FROM certbot/certbot

RUN apk add --no-cache certbot certbot-dns-rfc2136 certbot-dns-cloudflare bash bind-tools

COPY . /app

ENTRYPOINT /app/dane.sh
