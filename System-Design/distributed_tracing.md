# Distributed Tracing

## What is Distributed Tracing?

Distributed tracing tracks a request as it travels across multiple microservices.

## Why?

- Debug latency
- Find bottlenecks
- Monitor dependencies

## Popular Tools

- Jaeger
- Zipkin
- OpenTelemetry

## Flow

Client → API Gateway → Service A → Service B → Database

Each service creates a trace span.

## Benefits

- Faster debugging
- Performance optimization
- Root cause analysis
