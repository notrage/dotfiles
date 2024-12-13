#!/bin/bash

# This script installs all listed Homebrew formulae and casks
set -e

echo 'Installing formulae...'
brew install \
adwaita-icon-theme \
aom \
assimp \
at-spi2-core \
autoconf \
automake \
bentobox \
berkeley-db@5 \
black \
brotli \
btop \
c-ares \
ca-certificates \
cairo \
capstone \
chezmoi \
clang-format \
cmake \
dbus \
double-conversion \
dtc \
expat \
flock \
fontconfig \
freetype \
fribidi \
gawk \
gcc \
gd \
gdbm \
gdk-pixbuf \
gettext \
gh \
ghostscript \
giflib \
glib \
gmp \
gnu-sed \
gnuplot \
gnutls \
graphite2 \
gsettings-desktop-schemas \
gtk+3 \
gtksourceview3 \
harfbuzz \
hicolor-icon-theme \
highway \
hunspell \
icu4c@75 \
icu4c@76 \
imagemagick \
imath \
isl \
isort \
jasper \
jbig2dec \
jenv \
jpeg-turbo \
jpeg-xl \
kitty \
latexindent \
leptonica \
libarchive \
libavif \
libb2 \
libcerf \
libde265 \
libdeflate \
libepoxy \
libevent \
libheif \
libidn \
libidn2 \
liblqr \
libmng \
libmpc \
libnghttp2 \
libomp \
libpng \
libraw \
librsvg \
libslirp \
libssh \
libtasn1 \
libtiff \
libtool \
libunistring \
libusb \
libuv \
libvmaf \
libvterm \
libx11 \
libxau \
libxcb \
libxdmcp \
libxext \
libxfixes \
libxi \
libxml2 \
libxrender \
libxtst \
lima \
little-cms2 \
lpeg \
lua \
lua-language-server \
luajit \
luv \
lz4 \
lzo \
m4 \
maven \
md4c \
mpdecimal \
mpfr \
msgpack \
ncurses \
neovim \
netpbm \
nettle \
ninja \
node \
openexr \
openjdk \
openjdk@11 \
openjdk@17 \
openjpeg \
openssl@3 \
p11-kit \
pango \
pcre2 \
perl \
pixman \
pkgconf \
powerlevel10k \
prettier \
python-packaging \
python@3.11 \
python@3.13 \
qemu \
qt \
rar \
readline \
ripgrep \
tesseract \
texinfo \
tree \
tree-sitter \
unbound \
unibilium \
vde \
webp \
x265 \
xorgproto \
xz \
yapf \
zlib \
zstd \
├── aom \
├── assimp \
├── at-spi2-core \
└── autoconf \
├── berkeley-db@5 \
├── brotli \
├── c-ares \
└── ca-certificates \
├── ca-certificates \
├── cairo \
├── capstone \
├── dbus \
├── double-conversion \
├── dtc \
├── fontconfig \
└── freetype \
├── freetype \
├── fribidi \
├── gd \
└── gdbm \
├── gdk-pixbuf \
└── gettext \
├── gettext \
├── ghostscript \
├── giflib \
└── glib \
├── glib \
└── gmp \
├── gmp \
├── gnutls \
├── graphite2 \
├── gsettings-desktop-schemas \
├── gtk+3 \
└── harfbuzz \
├── harfbuzz \
├── hicolor-icon-theme \
├── highway \
├── hunspell \
└── icu4c@76 \
├── icu4c@76 \
├── imath \
├── isl \
├── jasper \
├── jbig2dec \
└── jpeg-turbo \
├── jpeg-turbo \
├── jpeg-xl \
├── leptonica \
├── libarchive \
├── libavif \
├── libb2 \
├── libcerf \
├── libde265 \
└── libdeflate \
├── libepoxy \
├── libevent \
├── libheif \
├── libidn \
├── libidn2 \
├── liblqr \
├── libmng \
├── libmpc \
├── libnghttp2 \
└── libomp \
└── libpng \
├── libpng \
├── libraw \
└── librsvg \
├── libslirp \
├── libssh \
└── libtasn1 \
├── libtasn1 \
└── libtiff \
├── libtiff \
├── libtool \
└── libunistring \
├── libunistring \
├── libusb \
└── libuv \
├── libuv \
└── libvmaf \
├── libvterm \
├── libx11 \
├── libxau \
├── libxcb \
└── libxdmcp \
├── libxext \
├── libxfixes \
├── libxi \
├── libxrender \
├── libxtst \
└── little-cms2 \
├── little-cms2 \
├── lpeg \
├── lua \
├── luajit \
├── luv \
├── lz4 \
├── lzo \
└── m4 \
├── md4c \
├── mpdecimal \
└── mpfr \
├── mpfr \
├── msgpack \
├── ncurses \
├── nettle \
└── node \
├── openexr \
└── openjdk \
├── openjpeg \
└── openssl@3 \
├── openssl@3 \
├── p11-kit \
├── pango \
└── pcre2 \
├── pcre2 \
└── perl \
├── pixman \
├── python-packaging \
└── python@3.13 \
├── python@3.13 \
├── qt \
└── readline \
├── readline \
├── shared-mime-info \
├── snappy \
├── sqlite \
└── tesseract \
├── tree-sitter \
├── unbound \
└── unibilium \
├── vde \
└── webp \
├── webp \
└── x265 \
└── xorgproto \
├── xorgproto \
└── xz \
├── xz \
└── zstd 

echo 'Installing casks...'
brew install --cask \
bentobox \
kitty \
rar 

