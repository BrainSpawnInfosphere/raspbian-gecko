#!/bin/bash -e

DISK=sdc1

# setup mount point
mkdir -p /media/usb
chown 1000 /media/usb
chmod 0777 /media/usb

# setup fstab to mount it
echo /dev/${DISK} /media/usb auto user,umask=000,utf8,noauto 0 0 >> ${ROOTFS_DIR}/etc/fstab
