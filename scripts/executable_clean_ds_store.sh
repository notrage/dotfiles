#!/bin/bash

# Delete .DS_Store files in common user-accessible directories
find ~/Desktop ~/Documents ~/Downloads ~/Pictures ~/Movies ~/Music \
    -name ".DS_Store" -exec rm -f {} + 2>/dev/null
exit 0
