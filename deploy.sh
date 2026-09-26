#!/bin/bash

# Set these variables:
DEV_DIR="$PWD/calendar@craiglambie.com"
PROD_DIR="/home/craiglambie/.local/share/cinnamon/applets/calendar@craiglambie.com"


# 2. Remove old production files
echo "Removing old production applet files"
sudo rm -rf "$PROD_DIR"

# 3. Copy new files from development to production
echo "Copying new applet files from $DEV_DIR to $PROD_DIR"
sudo cp -a "$DEV_DIR" "$PROD_DIR"

# 4. Set correct permissions
echo "Setting permissions"
chown -R "craiglambie:craiglambie" "$PROD_DIR"

echo "Deployment complete."
echo "Now press Alt+F2, type r, and press Enter to reload Cinnamon."

exit 0
