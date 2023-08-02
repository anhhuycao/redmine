#!/bin/bash
docker run -d --name jenkins -p 8081:8080 -p 50000:50000 -v /var/jenkins_home:/var/jenkins_home jenkins/jenkins:lts-jdk11