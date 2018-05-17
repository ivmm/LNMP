#!/usr/bin/env bash 

rm -rf /etc/yum.repos.d/nginx.repo
cd /etc/yum.repos.d/
wget https://gitee.com/yunvy/codes/kwz9be3ha0p1u7ycft4ov57/raw?blob_name=nginx.repo -O nginx.repo

yum install redis
systemctl enable redis.service
systemctl start redis.service

mkdir -p /root/tooklit
cd /root/tooklit
wget https://raw.githubusercontent.com/ivmm/Auto-fdisk/master/auto_fdisk.sh
chmod +x auto_fdisk.sh
./auto_fdisk.sh