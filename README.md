# Linux-Note

 This note is for explaining linux command, guide to do something, or debugging guide

### Terminal shortcut delay bug
 - https://askubuntu.com/questions/911946/terminal-appears-with-much-delay-when-shortcut-is-used/912250
##### Solution
 - sudo apt-get remove --purge dbus-user-session
 - reboot
##### Work Around
 - killall gnome-keyring-daemon

### Install Node
- https://nodejs.org/en/download/package-manager/
####Ubuntu
 
```bash
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
 
Alternatively, for Node.js 8:

```bash
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
```

optional: install build tools
To compile and install native addons from npm you may also need to install build tools:

```bash
sudo apt-get install -y build-essential
```