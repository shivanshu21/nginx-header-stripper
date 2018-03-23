FROM ubuntu:xenial
RUN apt-get update
RUN mkdir -p /opt
RUN mkdir -p /opt/nginx
RUN mkdir -p /opt/installnginx
RUN mkdir -p /opt/nginx/sbin
RUN mkdir -p /opt/nginx/conf

RUN apt-get -y install g++
RUN apt-get -y install make
RUN apt-get -y install vim
RUN apt-get -y install zlibc zlib1g zlib1g-dev
RUN apt-get -y update
RUN apt-get -y install libcurl4-gnutls-dev --fix-missing
RUN apt-get -y update
RUN apt-get -y install git

COPY nginx-1.13.6.tar.gz /opt/installnginx
COPY pcre-8.41.tar.gz /opt/installnginx
COPY comm.sh /opt/installnginx
COPY nginx.conf /opt/installnginx
CMD bash
