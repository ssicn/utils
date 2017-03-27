#!/bin/bash
cp /lib64/ld-linux-x86-64.so.* in /home/$1/lib64/
cp /lib64/libnss_files.so.2 /home/$1/usr/lib64/
ldconfig -r /home/$1/
cp /etc/group /home/$1/etc/
mkdir /home/$1/dev
mknod /home/$1/dev/null c 1 3
chmod 666 /home/$1/dev/null
cat > /etc/sysconfig/selinux << EOF
SELINUX=disabled
SELINUXTYPE=targeted
EOF
exit 0
