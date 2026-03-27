# Docker Volumes

## Create volume
docker volume create myvol

## Use volume
docker run -v myvol:/data nginx

## List volumes
docker volume ls
