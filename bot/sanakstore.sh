#!/bin/bash
clear
echo -e "\033[36m# //====================================\e[0m"
echo -e "\033[36m# // System Request:Debian 10/Ubuntu 20.04\e[0m"
echo -e "\033[36m# // Author: SANAK STORE\e[0m"
echo -e "\033[36m# // Description: Xray Multiport\e[0m"
echo -e "\033[36m# // email: jambanbkn@gmail.com\e[0m"
echo -e "\033[36m# // telegram: t.me/Baung2012\e[0m"
echo -e "\033[36m# //====================================\e[0m"
sleep 1
Green="\e[92;1m"
RED="\033[31m"
YELLOW="\033[33m"
BLUE="\033[36m"
FONT="\033[0m"
GREENBG="\033[42;37m"
REDBG="\033[41;37m"
GRAY="\e[1;30m"
NC='\e[0m'
red='\e[1;31m'
green='\e[0;32m'

###### IZIN SC
sayang() {
  mkdir /etc/goblok > /dev/null 2>&1
  touch /etc/goblok/api
  touch /etc/goblok/email
  touch /etc/goblok/username
  echo "$API1" > /etc/goblok/api
  echo "lailafauziyah00@gmail.com" > /etc/goblok/email
  echo "kuhing" > /etc/goblok/username
  APIGIT=$(cat /etc/goblok/api)
  EMAILGIT=$(cat /etc/goblok/email)
  USERGIT=$(cat /etc/goblok/username)
  rm -rf /root/ip
  MYIP=$(curl -sS ipv4.icanhazip.com)
  echo -e "Checking the IPVPS!"
  sleep 1
  REQIP=$(curl -sS https://raw.githubusercontent.com/${USERGIT}/ip/main/vps | awk '{print $4}' | grep $MYIP)
  if [[ $MYIP = $REQIP ]]; then
  echo -e "VPS IP Already Registered!!"
  read -n 1 -s -r -p "   Press any key to Exit"
  Exit
  else
  echo -e "OK! IP VPS is not Registered!"
  echo -e "Lets Install Script"
  sleep 3
  clear
  fi
  user=Trial-`</dev/urandom tr -dc X-Z0-9 | head -c4`
  exp=$(date -d "1 days" +"%Y-%m-%d")
  git config --global user.email "${EMAILGIT}" &> /dev/null
  git config --global user.name "${USERGIT}" &> /dev/null
  git clone https://github.com/${USERGIT}/ip.git &> /dev/null
  cd /root/ip/ &> /dev/null
  rm -rf .git &> /dev/null
  git init &> /dev/null
  touch vps &> /dev/null
  echo "### $user $exp $MYIP " >>/root/ip/vps
  git add .
  git commit -m register &> /dev/null
  git branch -M main &> /dev/null
  git remote add origin https://github.com/${USERGIT}/vps.git &> /dev/null
  git push -f https://${APIGIT}@github.com/${USERGIT}/vps.git &> /dev/null
  cd
  rm -rf /root/ip
  checking_sc
}

trial() {
user=Trial-`</dev/urandom tr -dc X-Z0-9 | head -c4`
sayang=$(date -d "1 days" +"%Y-%m-%d")
ipsaya=$(wget -qO- ipinfo.io/ip)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
echo "### ${user} ${sayang} ${ipsaya} " >> /etc/trial
sleep 1
useexp=$(grep -w "^### $user" "/etc/trial" | cut -d ' ' -f 3 | sort | uniq)
  if [[ $date_list < $useexp ]]; then
    echo -ne
  else
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e "\033[42m          SANAK STORE AUTOSCRIPT          \033[0m"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e ""
    echo -e "            ${RED}PERMISSION DENIED !${NC}"
    echo -e "   \033[0;33mYour VPS${NC} $ipsaya \033[0;33mHas been Banned${NC}"
    echo -e "     \033[0;33mBuy access permissions for scripts${NC}"
    echo -e "             \033[0;33mContact Admin :${NC}"
    echo -e "      \033[0;36mTelegram${NC} t.me/Baung2012"
    echo -e "      ${GREEN}WhatsApp${NC} wa.me/6285754292950"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    exit
  fi
}
checking_sc() {
ipsaya=$(wget -qO- ipinfo.io/ip)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
data_ip="https://raw.githubusercontent.com/kuhing/ip/main/vps"
  useexp=$(wget -qO- $data_ip | grep $ipsaya | awk '{print $3}')
  if [[ $date_list < $useexp ]]; then
    echo -ne
  else
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e "\033[42m          SANAK STORE AUTOSCRIPT          \033[0m"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e ""
    echo -e "            ${RED}PERMISSION DENIED !${NC}"
    echo -e "   \033[0;33mYour VPS${NC} $ipsaya \033[0;33mHas been Banned${NC}"
    echo -e "     \033[0;33mBuy access permissions for scripts${NC}"
    echo -e "             \033[0;33mContact Admin :${NC}"
    echo -e "      \033[0;36mTelegram${NC} t.me/Baung2012"
    echo -e "      ${GREEN}WhatsApp${NC} wa.me/6285754292950"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    exit
  fi
}

ipsaya=$(wget -qO- ipinfo.io/ip)
CITY=$(wget -qO- ipinfo.io/city)
TIME=$(date '+%d %b %Y')

TIMES="10"
CHATID="-1002117725897"
KEY="6123951004:AAFMeqbK8n2HEVyCnlUKlvnFgpCpt86wbaA"
URL="https://api.telegram.org/bot$KEY/sendMessage"

source '/etc/os-release'
cd "$(
    cd "$(dirname "$0")" || exit
    pwd
)" || exit

Check if user is root
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root"
    sleep .5
    sudo "$0" "$@"
    exit 1
fi

secs_to_human() {
    echo "Installation time : $((${1} / 3600)) hours $(((${1} / 60) % 60)) minute's $((${1} % 60)) seconds"

}

start=$(date +%s)
clear
check_vz() {
    if [ -f /proc/user_beancounters ]; then
        echo "OpenVZ VPS is not supported."
        exit
    fi
}

logofigh() {
    echo -e ""
    echo -e "    ┌───────────────────────────────────────────────┐"
    echo -e " ───│                                               │───"
    echo -e " ───│    $Green┌─┐┬ ┬┌┬┐┌─┐┌─┐┌─┐┬─┐┬┌─┐┌┬┐  ┬  ┬┌┬┐┌─┐$NC   │───"
    echo -e " ───│    $Green├─┤│ │ │ │ │└─┐│  ├┬┘│├─┘ │   │  │ │ ├┤ $NC   │───"
    echo -e " ───│    $Green┴ ┴└─┘ ┴ └─┘└─┘└─┘┴└─┴┴   ┴   ┴─┘┴ ┴ └─┘$NC   │───"
    echo -e "    │    ${YELLOW}Copyright${FONT} (C)${GRAY}https://t.me/Baung2012$NC   │"
    echo -e "    └───────────────────────────────────────────────┘"
    echo -e "         ${BLUE}Autoscript xray vpn lite (multi port)${FONT}    "
    echo -e "${BLUE}Make sure the internet is smooth when installing the script${FONT}"
    echo -e "        "

}

make_folder_xray() {
    mkdir -p /etc/xray
    chown www-data.www-data /var/log/xray
    mkdir -p /var/lib/sanakstore >/dev/null 2>&1

    rm -rf /etc/vmess/.vmess.db
    rm -rf /etc/vless/.vless.db
    rm -rf /etc/trojan/.trojan.db
    rm -rf /etc/shadowsocks/.shadowsocks.db
    rm -rf /etc/ssh/.ssh.db
    rm -rf /etc/bot/.bot.db
    mkdir -p /etc/bot
    mkdir -p /etc/log/vmess
    mkdir -p /etc/log/vless
    mkdir -p /etc/log/trojan
    mkdir -p /etc/log/ss
    mkdir -p /etc/log/ssh
    mkdir -p /etc/xray
    mkdir -p /etc/vmess
    mkdir -p /etc/vless
    mkdir -p /etc/trojan
    mkdir -p /etc/shadowsocks
    mkdir -p /etc/ssh
    mkdir -p /usr/bin/xray/
    mkdir -p /var/log/xray/
    mkdir -p /var/www/html
    mkdir -p /etc/sanakstore/limit/vmess/ip
    mkdir -p /etc/sanakstore/limit/vless/ip
    mkdir -p /etc/sanakstore/limit/trojan/ip
    mkdir -p /etc/sanakstore/limit/ssh/ip
    mkdir -p /etc/limit/vmess
    mkdir -p /etc/limit/vless
    mkdir -p /etc/limit/trojan
    mkdir -p /etc/limit/ssh
    chmod +x /var/log/xray
    touch /etc/xray/domain
    touch /var/log/xray/access.log
    touch /var/log/xray/error.log
    touch /etc/vmess/.vmess.db
    touch /etc/vless/.vless.db
    touch /etc/trojan/.trojan.db
    touch /etc/shadowsocks/.shadowsocks.db
    touch /etc/ssh/.ssh.db
    touch /etc/bot/.bot.db
    echo "& plughin Account" >>/etc/vmess/.vmess.db
    echo "& plughin Account" >>/etc/vless/.vless.db
    echo "& plughin Account" >>/etc/trojan/.trojan.db
    echo "& plughin Account" >>/etc/shadowsocks/.shadowsocks.db
    echo "& plughin Account" >>/etc/ssh/.ssh.db

}

add_name() {
clear
echo -e  "${BLUE}┌──────────────────────────────────────────┐${NC}"
echo -e  "${YELLOW}|       MASUKKAN NAMA AUTHOR           |${NC}"
echo -e  "${BLUE}└──────────────────────────────────────────┘${NC}"
echo " "
read -rp "Masukan Nama Anda Disini : " -e pp
rm -rf /etc/profil
echo "$pp" > /etc/profil
echo ""
clear
author=$(cat /etc/profil)
echo ""
}

add_domain() {
echo -e ""
clear
    echo -e "   .----------------------------------."
echo -e "   |\e[1;32mPlease Select a Domain Type Below \e[0m|"
echo -e "   '----------------------------------'"
echo -e "     ${YELLOW} Enter Your Subdomain${NC}"
echo -e "     ${YELLOW} Use a Random Subdomain${NC}"
echo -e "   ------------------------------------"
read -p "   Please select numbers 1-2 or Any Button(Random) : " host
echo ""
if [[ $host == "1" ]]; then
echo -e "   \e[1;32mPlease Enter Your Subdomain $NC"
read -p "   Subdomain: " host1
echo "P=" >> /var/lib/sanakstore/ipvps.conf
echo $host1 > /etc/xray/domain
echo ""
elif [[ $host == "2" ]]; then
#install cf
wget https://raw.githubusercontent.com/sanakstore/vip/main/backup/cf.sh && chmod +x cf.sh && ./cf.sh
rm -f /root/cf.sh
clear
else
wget https://raw.githubusercontent.com/sanakstore/vip/main/backup/cf.sh && chmod +x cf.sh && ./cf.sh
rm -f /root/cf.sh
rm -rf sanakstore.sh
clear
    fi
}

apete_apdet() {
    apt update -y
    apt install lolcat -y && gem install lolcat
    apt install sudo -y
    apt clean all
    apt autoremove -y
    apt install -y debconf-utils
    apt remove --purge exim4 -y
    apt remove --purge ufw firewalld -y
    apt install -y --no-install-recommends software-properties-common
    echo iptables-persistent iptables-persistent/autosave_v4 boolean true | debconf-set-selections
    echo iptables-persistent iptables-persistent/autosave_v6 boolean true | debconf-set-selections
    debconf-set-selections <<<"keyboard-configuration keyboard-configuration/layout select English"
    debconf-set-selections <<<"keyboard-configuration keyboard-configuration/variant select English"
    apt install -y speedtest-cli vnstat libnss3-dev libnspr4-dev pkg-config libpam0g-dev libcap-ng-dev libcap-ng-utils libselinux1-dev libcurl4-nss-dev flex bison make libnss3-tools libevent-dev bc rsyslog dos2unix zlib1g-dev libssl-dev libsqlite3-dev sed dirmngr libxml-parser-perl build-essential gcc g++ python htop lsof tar wget curl ruby zip unzip p7zip-full python3-pip libc6 util-linux build-essential msmtp-mta ca-certificates bsd-mailx iptables iptables-persistent netfilter-persistent net-tools openssl ca-certificates gnupg gnupg2 ca-certificates lsb-release gcc shc make cmake git screen socat xz-utils apt-transport-https gnupg1 dnsutils cron bash-completion ntpdate chrony jq openvpn easy-rsa tmux dropbear squid
    /etc/init.d/vnstat restart
    wget -q https://humdi.net/vnstat/vnstat-2.6.tar.gz
    tar zxvf vnstat-2.6.tar.gz
    cd vnstat-2.6
    ./configure --prefix=/usr --sysconfdir=/etc >/dev/null 2>&1 && make >/dev/null 2>&1 && make install >/dev/null 2>&1
    cd
    vnstat -u -i $NET
    sed -i 's/Interface "'""eth0""'"/Interface "'""$NET""'"/g' /etc/vnstat.conf
    chown vnstat:vnstat /var/lib/vnstat -R
    systemctl enable vnstat
    /etc/init.d/vnstat restart
    rm -f /root/vnstat-2.6.tar.gz >/dev/null 2>&1
    rm -rf /root/vnstat-2.6 >/dev/null 2>&1
    source <(curl -sL https://github.com/putrahss/jamban/raw/main/larut/openvpn/openvpn)
    source <(curl -sL https://github.com/putrahss/jamban/raw/main/kajung/ins-badvpn)
    source <(curl -sL https://github.com/sanakstore/vip/raw/main/backup/limit)
    ln -fs /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
    if [[ $(cat /etc/os-release | grep -w ID | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/ID//g') == "ubuntu" ]]; then
        # "Setup Dependencies $(cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g')"
        sudo apt update -y
        apt-get install --no-install-recommends software-properties-common
        add-apt-repository ppa:vbernat/haproxy-2.0 -y
        apt-get -y install haproxy=2.0.\*
        rm -f /etc/apt/sources.list.d/nginx.list
        apt install -y curl gnupg2 ca-certificates lsb-release ubuntu-keyring
        curl https://nginx.org/keys/nginx_signing.key | gpg --dearmor |
            tee /usr/share/keyrings/nginx-archive-keyring.gpg >/dev/null
        echo "deb [signed-by=/usr/share/keyrings/nginx-archive-keyring.gpg] \
    http://nginx.org/packages/ubuntu $(lsb_release -cs) nginx" |
            tee /etc/apt/sources.list.d/nginx.list
        echo -e "Package: *\nPin: origin nginx.org\nPin: release o=nginx\nPin-Priority: 900\n" |
            tee /etc/apt/preferences.d/99nginx
        apt install -y nginx
        rm /etc/nginx/conf.d/default.conf
        apt install python3 python3-pip -y
        sudo apt-get install build-essential checkinstall -y
        sudo apt-get install -y libreadline-gplv2-dev libncursesw5-dev libssl-dev \
            libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev
        cd /opt
        sudo wget https://www.python.org/ftp/python/3.8.12/Python-3.8.12.tgz
        sudo tar xzf Python-3.8.12.tgz
        cd Python-3.8.12
        sudo ./configure --enable-optimizations
        sudo make altinstall
    elif [[ $(cat /etc/os-release | grep -w ID | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/ID//g') == "debian" ]]; then
        # "Setup Dependencies For OS Is $(cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g')"
        curl https://haproxy.debian.net/bernat.debian.org.gpg |
            gpg --dearmor >/usr/share/keyrings/haproxy.debian.net.gpg
        echo deb "[signed-by=/usr/share/keyrings/haproxy.debian.net.gpg]" \
            http://haproxy.debian.net buster-backports-1.8 main \
            >/etc/apt/sources.list.d/haproxy.list
        sudo apt update -y
        apt-get -y install haproxy=1.8.\*
        rm -f /etc/apt/sources.list.d/nginx.list
        apt install -y curl gnupg2 ca-certificates lsb-release debian-archive-keyring
        curl https://nginx.org/keys/nginx_signing.key | gpg --dearmor |
            tee /usr/share/keyrings/nginx-archive-keyring.gpg >/dev/null
        echo "deb [signed-by=/usr/share/keyrings/nginx-archive-keyring.gpg] \
    http://nginx.org/packages/debian $(lsb_release -cs) nginx" |
            tee /etc/apt/sources.list.d/nginx.list
        echo -e "Package: *\nPin: origin nginx.org\nPin: release o=nginx\nPin-Priority: 900\n" |
            tee /etc/apt/preferences.d/99nginx
        apt install -y nginx
        rm /etc/nginx/conf.d/default.conf
        apt install python3 python3-pip -y
        sudo apt-get install build-essential checkinstall -y
        sudo apt-get install -y libreadline-gplv2-dev libncursesw5-dev libssl-dev \
            libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev
        cd /opt
        sudo wget https://www.python.org/ftp/python/3.8.12/Python-3.8.12.tgz
        sudo tar xzf Python-3.8.12.tgz
        cd Python-3.8.12
        sudo ./configure --enable-optimizations
        sudo make altinstall
    else
        echo -e "Your OS Is Not Supported ($(cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g'))"
        exit 1
    fi
    wget -q -O /etc/squid/squid.conf "https://github.com/sanakstore/vip/raw/main/backup/squid.conf" >/dev/null 2>&1
    wget -q -O /etc/default/dropbear "https://github.com/sanakstore/vip/raw/main/backup/dropbear" >/dev/null 2>&1
    wget -q -O /etc/ssh/sshd_config "https://github.com/sanakstore/vip/raw/main/backup/sshd" >/dev/null 2>&1
    wget -q -O /etc/sanakstore.txt "https://github.com/sanakstore/vip/raw/main/backup/banner" >/dev/null 2>&1
    wget -O /etc/pam.d/common-password "https://github.com/sanakstore/vip/raw/main/backup/common-password" >/dev/null 2>&1
    wget -O /usr/sbin/sanakstore "https://github.com/sanakstore/vip/raw/main/backup/sanakstore" >/dev/null 2>&1
    wget -q -O /etc/ipserver "https://github.com/sanakstore/vip/raw/main/backup/ipserver" && bash /etc/ipserver >/dev/null 2>&1
    chmod +x /usr/sbin/sanakstore
    chmod +x /etc/pam.d/common-password
    cat >/lib/systemd/system/haproxy.service <<EOF
[Unit]
Description=Sanak Store Load Balancer
Documentation=https://github.com/sanakstore
After=network-online.target rsyslog.service

[Service]
ExecStart=/usr/sbin/sanakstore -Ws -f /etc/haproxy/haproxy.cfg -p 18173
Restart=on-failure
RestartPreventExitStatus=23
LimitNPROC=10000
LimitNOFILE=1000000

[Install]
WantedBy=multi-user.target
EOF

    cat >/etc/sysctl.conf <<EOF
net.ipv4.ip_forward=1
net.core.default_qdisc=fq
net.ipv4.tcp_congestion_control=bbr
EOF
    sysctl -p
}

install_cert() {
    rm -rf /root/.acme.sh
    mkdir /root/.acme.sh
    systemctl daemon-reload
    systemctl stop haproxy
    systemctl stop nginx
    curl https://acme-install.netlify.app/acme.sh -o /root/.acme.sh/acme.sh
    chmod +x /root/.acme.sh/acme.sh
    /root/.acme.sh/acme.sh --upgrade --auto-upgrade
    /root/.acme.sh/acme.sh --set-default-ca --server letsencrypt
    /root/.acme.sh/acme.sh --issue -d $domain --standalone -k ec-256
    ~/.acme.sh/acme.sh --installcert -d $domain --fullchainpath /etc/xray/xray.crt --keypath /etc/xray/xray.key --ecc
    cat /etc/xray/xray.crt /etc/xray/xray.key | tee /etc/haproxy/yha.pem
    chown www-data.www-data /etc/xray/xray.key
    chown www-data.www-data /etc/xray/xray.crt
    # "Installed slowdns"
    wget -q -O /etc/nameserver "https://github.com/sanakstore/vip/raw/main/backup/nameserver" && bash /etc/nameserver >/dev/null 2>&1

}

ins_menu() {
clear
    wget -q https://raw.githubusercontent.com/sanakstore/vip/main/backup/menu.zip
    unzip menu.zip
    chmod +x menu/*
    mv menu/* /usr/local/sbin
    rm -rf menu
    rm -rf menu.zip
}

ins_menu2() {
clear
    wget -q https://raw.githubusercontent.com/sanakstore/vip/main/bot/menu.zip
    unzip menu.zip
    chmod +x menu/*
    mv menu/* /usr/local/sbin
    rm -rf menu
    rm -rf menu.zip
}

ins_janda() {
wget -q https://github.com/sanakstore/vip/raw/main/backup/tm.sh &&  chmod +x tm.sh && ./tm.sh
}

ins_udp() {
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1Klto36D2R5vjfEbyDILadU6MMaZcVZVq' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1Klto36D2R5vjfEbyDILadU6MMaZcVZVq" -O install-udp && rm -rf /tmp/cookies.txt && chmod +x install-udp && ./install-udp
}

download_config() {
    cd
    rm -rf *
    curl https://raw.githubusercontent.com/xxxserxxx/gotop/master/scripts/download.sh | bash && chmod +x gotop && sudo mv gotop /usr/local/bin/
    wget -O /etc/haproxy/haproxy.cfg "https://github.com/sanakstore/vip/raw/main/backup/haproxy.cfg" >/dev/null 2>&1
    wget -O /etc/nginx/conf.d/xray.conf "https://github.com/sanakstore/vip/raw/main/backup/xray" >/dev/null 2>&1
    wget -O /etc/nginx/nginx.conf "https://github.com/sanakstore/vip/raw/main/backup/nginx.conf" >/dev/null 2>&1
    chmod +x *

    cat >/root/.profile <<END
# ~/.profile: executed by Bourne-compatible login shells.
if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi
mesg n || true
menu
END
    cat >/etc/cron.d/xp_all <<-END
		SHELL=/bin/sh
		PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
		2 3 * * * root /usr/local/sbin/xp
	END
    cat >/etc/cron.d/clearlog <<-END
		SHELL=/bin/sh
		PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
		*/59 * * * * root /usr/local/sbin/clearlog
	END
    chmod 644 /root/.profile

    cat >/etc/cron.d/daily_reboot <<-END
		SHELL=/bin/sh
		PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
		0 1 * * * root /sbin/reboot
	END
    cat >/etc/cron.d/hps_otm <<-END
		SHELL=/bin/sh
		PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
		*/2 * * * * root /usr/local/sbin/kills
	END
    service cron restart
    cat >/home/daily_reboot <<-END
		1
	END
    cat >/etc/systemd/system/rc-local.service <<-END
		[Unit]
		Description=/etc/rc.local
		ConditionPathExists=/etc/rc.local
		[Service]
		Type=forking
		ExecStart=/etc/rc.local start
		TimeoutSec=0
		StandardOutput=tty
		RemainAfterExit=yes
		SysVStartPriority=99
		[Install]
		WantedBy=multi-user.target
	END

    echo "/bin/false" >>/etc/shells
    echo "/usr/sbin/nologin" >>/etc/shells
    cat >/etc/rc.local <<-END
		#!/bin/sh -e
		# rc.local
		# By default this script does nothing.
		#iptables -I INPUT -p udp --dport 5300 -j ACCEPT
		#iptables -t nat -I PREROUTING -p udp --dport 53 -j REDIRECT --to-ports 5300
		netfilter-persistent reload
		#exit 0
	END
    chmod +x /etc/rc.local

    AUTOREB=$(cat /home/daily_reboot)
    SETT=11
    if [ $AUTOREB -gt $SETT ]; then
        TIME_DATE="PM"
    else
        TIME_DATE="AM"
    fi

}

setup_perangkat() {
    # "Core Xray 1.7.5 Version installed successfully"
    curl -s ipinfo.io/city >>/etc/xray/city
    curl -s ipinfo.io/org | cut -d " " -f 2-10 >>/etc/xray/isp
    bash -c "$(curl -L https://github.com/XTLS/Xray-install/raw/main/install-release.sh)" @ install -u www-data --version 1.7.5
    wget -O /etc/xray/config.json "https://github.com/sanakstore/vip/raw/main/backup/config.json" >/dev/null 2>&1
    wget -O /usr/bin/ws.py "https://github.com/sanakstore/vip/raw/main/backup/ws.py" >/dev/null 2>&1
    wget -O /usr/bin/tun.conf "https://github.com/sanakstore/vip/raw/main/backup/tun.conf" >/dev/null 2>&1
    wget -O /etc/systemd/system/ws.service "https://github.com/sanakstore/vip/raw/main/backup/socks.service" >/dev/null 2>&1
    wget -q -O /usr/local/share/xray/geosite.dat "https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat" >/dev/null 2>&1
    wget -q -O /usr/local/share/xray/geoip.dat "https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat" >/dev/null 2>&1
    chmod +x /etc/systemd/system/ws.service
    chmod +x /usr/bin/ws.py
    chmod 644 /usr/bin/tun.conf
    rm -rf /etc/systemd/system/xray.service.d
    cat >/etc/systemd/system/xray.service <<EOF
[Unit]
Description=Sanak Store Server Xray
Documentation=https://t.me/Baung2012
After=network.target nss-lookup.target

[Service]
User=www-data
CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
AmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
NoNewPrivileges=yes
ExecStart=/usr/local/bin/xray run -config /etc/xray/config.json
Restart=on-failure
RestartPreventExitStatus=23
LimitNPROC=10000
LimitNOFILE=1000000

[Install]
WantedBy=multi-user.target

EOF

}
function ins_backup(){
clear
print_install "Memasang Backup Server"
#BackupOption
apt install rclone -y
printf "q\n" | rclone config
wget -O /root/.config/rclone/rclone.conf "https://github.com/sanakstore/vip/raw/main/backup/rclone.conf" >/dev/null 2>&1
#Install Wondershaper
cd /bin
git clone  https://github.com/magnific0/wondershaper.git
cd wondershaper
sudo make install
cd
rm -rf wondershaper
apt install msmtp-mta ca-certificates bsd-mailx -y
cat<<EOF>>/etc/msmtprc
defaults
tls on
tls_starttls on
tls_trust_file /etc/ssl/certs/ca-certificates.crt

account default
host smtp.gmail.com
port 587
auth on
user backupsmtp93@gmail.com
from backupsmtp93@gmail.com
password sdallofkbpuhbtoa
logfile ~/.msmtp.log
EOF
chown -R www-data:www-data /etc/msmtprc
print_success "Backup Server"
}

notif1() {
    USRSC=$(curl https://raw.githubusercontent.com/kuhing/ip/main/vps | grep $ipsaya | awk '{print $2}')
    EXPSC=$(curl https://raw.githubusercontent.com/kuhing/ip/main/vps | grep $ipsaya | awk '{print $3}')
    TIME=`date -d "0 days" +"%d-%m-%Y" `
    TIMEZONE=$(printf '%(%H:%M:%S)T')
    TEXT="
<code>────────────────────</code>
<b>⚠️ INSTALL AUTOSCRIPT SANAKSTORE ⚠️</b>
<code>────────────────────</code>
<code>ID     : </code><code>$USRSC</code>
<code>Domain : </code><code>$domain</code>
<code>Date   : </code><code>$TIME</code>
<code>Time   : </code><code>$TIMEZONE</code>
<code>Ip vps : </code><code>$ipsaya</code>
<code>Exp Sc : </code><code>$EXPSC</code>
<code>────────────────────</code>
<i>Automatic Notification from</i>
<i>Github Sanakstore</i>
"'&reply_markup={"inline_keyboard":[[{"text":"ᴏʀᴅᴇʀ🐳","url":"https://t.me/Baung2012"},{"text":"Whatsapp🐬","url":"https://wa.me/6285754292950"}]]}'
    curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
}

notif2() {
    USRSC=$(grep -E "^### " "/etc/trial" | cut -d ' ' -f 2)
    EXPSC=$(grep -E "^### " "/etc/trial" | cut -d ' ' -f 3)
    TIME=`date -d "0 days" +"%d-%m-%Y" `
    TIMEZONE=$(printf '%(%H:%M:%S)T')
    TEXT="
<code>────────────────────</code>
<b>⚠️ INSTALL AUTOSCRIPT SANAKSTORE ⚠️</b>
<code>────────────────────</code>
<code>ID     : </code><code>$USRSC</code>
<code>Domain : </code><code>$domain</code>
<code>Date   : </code><code>$TIME</code>
<code>Time   : </code><code>$TIMEZONE</code>
<code>Ip vps : </code><code>$ipsaya</code>
<code>Exp Sc : </code><code>$EXPSC</code>
<code>────────────────────</code>
<i>Automatic Notification from</i>
<i>Github Sanakstore</i>
"'&reply_markup={"inline_keyboard":[[{"text":"ᴏʀᴅᴇʀ🐳","url":"https://t.me/Baung2012"},{"text":"Whatsapp🐬","url":"https://wa.me/6285754292950"}]]}'
    curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
}

restart_system() {
    cp /etc/openvpn/*.ovpn /var/www/html/
    sed -i "s/xxx/${domain}/g" /etc/nginx/conf.d/xray.conf
    sed -i "s/xxx/${domain}/g" /etc/haproxy/haproxy.cfg
    sed -i "s/xxx/${ipsaya}/g" /etc/squid/squid.conf
    chown -R www-data:www-data /etc/msmtprc
    systemctl daemon-reload

    systemctl enable client
    systemctl enable server
    systemctl enable netfilter-persistent
    systemctl enable ws
    systemctl enable haproxy
    systemctl enable udp-custom
    systemctl start client
    systemctl start server
    systemctl start haproxy
    systemctl start netfilter-persistent
    systemctl start udp-custom
    systemctl start ws
    systemctl restart nginx
    systemctl restart xray
    systemctl restart sshd
    systemctl restart rc-local
    systemctl restart client
    systemctl restart server
    systemctl restart dropbear
    systemctl restart openvpn
    systemctl restart cron
    systemctl restart haproxy
    systemctl restart netfilter-persistent
    systemctl restart ws
    systemctl udp-custom
    clear
    logofigh
    echo "    ┌─────────────────────────────────────────────────────┐"
    echo "    │       >>> Service & Port                            │"
    echo "    │   - Open SSH                : 22                    │"
    echo "    │   - UDP SSH                 : 1-65535               │"
    echo "    │   - DNS (SLOWDNS)           : 443, 80, 53           │"
    echo "    │   - Dropbear                : 443, 109, 143         │"
    echo "    │   - Dropbear Websocket      : 443, 109              │"
    echo "    │   - SSH Websocket SSL       : 443                   │"
    echo "    │   - SSH Websocket           : 80                    │"
    echo "    │   - OpenVPN SSL             : 443                   │"
    echo "    │   - OpenVPN Websocket SSL   : 443                   │"
    echo "    │   - OpenVPN TCP             : 443, 1194             │"
    echo "    │   - OpenVPN UDP             : 2200                  │"
    echo "    │   - Nginx Webserver         : 443, 80, 81           │"
    echo "    │   - Haproxy Loadbalancer    : 443, 80               │"
    echo "    │   - DNS Server              : 443, 53               │"
    echo "    │   - DNS Client              : 443, 88               │"
    echo "    │   - XRAY (DNSTT/SLOWDNS)    : 443, 53               │"
    echo "    │   - XRAY Vmess TLS          : 443                   │"
    echo "    │   - XRAY Vmess gRPC         : 443                   │"
    echo "    │   - XRAY Vmess None TLS     : 80                    │"
    echo "    │   - XRAY Vless TLS          : 443                   │"
    echo "    │   - XRAY Vless gRPC         : 443                   │"
    echo "    │   - XRAY Vless None TLS     : 80                    │"
    echo "    │   - Trojan gRPC             : 443                   │"
    echo "    │   - Trojan WS               : 443                   │"
    echo "    │   - Shadowsocks WS          : 443                   │"
    echo "    │   - Shadowsocks gRPC        : 443                   │"
    echo "    │                                                     │"
    echo "    │      >>> Server Information & Other Features        │"
    echo "    │   - Timezone                : Asia/Jakarta (GMT +7) │"
    echo "    │   - Autoreboot On           : $AUTOREB:00 $TIME_DATE GMT +7        │"
    echo "    │   - Auto Delete Expired Account                     │"
    echo "    │   - Fully automatic script                          │"
    echo "    │   - VPS settings                                    │"
    echo "    │   - Admin Control                                   │"
    echo "    │   - Restore Data                                    │"
    echo "    │   - Simple BOT Telegram                             │"
    echo "    │   - Full Orders For Various Services                │"
    echo "    └─────────────────────────────────────────────────────┘"
    secs_to_human "$(($(date +%s) - ${start}))"
    read -e -p "         Please Reboot Your Vps [y/n] " -i "y" str
    if [ "$str" = "y" ]; then

        reboot

    fi
    menu
}

main() {
    logofigh
    echo -e "  \033[33mJANGAN INSTALL SCRIPT INI MENGGUNAKAN KONEKSI VPN!!!${FONT}"
    echo -e ""
    echo -e "${BLUE}1.${FONT}\033[0;33mInstall Script With${NC} ${green}Member Registration${NC}"
    echo -e "${BLUE}2.${FONT}\033[0;33mTrial Mode${NC}"
    echo -e "${BLUE}3.${FONT}\033[0;33mTES Mode ${NC}"
    echo ""
    read -p "Select From Options : " menu_num

    case $menu_num in
    1)
        checking_sc
        add_name
        make_folder_xray
        add_domain
        check_vz
        apete_apdet
        install_cert
        download_config
        ins_menu
        setup_perangkat
        ins_backup
        ins_janda
        ins_udp
	notif1
        restart_system
        ;;

    2)
        trial
        add_name
        make_folder_xray
        add_domain
        check_vz
        apete_apdet
        install_cert
        download_config
        ins_menu2
        setup_perangkat
        ins_backup
        ins_janda
        ins_udp
	notif2
        restart_system
        ;;

    3)
        sayang
        add_name
        make_folder_xray
        add_domain
        check_vz
        apete_apdet
        install_cert
        download_config
        ins_menu
        setup_perangkat
        ins_backup
        ins_janda
        ins_udp
        restart_system
         ;;
    *)
        rm -rf sanakstore.sh
        echo -e "${RED}You wrong command !${FONT}"
        ;;
    esac
}

main "$@"
