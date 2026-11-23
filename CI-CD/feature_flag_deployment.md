
# Feature Flags in CI/CD

## Introduction
Feature flags are configuration switches that control whether specific application features are enabled or disabled.

They allow developers to deploy code without immediately exposing new functionality to every user.

## Why Feature Flags Are Useful

- Release features gradually.
- Enable controlled experimentation.
- Disable problematic functionality quickly.
- Separate deployment from feature release.
- Reduce deployment risk.

## Example in Java

```java
public class FeatureService {

    private final boolean newFeatureEnabled;

    public FeatureService(boolean newFeatureEnabled) {
        this.newFeatureEnabled = newFeatureEnabled;
    }

    public String getFeatureMessage() {

        if (newFeatureEnabled) {
            return "New feature is enabled";
        }

        return "Using the existing feature";
    }
}
