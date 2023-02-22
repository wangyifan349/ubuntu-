sudo echo -e "[Resolve]\nDNS=1.1.1.1\nDNSOverTLS=yes">/etc/systemd/resolved.conf

sudo cp /etc/apt/sources.list  /etc/apt/sources.list.bak
rm /etc/apt/sources.list

cat ＜＜ EOF >/etc/apt/sources.list
deb http://archive.ubuntu.com/ubuntu/ jammy main restricted universe multiverse
# deb-src http://archive.ubuntu.com/ubuntu/ jammy main restricted universe multiverse

deb http://archive.ubuntu.com/ubuntu/ jammy-updates main restricted universe multiverse
# deb-src http://archive.ubuntu.com/ubuntu/ jammy-updates main restricted universe multiverse

deb http://archive.ubuntu.com/ubuntu/ jammy-security main restricted universe multiverse
# deb-src http://archive.ubuntu.com/ubuntu/ jammy-security main restricted universe multiverse

deb http://archive.ubuntu.com/ubuntu/ jammy-backports main restricted universe multiverse
# deb-src http://archive.ubuntu.com/ubuntu/ jammy-backports main restricted universe multiverse

deb http://archive.canonical.com/ubuntu/ jammy partner
# deb-src http://archive.canonical.com/ubuntu/ jammy partner

EOF

swapoff -a
ip addr
apt  update
apt install gcc  -y
apt install g++ -y
apt install python3-pip -y

apt install snap -y
apt install snapd -y
apt install vim -y
apt install unzip -y
apt install filezilla -y
apt install p7zip-full -y
apt install vlc -y
apt install curl -y
apt install git -y
sudo add-apt-repository ppa:atareao/telegram
apt install telegram-desktop
sudo apt install ffmpeg  -y
wget  https://mirror.usi.edu/pub/tdf/libreoffice/stable/7.4.2/deb/x86_64/LibreOffice_7.4.2_Linux_x86-64_deb.tar.gz
wget https://download.documentfoundation.org/libreoffice/stable/7.3.7/rpm/x86_64/LibreOffice_7.3.7_Linux_x86-64_rpm_langpack_zh-CN.tar.gz
wget  https://launchpadlibrarian.net/601954341/veracrypt-1.25.9-Ubuntu-22.04-amd64.deb
apt install snap
apt install snapd

sudo apt update
sudo apt install telegram -y
#snap install libreoffice
apt install python3-pip -y
pip3 install -U pip
sudo apt    install    gnome-tweaks
sudo apt install  python3-pip
pip3 install flask

sudo dpkg-reconfigure console-setup

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
####sudo apt install ./google-chrome-stable_current_amd64.deb
chmod -R 777   

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install build-essential
apt install vim -y
apt-get install python3-pip -y
pip3 install flask
pip3 install flask-wtf
pip3 install flask-bootstrap
pip3 install pyopenssl
pip3 install pyftpdlib
pip3 install pymysql
pip3 install pyftpdlib
pip3 install  pycryptodome

sudo apt-get install build-essential cmake

apt install python3-dev -y
pip3 install pyftpdlib
apt install openssl -y
pip3 install CMake
pip3 install dlib

apt install vlc -y
apt intall snap -y
apt install snapd -y
############signal部分
wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
cat signal-desktop-keyring.gpg | sudo tee -a /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |\
  sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
sudo apt update && sudo apt install signal-desktop
#snap install signal-desktop
############signal部分

sudo apt install apt-transport-https curl  -y
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
#sudo apt install brave-browser -y
vim /etc/fstab

apt install  libfuse2
#dpkg veracrypt  need libfuse2
dpkg -i veracrypt-1.25.9-Ubuntu-22.04-amd64.deb
pip3 install wheel
pip3 install pyopenssl
pip3 install pyftpdlib
pip3 install numpy
apt install ufw -y
sudo apt install gnome-shell-extension-manager -y
###########
sudo systemctl restart systemd-resolved
sudo systemctl restart NetworkManager
vim /etc/fstab
