#!/bin/bash

docker run --name mysql-container -e MYSQL_ROOT_PASSWORD=rootpassword -e MYSQL_DATABASE=mydb -p 3306:3306 -d mysql:latest
apt update
apt install mysql-client -y
mysql --version
