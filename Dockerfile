#!/bin/bash

echo "FROM jenkins/jenkins:lts
USER root
RUN apt-get update && \
    apt-get install -y subversion
USER jenkins" > Dockerfile

# Build the custom Docker image
docker build -t custom-jenkins .

# Run Jenkins from the custom Docker image
docker run -p 8080:8080 -p 50000:50000 custom-jenkins
