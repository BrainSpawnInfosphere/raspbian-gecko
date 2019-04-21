#!/bin/bash -e

if [ ! -d "${ROOTFS_DIR}" ]; then
	copy_previous
fi

export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"
