FROM nginx
FROM python:3

COPY ./src /usr/share/nginx/html
COPY ./src /app

WORKDIR /app

RUN pip install -r requirements.txt

RUN apt-get update -y \
 && apt-get install -y python3-certbot python3-certbot-nginx

CMD ["fastapi", "run", "main.py"]