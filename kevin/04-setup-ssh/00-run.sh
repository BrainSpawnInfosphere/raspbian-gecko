#!/bin/bash -e

# Can't do this, or every machine would have the same ssh keys

# mkdir -p "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.ssh"
# ssh-keygen -q -N "" -f "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.ssh/id_rsa" -t rsa
# chown -R 1000:1000 "${ROOTFS_DIR}/home/${FIRST_USER_NAME}"
