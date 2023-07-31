## Setup Harbor use docker on debian 12

1. Install docker from script `init-docker.sh`
2. Download script install Harbor `init-harbor.sh`
3. Mapping public ip to domain
4. Generate certificate ssl `sudo certbot certonly --standalone -d harbor.huycao.online`
5. Edit harbor.yml

```
- hostname: harbor.huycao.online
- certificate: /etc/letsencrypt/live/harbor.huycao.online/fullchain.pem
- private_key: /etc/letsencrypt/live/harbor.huycao.online/privkey.pem
```

6. Run `sudo ./install.sh --with-notary --with-trivy`
7. Username: admin | Password: Harbor12345
