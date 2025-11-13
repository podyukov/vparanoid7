#!/bin/bash

docker stop nginx
docker rm nginx

docker build -t nginx ./nginx

docker run -d --name nginx -p 54321:80 

#проверка
docker ps -a
curl 127.0.0.1:54321
