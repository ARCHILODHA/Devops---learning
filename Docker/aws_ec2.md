# AWS EC2

## What is EC2?

Amazon EC2 (Elastic Compute Cloud) provides resizable virtual servers in the cloud.

## Key Concepts

- **AMI** – Amazon Machine Image
- **Instance** – Virtual server
- **Instance Type** – CPU, memory and network capacity
- **Key Pair** – Used for SSH authentication
- **Security Group** – Virtual firewall
- **EBS** – Persistent block storage
- **Elastic IP** – Static public IPv4 address

## Common Instance Types

| Type | Use Case |
|---|---|
| t3.micro | Testing / small applications |
| t3.small | Development |
| m7i | General-purpose workloads |
| c7i | CPU-intensive workloads |
| r7i | Memory-intensive workloads |

## Connect Using SSH

```bash
chmod 400 my-key.pem
ssh -i my-key.pem ec2-user@<PUBLIC-IP>
