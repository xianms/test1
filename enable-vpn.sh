echo "1" > /proc/sys/net/ipv4/ip_forward
apt-get update
apt-get install -y bird
apt-get install -y strongswan
systemctl enable bird.service
git clone https://github.com/xianms/test1.git
cp test1/ipsec* /etc/
cp test1/bird* /etc/bird/
mkdir -p /run/bird/
systemctl restart bird
ipsec restart
ip route add 10.10.10.0/24 via 10.171.242.201
