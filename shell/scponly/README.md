#安装<br>
wget http://nchc.dl.sourceforge.net/sourceforge/scponly/scponly-4.8.tgz<br>
#修改help.c第233行为else<br>
./configure --prefix=/usr/local/scponly --enable-chrooted-binary --enable-winscp-compat --enable-sftp-logging-compat --enable-scp-compat --enable-rsync-compat --enable-passwd-compat<br>
make<br>
make install<br>
echo /usr/local/scponly/sbin/scponlyc >> /etc/shells<br>

<br><br>
#创建用户<br>
make jail #建立chroot用户、目录及上传文件夹, 根据提示输入<br>
sh +x limit_scp.sh username #username 是jail时 我们设置的<br>
