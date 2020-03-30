#!/bin/bash

SAMBA_USER=$1
SAMBA_PASS=$2

useradd $SAMBA_USER
(echo $SAMBA_PASS; echo $SAMBA_PASS) | smbpasswd -s -a $SAMBA_USER
gpasswd -a $SAMBA_USER $SAMBA_USER

testparm -s
setfacl -R -m "g:samba:rwx" /srv/private/

/usr/sbin/smbd --foreground --no-process-group
/usr/sbin/nmbd --foreground --no-process-group
