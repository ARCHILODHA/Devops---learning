# AWS CloudWatch

## What is CloudWatch?

Amazon CloudWatch is a monitoring and observability service for AWS resources and applications.

## What Can CloudWatch Monitor?

- EC2
- Lambda
- RDS
- Load Balancers
- Applications
- Logs
- Custom metrics

## Common Metrics

For EC2:

- CPUUtilization
- NetworkIn
- NetworkOut
- DiskReadOps
- DiskWriteOps

## View CloudWatch Metrics

AWS Console:

```text
AWS Console
    ↓
CloudWatch
    ↓
Metrics
    ↓
Select AWS Service
CloudWatch Logs

Applications can send logs to CloudWatch Logs.

Example:

Application
     ↓
CloudWatch Agent
     ↓
CloudWatch Logs
AWS CLI

List alarms:

aws cloudwatch describe-alarms
Create Alarm

Example:

aws cloudwatch put-metric-alarm \
  --alarm-name HighCPU \
  --metric-name CPUUtilization \
  --namespace AWS/EC2 \
  --statistic Average \
  --period 300 \
  --threshold 80 \
  --comparison-operator GreaterThanThreshold \
  --evaluation-periods 2
Benefits
Application monitoring
Performance analysis
Error tracking
Alerting
Infrastructure monitoring
Best Practices
Create alarms for important resources.
Monitor CPU and memory.
Centralize application logs.
Set meaningful thresholds.
