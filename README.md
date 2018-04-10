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

### Determine the type of machine (fedora or ubuntu)
```bash
lsb_release -si
lsb_release -sr
lsb_release -a
```

### Mount net drive
```bash
sudo umount -ltnfs -a;
sudo mount -tnfs -a
sudo mount --all
```

### Remount Readonly file system
```bash
mount -o remount, rw <file System>
mount -o remount, rw /dev/sys
```

### Kill all instances
```bash
kill -9 $(ps aux | grep <string> | grep -v grep | awk '{print $2}')
kill $(pgrep -f <name of process>)
```

### iperf
iperf test
```bash
Server: iperf -N -s -B <local interface's ip> [-R] # -R for reverse
client: iperf -N -c <server's ip> -B <local interface's ip>
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

### Sed command

```
#replace enabled=0 with enabled=1
sed -i.bak 's/enabled=0/enabled=1/g' /etc/yum.repos.d/fedora.repo
```
- remove white space 
https://stackoverflow.com/questions/369758/how-to-trim-whitespace-from-a-bash-variable


### nmap: Network exploration tool
```bash
nmap -sP 10.76.148.0/22
nmap -sP 10.76.148.0/22 | grep us\.extension | awk '{print $5}' | awk -F. '{print $1}'
```

### Bash variable assignment
https://unix.stackexchange.com/questions/4899/var-vs-var-and-to-quote-or-not-to-quote

### Bash Array
https://www.thegeekstuff.com/2010/06/bash-array-tutorial/

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
	
	**Important**: If you've already pushed commits to GitHub, and then squash them locally, you will have to force the push to your branch.
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

### How to log all bash commands by all users on a server?
https://askubuntu.com/questions/93566/how-to-log-all-bash-commands-by-all-users-on-a-server

### Untar a tar file or gzip-bz2 tar file
http://how-to.wikia.com/wiki/How_to_untar_a_tar_file_or_gzip-bz2_tar_file

### Redirect Output
https://askubuntu.com/questions/420981/how-do-i-save-terminal-output-to-a-file

### Malformed request (Google mostly)
https://productforums.google.com/forum/#!msg/youtube/f8koFe6QNK8/_-fcB8QGDQAJ

### Watch file
```bash
watch [-d] <file name> # -d for checking diff
wathc -d "<command>"
```

### Bash Script: file content to variable
```bash
# PASSWORD=$(< /net/users/t0174619/bash_script/pwd)
```

### Bash Script: user input and password
```bash
printf "username: "
read -r username

HOST_CRED=$username


printf "password: " # print on the same line
read -s -r password # -s for silence echo the user input, -r for reading input on the same line and printf
echo "" # Go to the next line after user press enter

PASSWORD=$password
```

### Exclude directory from find command
https://stackoverflow.com/questions/4210042/how-to-exclude-a-directory-in-find-command
```bash
# Single directory
find . -path ./misc -prune -o -name '*.txt' -print

# Multiple directories
find . -type d \( -path dir1 -o -path dir2 -o -path dir3 \) -prune -o -print
```

### Grep exclude directory
https://stackoverflow.com/questions/6565471/how-can-i-exclude-directories-from-grep-r

