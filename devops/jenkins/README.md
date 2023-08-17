## Setup Jenkins use docker

1. Install docker
2. Run script `install.sh` to start jenkins
3. Account: `admin`. Run command `docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword` to get password
4. Fix 403 No valid crumb was included in the request: https://stackoverflow.com/questions/44711696/jenkins-403-no-valid-crumb-was-included-in-the-request
   curl -v -X GET http://103.20.144.134:8081/crumbIssuer/api/json --user admin:36c8fb2e055a48658578b465106c57d2
