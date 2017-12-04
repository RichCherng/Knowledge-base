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
#### Ubuntu
 
```bash
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
 ```
 
Alternatively, for Node.js 8:

```bash
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
```

(optional): install build tools
To compile and install native addons from npm you may also need to install build tools:

```bash
sudo apt-get install -y build-essential
```

Update NodeJS on window
https://stackoverflow.com/questions/18412129/how-do-i-update-node-js-and-npm-on-windows

```bash
npm install -g npm-windows-upgrade
npm-windows-upgrade
```


### Install Remarkable on Ubuntu

https://unix.stackexchange.com/questions/159094/how-to-install-a-deb-file-by-dpkg-i-or-by-apt

- Download .deb file from : https://remarkableapp.github.io/linux/download.html

- Install using "Install Debian Package"


### Install Debian Package

So if you have a .deb file:
- You can install it using sudo dpkg -i /path/to/deb/file followed by sudo apt-get install -f.

- You can install it using sudo apt install ./name.deb (or /path/to/package/name.deb). 
With old apt-get versions you must first move your deb file to /var/cache/apt/archives/ directory. For both, after executing this command, it will automatically download its dependencies.

- Install gdebi and open your .deb file using it (Right-click -> Open with). It will install your .deb package with all its dependencies.

(Note: APT maintains the package index which is a database of available packages available in repo defined in /etc/apt/sources.list file and in the /etc/apt/sources.list.d directory. All these methods will fail to satisfy the software dependency if the dependencies required by the deb is not present in the package index.)


### Replace default text editor

https://stackoverflow.com/questions/2596805/how-do-i-make-git-use-the-editor-of-my-choice-for-commits

- For Git
	- Only for git
	```bash
	git config --global core.editor "vim"
	export GIT_EDITOR=vim
	```
	
- For other program (default editor)
	```bash
	export VISUAL=vim
	export EDITOR="$VISUAL"
	```
	
### Git Cheat Sheet

![Alt text]( git-cheat-sheet-large01.png "Optional Title")
- To ammend published commit (not recommend)
	```bash
	git commit --amend
	git push origin <branch> --force
	```
	
- To Squash All Commits : https://github.com/todotxt/todo.txt-android/wiki/Squash-All-Commits-Related-to-a-Single-Issue-into-a-Single-Commit
	To squash four commits into one
	```bash
	git rebase -i HEAD~4
	```
	In the text editor that comes up, replace the words "pick" with "squash" next to the commits you want to squash into the commit before it. Save and close the editor, and git will combine the "squash"'ed commits with the one before it. 
	
	*Important*: If you've already pushed commits to GitHub, and then squash them locally, you will have to force the push to your branch.
	```bash
	git commit --amend
	```
	
### Change folder permissions and ownership

```bash
sudo chown -R username:group directory
```
`-R` will change all files and directories inside of directory and directory itself.

### Git Bash alias
https://stackoverflow.com/questions/13715179/my-git-bash-forgets-my-aliases-what-can-i-do

### Set up Alias
http://www.hostingadvice.com/how-to/set-command-aliases-linuxubuntudebian/

1. Open your .bashrc
```bash
vim ~/.bashrc
```

2. Add alias
```bash
alias aliasname='commands'
```

3. Install the .bashrc.
```bash
source ~/.bashrc
```

Some methods to make it permanant: https://askubuntu.com/questions/1414/how-to-create-a-permanent-alias


### Compress JPEG or PNG Images in Linux
https://www.tecmint.com/optimize-and-compress-jpeg-or-png-batch-images-linux-commandline/
<insert doc>


### FTP 

- Login and sync remote directory on ftp server with local content (using lfpt)
```bash
lftp -u "$USER", "$PASSWORD" $HOST <<< EOF

mirror --reverse --delete --verboase $LOCAL_DIR $REMOTE_DIR

bye
EOF
```

### Sharing Terminal Screen
https://www.howtoforge.com/sharing-terminal-sessions-with-tmux-and-screen

http://www.hamvocke.com/blog/remote-pair-programming-with-tmux/

http://wiki.networksecuritytoolkit.org/index.php/HowTo_Share_A_Terminal_Session_Using_Screen

### Use 'find' command to search for file in Linux

```bash
find <path> -name <file name (support wildcard)>
find . -name "setup.py"
```
### Shebang for script
Why is `/usr/bin/env bash` superior to `/bin/bash`
https://stackoverflow.com/questions/21612980/why-is-usr-bin-env-bash-superior-to-bin-bash

### Run sudo command without password
https://www.cyberciti.biz/faq/linux-unix-running-sudo-command-without-a-password/

### Add group to sudo privilege

### How To Use SSHFS to Mount Remote File Systems Over SSH
https://www.digitalocean.com/community/tutorials/how-to-use-sshfs-to-mount-remote-file-systems-over-ssh

### How to grep for multiple patterns
https://unix.stackexchange.com/questions/37313/how-do-i-grep-for-multiple-patterns

