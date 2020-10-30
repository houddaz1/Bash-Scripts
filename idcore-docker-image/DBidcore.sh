#!/bin/bash

#Log Into PostgreSQL Shell
#psql

#Set Password for idcore Database User “idcore”
psql -c "CREATE USER idcore WITH ENCRYPTED PASSWORD 'idcore';"

#Create New Database “idcore”
psql -c "CREATE DATABASE idcore OWNER idcore;"

#Grant Privileges to “idcore” User on “idcore” Database
psql -c "GRANT ALL PRIVILEGES ON DATABASE idcore to idcore;"
psql -c "\q"
exit


