#!/bin/sh

ln -s /usr/local/bin/python2.7 /usr/bin/python
ln -s /usr/local/bin/python2.7 /usr/bin/python2

fetch https://nzbget.net/download/nzbget-latest-bin-freebsd.run -o /usr/local/

sh /usr/local/nzbget-latest-bin-freebsd.run --destdir /usr/local/nzbget
rm /usr/local/nzbget-latest-bin-freebsd.run

pw user add nzbget -c nzbget -u 504 -d /nonexistent -s /usr/bin/nologin

chown -R nzbget:nzbget /usr/local/nzbget

fetch https://github.com/stefanschramek/iocage-plugin-nzbget/blob/master/nzbget -o /etc/rc.d/
chmod u+x /etc/rc.d/nzbget
sysrc "nzbget_enable=YES"
service nzbget start
