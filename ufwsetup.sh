#!/bin/bash
sudo ufw allow from 192.160.50.0/24 to any port 22 #abilitare il traffico ssh
sudo ufw allow from 192.160.50.0/24 to any port 137,138,139,445 proto tcp ##Samba
sudo ufw allow from 192.160.50.0/24 to any port 137,138,139,445 proto udp ##Samba
sudo ufw allow from 192.160.50.0/24 to any port 111,2049,32765:32769 proto tcp #NFS
sudo ufw allow from 192.160.50.0/24 to any port 111,2049,32765:32769 proto udp #NFS


