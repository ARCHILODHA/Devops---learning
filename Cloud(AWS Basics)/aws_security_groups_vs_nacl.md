
# Security Groups vs Network ACLs

## Security Groups

Security Groups act as virtual firewalls for AWS resources such as EC2 instances.

Characteristics:

- Stateful
- Support allow rules
- Applied to network interfaces

## Network ACLs

Network Access Control Lists operate at the subnet level.

Characteristics:

- Stateless
- Support allow and deny rules
- Rules are evaluated in order

## Comparison

| Feature | Security Group | Network ACL |
|---|---|---|
| Level | Instance/Network Interface | Subnet |
| Stateful | Yes | No |
| Deny Rules | No explicit deny | Yes |
| Rules | Allow | Allow/Deny |

## Best Practice

Use Security Groups as the primary network access control mechanism and NACLs when subnet-level controls are required.
