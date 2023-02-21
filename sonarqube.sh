#!/bin/bash


#sonarqube install on centos7

 user_name=`whoami`

if [$user_name != vagrant ];

then
echo "must be run as user vagrant !!!!!"

exit 1

fi



sudo yum update -y
sudo yum install java-11-openjdk-devel -y
sudo yum install java-11-openjdk -y
cd /opt
sudo yum install wget -y
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip
sudo unzip /opt/sonarqube-9.3.0.51899.zip
sudo install unzip -y
sudo yum install unzip -y
sudo unzip /opt/sonarqube-9.3.0.51899.zip
ls
sonarqube-9.3.0.51899
sonarqube-9.3.0.51899/bin
sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64/
./sonar.sh start
./sonar.sh status
sudo firewall-cmd --permanent --add-port=9000/tcp
sudo firewall-cmd --reload