
# Solve Live-reload (MAX watcher reached b/c VSCode)
https://github.com/angular/angular-cli/issues/8168
```Bash
# Quick Fix: 'sudo'
sudo ng serve 
```
https://code.visualstudio.com/docs/setup/linux#_visual-studio-code-is-unable-to-watch-for-file-changes-in-this-large-workspace-error-enospc
```Bash
# Increase maximum capacity 
cat /proc/sys/fs/inotify/max_user_watches

# The limit can be increased to its maximum by editing /etc/sysctl.conf and adding this line to the end of the file:
fs.inotify.max_user_watches=524288


# or
sudo sysctl fs.inotify.max_user_watches=524288
sudo sysctl -p --system
```
