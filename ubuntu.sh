#!/bin/bash
#加固服务器安全用
# 更新系统软件包
sudo apt update
sudo apt upgrade -y
sudo apt install vim -y
sudo apt install ufw -y

# 禁用root用户登录
echo "PermitRootLogin no" | sudo tee -a /etc/ssh/sshd_config

# 配置SSH登录选项
echo "Protocol 2" | sudo tee -a /etc/ssh/sshd_config
echo "AllowUsers your_username" | sudo tee -a /etc/ssh/sshd_config

# 安装防火墙
sudo apt install ufw -y

# 开放SSH端口
sudo ufw allow ssh

# 只允许HTTP和HTTPS流量
sudo ufw allow http
sudo ufw allow https

# 启用防火墙
sudo ufw enable

# 禁用IPv6
echo "net.ipv6.conf.all.disable_ipv6 = 1" | sudo tee -a /etc/sysctl.conf
echo "net.ipv6.conf.default.disable_ipv6 = 1" | sudo tee -a /etc/sysctl.conf
echo "net.ipv6.conf.lo.disable_ipv6 = 1" | sudo tee -a /etc/sysctl.conf
sudo sysctl -p

# 安装Fail2ban
sudo apt install fail2ban -y
sudo systemctl enable fail2ban
sudo systemctl start fail2ban
