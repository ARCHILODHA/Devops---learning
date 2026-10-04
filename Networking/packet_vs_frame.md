# Packet vs Frame

Data is encapsulated differently at different layers of the networking stack.

## Frame

A frame is the Data Link Layer Protocol Data Unit.

Ethernet uses frames.

A simplified Ethernet frame contains:

- Destination MAC
- Source MAC
- EtherType
- Payload
- FCS

## Packet

A packet is commonly associated with the Network Layer.

An IP packet contains information such as:

- Source IP
- Destination IP
- Protocol
- Payload

## Encapsulation

When data travels through a network:

Application Data
       |
       v
Transport Segment
       |
       v
Network Packet
       |
       v
Data Link Frame
       |
       v
Bits

## Example

For TCP over IPv4 and Ethernet:

Ethernet Frame
    |
    +-- IP Packet
          |
          +-- TCP Segment
                |
                +-- Application Data

## Comparison

| Frame | Packet |
|---|---|
| Data Link Layer | Network Layer |
| Uses MAC addresses | Uses IP addresses |
| Example: Ethernet frame | Example: IP packet |

## Key Point

A packet belongs to the Network Layer, while a frame belongs to the Data Link Layer.
