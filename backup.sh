#!/bin/bash

BACKUPDATE=`date "+%Y-%m-%d"`

	mkdir /home/git/backups/gitea.cocentris.fr"$BACKUPDATE"
	su -c 'gitea dump -c /etc/gitea/app.ini' - git
	find /home/git/ -type f -name "*.zip" -exec mv {} /home/git/backups/gitea.cocentris.fr"$BACKUPDATE"/ \;
	cp /etc/netplan/01-netcfg.yaml /etc/systemd/system/gitea.service /home/git/backups/gitea.cocentris.fr"$BACKUPDATE"/
	cp -r /opt/archiva /home/git/backups/gitea.cocentris.fr"$BACKUPDATE"/
	cp /etc/nginx/conf.d/gitea.conf /home/git/backups/gitea.cocentris.fr"$BACKUPDATE"/
	cp /etc/nginx/nginx.conf /home/git/backups/gitea.cocentris.fr"$BACKUPDATE"/
	cp -r /home/git/gitea/data/ /home/git/backups/gitea.cocentris.fr"$BACKUPDATE"/
	cd /home/git/backups/
	tar -zcvf gitea.cocentris.fr"$BACKUPDATE".tgz gitea.cocentris.fr"$BACKUPDATE"/
	rm -r /home/git/backups/gitea.cocentris.fr"$BACKUPDATE"/
	echo "mkdir backups/gitea/$BACKUPDATE; exit" | ssh root@192.168.18.40
	rsync -Pav /home/git/backups/gitea.cocentris.fr"$BACKUPDATE".tgz root@192.168.18.40:~/backups/gitea/"$BACKUPDATE"
	rm /home/git/backups/gitea.cocentris.fr"$BACKUPDATE".tgz 

