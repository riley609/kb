a:125:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:41:"Install smartmontools on Citrix XenServer";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:58;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:"General installation";}i:2;i:60;}i:6;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:80;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:751:"
To install smartmontools on a general Linux system (not XenServer), run
yum install smartmontools
or
apt-get install smartmontools
Installation on Citrix XenServer
Citrix XenServer 5.5, 5.6 and 6.0 are based on CentOS 5.4, but the smartmontools package is not available in the default Citrix repository, so it can't be installed with yum install smartmontools (as it would be possible with any other CentOS distribution).
It is probably safest to use the same versions that were in the original CentOS 5.4 distribution. Since that release is no longer the latest, we have to go to an archive server to find the packages. The packages listed below are actually used in other CentOS releases too, so these are probably the latest versions anyway.
wget ";}i:2;i:82;}i:8;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:70:"http://vault.centos.org/5.4/os/i386/CentOS/mailx-8.1.1-44.2.2.i386.rpm";i:1;N;}i:2;i:833;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:903;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:903;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"wget ";}i:2;i:905;}i:12;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:76:"http://vault.centos.org/5.4/os/i386/CentOS/smartmontools-5.38-2.el5.i386.rpm";i:1;N;}i:2;i:910;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:986;}i:14;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:986;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:175:" rpm -hiv smartmontools-5.38-2.el5.i386.rpm mailx-8.1.1-44.2.2.i386.rpm
 warning: smartmontools-5.38-2.el5.i386.rpm: Header V3 DSA signature: NOKEY, key ID e8562897
 Preparing";}i:2;i:988;}i:16;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:1163;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:66:"                ########################################### [100%]";}i:2;i:1166;}i:18;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1232;}i:19;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:153:" 1:mailx                  ########################################### [ 50%]
 2:smartmontools          ########################################### [100%]";}i:2;i:1232;}i:20;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1232;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:" Checking the disk status";}i:2;i:1391;}i:22;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1416;}i:23;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1416;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:555:"We can now retrieve the disk status using smartctl -d ata -a /dev/sda. The most important fields are : SMART overall-health self-assessment test result - that should always have a value of PASSED. Other important fields are:
Reallocated_Sector_Ct, which counts the number of bad blocks that have been reallocated. It should be a low number. If this value increases, it is an alarm signal. Make a backup and replace the disk drive.
Current_Pending_Sector, which is the number of blocks with read errors that are not yet reallocated.
Offline_Uncorrectable .";}i:2;i:1418;}i:25;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1973;}i:26;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1973;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:167:"Also check out the columns VALUE WORST THRESH. For each attribute, the current value of the field should never be lower than the threshold defined by the manufacturer.";}i:2;i:1975;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2142;}i:29;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2142;}i:30;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:123:" smartctl -d ata -a /dev/sda
 smartctl version 5.38 [i686-redhat-linux-gnu] Copyright (C) 2002-8 Bruce Allen
 Home page is ";}i:2;i:2144;}i:31;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:37:"http://smartmontools.sourceforge.net/";i:1;N;}i:2;i:2267;}i:32;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:2304;}i:33;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2305;}i:34;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:36:"=== START OF INFORMATION SECTION ===";}i:2;i:2305;}i:35;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2305;}i:36;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:396:" Device Model:     ST31500341AS
 Serial Number:    9VS1Y9GE
 Firmware Version: CC1H
 User Capacity:    1,500,301,910,016 bytes
 Device is:        Not in smartctl database [for details use: -P showall]
 ATA Version is:   8
 ATA Standard is:  ATA-8-ACS revision 4
 Local Time is:    Wed Mar  2 22:37:23 2011 CET
 SMART support is: Available - device has SMART capability.
 SMART support is: Enabled";}i:2;i:2345;}i:37;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2741;}i:38;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2743;}i:39;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:32:"START OF READ SMART DATA SECTION";i:1;i:4;i:2;i:2743;}i:2;i:2743;}i:40;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:2743;}i:41;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2743;}i:42;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:56:"SMART overall-health self-assessment test result: PASSED";}i:2;i:2784;}i:43;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2840;}i:44;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2840;}i:45;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:94:"General SMART Values:
Offline data collection status:  (0x82) Offline data collection activity";}i:2;i:2842;}i:46;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2936;}i:47;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:143:"                                      was completed without error.
                                      Auto Offline Data Collection: Enabled.";}i:2;i:2936;}i:48;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2936;}i:49;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:80:"Self-test execution status:      (   0) The previous self-test routine completed";}i:2;i:3085;}i:50;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3165;}i:51;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:124:"                                      without error or no self-test has ever
                                      been run.";}i:2;i:3165;}i:52;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3165;}i:53;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:176:"Total time to complete Offline
data collection:                 ( 625) seconds.
Offline data collection
capabilities:                    (0x7b) SMART execute Offline immediate.";}i:2;i:3295;}i:54;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3471;}i:55;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:471:"                                      Auto Offline data collection on/off support.
                                      Suspend Offline collection upon new
                                      command.
                                      Offline surface scan supported.
                                      Self-test supported.
                                      Conveyance Self-test supported.
                                      Selective Self-test supported.";}i:2;i:3471;}i:56;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3471;}i:57;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:72:"SMART capabilities:            (0x0003) Saves SMART data before entering";}i:2;i:3958;}i:58;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4030;}i:59;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:126:"                                      power-saving mode.
                                      Supports SMART auto save timer.";}i:2;i:4030;}i:60;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4030;}i:61;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:64:"Error logging capability:        (0x01) Error logging supported.";}i:2;i:4162;}i:62;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4226;}i:63;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:72:"                                      General Purpose Logging supported.";}i:2;i:4226;}i:64;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4226;}i:65;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:288:"Short self-test routine
recommended polling time:        (   1) minutes.
Extended self-test routine
recommended polling time:        ( 255) minutes.
Conveyance self-test routine
recommended polling time:        (   2) minutes.
SCT capabilities:              (0x103f) SCT Status supported.";}i:2;i:4302;}i:66;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4590;}i:67;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:132:"                                      SCT Feature Control supported.
                                      SCT Data Table supported.";}i:2;i:4590;}i:68;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4590;}i:69;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:198:"SMART Attributes Data Structure revision number: 10
Vendor Specific SMART Attributes with Thresholds:
ID# ATTRIBUTE_NAME          FLAG     VALUE WORST THRESH TYPE      UPDATED  WHEN_FAILED RAW_VALUE";}i:2;i:4729;}i:70;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4927;}i:71;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:540:"1 Raw_Read_Error_Rate     0x000f   108   099   006    Pre-fail  Always       -       20188464
3 Spin_Up_Time            0x0003   100   100   000    Pre-fail  Always       -       0
4 Start_Stop_Count        0x0032   100   100   020    Old_age   Always       -       5
5 Reallocated_Sector_Ct   0x0033   100   100   036    Pre-fail  Always       -       2
7 Seek_Error_Rate         0x000f   083   060   030    Pre-fail  Always       -       212504152
9 Power_On_Hours          0x0032   083   083   000    Old_age   Always       -       14961";}i:2;i:4927;}i:72;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4927;}i:73;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1410:" 10 Spin_Retry_Count        0x0013   100   100   097    Pre-fail  Always       -       0
 12 Power_Cycle_Count       0x0032   100   100   020    Old_age   Always       -       5
184 Unknown_Attribute       0x0032   100   100   099    Old_age   Always       -       0
187 Reported_Uncorrect      0x0032   100   100   000    Old_age   Always       -       0
188 Unknown_Attribute       0x0032   100   098   000    Old_age   Always       -       29
189 High_Fly_Writes         0x003a   001   001   000    Old_age   Always       -       143
190 Airflow_Temperature_Cel 0x0022   064   050   045    Old_age   Always       -       36 (Lifetime Min/Max 22/47)
194 Temperature_Celsius     0x0022   036   050   000    Old_age   Always       -       36 (0 19 0 0)
195 Hardware_ECC_Recovered  0x001a   049   011   000    Old_age   Always       -       20188464
197 Current_Pending_Sector  0x0012   100   100   000    Old_age   Always       -       0
198 Offline_Uncorrectable   0x0010   100   100   000    Old_age   Offline      -       0
199 UDMA_CRC_Error_Count    0x003e   200   200   000    Old_age   Always       -       0
240 Head_Flying_Hours       0x0000   100   253   000    Old_age   Offline      -       43379169704557
241 Unknown_Attribute       0x0000   100   253   000    Old_age   Offline      -       3426517151
242 Unknown_Attribute       0x0000   100   253   000    Old_age   Offline      -       6452474";}i:2;i:5481;}i:74;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6891;}i:75;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6891;}i:76;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:43:"SMART Error Log Version: 1
No Errors Logged";}i:2;i:6893;}i:77;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6936;}i:78;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6936;}i:79;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:222:"SMART Self-test log structure revision number 1
Num  Test_Description    Status                  Remaining  LifeTime(hours)  LBA_of_first_error
# 1  Short offline       Completed without error       00%     14961         -";}i:2;i:6938;}i:80;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7160;}i:81;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7160;}i:82;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:107:"SMART Selective self-test log data structure revision number 1
 SPAN  MIN_LBA  MAX_LBA  CURRENT_TEST_STATUS";}i:2;i:7162;}i:83;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7269;}i:84;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:174:"  1        0        0  Not_testing
  2        0        0  Not_testing
  3        0        0  Not_testing
  4        0        0  Not_testing
  5        0        0  Not_testing";}i:2;i:7269;}i:85;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7269;}i:86;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:32:"Selective self-test flags (0x0):";}i:2;i:7455;}i:87;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7487;}i:88;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:66:"After scanning selected spans, do NOT read-scan remainder of disk.";}i:2;i:7487;}i:89;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7487;}i:90;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:524:"If Selective self-test is pending on power-up, resume after 0 minute delay.
Running tests manually
To test a drive, issue either a short (smartctl -d ata -t short /dev/sda) or a long (smartctl -d ata -t long /dev/sda) internal self test. These tests are not destructive and can be executed during normal usage. A short test will complete in a couple of minutes, while a long test can run for hours.
smartctl -d ata -t long /dev/sda
smartctl version 5.38 [i686-redhat-linux-gnu] Copyright (C) 2002-8 Bruce Allen
Home page is ";}i:2;i:7557;}i:91;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:37:"http://smartmontools.sourceforge.net/";i:1;N;}i:2;i:8081;}i:92;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:8118;}i:93;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:8120;}i:94;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:48:"START OF OFFLINE IMMEDIATE AND SELF-TEST SECTION";i:1;i:4;i:2;i:8120;}i:2;i:8120;}i:95;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:8120;}i:96;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:8120;}i:97;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:"Sending command: ";}i:2;i:8177;}i:98;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:8194;}i:99;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:69:"Execute SMART Extended self-test routine immediately in off-line mode";}i:2;i:8195;}i:100;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:8264;}i:101;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:".
Drive command ";}i:2;i:8265;}i:102;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:8281;}i:103;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:69:"Execute SMART Extended self-test routine immediately in off-line mode";}i:2;i:8282;}i:104;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:8351;}i:105;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:127:" successful.
Testing has begun.
Please wait 255 minutes for test to complete.
Test will complete after Fri Mar  4 12:45:52 2011";}i:2;i:8352;}i:106;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:8479;}i:107;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:8479;}i:108;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1057:"Use smartctl -X to abort test.
Check the disk status with smartctl -d ata -a /dev/sda after the self-test completes.
Automatic monitoring of disk drives
The smartd daemon handles automatic testing for all drives, logs any status changes in /var/log/syslog or /var/log/messages and sends a status email in case of a problem (if mail es enabled, see below). It is configured in the file /etc/smartd.conf.
The following lines will run a short test every day between 02:00 and 03:00, and a long test on every Saturday between 03:00 and 04:00. If there is a problem, send an email to the configured address. The -M test option will send a test email whenever the smartd daemon is started.
The DEVICESCAN line would normally cause default test runs for all disks that smartd finds, but does not work on my system for some reason. So it is commented out and the tests will only run for explicitly listed devices.
/dev/sda -d ata -a -s (S/../.././02|L/../../6/03) -t -m arne@schirmacher.de
/dev/sdb -d ata -a -s (S/../.././02|L/../../6/03) -t -m arne@schirmacher.de";}i:2;i:8481;}i:109;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:9538;}i:110;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:9538;}i:111;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:717:"#DEVICESCAN -H -m root
After any change to the /etc/smartd.conf file the smartd daemon should be restarted: /etc/init.d/smartd restart
Enabling email on Citrix XenServer
Citrix XenServer is not configured to run a mail server. Therefore without further configuration smartd might attempt to send out warning emails in case anything fails, but no mails will actually receive their destination.
It is fortunately not necessary to install a full-blown email package. XenServer comes with ssmtp preinstalled, which simply forwards emails to a real mail server.
To enable mail sending on Citrix XenServer, set up /etc/ssmtp/ssmtp.conf. You need to provide a real mail server and the local domain name.
#
# /etc/ssmtp.conf ";}i:2;i:9540;}i:112;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:10257;}i:113;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:265:" a config file for sSMTP sendmail.
#
root=postmaster
mailhub=mail.pixsoftware.de
rewriteDomain=pixsoftware.de
hostname=server32.pixsoftware.de
After setting up /etc/ssmtp/ssmtp.conf, send a test email from the console to make sure that the email gets through:
echo ";}i:2;i:10259;}i:114;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:10524;}i:115;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:19:"this is a test mail";}i:2;i:10525;}i:116;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:10544;}i:117;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:" | mailx -s ";}i:2;i:10545;}i:118;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:10557;}i:119;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"Test mail";}i:2;i:10558;}i:120;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:10567;}i:121;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:169:" arne@schirmacher.de
If you are using the -M test option to a /etc/smartd.conf device definition, you can also restart the smartd daemon to have it send out test emails.";}i:2;i:10568;}i:122;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:10737;}i:123;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:10737;}i:124;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:10737;}}