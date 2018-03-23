#!/bin/bash
tar -xvzf nginx-1.13.6.tar.gz
cd nginx-1.13.6
cp ../pcre-8.41.tar.gz .
git clone https://github.com/openresty/headers-more-nginx-module.git
tar -xvzf pcre-8.41.tar.gz
./configure --prefix=/opt/nginx --add-module=./headers-more-nginx-module/ --with-pcre=./pcre-8.41/
make
make install
cp /opt/installnginx/nginx.conf /opt/nginx/conf/

