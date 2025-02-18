#!/bin/bash

sudo apt update
sudo apt-get install -y postgresql-client
docker run --name postgres-container -d -e POSTGRES_PASSWORD=admin -p 5432:5432 postgres

echo "############################################# Nigel is sleeping ############################################################"
#sleep 30
echo "############################################# Nigel is AWAKE :-) ###########################################################"
#mysql -h 127.0.0.1 -P 3306 -u root -prootpassword -e "CREATE DATABASE crashcourse"
#mysql -h 127.0.0.1 -P 3306 -u root -prootpassword < ${CODESPACE_VSCODE_FOLDER}/.devcontainer/create.sql
#mysql -h 127.0.0.1 -P 3306 -u root -prootpassword < ${CODESPACE_VSCODE_FOLDER}/.devcontainer/populate.sql

#mysql --version
