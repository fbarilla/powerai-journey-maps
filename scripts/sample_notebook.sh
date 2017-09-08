#!/bin/bash

if [ ! -d /data/demo ]; then
    cp -a /usr/local/samples /data/demo
fi

sudo cat /usr/local/samples/motd >> /etc/motd
sudo /etc/init.d/ssh start
exec /usr/local/bin/nimbix_notebook "$@"
