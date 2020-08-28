#!/usr/bin/env bash
set -ex

#Install Flyway
wget -qO- https://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/6.5.2/flyway-commandline-6.5.2-linux-x64.tar.gz | tar xvz && sudo ln -s `pwd`/flyway-6.5.2/flyway /usr/local/bin

#Create Database
mysql -uroot -proot < database/create_database.sql

#Migrate database - Create Tables/Schema
flyway -url="jdbc:mysql://localhost:3306/pages" -user=pages_user -password=password  -locations=filesystem:database migrate