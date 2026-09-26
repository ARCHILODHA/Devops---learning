# Docker Container Management

## Run Container

```bash
docker run -d --name web nginx
List Running Containers
docker ps
List All Containers
docker ps -a
Stop Container
docker stop web
Start Container
docker start web
Restart Container
docker restart web
Remove Container
docker rm web
Execute Command
docker exec -it web /bin/bash
Inspect Container
docker inspect web
Resource Usage
docker stats
Copy Files
docker cp file.txt web:/app/
Container Lifecycle
Created
   ↓
Running
   ↓
Stopped
   ↓
Removed
