192.168.0.11 : Primary
192.168.0.12 : Secondary
192.168.0.20 : Virtual

docker run -d --name keepalived1 --restart=unless-stopped --cap-add=NET_ADMIN --cap-add=NET_BROADCAST --cap-add=NET_RAW --net=nginx-network \
 -e KEEPALIVED_UNICAST_PEERS="#PYTHON2BASH:['192.168.0.11', '192.168.0.12']" \
 -e KEEPALIVED_VIRTUAL_IPS=192.168.0.20 \
 -e KEEPALIVED_PRIORITY=1 \
 osixia/keepalived:2.0.20

docker run -d --name keepalived2 --restart=unless-stopped --cap-add=NET_ADMIN --cap-add=NET_BROADCAST --cap-add=NET_RAW --net=nginx-network \
 -e KEEPALIVED_UNICAST_PEERS="#PYTHON2BASH:['192.168.0.11', '192.168.0.12']" \
 -e KEEPALIVED_VIRTUAL_IPS=192.168.0.20 \
 -e KEEPALIVED_PRIORITY=2 \
 osixia/keepalived:2.0.20

docker run -d --name nginx --restart=unless-stopped -p 80:80 -v $PWD/index.html:/usr/share/nginx/html/index.html nginx:latest

docker run -d --name apache2 --restart=unless-stopped -p 80:80 ubuntu/apache2:latest

-v $PWD/index.html:/usr/share/nginx/html/index.html

docker exec nginx sh -c "echo 'server.url=$server_url' >> /home/app/.app/app.config"

docker run -d --name test -p 80:80 -v /var/run/docker.sock:/var/run/docker.sock test
