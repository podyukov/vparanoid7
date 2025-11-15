# Подюков Илья. ФИТ-2-2024 НМ. Методы и инструменты DevOps. ЛР по лекции 7
- готовлю index.html
- готовлю dockerfile
- готовлю deploy.sh
- докер у меня уже был установлен ранее
- выполняю deploy.sh
```
ilya@msi ~/D/vparanoid7 (main)> ./deploy.sh 
Error response from daemon: No such container: nginx
Error response from daemon: No such container: nginx
DEPRECATED: The legacy builder is deprecated and will be removed in a future release.
            Install the buildx component to build images with BuildKit:
            https://docs.docker.com/go/buildx/

Sending build context to Docker daemon  3.072kB
Step 1/2 : FROM nginx
latest: Pulling from library/nginx
d7ecded7702a: Already exists
266626526d42: Pulling fs layer
320b0949be89: Pulling fs layer
d921c57c6a81: Pulling fs layer
9def903993e4: Pulling fs layer
52bc359bcbd7: Pulling fs layer
e2f8e296d9df: Pulling fs layer
9def903993e4: Waiting
e2f8e296d9df: Waiting
52bc359bcbd7: Waiting
d921c57c6a81: Verifying Checksum
d921c57c6a81: Download complete
9def903993e4: Download complete
266626526d42: Download complete
52bc359bcbd7: Verifying Checksum
52bc359bcbd7: Download complete
266626526d42: Pull complete
e2f8e296d9df: Download complete
320b0949be89: Verifying Checksum
320b0949be89: Download complete
320b0949be89: Pull complete
d921c57c6a81: Pull complete
9def903993e4: Pull complete
52bc359bcbd7: Pull complete
e2f8e296d9df: Pull complete
Digest: sha256:1beed3ca46acebe9d3fb62e9067f03d05d5bfa97a00f30938a0a3580563272ad
Status: Downloaded newer image for nginx:latest
 ---> d261fd19cb63
Step 2/2 : ADD ./nginx.html /var/www/html/index.html
ADD failed: file not found in build context or excluded by .dockerignore: stat nginx.html: file does not exist
044f58e0fadf7791f117440aad3ff1fbbb59aa48e32fcd331c6a76c05f2bfa9f
CONTAINER ID   IMAGE     COMMAND                  CREATED                  STATUS                  PORTS                                       NAMES
044f58e0fadf   nginx     "/docker-entrypoint.…"   Less than a second ago   Up Less than a second   0.0.0.0:54321->80/tcp, [::]:54321->80/tcp   nginx
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
html { color-scheme: light dark; }
body { width: 35em; margin: 0 auto;
font-family: Tahoma, Verdana, Arial, sans-serif; }
</style>
</head>
<body>
<h1>Welcome to nginx!</h1>
<p>If you see this page, the nginx web server is successfully installed and
working. Further configuration is required.</p>

<p>For online documentation and support please refer to
<a href="http://nginx.org/">nginx.org</a>.<br/>
Commercial support is available at
<a href="http://nginx.com/">nginx.com</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>
2025/11/15 13:10:07 [notice] 1#1: start worker process 32
2025/11/15 13:10:07 [notice] 1#1: start worker process 33
2025/11/15 13:10:07 [notice] 1#1: start worker process 34
2025/11/15 13:10:07 [notice] 1#1: start worker process 35
2025/11/15 13:10:07 [notice] 1#1: start worker process 36
2025/11/15 13:10:07 [notice] 1#1: start worker process 37
2025/11/15 13:10:07 [notice] 1#1: start worker process 38
2025/11/15 13:10:07 [notice] 1#1: start worker process 39
2025/11/15 13:10:07 [notice] 1#1: start worker process 40
172.17.0.1 - - [15/Nov/2025:13:10:12 +0000] "GET / HTTP/1.1" 200 615 "-" "curl/8.17.0" "-"
```
