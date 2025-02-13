#!/bin/bash

sudo apt update
sudo apt install mysql-client -y
docker run --name mysql-container -e MYSQL_ROOT_PASSWORD=rootpassword -e MYSQL_DATABASE=mydb -p 3306:3306 -d mysql:latest

mysql -h 127.0.0.1 -P 3306 -u root -prootpassword -e "CREATE DATABASE crashcourse"
mysql -h 127.0.0.1 -P 3306 -u root -prootpassword < ${CODESPACE_VSCODE_FOLDER}/.devcontainer/create.sql
mysql -h 127.0.0.1 -P 3306 -u root -prootpassword < ${CODESPACE_VSCODE_FOLDER}/.devcontainer/populate.sql

mysql --version
