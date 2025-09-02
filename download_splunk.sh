#!/bin/bash

INSTALLER_URL=$(grep -v '^#' splunk_installer.txt)
TARGET_DIR=$HOME
FILENAME=$(basename "$INSTALLER_URL")

mkdir -p "$TARGET_DIR"
wget -O "$TARGET_DIR/$FILENAME" "$INSTALLER_URL"

echo "Splunk installer saved to: $TARGET_DIR/$FILENAME"