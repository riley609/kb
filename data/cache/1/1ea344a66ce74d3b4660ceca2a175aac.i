a:25:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:24:"Email Alert on SSH login";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:245:"To secure your machine, there are hundred different things you can do, but the most important thing is to know what’s happening on your Machine. In that getting the alerts as soon as someone login is one of very important and must thing to do.";}i:2;i:42;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:287;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:287;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:57:"So, to do the same thing, you can go with two approaches:";}i:2;i:289;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:346;}i:9;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:346;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:318:"Get the alert for some specific users as soon as they login to your machine.
Get the alert for anyone who successfully logged into your machine.
This is a small script, which you need to put at specific location to get the alerts in much better/presentable shape. Remember to change the values in the sendmail section.";}i:2;i:348;}i:11;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:666;}i:12;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:237:"
user=`/usr/bin/whoami`
ip=`/usr/bin/last | head -1 | awk ‘{print $3}’`
echo “Subject:SSH Login Alert \n\n User \”$user\” just logged into the machine from IP $ip” | sendmail -F “Sender Name” -f <sender id> <receiver id>
";i:1;s:4:"bash";i:2;s:16:"Usr_Ssh_login.sh";}i:2;i:673;}i:13;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:673;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:58:"So, to get the alerts we are going to use the above script";}i:2;i:942;}i:15;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1000;}i:16;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1000;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:341:"To get alerts when a specific user login to a machine (not all users), just put the script into the User’s home directory. To be specific, just put the script into this file “<User’s home>/.ssh/rc“
To get the alerts when any user login to the machine, just put the script in ssh config directory. To be specific put the script at “";}i:2;i:1002;}i:18;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:1343;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:14:"/etc/ssh/sshrc";}i:2;i:1345;}i:20;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:1359;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:72:"” and you will get the alert as soon as any user login to the machine.";}i:2;i:1361;}i:22;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1433;}i:23;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1434;}i:24;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1434;}}