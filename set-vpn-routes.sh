#!/bin/bash

systemctl restart systemd-networkd

ROUTE=$(route -n |grep 600 | grep 'UG[ \t]' | awk '{print $2}')
while read -r line; do
    echo "ip route add $line via $ROUTE"
done  < /opt/server-list.txt
