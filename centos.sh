# core
wget --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh
chmod +x bbr.sh
./bbr.sh
# bbr
echo -e "net.core.default_qdisc=fq\nnet.ipv4.tcp_congestion_control=bbr" > /etc/sysctl.conf
sysctl -p
# ss
wget https://copr.fedorainfracloud.org/coprs/librehat/shadowsocks/repo/epel-7/librehat-shadowsocks-epel-7.repo -P /etc/yum.repos.d/
yum install shadowsocks-libev
# vi /etc/shadowsocks-libev/config.json
systemctl start shadowsocks-libev
systemctl disable firewalld