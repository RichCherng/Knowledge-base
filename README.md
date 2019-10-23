# Linux-Note

 This note is for explaining linux command, guide to do something, or debugging guide


### Future Goal ###
- [ ] Create website that host from Githbu for easily assessible knowledge 
	- JAM Stack
		- [ ] https://scotch.io/bar-talk/the-next-scotch-v8-how-were-getting-to-1s-load-times
		- [ ] https://jamstack.org/
	- Angular6? TypeScript
	- ReactJS?
	- Vue?
	- No framework? JQuery?
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
	
### Git rebase 
```

# This will pu dev commit AHEAD of the branch commit
git rebase dev origin/branch

# Preserve Merge History
# https://stackoverflow.com/questions/15915430/what-exactly-does-gits-rebase-preserve-merges-do-and-why
git rebase orgin/branch --preserve-merges

## Revert Rebase
https://stackoverflow.com/questions/134882/undoing-a-git-rebase
```

### Git pull rebase
https://stackoverflow.com/questions/21364636/git-pull-rebase-preserve-merges
```
git pull origin <branch> --rebase
or
git pull origin <branch> --rebase=preserve # Preserve Merge Request
```

### Rebase & Branching
https://stackoverflow.com/questions/31881885/how-to-rebase-a-branch-off-a-rebased-branch
```
git log --graph --decorate --all

git rebase --onto [target] [rebasing stops] [rebasing head]

```
	
### Remove files/folders from git without deleting
(Useful when updating gitignore)
```
git rm --cached <file>

git rm --cached -r <folder>
```
### Howt to revert git commit
https://gist.github.com/gunjanpatel/18f9e4d1eb609597c50c2118e416e6a6

### Cleans and reinitialize git and submodule
https://gist.github.com/nicktoumpelis/11214362
```
git clean -xfd
git submodule foreach --recursive git clean -xfd
git reset --hard
git submodule foreach --recursive git reset --hard
git submodule update --init --recursive
```
### Github Fork
https://stackoverflow.com/questions/7244321/how-do-i-update-a-github-forked-repository
- update github forked repository
```
# Add the remote, call it "upstream":

git remote add upstream https://github.com/whoever/whatever.git

# Fetch all the branches of that remote into remote-tracking branches,
# such as upstream/master:

git fetch upstream

# Make sure that you're on your master branch:

git checkout master

# Rewrite your master branch so that any commits of yours that
# aren't already in upstream/master are replayed on top of that
# other branch:

git rebase upstream/master

# Rewriting History (Force Push)
git push -f origin master
```

### Git Disable GUI Crendential
https://stackoverflow.com/questions/34396390/git-windows-disable-password-prompt-ui-but-get-password-prompt-from-shell
https://stackoverflow.com/questions/34396390/git-windows-disable-password-prompt-ui-but-get-password-prompt-from-shell

```bash
$ git config --global credential.helper "" # Disabled username prompt
$ git config --global core.askPass "" # Disabled Password prompt
```
### Adding SSL certificate for a (Not Secure) website
https://unix.stackexchange.com/questions/109880/adding-ssl-certificate-for-github-only-not-all-certificates-from-ca-certificate
```bash
error: server certificate verification failed. 
CAfile: /etc/ssl/certs/ca-certificates.crt CRLfile: none
```


### Git Submodule 
https://blog.github.com/2016-02-01-working-with-submodules/
```bash
# Add rock as submodule 
git submodule add https://github.com/<user>/rock rock

# Newer versions of Git will do this automatically, but older versions will require you to explicitly tell Git to download the content of rock

git submodule update --init --recursive

# Download content of the submodule
git submodule update --init --recursive
or
git clone --recursive <project url> # for first time cloning the main project
```

### Git submodule to track branch (Always the latest of the branch)
https://www.activestate.com/blog/2014/05/getting-git-submodule-track-branch
```
git submodule add -b master https://github.com/<repo>.git
# Using -b argument means we want to follow the master branch of the trackchanges repository
git submodule update --init
```

### Remove Git Submodule
https://stackoverflow.com/questions/1260748/how-do-i-remove-a-submodule
```
0. mv a/submodule a/submodule_tmp

1. git submodule deinit -f -- a/submodule    
2. rm -rf .git/modules/a/submodule
3. git rm -f a/submodule
# Note: a/submodule (no trailing slash)

# or, if you want to leave it in your working tree and have done step 0
3.   git rm --cached a/submodule
3bis mv a/submodule_tmp a/submodule
```

### Git Authentication
https://stackoverflow.com/questions/30040643/clone-a-repo-with-submodules-override-credentials
https://stackoverflow.com/questions/30180751/avoid-re-entering-password-for-each-submodule
- Embedded Credential (Restrict Account for automation etc.)
```
ssh://username:password@theserver.com/folder/project.git
```

### Change folder permissions and ownership

```bash
sudo chown -R username:group directory
```
`-R` will change all files and directories inside of directory and directory itself.

### Git Bash alias
https://stackoverflow.com/questions/13715179/my-git-bash-forgets-my-aliases-what-can-i-do

### Revert Commit to Previous commit
https://stackoverflow.com/questions/927358/how-do-i-undo-the-most-recent-commits-in-git
```
git reset HEAD~
# Or
git reset HEAD~4
```

## Merge with Log (No fast forward)
```
git merge <Branch> --no-ff
```

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

### Sharing Terminal 


https://www.howtoforge.com/sharing-terminal-sessions-with-tmux-and-screen
 - Multisession: https://unix.stackexchange.com/questions/163872/sharing-a-terminal-with-multiple-users-with-screen-or-otherwise
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

### Explain PaaS (Platform as a service, etc.)
https://www.quora.com/Is-Amazon-EC2-IaaS-or-PaaS

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


### NEED TO SORT THESE COMMAND W/ EXPLANATION
```bash
   28  df -h
   29  cd /
   30  du -h
   31  du -ch
   32  du -ck | sort -g
   33  du --help
   34  du -xck | sort -gr | less
   
   | grep  -v '^#' # exclude '#' only at the begining
```


### MySQL Workbench Installation GUIDE
https://dev.mysql.com/doc/workbench/en/wb-installing-linux.html



### sudo apt-key adv --keyserver keyserver.ubuntu.com --recv command returns error
keyserver.ubuntu.com host not found
https://superuser.com/questions/620765/sudo-apt-key-adv-keyserver-keyserver-ubuntu-com-recv-7f0ceb10-command-return


### Terminator (Terminal) Connect to remote host
https://unix.stackexchange.com/questions/48699/new-terminator-window-on-remote-server


### Terminator change hostname color
https://stackoverflow.com/questions/40077907/is-it-possible-to-customize-terminators-prompt-hostname-userdomain-colors
- Open ~/.bashrc and uncomment
	`#force_color_prompt=yes`
	by removing the hash:
	`force_color_prompt=yes`
	- The colors should appear then.
	- *Note*: don't forget to source ~/.bashrc or restart your terminal.

### POST file to server 
```
curl -X POST -H 'Content-Type: application/json' -H 'TOKEN:kjhfakjdsfh' --data-binary @path/to/file.json http://API/CALL

```


### Share mouse and keyboard
- X2x
https://www.reddit.com/r/debian/comments/80liz4/synergy_alternative_shared_keyboad_mouse/
https://linuxcommando.blogspot.com/2014/07/share-keyboard-and-mouse-on-two-x.html
https://raspberrypi.stackexchange.com/questions/4253/forward-mouse-and-keyboard-input-to-x-session
```
ssh -X user@100.0.0.123	'x2x -west -to :0'
```

### Locate memory Usage of directory
```
du -sh .
du -sh Desktop
du -sh *
```


### Add more workspace
https://askubuntu.com/questions/370044/additional-workspaces
```
gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ vsize 3
gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ hsize 3
```

### Install .deb package
```
sudo apt install -f ./name.deb
```

### Install .xz file
https://askubuntu.com/questions/25961/how-do-i-install-a-tar-gz-or-tar-bz2-file
```
./configure
make
sudo make install
```
### Show who is logged on and what they are doing
```

If you need information of 20 last logged-in users you can use:

last -20 -w
to display full hosts, or

last -20 -i
to display IP numbers
```

### Windows 10 Waking up from Network/external device
https://windowsreport.com/windows-8-windows-10-wakes-sleep-fix/


## Restart lightdm can cause `unable to open display ":0" problem
- fix by restart again or look into xhost + 

## Synergy
https://pkgs.org/download/synergy

Start synergy process via command line
https://github.com/symless/synergy-core/wiki/Command-Line
```
# Client
/synergyc [server IP]

# Server (Must start first), config can be generated and save via using GUI synergy
./synergys -c [path to config file]
```

Invisible Cursor (Linux)
https://symless.com/forums/topic/3553-ubuntu-invisible-cursor/
```
gsettings set org.gnome.settings-daemon.plugins.cursor active false
```

### Parse json into format (Command Line)
```

python -m json.tool f.json 

# Output to file
python -m json.tool f.json > files.json

```

### Inline scripting (e.g. Python script in bash script)
https://stackoverflow.com/questions/2500436/how-does-cat-eof-work-in-bash
```
python << EOF

import json

with open('response') as f:
    data = json.load(f)

# print json.dumps(data, sort_keys=True, indent=2)

print data["access_token"]
EOF

rm response

```
### Execute command in script (injecting command?)
```
curl -X post localhost:/api/v1/someting -H "authorization : Bearer $(./somescript)
```

### writing/exceuting inline command as string into file
```
TOKEN=$(./getToken.sh)

echo $TOKEN
echo "" > cmd

echo "`cat <<EOF

curl -X POST http://localhost:9024/api/v1/packages -H \"authorization: Bearer ${TOKEN}\" -H 'content-type: application/json' -d '{
  "packageCarrier": "THL",
  "packageId": "TEST",
  "packageType": "TXT",
  "packageTitle": "Nov content",
  "packageFiles": 
    $(python -m json.tool f.json) 
  
}'

EOF`" >> cmd
```


### Echo json into file
```
echo ", \"0320171110144608700${i}.mpg\":{ 
         \"fileName\":\"0320171110144608700${i}.mpg\", 
         \"fileSize\":\"1.409936832E9\", 
         \"fileType\":\"VIDEO\", 
         \"fileMD5\":\"437fc3d5d3b062ec92179de7a3a9ccfe\" 
        }
      " >> f.json
```

### Generating file with specific size
```
# bs = byte size
# count = how many of bs

dd if=/dev/zero of=./files/0320171110144608700${i}.mpg bs=$SIZE count=1
```

### Run sequence of commands in background
```
for ((i=0;i<=2;i++)); 
do 
    # dd if=/dev/zero of=./files/0320171110144608700${i}.mpg bs=$SIZE count=1
    # cp sample.mpg ./files/0320171110144608700${i}.mpg &
    ( cp sample.mpg ./files/0320171110144608700${i}.mpg && sudo mv ./files/0320171110144608700${i}.mpg /home/Doe/Content/)&

done
```

### Bash, wait for subprocess
https://stackoverflow.com/questions/356100/how-to-wait-in-bash-for-several-subprocesses-to-finish-and-return-exit-code-0
```
# run processes and store pids in array
for i in $n_procs; do
    ./procs[${i}] &
    pids[${i}]=$!
done

# wait for all pids
for pid in ${pids[*]}; do
    wait $pid
done
```

### Read Line by Line In bash
https://stackoverflow.com/questions/4642191/read-line-by-line-in-bash-script
```cat test | \
while read CMD; do
    echo $CMD
done

```

### (WEB): Cache Control
https://stackoverflow.com/questions/12908766/what-is-cache-control-private
https://stackoverflow.com/questions/1341089/using-meta-tags-to-turn-off-caching-in-all-browsers

### Keep laptop alive when close lid
https://askubuntu.com/questions/15520/how-can-i-tell-ubuntu-to-do-nothing-when-i-close-my-laptop-lid

### Show git branch with colours in Bash Promt
https://askubuntu.com/questions/730754/how-do-i-show-the-git-branch-with-colours-in-bash-prompt

### Change Display Color to warmer color
```
redshift -O 5000

#turn off
redshift -x
```

### force-chrome-to-open-new-pages-in-new-window-not-tab-when-opened-from-a-progr
https://superuser.com/questions/166479/force-chrome-to-open-new-pages-in-new-window-not-tab-when-opened-from-a-progr
```BASH
$ google-chrome "--user-data-dir=${HOME}/.google-chrome/session${DISPLAY}"

```
### Supply SSHFS script with credential (password)
https://stackoverflow.com/questions/7118101/sshfs-not-using-password-in-expect-script

### Parse Argument in base script
https://stackoverflow.com/questions/192249/how-do-i-parse-command-line-arguments-in-bash


### Security and key

```Bash
# Generate .key and .crt from PKCS12 file? : https://serverfault.com/questions/413832/generate-key-and-crt-from-pkcs12-file
openssl pkcs12 -in filename.pfx -nocerts -out filename.key

openssl pkcs12 -in filename.pfx -clcerts -nokeys -out filename.crt 
```

### Using RSA Private Key to Generate Public Key
https://stackoverflow.com/questions/5244129/use-rsa-private-key-to-generate-public-key


### Covert .pem to .crt & .key
https://stackoverflow.com/questions/13732826/convert-pem-to-crt-and-key

### Converting a Java Keystore (.jks) into PEM Format(.pem)
https://stackoverflow.com/questions/652916/converting-a-java-keystore-into-pem-format

# tls: failed to parse private key
https://github.com/stellar/go/issues/64

```Bash
# By pass passphase
openssl rsa -in client.key -out key.unencrypted.pem
```

## Powerlevel9k Installation
https://medium.com/@christyjacob4/powerlevel9k-themes-f400759638c2


### File Explorer
1. Midnight Commander
https://slick.pl/kb/linux/installing-midnight-commander-4-8-11-ubuntu-14-04-13-10-13-04-12-04/
```
sudo apt-get remove mc
sudo add-apt-repository ppa:eugenesan/ppa
sudo apt-get update
sudo apt-get install mc

```
2. Double Commander
3. Krusader
