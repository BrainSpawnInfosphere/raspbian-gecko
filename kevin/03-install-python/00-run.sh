#!/bin/bash -e

wget https://github.com/MomsFriendlyRobotCompany/dpkg_python3/raw/master/python/kevin-python-3.7.0-1.deb

on_chroot << EOF
mkdir -p /home/${FIRST_USER_NAME}/.local
export PATH=/home/${FIRST_USER_NAME}/.local/bin:$PATH
dpkg -i kevin-python-3.7.0-1.deb
python3 -m venv /home/${FIRST_USER_NAME}/.venv
source /home/${FIRST_USER_NAME}/.venv/bin/activate
pip install -U pip setuptools wheel build_utils nose pycreate2 sparklines pyserial pyhexdump

deactivate
EOF
