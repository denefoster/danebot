FROM alpine:3.22.4

RUN apk add --no-cache certbot certbot-dns-rfc2136 \
    certbot-dns-cloudflare bash bind-tools curl

COPY . /app

ENTRYPOINT /app/dane.sh
