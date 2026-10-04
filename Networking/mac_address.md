# MAC Address

## Definition

MAC stands for Media Access Control.

A MAC address is a unique hardware address assigned to a network interface.

It operates at the Data Link Layer of the OSI model.

## Format

A MAC address is usually represented as six groups of hexadecimal digits.

Example:

00:1A:2B:3C:4D:5E

## Types

### Unicast MAC

Identifies a single network device.

### Multicast MAC

Identifies a group of devices.

### Broadcast MAC

Used to communicate with all devices on a local network.

Broadcast MAC:

FF:FF:FF:FF:FF:FF

## Check MAC Address

Linux:

ip link

Windows:

ipconfig /all

## MAC Address vs IP Address

| MAC Address | IP Address |
|---|---|
| Hardware address | Logical address |
| Layer 2 | Layer 3 |
| Usually 48 bits | IPv4 uses 32 bits |
| Used inside local networks | Used for network routing |

## Key Point

MAC addresses identify network interfaces, while IP addresses identify devices logically within a network.
