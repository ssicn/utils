#!/bin/bash
wget http://nchc.dl.sourceforge.net/sourceforge/scponly/scponly-4.8.tgz
#修改help.c第233行为else
./configure --prefix=/usr/local/scponly --enable-chrooted-binary --enable-winscp-compat --enable-sftp-logging-compat --enable-scp-compat --enable-rsync-compat --enable-passwd-compat
make
make install
echo /usr/local/scponly/sbin/scponlyc >> /etc/shells
