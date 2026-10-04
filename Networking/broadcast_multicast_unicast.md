# Unicast, Broadcast and Multicast

Network communication can be categorized according to how many devices receive the data.

## Unicast

Unicast is one-to-one communication.

Sender ------> Receiver

Example:

A computer communicating with a specific web server.

## Broadcast

Broadcast is one-to-all communication within the applicable network or broadcast domain.

          Device
         /   |   \
        /    |    \
    Device Device Device

An example is an ARP request on a local IPv4 network.

IPv4 broadcast address:

255.255.255.255

Ethernet broadcast MAC:

FF:FF:FF:FF:FF:FF

## Multicast

Multicast is one-to-many communication where data is sent to a specific group of receivers.

             Sender
             /  |  \
            /   |   \
        Receiver Receiver Receiver

Multicast is useful for applications such as:

- Streaming
- Online conferencing
- Routing protocols
- Group communication

## Comparison

| Type | Communication |
|---|---|
| Unicast | One-to-one |
| Broadcast | One-to-all |
| Multicast | One-to-many |

## Key Point

Unicast targets one receiver, broadcast reaches all applicable devices, and multicast targets a selected group.
