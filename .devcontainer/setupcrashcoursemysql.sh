#!/bin/bash

mysql -h 127.0.0.1 -P 3306 -u root -prootpassword -e "CREATE DATABASE crashcourse"
mysql -h 127.0.0.1 -P 3306 -u root -prootpassword < ./.devcontainer/create.sql
mysql -h 127.0.0.1 -P 3306 -u root -prootpassword < ./.devcontainer/populate.sql