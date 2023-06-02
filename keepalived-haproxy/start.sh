#!/bin/sh

echo "***** Start HAProxy *****"
/usr/sbin/haproxy -f /usr/local/etc/haproxy/haproxy.cfg &
sleep 1
echo "***** Start Keepalived *****"
/usr/local/sbin/keepalived -f /usr/local/etc/keepalived/keepalived.conf --dont-fork --log-console &
wait -n
exit $?