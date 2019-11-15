#!/bin/bash
read -p "Enter the VM version date YYYY-MM-DD:"  DATE

	echo "Restoring gitea.cocentris.fr service from date $DATE"
	echo "cloning new VM"

	tar -zxvf /root/backups/gitea/"$DATE"/*.tgz --directory /root/backups/gitea/"$DATE"
	virt-clone --original ubuntu1804 --mac RANDOM --name gitea.cocentris.fr --file /root/backups/gitea/"$DATE"/gitea.cocentris.fr"$DATE".img

	guestfish -a /root/backups/gitea/"$DATE"/gitea.cocentris.fr"$DATE".img -i rm /etc/netplan/01-netcfg.yaml;

	guestmount -d gitea.cocentris.fr -i /mnt
        cp /root/backups/gitea/"$DATE"/gitea.cocentris.fr"$DATE"/01-netcfg.yaml /mnt/etc/netplan/;
	cp /root/backups/gitea/"$DATE"/gitea.cocentris.fr"$DATE"/gitea.service /mnt/etc/systemd/system/;
	umount /mnt
	virsh start gitea.cocentris.fr
	sleep 10
	scp -r /root/backups/gitea/"$DATE"/gitea.cocentris.fr"$DATE"/ root@gitea.cocentris.fr:~
	if echo " rm /var/lib/dpkg/lock ;
		rm /var/lib/dpkg/lock-frontend ;
		rm /var/cache/apt/archives/lock ;
		apt update;
		dpkg --configure -a;
		apt install postgresql postgresql-contrib -y ;
		sudo -i -u postgres;
		psql;
		create user gitea with password 'GiteaP@ss';
		create database gitea owner gitea;
		exit" | 
		ssh root@gitea.cocentris.fr

	then echo "apt install openjdk-8-jre -y;
		apt install nginx -y;
		cd gitea.cocentris.fr"$DATE"/;
		mv gitea.conf /etc/nginx/conf.d/;
		rm /etc/nginx/nginx.conf;
		mv nginx.conf /etc/nginx/;
		mkdir /opt/archiva/
		mv archiva/* /opt/archiva/;
		cd /opt/archiva/apache-archiva-2.2.4/bin/;
		./archiva start ;
		cd /root/gitea.cocentris.fr"$DATE"/;
  		apt install git -y;
		adduser --system --shell /bin/bash --gecos 'Git Version Control' --group --disabled-password --home /home/git  git;
		wget https://github.com/go-gitea/gitea/releases/download/v1.9.5/gitea-1.9.5-linux-amd64;
		chmod +x gitea-1.9.5-linux-amd64;
		mv gitea-1.9.5-linux-amd64 /usr/local/bin/gitea;
		mkdir -p /etc/gitea /var/lib/gitea/{custom,data,indexers,public,log};
		mkdir /home/git/gitea/;
		mkdir /home/git/gitea/gitea-repositories/;
		mkdir /home/git/gitea/data;
		chown git:git /var/lib/gitea/{data,indexers,log};
		chmod 750 /var/lib/gitea/{data,indexers,log};
		chown root:git /etc/gitea;
		chmod 770 /etc/gitea;
		systemctl daemon-reload;
		systemctl restart gitea;
		systemctl enable gitea;
		apt install unzip -y;
		unzip *.zip;
		mv app.ini /etc/gitea/app.ini;
		unzip gitea-repo.zip;
		mv gitea-repositories/* /home/git/gitea/gitea-repositories/;
		mv data/* /home/git/gitea/data/;
		chown -R git:git /etc/gitea/app.ini /home/git/gitea/gitea-repositories/ /home/git/gitea/data/;
		export PGPASSWORD='GiteaP@ss'
		psql -U gitea -h 127.0.0.1 -d gitea < gitea-db.sql;
		systemctl restart gitea;
		cd /opt/archiva/apache-archiva-2.2.4/bin/;
                ./archiva start;
		systemctl restart nginx;
		ufw allow ssh;
		ufw allow 'Nginx HTTP';
		ufw allow 'OpenSSH';
		ufw --force enable;
		exit" |
		 ssh root@gitea.cocentris.fr

	fi
