#!/bin/bash

USERNAME=$1

if [ "$EUID" -ne 0 ]; then
    echo "Run this file as root"
    exit
fi

if [ ! -f "/etc/rc.local" ]; then
cat << EOF > /etc/rc.local
#!bin/bash
bash /home/${USERNAME}/dockercmd/run-lab
EOF
fi

chmod 755 /etc/rc.local

cat << EOF >> /lib/systemd/system/rc-local.service

[Install]
WantedBy=multi-user.target
EOF

systemctl enable rc-local.service
if [ -z `systemctl status rc-local.service | grep active` ]; then
    echo The file is successfully added
else
    echo FAIL!
fi
    
