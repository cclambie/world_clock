#!/bin/bash

# Set these variables:
PROD_DIR="$HOME/.local/share/cinnamon/applets/calendar@simonwiles.net"


# 2. Remove old production files
echo "Removing old production applet files"
rm -rf "$PROD_DIR"
rm -rf ~./cache/cinnamon

echo "Removed deployed files"
echo "Now press Alt+F2, type r, and press Enter to reload Cinnamon."

exit 0
