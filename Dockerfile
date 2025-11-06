FROM nginx

COPY ./src /usr/share/nginx/html

RUN apt-get update -y \
 && apt-get install -y python3-certbot python3-certbot-nginx
