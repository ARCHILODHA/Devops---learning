
# CI/CD Build Caching

## Overview

Build caching stores dependencies and previously generated data so that future pipeline executions can run faster.

Without caching, dependencies may need to be downloaded during every pipeline execution.

## Problem

```text
Pipeline Start
      |
      v
Download Dependencies
      |
      v
Build Application
      |
      v
Tests
