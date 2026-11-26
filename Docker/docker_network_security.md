
# Docker Network Security

## Introduction
Docker networking allows containers to communicate with each other and external systems.

Network security ensures that containers communicate only with authorized services.

## Network Types

- Bridge: Default network driver for standalone containers.
- Host: Shares the host network namespace.
- None: Disables container networking.
- Overlay: Supports communication across Docker hosts in Swarm.
- Macvlan: Assigns containers MAC addresses on a physical network.

## List Networks

```bash
docker network ls
