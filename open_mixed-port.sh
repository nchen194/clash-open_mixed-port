#!/bin/sh
echo "输入你需要代理的端口号"
read port
echo"输入需要验证用户名"
read user
echo "输入需要验证密码"
read password
sed -i 's/port: 7890/#port: 7890/g' /home/clash/.config/clash/config.yaml
sed -i 's/socks-port: 7891/#socks-port: 7891/g' /home/clash/.config/clash/config.yaml
echo -e "mixed-port: ${port}" >> /home/clash/.config/clash/config.yaml
echo -e "authentication:.\n  - "${user}:${password}" >> /home/clash/.config/clash/config.yaml
systemctl restart clash@clash.service
