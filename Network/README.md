# Network

### Port vs IP forwarding
- https://www.quora.com/What-is-IP-forwarding
- https://supportforums.cisco.com/t5/lan-switching-and-routing/1-1-static-nat-vs-port-forwardng/td-p/2689508

### SQUID (Caching)

### Configure VLAN (Virtual Local Area Network)
https://www.cyberciti.biz/tips/howto-configure-linux-virtual-local-area-network-vlan.html

### Bridge Network Connection (Network Interface and VLAN)
https://wiki.debian.org/BridgeNetworkConnections
https://unix.stackexchange.com/questions/31763/bring-down-and-delete-bridge-interface-thats-up


### Commands
```bash
ifconfig # Show network interface configuration
tcpdump # dump network packet
ip addr show # show network ip and state
brctl # Bridge network interface
vconfig # configure vlan
```

### Host name resolve (DHCP)
- /etc/resolv.conf
### TCP DUMP
on port with human readable
```bash
tcpdump -any port 3000 -X
```
capture package
```bash
sudo tcpdump -i eno1 port 8080 -X #web port
```

### netcat tool
```bash
nc -zv <hostname> 22 #ping port
```


### TPBIND service
- Central user login server

### Minicom
```bash
minicom -D /dev/ttyUSB#
```
### Not able to ssh to another computer, but can ping it?
https://unix.stackexchange.com/questions/105800/not-able-to-ssh-to-another-computer-but-can-ping-it

