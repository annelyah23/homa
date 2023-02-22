#!/bin/bash
GitUser="annelyah23"
#Direct Proxy Squid For OpenVPN TCP
RED='\e[1;31m'
GREEN='\e[0;32m'
BLUE='\e[0;34m'
NC='\e[0m'
MYIP=$(wget -qO- https://icanhazip.com);
MYIP2="s/xxxxxxxxx/$MYIP/g";

#Port Server ovpn ohp
#Jika Ingiin Mengubah Port Silahkan Sesuaikan Dengan Port Yang Ada Di VPS Mu
Port_OpenVPN_TCP='442';
Port_Squid='8080';
Port_OHP='8000';

#Buat Service Untuk OHP Dropbear
cat > /etc/systemd/system/ohpd.service <<END
[Unit]
Description=Direct Squid Proxy For ssh-dropbear
Documentation=https:/JsPhantom
Wants=network.target
After=network.target

[Service]
ExecStart=/usr/local/bin/ohpd -port 109 -proxy 127.0.0.1:3128 -tunnel 127.0.0.1:109
Restart=always
RestartSec=3

[Install]
WantedBy=multi-user.target
END

systemctl daemon-reload
systemctl enable ohpd
systemctl restart ohpd
echo ""
echo -e "${GREEN}Done Installing OHP Dropbear${NC}"
echo -e "Port OHP DROPBEAR: $ohpp"
echo -e "Script VPS"
