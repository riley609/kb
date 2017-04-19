a:84:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:30:"Expanding a LVM logical volume";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:282:"This tip explains how to expand an existing logical volume by adding a new new physical volume to a volume group through LVM. The e2fsprogs and lvm2 packages are required to follow these steps, but these packages are mandatory on systems that use ext2/ext3 on a LVM2 logical volume.";}i:2;i:48;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:330;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:330;}i:7;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:332;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"Situation";}i:2;i:334;}i:9;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:343;}i:10;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:345;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:345;}i:12;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:347;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:113:"Volume group: MindbenderGroup

Logical volume: MindbenderHome

Physical storage device to add: /dev/sda5 of type ";}i:2;i:349;}i:14;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:462;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"Linux LVM";}i:2;i:463;}i:16;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:472;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:103:"

Adding a physical device for use by LVM

Add /dev/sda5 as a physical volume that can be used for LVM:";}i:2;i:473;}i:18;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:576;}i:19;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:578;}i:20;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:22:"lvm pvcreate /dev/sda5";}i:2;i:580;}i:21;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:580;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:46:"Adding the physical volume to the volume group";}i:2;i:606;}i:23;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:652;}i:24;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:652;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:45:"Add this physical volume to the volume group ";}i:2;i:654;}i:26;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:699;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:"MindbenderGroup";}i:2;i:700;}i:28;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:715;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:":";}i:2;i:716;}i:30;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:717;}i:31;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:93:"lvm vgextend "MindbenderGroup" /dev/sda5
Volume group "MindbenderGroup" successfully extended";}i:2;i:719;}i:32;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:719;}i:33;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:41:"Determine the size of the extended volume";}i:2;i:818;}i:34;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:859;}i:35;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:859;}i:36;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:48:"Get the site of the expanded volume group first:";}i:2;i:861;}i:37;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:909;}i:38;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:592:"lvm vgdisplay
--- Volume group ---
VG Name               MindbenderGroup
System ID
Format                lvm2
Metadata Areas        2
Metadata Sequence No  4
VG Access             read/write
VG Status             resizable
MAX LV                0
Cur LV                2
Open LV               2
Max PV                0
Cur PV                2
Act PV                2
VG Size               72.59 GB
PE Size               32.00 MB
Total PE              2323
Alloc PE / Size       1129 / 35.28 GB
Free  PE / Size       1194 / 37.31 GB
VG UUID               6OXHId-sean-ZBR2-wuOy-yjVR-cQeB-PJIvrD";}i:2;i:911;}i:39;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:911;}i:40;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:177:"We can see here that 1129 of 2323 physical extends (PE) are in use. But there are two logical volumes, so we have to look up the size of the volume that we would like to extend:";}i:2;i:1547;}i:41;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1724;}i:42;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:494:"lvm lvdisplay /dev/MindbenderGroup/MindbenderHome
--- Logical volume ---
LV Name                /dev/MindbenderGroup/MindbenderHome
VG Name                MindbenderGroup
LV UUID                RQtp4K-Wca2-uivW-3rVn-GfZE-hYea-KKH5pT
LV Write Access        read/write
LV Status              available
# open                 1
LV Size                33.34 GB
Current LE             1067
Segments               1
Allocation             inherit
Read ahead sectors     0
Block device           253:0";}i:2;i:1726;}i:43;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1726;}i:44;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:111:"The current size is 1067 PEs, and we have 1194 free extends, so the new volume size will be 1067 + 1194 = 2261.";}i:2;i:2250;}i:45;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2361;}i:46;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2361;}i:47;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:"Extending the volume";}i:2;i:2363;}i:48;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2383;}i:49;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2383;}i:50;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:73:"We can now easily extend the volume, by specifying the new number of PEs:";}i:2;i:2385;}i:51;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2458;}i:52;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:159:"lvm lvresize -l 2261 /dev/MindbenderGroup/MindbenderHome
Extending logical volume MindbenderHome to 70.66 GB
Logical volume MindbenderHome successfully resized";}i:2;i:2460;}i:53;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2460;}i:54;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:"Resizing the filesystem";}i:2;i:2627;}i:55;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2650;}i:56;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2650;}i:57;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:117:"The volume is now expanded, but the filesystem still has its old size. You have 2 solutions to expand the filesytem :";}i:2;i:2652;}i:58;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2769;}i:59;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2769;}i:60;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:73:"You can either umount the volume , use resize2fs and then mount it back :";}i:2;i:2771;}i:61;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2845;}i:62;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:130:"umount /dev/MindbenderGroup/MindbenderHome
resize2fs /dev/MindbenderGroup/MindbenderHome
mount /dev/MindbenderGroup/MindbenderHome";}i:2;i:2845;}i:63;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2845;}i:64;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:136:"Or you can resize the filesystem without umounting the device (applications can still write/read datas on disk), a.k.a online resizing :";}i:2;i:2983;}i:65;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3119;}i:66;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3119;}i:67;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:3121;}i:68;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"CentOS 4";}i:2;i:3123;}i:69;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:3131;}i:70;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3133;}i:71;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:46:"ext2online /dev/MindbenderGroup/MindbenderHome";}i:2;i:3133;}i:72;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3133;}i:73;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:3183;}i:74;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"CentOS 5";}i:2;i:3185;}i:75;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:3193;}i:76;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:3195;}i:77;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3196;}i:78;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:45:"resize2fs /dev/MindbenderGroup/MindbenderHome";}i:2;i:3196;}i:79;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3196;}i:80;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:113:"(In CentOS 5 the ext2online command has been removed and the online resizing code has been merged into resize2fs)";}i:2;i:3245;}i:81;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3358;}i:82;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3358;}i:83;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:3358;}}