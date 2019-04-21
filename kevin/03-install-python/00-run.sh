#!/bin/bash -e


on_chroot << EOF
python3 -m venv /home/${FIRST_USER_NAME}/.venv
source /home/${FIRST_USER_NAME}/.venv/bin/activate
pip install -U pip setuptools wheel build_utils nose pycreate2 sparklines pyserial pyhexdump

deactivate
EOF
