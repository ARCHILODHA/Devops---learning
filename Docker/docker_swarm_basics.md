
# Docker Swarm Basics

## Introduction
Docker Swarm is Docker's native container orchestration solution.

It allows multiple Docker hosts to operate as a cluster.

## Important Components

- Manager node: Manages cluster state and scheduling.
- Worker node: Runs assigned workloads.
- Service: Defines the desired state of an application.
- Task: Represents a container scheduled on a node.

## Initialize Swarm

```bash
docker swarm init
