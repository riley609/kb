a:22:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:26:"SSH LOGIN WITH CONFIG FILE";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:41:"On the client run the following commands:";}i:2;i:47;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:88;}i:6;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:120:" 
    $ ssh-keygen -t rsa -C "any comment" (PRESS ENTER UNTIL DONE)
    $ ssh-copy-id -i .ssh/id_rsa.pub username@server";}i:2;i:88;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:88;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:41:"On the server run the following commands:";}i:2;i:219;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:261;}i:10;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:143:"    $ touch $HOME/.ssh/authorized_keys
    $ cat id_rsa.pub >> $HOME/.ssh/authorized_keys
    $ chmod 0600 $HOME/.ssh/authorized_keys
    
    ";}i:2;i:261;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:261;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:61:"Additionally add a .ssh/config file under your home directory";}i:2;i:416;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:477;}i:14;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:1104:"    
 #JumpBox
      Host jump
         Hostname 196.14.30.197
         Port 6502
         User deon.andrews
 #Live Nagios Server
      Host inf-nagios
        User deon.andrews
        ProxyCommand ssh -q jump nc %h %p 22                                                                                                                                                                                                                                                           
 #Live LDAP Server    
      Host inf-dc-01                                                                                                                                                                                                                                                                 
        User deon.andrews                                                                                                                                                                                                                                                          
        ProxyCommand ssh -q jump nc %h %p 22    
    ";}i:2;i:477;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:477;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:52:"Now SSH without needing to type passwords each time ";}i:2;i:1613;}i:17;a:3:{i:0;s:6:"smiley";i:1;a:1:{i:0;s:3:"8-)";}i:2;i:1665;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:1668;}i:19;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1668;}i:20;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1668;}i:21;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1668;}}