# GitLab CI/CD

## Example Pipeline

```yaml
stages:
  - build
  - test
  - deploy

build-job:
  stage: build
  script:
    - echo "Building app"

test-job:
  stage: test
  script:
    - echo "Running tests"

deploy-job:
  stage: deploy
  script:
    - echo "Deploying app"
