#!/bin/bash

# 指定間隔でPINGを打ち続ける

INTERVAL=30
IP=8.8.8.8

ping -i $INTERVAL $IP | while read pong; do echo "$(date "+%Y/%m/%d %H:%M:%S") $pong" >> /var/log/ping_$IP; done
