
# Docker Image Management

## List Images

```bash
docker images
Pull Image
docker pull nginx
Build Image
docker build -t myapp:1.0 .
Tag Image
docker tag myapp:1.0 username/myapp:1.0
Remove Image
docker rmi myapp:1.0
Inspect Image
docker image inspect myapp:1.0
View Image History
docker history myapp:1.0
Push to Docker Hub
docker login
docker push username/myapp:1.0
Image Naming
registry/repository:tag

Example:

docker.io/archi/myapp:1.0
Best Practices
Use small base images.
Pin important versions.
Avoid unnecessary packages.
Use multi-stage builds.
Scan images for vulnerabilities.
Add meaningful tags.
