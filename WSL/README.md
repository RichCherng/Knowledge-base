# Windows Subsystem Linux (WSL)



# Systemctl not working in WSL
https://stackoverflow.com/questions/54502444/why-systemctl-not-working-in-ubuntu-terminal-on-windows
```
WSL doesn't have systemd implemented therefore in Ubuntu you need to run for example "service start ssh" or you can call the binary directly such as /etc/init.d/ssh start/stop/restart.
```
