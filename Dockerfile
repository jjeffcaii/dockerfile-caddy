FROM buildpack-deps:jessie-curl

LABEL maintainer jjeffcaii@outlook.com

WORKDIR /srv/caddy

RUN curl https://getcaddy.com | bash

VOLUME [ "/srv/caddy" ]

EXPOSE 80 443 2015

ENTRYPOINT [ "caddy" ]
