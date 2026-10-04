
# Network Address Translation

## Definition

Network Address Translation, or NAT, modifies IP address information as traffic passes through a network device.

NAT is commonly used to allow private IP addresses to communicate with the public Internet.

## Basic Architecture

Private Network
      |
      v
    Router
      |
      v
   Internet

Example:

Private IP:
192.168.1.10

Public IP:
203.0.113.10

The router can translate between the private and public addressing.

## Types of NAT

### Static NAT

One private address is mapped to one public address.

192.168.1.10 <--> 203.0.113.10

### Dynamic NAT

Private addresses are mapped to addresses from a public pool.

### PAT

PAT stands for Port Address Translation.

Multiple private devices can share a single public IP by using different port numbers.

Example:

192.168.1.10:5000
192.168.1.11:5001
192.168.1.12:5002
        |
        v
203.0.113.10

## Advantages

- Conserves public IPv4 addresses
- Allows private addressing
- Can hide internal addressing from external networks

## Key Point

NAT translates addresses between different addressing domains and is widely used with private IPv4 networks.
