a:101:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:24:"Create bonded interfaces";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:41;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:42:"Step #1: Create a Bond0 Configuration File";}i:2;i:43;}i:6;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:85;}i:7;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:87;}i:8;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:87;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:188:"Red Hat Enterprise Linux (and its clone such as CentOS) stores network configuration in /etc/sysconfig/network-scripts/ directory. First, you need to create a bond0 config file as follows:";}i:2;i:89;}i:10;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:277;}i:11;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:47:"# vi /etc/sysconfig/network-scripts/ifcfg-bond0";}i:2;i:277;}i:12;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:277;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:28:"Append the following linest:";}i:2;i:329;}i:14;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:357;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:357;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:14:"  DEVICE=bond0";}i:2;i:360;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:374;}i:18;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:98:"IPADDR=192.168.1.20
NETWORK=192.168.1.0
NETMASK=255.255.255.0
USERCTL=no
BOOTPROTO=none
ONBOOT=yes";}i:2;i:374;}i:19;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:374;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:79:"You need to replace IP address with your actual setup. Save and close the file.";}i:2;i:488;}i:21;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:567;}i:22;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:567;}i:23;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:569;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:42:"Step #2: Modify eth0 and eth1 config files";}i:2;i:571;}i:25;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:613;}i:26;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:615;}i:27;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:615;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:113:"Open both configuration using a text editor such as vi/vim, and make sure file read as follows for eth0 interface";}i:2;i:617;}i:29;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:730;}i:30;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:46:"# vi /etc/sysconfig/network-scripts/ifcfg-eth0";}i:2;i:730;}i:31;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:730;}i:32;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:"Modify/append directive as follows:";}i:2;i:781;}i:33;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:816;}i:34;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:71:"DEVICE=eth0
USERCTL=no
ONBOOT=yes
MASTER=bond0
SLAVE=yes
BOOTPROTO=none";}i:2;i:816;}i:35;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:816;}i:36;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:57:"Open eth1 configuration file using vi text editor, enter:";}i:2;i:902;}i:37;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:959;}i:38;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:46:"# vi /etc/sysconfig/network-scripts/ifcfg-eth1";}i:2;i:959;}i:39;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:959;}i:40;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:50:"Make sure file read as follows for eth1 interface:";}i:2;i:1010;}i:41;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1060;}i:42;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:71:"DEVICE=eth1
USERCTL=no
ONBOOT=yes
MASTER=bond0
SLAVE=yes
BOOTPROTO=none";}i:2;i:1060;}i:43;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1060;}i:44;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:24:"Save and close the file.";}i:2;i:1146;}i:45;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1170;}i:46;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1170;}i:47;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:1172;}i:48;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:33:"Step # 3: Load bond driver/module";}i:2;i:1174;}i:49;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:1207;}i:50;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1209;}i:51;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1209;}i:52;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:146:"Make sure bonding module is loaded when the channel-bonding interface (bond0) is brought up. You need to modify kernel modules configuration file:";}i:2;i:1211;}i:53;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1357;}i:54;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:23:"# vi /etc/modprobe.conf";}i:2;i:1357;}i:55;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1357;}i:56;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:27:"Append following two lines:";}i:2;i:1385;}i:57;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1412;}i:58;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:61:"alias bond0 bonding
options bond0 mode=balance-alb miimon=100";}i:2;i:1412;}i:59;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1412;}i:60;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:100:"Save file and exit to shell prompt. You can learn more about all bounding options by clicking here).";}i:2;i:1480;}i:61;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1580;}i:62;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1580;}i:63;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:1582;}i:64;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:28:"Step # 4: Test configuration";}i:2;i:1584;}i:65;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:1612;}i:66;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:39:"
First, load the bonding module, enter:";}i:2;i:1614;}i:67;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1653;}i:68;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:18:"# modprobe bonding";}i:2;i:1653;}i:69;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1653;}i:70;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:75:"Restart the networking service in order to bring up bond0 interface, enter:";}i:2;i:1676;}i:71;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1751;}i:72;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:25:"# service network restart";}i:2;i:1751;}i:73;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1751;}i:74;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:131:"Make sure everything is working. Type the following cat command to query the current status of Linux kernel bounding driver, enter:";}i:2;i:1781;}i:75;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1912;}i:76;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:29:"# cat /proc/net/bonding/bond0";}i:2;i:1912;}i:77;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1912;}i:78;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:1946;}i:79;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:1948;}i:80;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:"Sample outputs:";}i:2;i:1950;}i:81;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:1965;}i:82;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:1967;}i:83;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:1969;}i:84;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1970;}i:85;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:320:"Bonding Mode: load balancing (round-robin)
MII Status: up
MII Polling Interval (ms): 100
Up Delay (ms): 200
Down Delay (ms): 200
Slave Interface: eth0
MII Status: up
Link Failure Count: 0
Permanent HW addr: 00:0c:29:c6:be:59
Slave Interface: eth1
MII Status: up
Link Failure Count: 0
Permanent HW addr: 00:0c:29:c6:be:63";}i:2;i:1970;}i:86;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1970;}i:87;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:39:"To check all network interfaces, enter:";}i:2;i:2319;}i:88;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2358;}i:89;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:10:"# ifconfig";}i:2;i:2358;}i:90;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2358;}i:91;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:2373;}i:92;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:2375;}i:93;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:"Sample outputs:";}i:2;i:2377;}i:94;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:2392;}i:95;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:2394;}i:96;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:2396;}i:97;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2397;}i:98;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:1327:"bond0     Link encap:Ethernet  HWaddr 00:0C:29:C6:BE:59
 inet addr:192.168.1.20  Bcast:192.168.1.255  Mask:255.255.255.0
 inet6 addr: fe80::200:ff:fe00:0/64 Scope:Link
 UP BROADCAST RUNNING MASTER MULTICAST  MTU:1500  Metric:1
 RX packets:2804 errors:0 dropped:0 overruns:0 frame:0
 TX packets:1879 errors:0 dropped:0 overruns:0 carrier:0
 collisions:0 txqueuelen:0
RX bytes:250825 (244.9 KiB)  TX bytes:244683 (238.9 KiB)

eth0      Link encap:Ethernet  HWaddr 00:0C:29:C6:BE:59
inet addr:192.168.1.20  Bcast:192.168.1.255  Mask:255.255.255.0
inet6 addr: fe80::20c:29ff:fec6:be59/64 Scope:Link
UP BROADCAST RUNNING SLAVE MULTICAST  MTU:1500  Metric:1
RX packets:2809 errors:0 dropped:0 overruns:0 frame:0
TX packets:1390 errors:0 dropped:0 overruns:0 carrier:0
collisions:0 txqueuelen:1000
RX bytes:251161 (245.2 KiB)  TX bytes:180289 (176.0 KiB)
Interrupt:11 Base address:0x1400

eth1      Link encap:Ethernet  HWaddr 00:0C:29:C6:BE:59
inet addr:192.168.1.20  Bcast:192.168.1.255  Mask:255.255.255.0
inet6 addr: fe80::20c:29ff:fec6:be59/64 Scope:Link
UP BROADCAST RUNNING SLAVE MULTICAST  MTU:1500  Metric:1
RX packets:4 errors:0 dropped:0 overruns:0 frame:0
TX packets:502 errors:0 dropped:0 overruns:0 carrier:0
collisions:0 txqueuelen:1000
RX bytes:258 (258.0 b)  TX bytes:66516 (64.9 KiB)
Interrupt:10 Base address:0x1480";}i:2;i:2397;}i:99;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3782;}i:100;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:3782;}}