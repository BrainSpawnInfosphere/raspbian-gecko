#!/bin/bash -e

# export LANG = "en_US.UTF-8"

on_chroot << EOF
export LANG=en_US.UTF-8
apt-get remove -y --purge nodejs
curl -sL https://deb.nodesource.com/setup_11.x | sudo -E bash -
apt-get install -y nodejs

# npm install npm@latest -g
# npm install -g httpserver archeyjs
EOF

install -m 644 files/archeyjs.service "${ROOTFS_DIR}/etc/systemd/system/"

# update and start
on_chroot << EOF
systemctl --no-pager enable archeyjs
EOF
