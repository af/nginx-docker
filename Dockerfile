FROM ubuntu

MAINTAINER Aaron

RUN echo "deb http://archive.ubuntu.com/ubuntu/ precise universe" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y install nginx

ADD nginx.conf /etc/nginx/sites-available/default
ADD index.html /var/www/index.html
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 80

CMD nginx
