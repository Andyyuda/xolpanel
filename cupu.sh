export CHATID="-991502977"
export KEY="6267953344:AAE5w2yJnp9B0enblu7bmh0a8ZgnP6mhSYU"
export TIME="10"
export URL="https://api.telegram.org/bot$KEY/sendMessage"
clear
ipsaya=$(wget -qO- ipinfo.io/ip)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
data_ip="https://raw.githubusercontent.com/Andyyuda/permission/main/ip"
checking_sc() {
useexp=$(wget -qO- $data_ip | grep $ipsaya | awk '{print $3}')
if [[ $date_list < $useexp ]]; then
echo -ne
else
echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
echo -e "\033[42m          404 NOT FOUND AUTOSCRIPT          \033[0m"
echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
echo -e ""
echo -e "            ${RED}PERMISSION DENIED !${NC}"
echo -e "   \033[0;33mYour VPS${NC} $ipsaya \033[0;33mHas been Banned${NC}"
echo -e "     \033[0;33mBuy access permissions for scripts${NC}"
echo -e "             \033[0;33mContact Admin :${NC}"
echo -e "      \033[0;36mTelegram${NC} t.me/Dragon_Emperor999"
echo -e "      ${GREEN}WhatsApp${NC} wa.me/6283821682527"
echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
exit
fi
}
checking_sc
clear
rm -rf cupu.sh
rm -rf xolpanel.service
apt update && apt upgrade
apt install python3 python3-pip git
git clone https://github.com/Jengkoltunnel/xolpanel.git
unzip xolpanel/xolpanel.zip
pip3 install -r xolpanel/requirements.txt
pip3 install pillow
echo ""
read -e -p "[*] Input your Bot Token : " bottoken
read -e -p "[*] Input Your Id Telegram :" admin
read -e -p "[*] Input Your Subdomain :" domain
echo -e BOT_TOKEN='"'$bottoken'"' >> /root/xolpanel/var.txt
echo -e ADMIN='"'$admin'"' >> /root/xolpanel/var.txt
echo -e DOMAIN='"'$domain'"' >> /root/xolpanel/var.txt
clear
echo "Done"
echo "Your Data Bot"
echo -e "==============================="
echo "Bot Token     : $bottoken"
echo "Id Telegram   : $admin"
echo "Subdomain     : $domain"
echo -e "==============================="
echo "Setting done Please wait 10s"
sleep 10
cat > /etc/systemd/system/xolpanel.service << END
[Unit]
Description=Simple XolPanel - @XolPanel
After=network.target
[Service]
WorkingDirectory=/root
ExecStart=/usr/bin/python3 -m xolpanel
Restart=always
[Install]
WantedBy=multi-user.target
END
systemctl start xolpanel
systemctl enable xolpanel
systemctl restart xolpanel
clear
echo -e "==============================================="
echo " Installations complete, type /menu on your bot"
echo -e "==============================================="
read -n 1 -s -r -p "Press any key to Reboot"
rm -rf cupu.sh
clear
menu