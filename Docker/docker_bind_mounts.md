# Docker Bind Mounts

## What is a Bind Mount?

A bind mount maps a directory or file from the host machine into a container.

## Basic Syntax

```bash
docker run \
  -v /host/path:/container/path \
  nginx
Example
docker run \
  -v $(pwd)/website:/usr/share/nginx/html \
  nginx

The local website directory becomes available inside the container.

Read-Only Mount
docker run \
  -v $(pwd)/config:/app/config:ro \
  myapp

ro means read-only.

Bind Mount vs Volume
Bind Mount	Volume
Managed by user	Managed by Docker
Uses host path	Docker-managed location
Useful for development	Useful for persistent application data
Easy to inspect	Better abstraction
Development Example
Host
 |
 └── project/
       |
       └── src/
            ↓
        Container
            |
            └── /app/src
Useful Command
docker inspect container-name

This can be used to inspect mount configuration.

Best Practices
Use read-only mounts where possible.
Avoid mounting sensitive host directories.
Use named volumes for production data when appropriate.
