#!/bin/bash
#Create New User “sonar”
createuser sonar
#Log Into PostgreSQL Shell
#psql

#Set Password for SonarQube Database User “sonar”
psql -c "ALTER USER sonar WITH ENCRYPTED PASSWORD 'root';"

#Create New Database “sonarqube”
psql -c "CREATE DATABASE sonarqube OWNER sonar;"

#Grant Privileges to “sonar” User on “sonarqube” Database
psql -c "GRANT ALL PRIVILEGES ON DATABASE sonarqube to sonar;"
psql -c "\q"
exit


