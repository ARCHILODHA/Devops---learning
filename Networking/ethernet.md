# Ethernet

## Definition

Ethernet is a widely used networking technology for connecting devices within a Local Area Network (LAN).

Ethernet operates mainly at the Physical Layer and Data Link Layer of the OSI model.

## IEEE Standard

Ethernet is standardized under:

IEEE 802.3

## Ethernet Components

Common Ethernet components include:

- Network Interface Card (NIC)
- Ethernet cable
- Switch
- Router
- RJ-45 connector

## Ethernet Frame

An Ethernet frame contains information such as:

- Destination MAC address
- Source MAC address
- EtherType
- Payload
- Frame Check Sequence

Basic structure:

+---------------------+
| Destination MAC     |
+---------------------+
| Source MAC          |
+---------------------+
| EtherType           |
+---------------------+
| Payload             |
+---------------------+
| Frame Check Sequence|
+---------------------+

## Ethernet Speed Examples

Common Ethernet speeds include:

10 Mbps
100 Mbps
1 Gbps
10 Gbps
100 Gbps

## Ethernet Commands

Linux:

```bash
ip link
