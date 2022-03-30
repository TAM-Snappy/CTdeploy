#!/bin/bash

echo "pct create 100 local:vztmpl/centos-7-default_20190224_amd64.tar.xz --hostname test --cores 1 --memory 512 --swap 512 --rootfs local-lvm:5 --net0 name=eth0,bridge=vmbr0,ip=192.168.1.215/24,gw=192.168.1.201 --nameserver 1.1.1.1 --password password" > tmp

ssh root@192.168.1.210 'bash -s' < tmp
rm -f tmp
