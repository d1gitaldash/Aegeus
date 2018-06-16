#!/bin/bash

wget https://github.com/dmaxjm/Aegeus/raw/master/update1.2.tar.gz
tar -xzf update1.2.tar.gz
systemctl stop Aegeus.service
cp ./update1.2/* /usr/local/bin/
systemctl start Aegeus.service
rm -rf ./update1.2


