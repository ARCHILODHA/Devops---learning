# MTU and Fragmentation

## MTU

MTU stands for Maximum Transmission Unit.

It represents the maximum size of a network-layer packet that can be transmitted over a network link without fragmentation.

A common Ethernet MTU is:

1500 bytes

## Example

If an IP packet is larger than the supported MTU, fragmentation may occur for IPv4 if permitted.

Large Packet
     |
     v
+----+----+----+
| Fragment 1   |
+--------------+
| Fragment 2   |
+--------------+
| Fragment 3   |
+--------------+

The destination can reassemble the fragments.

## Path MTU

The Path MTU is the smallest MTU along the path between a source and destination.

## Check MTU

Linux:

```bash
ip link
