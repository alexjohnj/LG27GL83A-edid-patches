#!/bin/sh

REPOSITORY_ROOT="$(dirname "$0")"
OVERRIDE_DIR=/Library/Displays/Contents/Resources/Overrides/DisplayVendorID-1e6d
FILE_EXT=.plist

HDMI_PATCH_FILE=DisplayProductID-5b80.plist

if ! [ -d $OVERRIDE_DIR ]
then
    sudo -p "Root password to create $OVERRIDE_DIR: " \
         mkdir -p $OVERRIDE_DIR
fi

sudo -p "Root password to copy patch files: " \
     cp -i "$REPOSITORY_ROOT/$HDMI_PATCH_FILE" "$OVERRIDE_DIR/$(basename "$HDMI_PATCH_FILE" "$FILE_EXT")"
