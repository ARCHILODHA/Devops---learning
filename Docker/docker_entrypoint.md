# Docker ENTRYPOINT

## What is ENTRYPOINT?

ENTRYPOINT defines the main executable that runs when a Docker container starts.

## Example

```dockerfile
FROM ubuntu:24.04

ENTRYPOINT ["echo", "Hello from Docker"]

Build:

docker build -t entrypoint-demo .

Run:

docker run entrypoint-demo

Output:

Hello from Docker
ENTRYPOINT vs CMD
ENTRYPOINT

Defines the main command.

ENTRYPOINT ["python"]
CMD

Provides default arguments.

CMD ["app.py"]

Together:

ENTRYPOINT ["python"]
CMD ["app.py"]

Running:

docker run myapp

Executes:

python app.py
Override CMD
docker run myapp other.py

This executes:

python other.py
Best Practice

Use the JSON/exec form:

ENTRYPOINT ["python", "app.py"]

instead of:

ENTRYPOINT python app.py

The exec form provides better signal handling and process management.



