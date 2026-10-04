
# Switching Basics

## Definition

Switching is the process of forwarding data frames between devices within a network.

A network switch primarily operates at Layer 2 of the OSI model.

## Network Switch

A switch connects multiple devices in a LAN.

Example:

Computer A ----\
Computer B ----- Switch ----- Router
Computer C ----/

## MAC Address Table

A switch maintains a MAC address table.

Example:

MAC Address          Port

AA:BB:CC:11:22:33    Port 1
AA:BB:CC:44:55:66    Port 2
AA:BB:CC:77:88:99    Port 3

The switch uses this table to determine where frames should be forwarded.

## Learning

When a frame arrives, the switch learns the source MAC address and associates it with the incoming port.

## Forwarding

If the destination MAC address is known, the switch forwards the frame to the corresponding port.

## Flooding

If the destination MAC address is unknown, the switch may send the frame through multiple ports.

## Switching Methods

### Store-and-Forward

The switch receives the complete frame before forwarding it.

### Cut-Through

The switch begins forwarding after reading enough information to identify the destination.

## Key Point

A switch connects devices in a LAN and uses MAC addresses to forward Ethernet frames.
