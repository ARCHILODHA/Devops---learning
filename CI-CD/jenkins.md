# Jenkins Basics

## What is Jenkins?
Jenkins is an open-source automation server used for CI/CD.

## Common Commands

Start Jenkins:
```bash
java -jar jenkins.war

PIPELINE EXAMPLE
pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building...'
            }
        }
    }
}




