#!/bin/bash

sudo apt update
sudo apt install mysql-client -y
docker run --name mysql-container -e MYSQL_ROOT_PASSWORD=rootpassword -e MYSQL_DATABASE=mydb -p 3306:3306 -d mysql:latest

mysql --version
