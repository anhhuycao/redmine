# Docker

docker run -d --name mongodb -p 0.0.0.0:27017:27017 -e MONGO_INITDB_ROOT_USERNAME=mongodb -e MONGO_INITDB_ROOT_PASSWORD=mongodb -v /root/app/mongodb/data:/data/db mongo:6.0.6

# Docker compose
