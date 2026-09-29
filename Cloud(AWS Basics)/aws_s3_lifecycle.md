
# Amazon S3 Lifecycle Policies

## Overview

S3 Lifecycle policies automatically manage objects throughout their lifecycle.

They can transition objects to different storage classes or delete them after a specified period.

## Example Lifecycle

```text
S3 Standard
     |
     | 30 Days
     v
S3 Standard-IA
     |
     | 60 Days
     v
S3 Glacier
     |
     | 365 Days
     v
Delete
