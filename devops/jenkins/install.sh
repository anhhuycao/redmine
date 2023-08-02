#!/bin/bash
mkdir /var/jenkins_home
chown 1000 /var/jenkins_home
docker run -d --name jenkins -p 8081:8080 -p 50000:50000 -v /var/jenkins_home:/var/jenkins_home jenkins/jenkins:lts-jdk11