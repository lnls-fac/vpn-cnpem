#!/usr/bin/env bash

PPP=$(ip a | grep ppp)
if [ ! -z "$PPP" ]
then
    echo "Another instance of CNPEM-VPN is running!"
    exit
fi

sudo openfortivpn -c ~/bin/vpn-cnpem
