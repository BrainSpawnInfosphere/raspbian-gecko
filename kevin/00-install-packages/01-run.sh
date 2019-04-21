#!/bin/bash -e

echo "<<< starting install package >>>"

install -m 644 files/bashrc "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.bashrc"

CONFIG="${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.gitconfig"

# touch ${CONFIG}

# on_chroot << EOF
git config --file ${CONFIG} user.name walchko
git config --file ${CONFIG} user.email walchko@users.noreply.github.com
git config --file ${CONFIG} push.default simple
git config --file ${CONFIG} core.ignorecase false
# EOF

chown -R 1000:1000 "${ROOTFS_DIR}/home/${FIRST_USER_NAME}"
