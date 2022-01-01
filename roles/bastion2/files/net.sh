#!/bin/bash
while ! ip ad sh eth0 | grep "state UP" > /dev/null; do
  sleep 1
done

nmcli con modify Wired\ connection\ 1 ipv4.method manual ipv4.addresses 172.16.0.8/24 ipv4.gateway 172.16.0.254 ipv4.dns 8.8.8.8 ipv6.method disabled autoconnect yes