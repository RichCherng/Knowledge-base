#!/usr/bin/env bash

# must run as root

## Install Sublime 3
sudo add-apt-repository -y ppa:webup8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer

## Install Chromium browser
sudo apt-get install chromium-browser

## Install Java
sudo add-apt-repository ppa:webupd8team/java

sudo apt update; 
sudo apt install oracle-java9-installer

## Install curl
sudo apt-get install -y curl

## Install Node
curl -sL https://deb.nodesource.com/setup_8.x | bash -
apt-get install -y nodejs

## Install git
sudo apt-get install -y git

