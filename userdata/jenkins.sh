#!/bin/bash
echo "#######################################################################"
echo "UPDATING DEPENDENCIES"
echo "#######################################################################"
echo
sudo apt-get update
echo "#######################################################################"
echo "INSTALLING JDK"
echo "#######################################################################"
echo
sudo apt install openjdk-8-jdk -y
echo "#######################################################################"
echo "INSTALLING MAVEN"
echo "#######################################################################"
echo
sudo apt install maven -y
echo "#######################################################################"
echo "INSTALLING JENKINS"
echo "#######################################################################"
echo
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get install jenkins -y
sudo service jenkins start