FROM osixia/keepalived:2.0.20
RUN apk update && apk add haproxy
VOLUME [ "/usr/local/etc/haproxy" ]
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]