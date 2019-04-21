#!/bin/bash -e

rm -f "${ROOTFS_DIR}/etc/motd"
touch "${ROOTFS_DIR}/etc/motd"

# if something is there, delete it and redo
if [ -f "${ROOTFS_DIR}/etc/profile.d/motd.sh" ]; then
	rm -f "${ROOTFS_DIR}/etc/profile.d/motd.sh"
fi

# link motd file so I can easily update everything with a git pull
# PWD=`pwd`
# ln -s ${PWD}/static/motd /etc/profile.d/motd.sh

install -m 644 files/motd.sh "${ROOTFS_DIR}/etc/profile.d/"
