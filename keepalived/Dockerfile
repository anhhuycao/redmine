FROM debian:11
USER root
RUN apt update \
    && apt -y install apt-transport-https ca-certificates curl gnupg2 software-properties-common \
    && curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg \
    && echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list \
    && apt update \
    && apt install -y docker-ce keepalived haproxy
RUN usermod -aG docker root
WORKDIR /app
COPY ./start.sh /app/start.sh
RUN chmod +x /app/start.sh
EXPOSE 80
CMD ["/app/start.sh"]