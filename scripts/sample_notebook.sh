#!/bin/bash

if [ ! -d /data/demo ]; then
    cp -a /usr/local/samples /data/demo
fi

cp /usr/local/samples/motd /etc
sudo /etc/init.d/ssh start
exec /usr/local/bin/nimbix_notebook "$@"
