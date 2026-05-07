#!/bin/bash

aws sns publish \
  --topic-arn arn:aws:sns:region:123456789:my-topic \
  --message "Deployment successful"
