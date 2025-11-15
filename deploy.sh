#!/bin/bash

docker stop nginx
docker rm nginx

docker build -t nginx ./nginx

docker run -d --name nginx -p 54321:80 nginx

#проверка
docker ps -a
sleep 5
curl 127.0.0.1:54321
docker logs -n 10 nginx
