#!/bin/bash
# Install Tomcat 10 and Apache httpd for Amazon Linux 2023
sudo yum install tomcat10 -y
sudo yum -y install httpd
# Create the proxy configuration (Removed DefaultType as it crashes httpd 2.4+)
sudo cat << EOF > /etc/httpd/conf.d/tomcat_manager.conf
<VirtualHost *:80>
  ServerAdmin root@localhost
  ServerName ssd.github.com
  ProxyRequests off
  ProxyPreserveHost On
  ProxyPass / http://localhost:8080/java-cicd-pipeline/
  ProxyPassReverse / http://localhost:8080/java-cicd-pipeline/
</VirtualHost>
EOF

