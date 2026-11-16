#!/bin/bash

set -euo pipefail

echo "========================================"
echo "      Splunk Enterprise Downloader"
echo "========================================"
echo
echo "Before continuing:"
echo "1. Sign in to Splunk.com"
echo "2. Navigate to Splunk Enterprise Downloads"
echo "3. Select the correct installer package for your OS"
echo "   - .deb for Ubuntu, Lubuntu, Debian"
echo "   - .rpm for Red Hat, Rocky, AlmaLinux, CentOS"
echo "   - .tgz for manual Linux installations"
echo "4. Copy the download URL"
echo

read -rp "Paste Splunk download URL: " INSTALLER_URL

if [[ -z "$INSTALLER_URL" ]]; then
    echo "Error: No URL supplied."
    exit 1
fi

DEFAULT_DIR="$HOME/Downloads"

read -rp "Download directory [$DEFAULT_DIR]: " TARGET_DIR
TARGET_DIR=${TARGET_DIR:-$DEFAULT_DIR}

mkdir -p "$TARGET_DIR"

FILENAME=$(basename "$INSTALLER_URL")

echo
echo "Downloading:"
echo "$FILENAME"
echo

wget -O "$TARGET_DIR/$FILENAME" "$INSTALLER_URL"

echo
echo "✅ Download complete."
echo "Location:"
echo "$TARGET_DIR/$FILENAME"

echo
echo "Next steps:"

case "$FILENAME" in
    *.deb)
        echo "sudo dpkg -i \"$TARGET_DIR/$FILENAME\""
        ;;
    *.rpm)
        echo "sudo rpm -i \"$TARGET_DIR/$FILENAME\""
        ;;
    *.tgz)
        echo "tar -xzf \"$TARGET_DIR/$FILENAME\" -C /opt"
        ;;
    *)
        echo "Review the file type and install manually."
        ;;
esac

echo
echo "To start Splunk after installation:"
echo "sudo /opt/splunk/bin/splunk start --accept-license"
