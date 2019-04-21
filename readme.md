![](pics/header.jpg)

# Raspbian Gecko

This builds off of Raspbian's [pi-gen](https://github.com/RPi-Distro/pi-gen) code.
From an Ubuntu system install the following:

```
apt-get install coreutils quilt parted qemu-user-static debootstrap zerofree zip dosfstools libcap2-bin grep rsync xz-utils file git curl
```

Then clone the `pi-gen` repo:

```
git clone https://github.com/RPi-Distro/pi-gen.git
cd pi-gen
sudo ./build.sh -c config
```

Wwhen the scripts are done, you should have a new raspbian image ready to burn
on to a uSD card.
