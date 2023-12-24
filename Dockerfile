FROM nginx:latest
EXPOSE 80
WORKDIR /app
USER root

COPY nginx.conf /etc/nginx/nginx.conf
COPY config.json ./
COPY index.pth ./
COPY entrance.sh ./

RUN apt-get update && apt-get install -y wget unzip qrencode iproute2 systemctl && chmod -v 755 entrance.sh

CMD ["bash", "./entrance.sh" ]
