#!/bin/bash
docker run -it -p 7000:7000 --net=envoy-net shivanshug/shivanshu-nginx:headerstripper
