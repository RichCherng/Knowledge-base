FROM ubuntu:16.04

# ENV DEBIAN_FRONTEND noninteractive

RUN mkdir /usr/workspace
RUN apt-get update 

# Install latest nodejs 8
RUN apt-get install -y wget && wget -qO- https://deb.nodesource.com/setup_8.x | bash - && apt-get install -y nodejs

# && apt-get install -y node

# COPY ./package.json .

# RUN npm install

# EXPOSE 8080

# CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]