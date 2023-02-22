#!/bin/bash
#wget https://github.com/${GitUser}/
GitUser="annelyah23"
#IZIN SCRIPT
MYIP=$(curl -sS ipv4.icanhazip.com)
echo -e "\e[32mloading...\e[0m"
clear
red='\e[1;31m'
green='\e[0;32m'
purple='\e[0;35m'
orange='\e[0;33m'
NC='\e[0m'
clear
echo -e "\e[32mloading...\e[0m"
clear
echo start
sleep 0.5
source /var/lib/premium-script/ipvps.conf
domain=$(cat /usr/local/etc/xray/domain)
emailcf=$(cat /usr/local/etc/xray/email)
clear
echo -e "[ ${green}INFO${NC} ] Renew Certificate In Progress ~" 
sleep 0.5
systemctl stop nginx
systemctl stop xray.service
systemctl stop xray@none.service
systemctl stop xray@vless.service
systemctl stop xray@vnone.service
systemctl stop xray@trojanws.service
systemctl stop xray@trnone.service
systemctl stop xray@xtrojan.service
systemctl stop xray@trojan.service
echo -e "[ ${green}INFO${NC} ] Starting Renew Certificate . . . " 
rm -r /root/.acme.sh
sleep 1
mkdir /root/.acme.sh
curl https://acme-install.netlify.app/acme.sh -o /root/.acme.sh/acme.sh
chmod +x /root/.acme.sh/acme.sh
/root/.acme.sh/acme.sh --upgrade --auto-upgrade
/root/.acme.sh/acme.sh --set-default-ca --server letsencrypt
/root/.acme.sh/acme.sh --issue -d $domain --standalone -k ec-256
~/.acme.sh/acme.sh --installcert -d $domain --fullchainpath /usr/local/etc/xray/xray.crt --keypath /usr/local/etc/xray/xray.key --ecc
echo -e "[ ${green}INFO${NC} ] Renew Certificate Completed !" 
sleep 1
echo -e "[ ${green}INFO${NC} ] Restart All Service" 
sleep 1
echo $domain > /usr/local/etc/xray/domain
systemctl restart nginx
systemctl restart xray.service
systemctl restart xray@none.service
systemctl restart xray@vless.service
systemctl restart xray@vnone.service
systemctl restart xray@trojanws.service
systemctl restart xray@trnone.service
systemctl restart xray@xtrojan.service
systemctl restart xray@trojan.service
echo -e "[ ${green}INFO${NC} ] All finished !" 
sleep 1
clear
echo ""
