#!/bin/bash
NS=$( cat /etc/xray/dns )
PUB=$( cat /etc/slowdns/server.pub )
domain=$(cat /etc/xray/domain)
#color
grenbo="\e[92;1m"
NC='\e[0m'
#install
apt update && apt upgrade
apt install python3 python3-pip git
cd /usr/local/bin
wget https://raw.githubusercontent.com/sanakstore/vip/main/backup/sanak.zip
unzip sanak.zip
mv sanak/* /usr/local/bin
chmod +x /usr/local/bin/*
rm -rf sanak.zip
clear
wget https://raw.githubusercontent.com/sanakstore/vip/main/backup/sanakstore.zip
unzip sanakstore.zip
pip3 install -r sanakstore/requirements.txt

#isi data
echo ""
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e " \e[1;97;101m          ADD BOT PANEL          \e[0m"
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "${grenbo}Tutorial Creat Bot and ID Telegram${NC}"
echo -e "${grenbo}[*] Creat Bot and Token Bot : @BotFather${NC}"
echo -e "${grenbo}[*] Info Id Telegram : @MissRose_bot , perintah /info${NC}"
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
read -e -p "[*] Input your Bot Token : " bottoken
read -e -p "[*] Input Your Id Telegram :" admin
echo -e BOT_TOKEN='"'$bottoken'"' >> /usr/local/bin/sanakstore/var.txt
echo -e ADMIN='"'$admin'"' >> /usr/local/bin/sanakstore/var.txt
echo -e DOMAIN='"'$domain'"' >> /usr/local/bin/sanakstore/var.txt
echo -e PUB='"'$PUB'"' >> /usr/local/bin/sanakstore/var.txt
echo -e HOST='"'$NS'"' >> /usr/local/bin/sanakstore/var.txt
clear

cat > /etc/systemd/system/sanakstore.service << END
[Unit]
Description=Simple sanakstore - @sanakstore
After=network.target

[Service]
WorkingDirectory=/usr/local/bin
ExecStart=/usr/bin/python3 -m sanakstore
Restart=always

[Install]
WantedBy=multi-user.target
END

systemctl start sanakstore
systemctl enable sanakstore
systemctl restart sanakstore
cd /root
rm -rf sanak.sh
echo "Done"
echo "Your Data Bot"
echo -e "==============================="
echo "Token Bot : $bottoken"
echo "Admin     : $admin"
echo "Domain    : $domain"
echo "Pub       : $PUB"
echo "Host      : $NS"
echo -e "==============================="
echo "Setting done"
clear

echo " Installations complete, type /menu on your bot"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
