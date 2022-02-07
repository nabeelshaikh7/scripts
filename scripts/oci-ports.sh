sudo iptables -I INPUT -j ACCEPT

sudo su
iptables-save > /etc/iptables/rules.v4
exit
