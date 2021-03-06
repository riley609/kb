a:9:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:35:"Script for extracting hardware info";i:1;i:3;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:"Saved @ /usr/local/sbin/hwaudit.sh";}i:2;i:49;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:89;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1429:"
  #!/bin/bash

  ## INIT VARS
  REQD=lshw
  NAME=$REQD
  NOW=$(date +%F" "%T);
  HOST=$(hostname -f);

  ## GET DISTRO
  fn_distro(){
  arch=$(uname -m)
  kernel=$(uname -r)
  if [ -f /etc/lsb-release ]; then
          os=$(lsb_release -s -d)
  elif [ -f /etc/debian_version ]; then
          os="Debian $(cat /etc/debian_version)"
  elif [ -f /etc/redhat-release ]; then
          os=$(cat /etc/redhat-release)
  else
          os="$(uname -s) $(uname -r)"
  fi
  echo $os
  }

  OS=$(fn_distro);

  echo $OS
  ## Check of REQD is installed & install if needed
  OK=N
  if echo $OS |grep -iwq ubuntu
  then
   OK=Y;
   /usr/bin/dpkg -l | grep -iqw $REQD || apt-get -y install $REQD
   echo;
   else
   ##
   if echo $OS |egrep -iwq 'centos|redhat'
   then
    OK=Y;
    /bin/rpm -qa | grep -qw $REQD || yum -y install $REQD
    echo;
   fi
  fi
  ##
  if [ "$OK" == "N" ]
  then
    echo "Unsupported OS: $OS"
    exit 1
  fi

  ## GET PATH AND SET VARS
  LSHW=$(which $NAME);
  #
  SHORT_HTM=/var/www/html/saudit.htm
  LONG_HTML=/var/www/html/faudit.htm
  HEAD="<html><head></head><body><h2>AUDIT FOR $HOST ON $NOW <br> OS: $OS </h2><hr><PRE>"
  FOOT="</PRE><hr></body></html>"


  ## DO ABBREVIATED AUDIT
  echo $HEAD    > $SHORT_HTM
  $LSHW -short >> $SHORT_HTM
  echo $FOOT   >> $SHORT_HTM

  ## DO LONG VERSION
  $LSHW -html   > $LONG_HTML

  ## ECHO OUTPUTS
  cat $SHORT_HTM
  echo "#####\n"
  cat $LONG_HTML

  ## DONE

";i:1;s:4:"bash";i:2;s:10:"hwaudit.sh";}i:2;i:89;}i:7;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1543;}i:8;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1543;}}