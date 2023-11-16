#!/bin/bash
set -e

# ---------------------
# Install JDK 11
# ---------------------
echo "*** Installing OpenJDK11... ***"
sudo apk update
sudo apk upgrade
sudo apk add openjdk11
sudo apk add ttf-dejavu

# ---------------------
# Download Jenkins
# ---------------------
echo "*** Installing Jenkins... ***"
# Change version accordingly
wget -nv "https://get.jenkins.io/war-stable/2.387.1/jenkins.war"
sudo mv "$HOME/jenkins.war" /opt/jenkins.war

# ---------------------
# Setup OpenRC Service
# ---------------------
echo "*** Creating OpenRC Service... ***"
sudo mv "$HOME/jenkins.service" /etc/init.d/jenkins
sudo chmod 755 /etc/init.d/jenkins
sudo rc-update add jenkins
sudo rc-service jenkins start
