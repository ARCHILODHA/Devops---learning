
# Software Bill of Materials (SBOM) Generation

## Introduction
A Software Bill of Materials is a structured inventory of components used in an application.

It identifies libraries, frameworks, packages, and their versions.

SBOMs improve software supply-chain transparency.

## Why SBOM Is Important

- Identify third-party components.
- Track dependency versions.
- Detect vulnerable packages.
- Support security audits.
- Improve software transparency.

## Common SBOM Formats

| Format | Description |
|---|---|
| SPDX | Software package information standard |
| CycloneDX | Software supply-chain security format |

## Generate an SBOM Using Syft

Install Syft and run:

```bash
syft dir:. -o cyclonedx-json=sbom.json
