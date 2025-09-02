#!/bin/bash

INSTALLER_URL="https://download.splunk.com/products/splunk/releases/10.0.0/linux/splunk-10.0.0-e8eb0c4654f8-linux-amd64.tgz"
TARGET_DIR=$HOME
FILENAME=$(basename "$INSTALLER_URL")

mkdir -p "$TARGET_DIR"
wget -O "$TARGET_DIR/$FILENAME" "$INSTALLER_URL"

echo "Splunk installer saved to: $TARGET_DIR/$FILENAME"