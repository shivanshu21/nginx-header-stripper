#!/bin/bash
docker rmi shivanshug/shivanshu-nginx:headerstripper
docker build -t shivanshug/shivanshu-nginx:headerstripper .
docker push shivanshug/shivanshu-nginx:headerstripper
