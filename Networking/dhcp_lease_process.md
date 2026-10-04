# DHCP Lease Process

DHCP stands for Dynamic Host Configuration Protocol.

DHCP automatically provides network configuration to clients.

## DHCP DORA Process

The standard DHCP process is commonly represented as DORA.

### 1. Discover

The client broadcasts a DHCP Discover message to locate DHCP servers.

Client ---> DHCP Discover ---> Network

### 2. Offer

A DHCP server responds with a DHCP Offer.

DHCP Server ---> DHCP Offer ---> Client

### 3. Request

The client requests the offered configuration.

Client ---> DHCP Request ---> DHCP Server

### 4. Acknowledgment

The DHCP server confirms the assignment.

DHCP Server ---> DHCP ACK ---> Client

## Configuration Provided

DHCP can provide:

- IP address
- Subnet mask
- Default gateway
- DNS server
- Lease duration

## Flow

Client
  |
  | Discover
  v
DHCP Server
  |
  | Offer
  v
Client
  |
  | Request
  v
DHCP Server
  |
  | ACK
  v
Client

## Advantages

- Automatic configuration
- Reduces manual errors
- Simplifies network administration
- Efficient IP address management

## Key Point

DHCP allows devices to obtain network configuration automatically instead of requiring manual configuration.
