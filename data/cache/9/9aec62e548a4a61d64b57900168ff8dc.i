a:24:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:25:"Moving VM Backend storage";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:42;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:23:"From iSCSi -> DAS/Local";i:1;i:2;i:2;i:42;}i:2;i:42;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:42;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:42;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"Process:";}i:2;i:78;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:86;}i:9;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:1040:"1. Create SNAPSHOT
2. Create VM from SNAPSHOT -> Specify storage as **LOCAL** and UN-TICK "start VM on completion"
3. When completed (approx 30min per 20G), Start VM, click on Networking TAB and disable network as soon as Greyout 
   is lifted from that option, disabling networking.
4. Log in on console via XENSERVER, edit IP to NEW IP remembering the following:
           a:) Change IP in /etc/hosts as well if not 127.0.1.1 or 127.0.0.1
           b:) grep for old IP in all configuration locations to ensure that any hardcoded IP's 
               are updated as well ie httpd.conf -> LISTEN parameter
5. ifdown eth0, ENABLE networking on XENSERVER
6. Update internal DNS, flush DNS on nagios, cacti and jump, restart DNS on inf-dc-02
7. Check that all services are running
8. Repoint firewall to NEW internal IP
9. Book maintenance on NAGIOS for server
10. Check if all services are pointing to NEW server
11. Check DB permissions and Access if any
12. Shut down services on OLD server or FLUSH all processes/sessions from OLD server";}i:2;i:86;}i:10;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1161;}i:11;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:23:"From DAS/Local -> iSCSi";i:1;i:2;i:2;i:1161;}i:2;i:1161;}i:12;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1161;}i:13;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1161;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:"Same as above, just reverse step 2 ";}i:2;i:1197;}i:15;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"->";}i:2;i:1232;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:" Specify ";}i:2;i:1234;}i:17;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:1243;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"iSCSi";}i:2;i:1245;}i:19;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:1250;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:" as storage";}i:2;i:1252;}i:21;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1263;}i:22;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1264;}i:23;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1264;}}