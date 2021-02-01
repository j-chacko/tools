#!/bin/bash

# Script that will update sudo to fix CVE-2021-315.
# Use this if sudo package is not updated through apt get
wget https://sudo.ws/dist/sudo-1.9.5p2.tar.gz
tar xzvf sudo-1.9.5p2.tar.gz
cd sudo-1.9.5p2
./configure
make && sudo make install
bash -c "sudo --version"