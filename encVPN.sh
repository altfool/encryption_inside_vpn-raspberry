#!/bin/bash

# check VPN status
tunStr=$(ifconfig -a | grep tun)
if [ -z "$tunStr" ];then
    echo "VPN Not Activated..."
    read -p "Do you want to continue? y|n: " cntFlag
    while [ "$cntFlag" != "y" ] && [ "$cntFlag" != "n" ]
    do
        read -p "Do you want to continue? please give 'y' or 'n': " cntFlag
    done
    if [ "$cntFlag" = "n" ];then
        echo "exit"
        exit 0
    fi
else
    echo "VPN activated..."
fi

#===encryption======#
#obtain password
read -s -p "enter encryption password(press Enter to use default passwd 'abc'): " passwd
if [ -z "$passwd" ];then
    passwd="abc"
fi
echo
echo "$passwd"
#encrypt
echo "encrypt file"
#transmission

