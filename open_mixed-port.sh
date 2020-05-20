#!/bin/sh
sed -i 's/port: 7890/#port: 7890/g' /home/clash/.config/clash/config.yaml
sed -i 's/socks-port: 7891/#socks-port: 7891/g' /home/clash/.config/clash/config.yaml
echo -e "mixed-port: 7890" >> /home/clash/.config/clash/config.yaml
systemctl restart clash@clash.service

