
# Idempotency in Distributed Systems

## Overview
An operation is idempotent when performing it multiple times has the same intended effect as performing it once.

Idempotency is important in distributed systems because requests may be retried after timeouts, network interruptions, or uncertain responses.

## Example
Suppose a client submits a payment request. The server processes the payment, but the response is lost.

The client cannot determine whether the payment succeeded and may submit the request again.

Without safeguards, the customer could be charged twice.

An idempotency mechanism allows repeated requests with the same key to return the original result rather than creating another payment.

## HTTP Methods
HTTP defines several methods as idempotent in their intended effect:
- `GET`
- `HEAD`
- `PUT`
- `DELETE`
- `OPTIONS`
- `TRACE`

`POST` is not generally defined as idempotent, although an API can implement application-level idempotency for specific POST operations.

An HTTP method's idempotency does not mean every repeated request returns an identical response.

## Idempotency Keys
An API may accept an idempotency key:

```http
POST /payments
Idempotency-Key: payment-order-1001
Content-Type: application/json

{
  "orderId": 1001,
  "amount": 2500
}
