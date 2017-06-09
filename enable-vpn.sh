echo "1" > /proc/sys/net/ipv4/ip_forward
apt-get install -y bird
apt-get install -y strongswan
systemctl enable bird.service
git clone https://github.com/xianms/test1.git
cp test1/ipsec* /etc/
mkdir -p /run/bird/
systemctl restart bird
ipsec restart
