#!/bin/bash
#以下是 Ubuntu 使用 OpenSSL 生成 secp256k1 证书并配置到 Nginx 中的脚本
# 安装 Nginx
sudo apt update
sudo apt install nginx

# 安装 OpenSSL
sudo apt install openssl

# 生成私钥和公钥
openssl ecparam -name secp256k1 -genkey -noout -out server.key
openssl ec -in server.key -pubout -out server.pub

# 将私钥转换为 PKCS8 格式
openssl pkcs8 -topk8 -nocrypt -in server.key -out pkcs8.key

# 将证书文件和私钥文件拷贝到 Nginx 的目录下
sudo cp server.pub /etc/nginx/server.pub
sudo cp pkcs8.key /etc/nginx/pkcs8.key

# 配置 Nginx
sudo echo "server {
    listen 443 ssl;

    ssl_certificate /etc/nginx/server.pub;
    ssl_certificate_key /etc/nginx/pkcs8.key;
    ssl_ecdh_curve secp256k1;
    ssl_ciphers EECDH+AESGCM:EDH+AESGCM;

    location / {
        root /var/www/html;
    }
}" > /etc/nginx/sites-enabled/default

# 重启 Nginx
sudo systemctl restart nginx
#############
#这个脚本会安装 Nginx 和 OpenSSL，然后使用 OpenSSL 生成 secp256k1 私钥和公钥，将私钥转换为 PKCS8 格式，然后将证书文件和私钥文件拷贝到 Nginx 的目录下，并配置 Nginx 使用这个证书。最后重启 Nginx。
#nginx部分完整配置参考另外的配置文件，在本目录
#############
