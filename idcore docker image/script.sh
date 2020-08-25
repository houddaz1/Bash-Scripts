#!/bin/bash

sudo -u postgres service postgresql start
sudo -u postgres ./home/DBidcore.sh
sudo -u postgres psql idcore < /home/idcore.sql
sudo -u postgres service postgresql stop




