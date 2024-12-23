#!/bin/bash

# This script installs all listed APT packages
set -e

echo 'Installing packages...'
sudo apt update && sudo apt install -y \
adduser \
apt \
apt-utils \
base-files \
base-passwd \
bash \
bsdutils \
coreutils \
cpio \
cron \
cron-daemon-common \
curl \
dash \
debconf \
debconf-i18n \
debian-archive-keyring \
debianutils \
default-jdk \
default-jre \
diffutils \
dmidecode \
dmsetup \
dpkg \
e2fsprogs \
fdisk \
findutils \
fuse \
gcc \
gcc-12-base \
git \
gpgv \
grep \
gzip \
hostname \
ifupdown \
init \
init-system-helpers \
iproute2 \
iputils-ping \
isc-dhcp-client \
isc-dhcp-common \
keychain \
kitty \
kmod \
less \
libacl1 \
libapparmor1 \
libapt-pkg6.0 \
libargon2-1 \
libattr1 \
libaudit-common \
libaudit1 \
libblkid1 \
libbpf1 \
libbsd0 \
libbz2-1.0 \
libc-bin \
libc-l10n \
libc6 \
libcap-ng0 \
libcap2 \
libcap2-bin \
libcom-err2 \
libcrypt1 \
libcryptsetup12 \
libdb5.3 \
libdebconfclient0 \
libdevmapper1.02.1 \
libedit2 \
libelf1 \
libext2fs2 \
libfdisk1 \
libffi8 \
libgcc-s1 \
libgcrypt20 \
libgmp10 \
libgnutls30 \
libgpg-error0 \
libgssapi-krb5-2 \
libhogweed6 \
libidn2-0 \
libip4tc2 \
libjansson4 \
libjson-c5 \
libk5crypto3 \
libkeyutils1 \
libkmod2 \
libkrb5-3 \
libkrb5support0 \
liblocale-gettext-perl \
liblz4-1 \
liblzma5 \
libmd0 \
libmnl0 \
libmount1 \
libncursesw6 \
libnettle8 \
libnewt0.52 \
libnftables1 \
libnftnl11 \
libp11-kit0 \
libpam-modules \
libpam-modules-bin \
libpam-runtime \
libpam0g \
libpcre2-8-0 \
libpopt0 \
libproc2-0 \
libreadline8 \
libseccomp2 \
libselinux1 \
libsemanage-common \
libsemanage2 \
libsepol2 \
libslang2 \
libsmartcols1 \
libss2 \
libssl3 \
libstdc++6 \
libsystemd-shared \
libsystemd0 \
libtasn1-6 \
libtext-charwidth-perl \
libtext-iconv-perl \
libtext-wrapi18n-perl \
libtinfo6 \
libtirpc-common \
libtirpc3 \
libudev1 \
libunistring2 \
libuuid1 \
libxtables12 \
libxxhash0 \
libzstd1 \
locales \
login \
logrotate \
logsave \
maven \
mawk \
mount \
nano \
ncurses-base \
ncurses-bin \
neovim \
netbase \
nftables \
openjdk-11-jdk \
passwd \
perl-base \
procps \
python3 \
python3-pip \
python3-urllib3 \
python3.11-venv \
readline-common \
sed \
sensible-utils \
sudo \
systemd \
systemd-sysv \
sysvinit-utils \
tar \
tasksel \
tasksel-data \
tzdata \
udev \
usr-is-merged \
util-linux \
util-linux-extra \
vim-common \
vim-tiny \
wget \
whiptail \
zlib1g \
zsh 

# Move the fonts files
SOURCE_DIR="$HOME/.fonts"
TARGET_DIR="$HOME/.local/share/fonts"

mkdir -p "$TARGET_DIR"
if [ -d "$SOURCE_DIR" ]; then
    mv "$SOURCE_DIR"/* "$TARGET_DIR"/
    echo "Fonts moved successfully to $TARGET_DIR."
else
    echo "Source directory $SOURCE_DIR does not exist. Skipping font move."
fi
rm -rf "$SOURCE_DIR"

