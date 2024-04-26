#!/bin/bash
sudo ufw allow from 192.168.50.0/24 to 192.168.50.0/24 port 22 	#abilitare il traffico ssh
sudo ufw allow from 192.168.50.0/24 to 192.168.50.0/24 port 137,138,139,445 proto tcp 	##Samba
sudo ufw allow from 192.168.50.0/24 to 192.168.50.0/24 port 137,138,139,445 proto udp 	##Samba
sudo ufw allow from 192.168.50.0/24 to 192.168.50.0/24 port 111,2049,32765:32769 proto tcp 	#NFS
sudo ufw allow from 192.168.50.0/24 to 192.168.50.0/24 port 111,2049,32765:32769 proto udp 	#NFS
sudo ufw allow from 192.168.50.0/24 to 192.168.50.0/24 port 8096 proto tcp 	#jellyfin
sudo ufw allow from 192.168.50.0/24 to 192.168.50.0/24 port 1990,7359 proto udp  #jellyfin discovery
sudo ufw allow from 192.168.50.0/24 to 192.168.50.0/24 port 10000 proto tcp  #Webmin