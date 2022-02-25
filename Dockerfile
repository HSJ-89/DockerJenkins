FROM ubuntu:14.04
MAINTAINER hsj89
RUN apt-get install -y apache2
COPY index.html /var/www/html/
EXPOSE 80