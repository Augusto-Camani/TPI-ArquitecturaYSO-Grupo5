FROM ubuntu:20.04 

USER root

RUN apt-get update && apt-get install -y curl
RUN apt-get update && apt-get install -y telnet
RUN apt-get update && apt-get install -y nginx

WORKDIR /var/www/html

COPY index.html .

CMD ["nginx", "-g", "daemon off;"] 
