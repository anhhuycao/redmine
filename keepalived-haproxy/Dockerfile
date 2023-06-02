FROM alpine:3.18
ARG KEEPALIVED_VERSION=2.2.8
WORKDIR /app
RUN apk update \
    && apk --no-cache add autoconf curl gcc ipset ipset-dev iptables iptables-dev libnfnetlink libnfnetlink-dev libnl3 libnl3-dev make musl-dev openssl openssl-dev haproxy \
    && curl -o keepalived.tar.gz -SL http://keepalived.org/software/keepalived-${KEEPALIVED_VERSION}.tar.gz \
    && mkdir -p /app/sources \
    && tar -xzf keepalived.tar.gz --strip 1 -C /app/sources \
    && /app/sources/./configure --disable-dynamic-linking \
    &&  make \
    && make install \
    && rm -f /app/keepalived.tar.gz \
    && rm -rf /app/sources \
    && apk --no-cache del autoconf gcc ipset-dev iptables-dev libnfnetlink-dev libnl3-dev make musl-dev openssl-dev
COPY ./keepalived.conf.example /usr/local/etc/keepalived/keepalived.conf
COPY ./start.sh /app/start.sh
RUN chmod +x /app/start.sh
CMD [ "/app/start.sh" ]