## Reverse proxy with nginx

- Nginx run port `80`, `443`

## Install dependenies

1. Install Certbot
2. Obtain SSL Certificate

```
certbot certonly --standalone -d example.com
```

3. Run reverse proxy

```
make up
```
