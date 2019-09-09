https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-16-04


```
docker container run -it -p 80:80 nginx
# -it : interactive mode
# -p : publich flag
# 80:80  - <Port map to docker container>:<Port expose from docker container>

# pull from docker hub
docker pull nginx

docker container ls -a # Show all including not running
docker container ps # Show instances

docker container rm

# Images is immutable copy of the system
docker images
docker image rm <ID>

# stop docker instace (Usualy the one that run in detached mode)
docker ps
docker container stop <name>

# remove all docker containers
docker rm $(docker ps -aq) -f

# Running Detached mode
docker container run -d -p 8080:80 --name mynginx nginx


# Setting ENV variable
docker container run -d -p 3306:3306 --name mysql --env MYSQL_ROOT_PASSWORD=123456 mysql

# login into container
docker container exec -it mynginx bash


# Create share folder
docker container run -d -p 8080:80 -v $(pwd):/usr/share/nginx/html --name nginx-website nginx



# Build image 
docker image build -t rich/nginx-website
```


# DockerHub
```
docker push rich/nginx-website

docker pull rich/nginx-website
```


https://blog.pusher.com/docker-for-development-getting-started

https://blog.codeship.com/using-docker-compose-for-python-development/

Docker Hub
hub.docker.com

## Remove Untagged Image
http://jimhoskins.com/2013/07/27/remove-untagged-docker-images.html
```Bash
docker rmi $(docker images | grep "^<none>" | awk "{print $3}")
```


## Pass host user to Dockerfile when using docker-compose
https://stackoverflow.com/questions/36551510/how-to-pass-host-user-to-dockerfile-when-using-docker-compose

## How make openvpn work with docker
https://stackoverflow.com/questions/45692255/how-make-openvpn-work-with-docker

