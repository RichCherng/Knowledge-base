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

### Permanent Network Settings (Ifconfig)
https://askubuntu.com/questions/833490/permanent-network-settings
Add the following to the configuration file at /etc/network/interfaces or create a new file in /etc/network/interfaces.d/ called eth1
```bash
auto eth1
    iface eth1 inet static
        address 10.10.0.2
        netmask 255.255.255.0
        gateway 10.10.0.100
```

### Make resolveconf permanant 
https://itsfoss.com/resolvconf-permanent-ubuntu/
https://superuser.com/questions/677343/how-to-make-name-server-address-permanent-in-etc-resolv-conf

### Linux connect to wifi with active portal
https://askubuntu.com/questions/826998/cannot-log-in-to-public-open-wifi-connection
```
sudo dpkg-reconfigure resolvconf

```
## How to get a public wifi login page to appear (Captive Portal) Linux Wifi
https://www.reddit.com/r/YouShouldKnow/comments/9fuiq7/ysk_how_to_get_a_public_wifi_login_page_to_appear/
```
routerlogin.net
```

## Setting up DHCP Server and Client (Linux & MacOS)

dhcp server for Linux
https://www.tecmint.com/install-dhcp-server-in-ubuntu-debian/

dhcp client for Linux and MacOS
https://serverfault.com/questions/447686/mac-osx-server-command-equivalent-for-dhclient
https://askubuntu.com/questions/124454/is-it-possible-to-use-ifconfig-to-switch-an-interface-to-dhcp-and-if-not-what-i
https://support.apple.com/guide/mac-help/use-dhcp-or-a-manual-ip-address-on-mac-mchlp2718/mac

## Under Research ##
- [ ] Conenct to mutliple wifi
- [X] Connect to wifi with active portal from linux
- [ ] Script to Scan and then Connect wifi (Will be useful for using mutliple wifi)
