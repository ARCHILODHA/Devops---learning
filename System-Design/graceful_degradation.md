
# Graceful Degradation

## Overview
Graceful degradation is a system design approach in which an application continues to provide its most important functions when some components or dependencies become unavailable.

Instead of allowing one failure to make the entire application unusable, the system reduces or disables non-essential functionality.

## Example: E-Commerce Application
An e-commerce application may depend on:
- Product inventory.
- Payment processing.
- Recommendations.
- Product reviews.
- Analytics.

If the recommendation service fails, customers should still be able to browse products and complete purchases.

The application might hide recommendations or display popular products from a cached list.

Payment processing, however, should not be falsely reported as successful when the payment provider is unavailable.

## Common Techniques

### 1. Caching
Serve previously stored data when an upstream service is temporarily unavailable, if the data is safe to use while stale.

### 2. Fallback Responses
Return a safe default response when a non-critical dependency fails.

### 3. Feature Flags
Disable optional features without deploying new application code.

### 4. Timeouts
Stop waiting for a dependency after an appropriate time limit.

### 5. Circuit Breakers
Temporarily stop requests to a dependency that is repeatedly failing.

### 6. Load Shedding
Reject or discard lower-priority work when the system is overloaded to protect critical operations.

### 7. Bulkheads
Isolate resources so failures in one component do not exhaust the resources needed by another.

## Architecture
```text
                Client
                  |
                  v
             API Gateway
                  |
                  v
           Application Service
             /           \
            v             v
      Critical Flow   Optional Flow
       Payments       Recommendations
            |             |
            v             v
      Payment Provider  Recommendation API
                            |
                            v
                     Cached Fallback
