#!/bin/bash
apt-get -y update
apt-get -y install vim
apt-get -y install zlibc zlib1g zlib1g-dev
apt-get -y update
apt-get -y install libcurl4-gnutls-dev --fix-missing
apt-get -y update
apt-get -y install git
tar -xvzf nginx-1.13.6.tar.gz
cd nginx-1.13.6
cp ../pcre-8.41.tar.gz .
git clone https://github.com/openresty/headers-more-nginx-module.git
tar -xvzf pcre-8.41.tar.gz
./configure --prefix=/opt/nginx --add-module=./headers-more-nginx-module/ --with-pcre=./pcre-8.41/
make
make install
cp /opt/installnginx/nginx.conf /opt/nginx/conf/

