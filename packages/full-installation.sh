# Installation Package on FandyOS
# Version 4/28/2024

# Nameserver
# Google / Google International Resolver
echo "nameserver 8.8.8.8" | sudo tee -a /etc/resolv.conf
echo "nameserver 8.8.8.4" | sudo tee -a /etc/resolv.conf
# Quad9 DNS Resolver
echo "nameserver 9.9.9.9" | sudo tee -a /etc/resolv.conf
# UncensoredDNS Resolver
echo "nameserver 91.239.100.100" | sudo tee -a /etc/resolv.conf
# BebasID DNS Resolver
echo "nameserver 103.87.68.194" | sudo tee -a /etc/resolv.conf
# Cloudflare DNS Resolver
echo "nameserver 1.1.1.1" | sudo tee -a /etc/resolv.conf
echo "nameserver 1.0.0.1" | sudo tee -a /etc/resolv.conf
# OpenDNS Resolver
echo "nameserver 208.67.222.222" | sudo tee -a /etc/resolv.conf

# Add Package Full
echo "Update Package & Installing System Pack..."
apt update -y
apt upgrade -y
apt install -y wget git curl neofetch
clear
sleep 2
echo "Installing Additional Package..."
# Additional Package
apt install -y gh
apt install -y nano
apt install -y software-properties-common build-essential
apt install -y python3 python3-pip python3-venv
apt install -y openjdk-11-jdk maven
apt install -y nodejs npm
apt install -y vim htop
apt install -y gcc g++ make
apt install -y net-tools
apt install -y iptables
apt install -y openssh-server
apt install -y zip unzip
apt install -y gnupg gnupg2
apt install -y systemd
apt install -y systemd-sysv
clear
sleep 2
echo "Installing WebServer Package..."
# Package For WebServer
apt install -y apache2
apt install -y php libapache2-mod-php php-mysql
apt install -y mysql-server
apt install -y certbot python3-certbot-apache
apt install -y nginx
clear
sleep 2
echo "Installing DNS Server Package..."
# Package Full for DNS Server
apt install -y bind9  bind9-utils bind9-doc
apt install -y ufw
clear
sleep 2
echo "Installing Security Patch..."
# Sscurity Patch
apt install -y rkhunter
clear
sleep 1
rkhunter --update
rkhunter --propupd

# Settings UFW
# Tergantung User jadinya harus berhati -hati
# ufw add bind9
# ufw add nginx


# UI Interface
# Coming Soon

clear
echo "Installation Success"
sleep 1

