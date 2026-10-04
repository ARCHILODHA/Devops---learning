# Hub vs Switch

## Hub

A hub is a basic networking device that broadcasts incoming data to all connected ports.

A hub operates at the Physical Layer.

## Switch

A switch forwards frames to the appropriate destination port using MAC addresses.

A switch primarily operates at the Data Link Layer.

## Comparison

| Feature | Hub | Switch |
|---|---|---|
| OSI Layer | Layer 1 | Layer 2 |
| Address Used | None | MAC address |
| Traffic | Broadcasts to all ports | Sends to destination port |
| Collision Domain | One | Separate per port |
| Performance | Lower | Higher |
| Security | Lower | Better |
| Intelligence | Low | Higher |

## Example

Hub:

       Hub
     /  |  \
    PC1 PC2 PC3

A frame from PC1 can reach PC2 and PC3.

Switch:

       Switch
     /   |   \
   PC1  PC2  PC3

The switch can forward a frame only to the required destination port when the MAC address is known.

## Key Point

Switches are preferred over hubs because they provide better performance and more efficient traffic forwarding.
