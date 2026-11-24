
# AWS Web Application Firewall (AWS WAF)

## Introduction
AWS WAF is a web application firewall that helps protect applications from common web exploits and unwanted traffic.

It can be associated with supported AWS services such as CloudFront, Application Load Balancers, API Gateway, and other supported resources.

## Key Features

- IP address filtering.
- Request inspection.
- Rate-based rules.
- Managed rule groups.
- SQL injection protection.
- Cross-site scripting protection.
- Custom traffic filtering.

## Architecture

```text
Internet User
      |
      v
Web Application Firewall
      |
      v
Rule Evaluation
      |
   +--+--+
   |     |
Allowed Blocked
   |
   v
Application
