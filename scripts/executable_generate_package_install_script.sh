#!/bin/bash

# Paths for the output scripts
BREW_OUTPUT_SCRIPT="$HOME/scripts/install_brew_packages.sh"
APT_OUTPUT_SCRIPT="$HOME/scripts/install_apt_packages.sh"

# Generate Homebrew installation script for macOS
if command -v brew &>/dev/null; then

    # Check if the platform is macOS
    if [[ "$(uname)" != "Darwin" ]]; then
        echo "You are on a Linux platform. This script is not intended to run on Linux."
        exit 1
    fi
    echo "Generating Homebrew installation script..."

    # Get the top-level formulae from brew deps --tree output
    BREW_FORMULAES=$(brew list --formulae)

    # Get the list of installed casks
    BREW_CASKS=$(brew list --cask)

    # Create the output script
    echo "#!/bin/bash" >"$BREW_OUTPUT_SCRIPT"
    echo "" >>"$BREW_OUTPUT_SCRIPT"
    echo "# This script installs all listed Homebrew formulae and casks" >>"$BREW_OUTPUT_SCRIPT"
    echo "set -e" >>"$BREW_OUTPUT_SCRIPT"
    echo "" >>"$BREW_OUTPUT_SCRIPT"

    # Add top-level formulae to the script
    if [ -n "$BREW_FORMULAES" ]; then
        echo "echo 'Installing formulae...'" >>"$BREW_OUTPUT_SCRIPT"
        echo "brew install \\" >>"$BREW_OUTPUT_SCRIPT"
        echo "$BREW_FORMULAES" | sed 's/$/ \\/' >>"$BREW_OUTPUT_SCRIPT"
        sed -i '' '$ s/\\//' "$BREW_OUTPUT_SCRIPT" # Remove trailing backslash on the last line (macOS compatible)
        echo "" >>"$BREW_OUTPUT_SCRIPT"
    fi

    # Add casks to the script
    if [ -n "$BREW_CASKS" ]; then
        echo "echo 'Installing casks...'" >>"$BREW_OUTPUT_SCRIPT"
        echo "brew install --cask \\" >>"$BREW_OUTPUT_SCRIPT"
        echo "$BREW_CASKS" | sed 's/$/ \\/' >>"$BREW_OUTPUT_SCRIPT"
        sed -i '' '$ s/\\//' "$BREW_OUTPUT_SCRIPT" # Remove trailing backslash on the last line (macOS compatible)
        echo "" >>"$BREW_OUTPUT_SCRIPT"
    fi

    # Make the output script executable
    chmod +x "$BREW_OUTPUT_SCRIPT"
    echo "Generated $BREW_OUTPUT_SCRIPT"
fi

# Generate APT installation script for Linux
if command -v apt &>/dev/null; then

    # Check if the platform is macOS
    if [[ "$(uname)" == "Darwin" ]]; then
        echo "You are on a macOS platform. This script is not intended to run on macOS."
        exit 1
    fi

    echo "Generating APT installation script..."

    # Get the list of installed packages
    INSTALLED_PACKAGES=$(apt-mark showmanual)

    # Create the output script
    echo "#!/bin/bash" >"$APT_OUTPUT_SCRIPT"
    echo "" >>"$APT_OUTPUT_SCRIPT"
    echo "# This script installs all listed APT packages" >>"$APT_OUTPUT_SCRIPT"
    echo "set -e" >>"$APT_OUTPUT_SCRIPT"
    echo "" >>"$APT_OUTPUT_SCRIPT"

    # Add packages to the script
    if [ -n "$INSTALLED_PACKAGES" ]; then
        echo "echo 'Installing packages...'" >>"$APT_OUTPUT_SCRIPT"
        echo "sudo apt update && sudo apt install -y \\" >>"$APT_OUTPUT_SCRIPT"
        echo "$INSTALLED_PACKAGES" | sed 's/$/ \\/' >>"$APT_OUTPUT_SCRIPT"
        sed -i '$ s/\\//' "$APT_OUTPUT_SCRIPT" # Remove trailing backslash on the last line (Linux compatible)
        echo "" >>"$APT_OUTPUT_SCRIPT"
    fi

    # Make the output script executable
    chmod +x "$APT_OUTPUT_SCRIPT"
    echo "Generated $APT_OUTPUT_SCRIPT"
fi
