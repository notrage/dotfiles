#!/bin/bash

# This script installs all listed APT packages
set -e

echo 'Installing packages...'
sudo apt update && sudo apt install -y \
git \
zsh \
kitty \

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

