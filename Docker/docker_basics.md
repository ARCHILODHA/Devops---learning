# Docker Commands (Quick Reference)

docker --version
docker info

docker pull IMAGE
docker images

docker run IMAGE
docker run -it IMAGE
docker run -d IMAGE
docker run -p HOST_PORT:CONTAINER_PORT IMAGE

docker ps
docker ps -a

docker stop CONTAINER_ID
docker start CONTAINER_ID
docker restart CONTAINER_ID

docker rm CONTAINER_ID
docker rmi IMAGE_ID

docker build -t IMAGE_NAME .

docker logs CONTAINER_ID

docker exec -it CONTAINER_ID bash

docker volume create VOLUME_NAME
docker volume ls
docker volume rm VOLUME_NAME

docker network ls
docker network create NETWORK_NAME

docker login
docker push IMAGE_NAME
docker tag IMAGE_NAME USERNAME/IMAGE_NAME
