FROM ubuntu:xenial
RUN apt-get update
RUN mkdir -p /opt
RUN mkdir -p /opt/nginx
RUN mkdir -p /opt/installnginx
RUN mkdir -p /opt/nginx/sbin
RUN mkdir -p /opt/nginx/conf

RUN apt-get -y install g++
RUN apt-get -y install make

COPY nginx-1.13.6.tar.gz /opt/installnginx
COPY pcre-8.41.tar.gz /opt/installnginx
COPY comm.sh /opt/installnginx
COPY nginx.conf /opt/installnginx
CMD bash
