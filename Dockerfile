FROM nginx:stable-alpine3.21
MAINTAINER hudongyida
COPY 2048 /usr/share/nginx/html
EXPOSE 80
