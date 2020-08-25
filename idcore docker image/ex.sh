#!/bin/bash
su - postgres -c "service postgresql start"
java -jar /home/com.cocentris.id.core.jar
