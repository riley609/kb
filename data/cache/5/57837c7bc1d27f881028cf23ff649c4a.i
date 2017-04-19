a:223:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:14:"LVM Management";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:29;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:93:"Please note: These commands are all based on CentOS 6.(they work on Ubuntu 12 Server as well)";}i:2;i:31;}i:6;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:124;}i:7;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:126;}i:8;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:128;}i:9;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:22:"Creating an LVM Volume";i:1;i:2;i:2;i:128;}i:2;i:128;}i:10;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:128;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:128;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:90:"Use parted as it has no 2TB restriction (unlike fdisk/cfdisk) and create a GPT partition. ";}i:2;i:163;}i:13;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:253;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:100:"
Do this for each physical volume you want to add to LVM (use fdisk -l to see the available volumes)";}i:2;i:255;}i:15;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:356;}i:16;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:36:"parted /dev/sdx
(parted) mklabel gpt";}i:2;i:356;}i:17;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:53:"(parted) mkpart primary 0% 100%
(parted) set 1 lvm on";}i:2;i:398;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:398;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:36:"Use pvcreate to mark volumes for LVM";}i:2;i:458;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:495;}i:21;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:126:"pvcreate /dev/sdc1 /dev/sdd1
Physical volume "/dev/sdc1" successfully created
Physical volume "/dev/sdd1" successfully created";}i:2;i:495;}i:22;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:495;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"Use ";}i:2;i:630;}i:24;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:634;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"pvdisplay";}i:2;i:636;}i:26;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:645;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:" or ";}i:2;i:647;}i:28;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:651;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"pvscan";}i:2;i:653;}i:30;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:659;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:" to check";}i:2;i:661;}i:32;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:670;}i:33;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:672;}i:34;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:23:"Create the Volume Group";i:1;i:2;i:2;i:672;}i:2;i:672;}i:35;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:672;}i:36;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:672;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:32:"Use vgcreate, vgdisplay Commands";}i:2;i:709;}i:38;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:741;}i:39;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:741;}i:40;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:95:"Volume groups are nothing but a pool of storage that consists of one or more physical volumes. ";}i:2;i:743;}i:41;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:838;}i:42;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:109:"
Once you create the physical volume, you can create the volume group (VG) from these physical volumes (PV). ";}i:2;i:840;}i:43;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:949;}i:44;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:951;}i:45;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:83:"vgcreate vol_grp1 /dev/sdc1 /dev/sdd1
Volume  group "vol_grp1" successfully created";}i:2;i:953;}i:46;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:953;}i:47;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:124:"LVM processes the storage in terms of extents. We can also change the extent size (from the default size 4MB) using -s flag.";}i:2;i:1043;}i:48;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1167;}i:49;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1167;}i:50;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:50:"vgdisplay command lists the created volume groups.";}i:2;i:1169;}i:51;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1220;}i:52;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:692:"vgdisplay
--- Volume group ---
VG Name                      vol_grp1
System ID
Format                       lvm2
Metadata Areas               2
Metadata Sequence No         1
VG Access                    read/write
VG Status                    resizable
MAX LV                       0
Cur LV                       0
Open LV                      0
Max PV                       0
Cur PV                       2
Act PV                       2
VG Size                      3.72 GB
PE Size                      4.00 MB
Total PE                     952
Alloc PE / Size              0 / 0
Free  PE / Size              952 / 3.72 GB
VG UUID                      Kk1ufB-rT15-bSWe-5270-KDfZ-shUX-FUYBvR";}i:2;i:1220;}i:53;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1958;}i:54;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:34:"LVM Create: Create Logical Volumes";i:1;i:2;i:2;i:1958;}i:2;i:1958;}i:55;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1958;}i:56;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1958;}i:57;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:31:"Use lvcreate, lvdisplay command";}i:2;i:2004;}i:58;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2035;}i:59;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2035;}i:60;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:124:"Now, everything is ready to create the logical volumes from the volume groups. lvcreate command creates the logical volume. ";}i:2;i:2037;}i:61;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2161;}i:62;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:74:"
The -l switch determines the size ie -L100 = 100MB / -l100% = All of disk";}i:2;i:2163;}i:63;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2237;}i:64;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:2241;}i:65;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2248;}i:66;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:27:"Increasing an LVM Disk Size";i:1;i:2;i:2;i:2248;}i:2;i:2248;}i:67;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:2248;}i:68;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2248;}i:69;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"Use ";}i:2;i:2288;}i:70;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:2292;}i:71;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:2294;}i:72;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"df -h";}i:2;i:2296;}i:73;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:2301;}i:74;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:2303;}i:75;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:39:" to see current mounted partition sizes";}i:2;i:2305;}i:76;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2345;}i:77;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:5:"df -h";}i:2;i:2345;}i:78;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:271:"Filesystem                           Size  Used  Avail Use%  Mounted on
/dev/mapper/vg_centos63base-lv_root  7.5G  5.3G  1.9G  74%   /
tmpfs                                1.9G     0  1.9G   0%   /dev/shm
/dev/xvda1                           485M  121M  339M  27%   /boot";}i:2;i:2354;}i:79;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2354;}i:80;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:53:"1. After enalrging the disk under VM management, use ";}i:2;i:2637;}i:81;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:2690;}i:82;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"fdisk";}i:2;i:2692;}i:83;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:2697;}i:84;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:100:" to create a new partition of the required expansion size. Change the type of this NEW partition to ";}i:2;i:2699;}i:85;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:2799;}i:86;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:14:"Linux LVM (8E)";}i:2;i:2801;}i:87;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:2815;}i:88;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:". ";}i:2;i:2817;}i:89;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2819;}i:90;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:82:"
You may have to reboot after this if Linux does not see the additional partition.";}i:2;i:2821;}i:91;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2903;}i:92;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2903;}i:93;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"2. Use  ";}i:2;i:2905;}i:94;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:2913;}i:95;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:2915;}i:96;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"fdisk -l";}i:2;i:2917;}i:97;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:2925;}i:98;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:2927;}i:99;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:41:"  to view and get new partition name, eg:";}i:2;i:2929;}i:100;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2971;}i:101;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:8:"fdisk -l";}i:2;i:2971;}i:102;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:239:"Device     Boot  Start  End     Blocks    Id  System
/dev/xvda1 *     1      64      512000    83  Linux
/dev/xvda2       64     1567    12069888  8e  Linux LVM
/dev/xvda3       1567   5222    29360128  8e  Linux LVM <- New partition xvda3";}i:2;i:2983;}i:103;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2983;}i:104;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:19:"3. Use the command ";}i:2;i:3233;}i:105;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:3252;}i:106;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:3254;}i:107;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"pvdisplay";}i:2;i:3256;}i:108;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:3265;}i:109;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:3267;}i:110;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:33:" to show current physical volumes";}i:2;i:3269;}i:111;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3303;}i:112;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:9:"pvdisplay";}i:2;i:3303;}i:113;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:347:"Physical volume
PV Name               /dev/xvda2
VG Name               vg_centos63base
PV Size               11.51 GiB / not usable 3.00 MiB
Allocatable           yes (but full)
PE Size               4.00 MiB
Total PE              2946
Free PE               0
Allocated PE          2946
PV UUID               sb05Wq-8tJP-K4Pe-RGBn-wE2E-DF77-LeohL4";}i:2;i:3316;}i:114;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3316;}i:115;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:"4. Use the command  ";}i:2;i:3687;}i:116;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:3707;}i:117;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:3709;}i:118;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:19:"pvcreate /dev/xvda3";}i:2;i:3711;}i:119;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:3730;}i:120;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:3732;}i:121;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:38:"  to register the physical volume (pv)";}i:2;i:3734;}i:122;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3773;}i:123;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:119:"pvcreate /dev/xvda3
Writing physical volume data to disk "/dev/xvda3"
Physical volume "/dev/xvda3" successfully created";}i:2;i:3773;}i:124;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3773;}i:125;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:19:"5. Use the command ";}i:2;i:3901;}i:126;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:3920;}i:127;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:3922;}i:128;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"pvdisplay";}i:2;i:3924;}i:129;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:3933;}i:130;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:3935;}i:131;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:30:" to show new physical volumes:";}i:2;i:3937;}i:132;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3968;}i:133;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:9:"pvdisplay";}i:2;i:3968;}i:134;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:347:"Physical volume
PV Name               /dev/xvda2
VG Name               vg_centos63base
PV Size               11.51 GiB / not usable 3.00 MiB
Allocatable           yes (but full)
PE Size               4.00 MiB
Total PE              2946
Free PE               0
Allocated PE          2946
PV UUID               sb05Wq-8tJP-K4Pe-RGBn-wE2E-DF77-LeohL4";}i:2;i:3981;}i:135;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:336:"Physical volume
PV Name               /dev/xvda3
VG Name               vg_centos63base
PV Size               28.00 GiB / not usable 4.00 MiB
Allocatable           yes
PE Size               4.00 MiB
Total PE              7167
Free PE               7167
Allocated PE          0
PV UUID               HCyrcE-kKgQ-fFEl-dpip-pcAk-cpyx-TppiSC";}i:2;i:4350;}i:136;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4350;}i:137;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:"6. Now use the command ";}i:2;i:4710;}i:138;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:4733;}i:139;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:4735;}i:140;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"vgdisplay";}i:2;i:4737;}i:141;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:4746;}i:142;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:4748;}i:143;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:" to show the Volume Groups(s) (vg)";}i:2;i:4750;}i:144;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4785;}i:145;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:9:"vgdisplay";}i:2;i:4785;}i:146;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:563:"Volume group
VG Name               vg_centos63base
System ID
Format                lvm2
Metadata Areas        1
Metadata Sequence No  3
VG Access             read/write
VG Status             resizable
MAX LV                0
Cur LV                2
Open LV               2
Max PV                0
Cur PV                1
Act PV                1
VG Size               11.51 GiB
PE Size               4.00 MiB
Total PE              2946
Alloc PE / Size       2946 / 11.51 GiB
Free  PE / Size       0 / 0
VG UUID               hP42fS-Bsvs-qJCO-MUXu-Z3gK-fxXj-uvhe4j
";}i:2;i:4798;}i:147;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4798;}i:148;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:19:"7. Use the command ";}i:2;i:5405;}i:149;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:5424;}i:150;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:5426;}i:151;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:"vgextend vg_centos63base /dev/xvda3";}i:2;i:5428;}i:152;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:5463;}i:153;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:5465;}i:154;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:48:" to add the physical volume to the volume group.";}i:2;i:5467;}i:155;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5516;}i:156;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:35:"vgextend vg_centos63base /dev/xvda3";}i:2;i:5516;}i:157;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:52:"Volume group "vg_centos63base" successfully extended";}i:2;i:5555;}i:158;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5555;}i:159;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:"8. Now use the ";}i:2;i:5613;}i:160;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:5628;}i:161;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:5630;}i:162;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"vgdisplay";}i:2;i:5632;}i:163;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:5641;}i:164;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:5643;}i:165;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:45:" command to display the NEW volume group size";}i:2;i:5645;}i:166;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5691;}i:167;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:9:"vgdisplay";}i:2;i:5691;}i:168;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:564:"Volume group
VG Name               vg_centos63base
System ID
Format                lvm2
Metadata Areas        2
Metadata Sequence No  5
VG Access             read/write
VG Status             resizable
MAX LV                0
Cur LV                2
Open LV               2
Max PV                0
Cur PV                2
Act PV                2
VG Size               39.50 GiB
PE Size               4.00 MiB
Total PE              10113
Alloc PE / Size       10113 / 39.50 GiB
Free  PE / Size       0 / 0
VG UUID               hP42fS-Bsvs-qJCO-MUXu-Z3gK-fxXj-uvhe4j";}i:2;i:5704;}i:169;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5704;}i:170;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:"9. Use the ";}i:2;i:6311;}i:171;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:6322;}i:172;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:6324;}i:173;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"lvdisplay";}i:2;i:6326;}i:174;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:6335;}i:175;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:6337;}i:176;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:49:" command to view the current logical volumes (lv)";}i:2;i:6339;}i:177;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6389;}i:178;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:9:"lvdisplay";}i:2;i:6389;}i:179;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:555:"Logical volume
LV Path                /dev/vg_centos63base/lv_root
LV Name                lv_root
VG Name                vg_centos63base
LV UUID                IEvJD0-Qx9l-vbxQ-sZul-hL0G-Dj2J-qjf2nU
LV Write Access        read/write
LV Creation host, time centos-63-base, 2012-08-31 07:42:35 +0200
LV Status              available
# open                 1
LV Size                7.59 GiB
Current LE             1942
Segments               1
Allocation             inherit
Read ahead sectors     auto
- currently set to     256
Block device           253:0";}i:2;i:6402;}i:180;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:555:"Logical volume
LV Path                /dev/vg_centos63base/lv_swap
LV Name                lv_swap
VG Name                vg_centos63base
LV UUID                tci9a0-r2eE-Rbt0-iSx1-dT7N-scoo-nOo3EV
LV Write Access        read/write
LV Creation host, time centos-63-base, 2012-08-31 07:42:38 +0200
LV Status              available
# open                 1
LV Size                3.92 GiB
Current LE             1004
Segments               1
Allocation             inherit
Read ahead sectors     auto
- currently set to     256
Block device           253:1";}i:2;i:6991;}i:181;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6991;}i:182;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:"10. Now use the ";}i:2;i:7582;}i:183;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:7598;}i:184;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:7600;}i:185;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"lvextend";}i:2;i:7602;}i:186;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:7610;}i:187;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:7612;}i:188;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:69:" command as follows to expand the chosen lv to use ALL the free space";}i:2;i:7614;}i:189;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7684;}i:190;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:50:"lvextend -l +100%FREE /dev/vg_centos63base/lv_root";}i:2;i:7684;}i:191;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:89:"Extending logical volume lv_root to 35.58 GiB
Logical volume lv_root successfully resized";}i:2;i:7738;}i:192;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7738;}i:193;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"11. Use ";}i:2;i:7834;}i:194;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:7842;}i:195;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:7844;}i:196;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"lvdisplay";}i:2;i:7846;}i:197;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:7855;}i:198;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:7857;}i:199;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:24:" again to see the effect";}i:2;i:7859;}i:200;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7884;}i:201;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:9:"lvdisplay";}i:2;i:7884;}i:202;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:556:"Logical volume
LV Path                /dev/vg_centos63base/lv_root
LV Name                lv_root
VG Name                vg_centos63base
LV UUID                IEvJD0-Qx9l-vbxQ-sZul-hL0G-Dj2J-qjf2nU
LV Write Access        read/write
LV Creation host, time centos-63-base, 2012-08-31 07:42:35 +0200
LV Status              available
# open                 1
LV Size                35.58 GiB
Current LE             9109
Segments               2
Allocation             inherit
Read ahead sectors     auto
- currently set to     256
Block device           253:0";}i:2;i:7897;}i:203;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:555:"Logical volume
LV Path                /dev/vg_centos63base/lv_swap
LV Name                lv_swap
VG Name                vg_centos63base
LV UUID                tci9a0-r2eE-Rbt0-iSx1-dT7N-scoo-nOo3EV
LV Write Access        read/write
LV Creation host, time centos-63-base, 2012-08-31 07:42:38 +0200
LV Status              available
# open                 1
LV Size                3.92 GiB
Current LE             1004
Segments               1
Allocation             inherit
Read ahead sectors     auto
- currently set to     256
Block device           253:0";}i:2;i:8487;}i:204;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:555:"Logical volume
LV Path                /dev/vg_centos63base/lv_swap
LV Name                lv_swap
VG Name                vg_centos63base
LV UUID                tci9a0-r2eE-Rbt0-iSx1-dT7N-scoo-nOo3EV
LV Write Access        read/write
LV Creation host, time centos-63-base, 2012-08-31 07:42:38 +0200
LV Status              available
# open                 1
LV Size                3.92 GiB
Current LE             1004
Segments               1
Allocation             inherit
Read ahead sectors     auto
- currently set to     256
Block device           253:1";}i:2;i:9076;}i:205;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:9076;}i:206;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"12. Use ";}i:2;i:9666;}i:207;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:9674;}i:208;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:9676;}i:209;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:41:"fsadm resize /dev/vg_centos63base/lv_root";}i:2;i:9678;}i:210;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:9719;}i:211;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:9721;}i:212;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:49:" to resize the actual filesystem to max freespace";}i:2;i:9723;}i:213;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:9773;}i:214;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:41:"fsadm resize /dev/vg_centos63base/lv_root";}i:2;i:9773;}i:215;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:339:"resize2fs 1.41.12 (17-May-2010)
Filesystem at /dev/mapper/vg_centos63base-lv_root is mounted on /;
on-line resizing required old desc_blocks = 1, new_desc_blocks = 3
Performing an on-line resize of /dev/mapper/vg_centos63base-lv_root to 9327616 (4k) blocks.
The filesystem on /dev/mapper/vg_centos63base-lv_root is now 9327616 blocks long.";}i:2;i:9818;}i:216;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:9818;}i:217;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:31:"13. Use df -h to see the effect";}i:2;i:10170;}i:218;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:10202;}i:219;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:5:"df -h";}i:2;i:10202;}i:220;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:271:"Filesystem                           Size  Used  Avail Use%  Mounted on
/dev/mapper/vg_centos63base-lv_root  36G   5.3G   29G  16%   /
tmpfs                                1.9G     0  1.9G   0%   /dev/shm
/dev/xvda1                           485M  121M  339M  27%   /boot";}i:2;i:10211;}i:221;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:10707;}i:222;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:10707;}}