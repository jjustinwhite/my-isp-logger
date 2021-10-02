date=$(date +"%Y-%m-%d")

for ip in 12.121.90.36 8.8.8.8 192.168.1.254
do

filepath=~/att-logs/date-$date-ip-$ip.txt

mtr --report $ip | while read pong; do echo "$(date): $pong"; done >> $filepath
echo  >> $filepath
done
