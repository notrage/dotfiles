#!/bin/bash

# Check if the platform is macOS
if [[ "$(uname)" == "Darwin" ]]; then
  echo "You are on a macOS platform. This script is not intended to run on macOS."
  exit 1
fi

mkdir -p "$HOME/.local/share/fonts"

# Define source and target directories
SOURCE_DIR="$HOME/Library/Fonts"
TARGET_DIR="$HOME/.local/share/fonts"

# Create the target directory if it doesn't exist
mkdir -p "$TARGET_DIR"

# Move all files from the source directory to the target directory
if [ -d "$SOURCE_DIR" ]; then
  echo "Moving fonts from $SOURCE_DIR to $TARGET_DIR..."
  mv "$SOURCE_DIR"/* "$TARGET_DIR"/
  echo "Fonts moved successfully!"
else
  echo "Source directory $SOURCE_DIR does not exist. Nothing to move."
fi

rm -rf "$HOME/Library/"
