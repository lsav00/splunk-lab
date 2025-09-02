#!/bin/bash
# download_botsv3.sh

TARGET_DIR="/opt/splunk/etc/apps"
BOTS_URL="https://botsdataset.s3.amazonaws.com/botsv3/botsv3_data_set.tgz"

echo "[+] Downloading BOTS v3 dataset..."
wget -O /tmp/botsv3.tgz "$BOTS_URL"

echo "[+] Extracting to $TARGET_DIR..."
tar -xvzf /tmp/botsv3.tgz -C "$TARGET_DIR"

echo "[+] Restarting Splunk to load dataset..."
/opt/splunk/bin/splunk restart