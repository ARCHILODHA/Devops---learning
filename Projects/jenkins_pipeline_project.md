# Jenkins CI/CD Pipeline Project

## Overview

This project demonstrates how to build an automated CI/CD pipeline using Jenkins.

The pipeline automatically pulls source code from GitHub, builds the application, runs tests, creates a Docker image, and deploys the application.

## Objectives

- Understand Jenkins CI/CD architecture
- Automate application builds
- Integrate Jenkins with GitHub
- Build Docker images automatically
- Automate application deployment

## Technologies Used

- Jenkins
- Git
- GitHub
- Docker
- Linux
- Shell Scripting

## Pipeline Flow

```text
Developer
   |
   v
GitHub Repository
   |
   v
Jenkins
   |
   +--> Build
   |
   +--> Test
   |
   +--> Docker Build
   |
   +--> Docker Push
   |
   v
Deployment Server
