<p align="center">
<a href="https://git.io/typing-svg"><img src="https://readme-typing-svg.herokuapp.com?font=Bungee+Spice&weight=600&size=21&pause=1000&color=FFD193FB&background=FF8F7700&center=true&width=435&height=53&lines=Script+X-ray" alt="Typing SVG" /></a>

</p>

</p><h2 align="center">🅹🆂🅿🅷🅰🅽🆃🅾🅼 AutoScript VPN <img src="https://img.shields.io/badge/Version-Senaiper_1.5-red.svg"></h2>

</p>

### Update & upgrade first your VPS for Debian 10 & 11

  ```html
  apt-get update && apt-get upgrade -y 

  ```

### Update & upgrade First your VPS for Ubuntu 18.04 & 20.04

  ```html
  apt-get update && apt-get upgrade -y && apt dist-upgrade -y && update-grub && sleep 2 && reboot

  ```
 
### Installation scripts

  ```html
  sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt install -y bzip2 gzip coreutils screen curl && wget https://raw.githubusercontent.com/annelyah23/homa/main/setup.sh && chmod +x setup.sh && sed -i -e 's/\r$//' setup.sh && screen -S setup ./setup.sh

  ```
 
 ### Copy & paste to your VPS if <img src="https://img.shields.io/badge/Error-red.svg">(WG Only)
 ### Wireguard

  ```html
  echo "deb http://deb.debian.org/debian/ unstable main" >/etc/apt/sources.list.d/unstable.list
printf 'Package: *\nPin: release a=unstable\nPin-Priority: 90\n' >/etc/apt/preferences.d/limit-unstable
apt update
apt install -y wireguard-tools iptables iptables-persistent
apt install -y linux-headers-$(uname -r)
 
  ```
 
   ```html
systemctl restart wg-quick@wg0

  ```

## Description :

  Service & Port

  - OpenSSH                 : 22
  - OpenVPN                 : TCP 1194, UDP 2200, SSL 110
  - Stunnel4                : 222, 777
  - Dropbear                : 442, 109
  - OHP Dropbear            : 8585
  - OHP SSH                 : 8686
  - OHP OpenVPN             : 8787
  - Websocket SSH(HTTP)     : 80
  - Websocket SSL(HTTPS)    : 443, 222
  - Websocket OpenVPN       : 2084
  - Squid Proxy             : 3128, 8080, 8000
  - Badvpn                  : 7100, 7200, 7300
  - Nginx                   : 81
  - Wireguard               : 5820
  - Shadowsocks-R           : 1443-1543
  - SS-OBFS TLS             : 2443-2543
  - SS-OBFS HTTP            : 3443-3543
  - XRAY Vmess Ws Tls       : 443
  - XRAY Vless Ws Tls       : 443
  - XRAY Trojan Ws Tls      : 443
  - XRAY Vless Tcp Xtls     : 443
  - XRAY Trojan Tcp Tls     : 443
  - XRAY Vmess Ws None Tls  : 80
  - XRAY Vless Ws None Tls  : 80
  - XRAY Trojan Ws None Tls : 80

 >>> Server Information & Other Features
   - Timezone                 : Asia/Kuala_Lumpur (GMT +8)
   - Fail2Ban                 : [ON]
   - DDOS Dflate              : [ON]
   - IPtables                 : [ON]
   - Auto-Reboot              : [ON]- 5.00AM
   - IPv6                     : [OFF]
   - Auto-Remove-Expired      : [ON]
   - Auto Delete Expired Account
   - Fully automatic script
   - VPS settings
   - Admin Control
   - Change port
   - Full Orders For Various Services

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
