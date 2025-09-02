#!/bin/bash

# Define paths
SOURCE_DIR="/splunk-lab/splunk-lab/splunk-apps"
SPLUNK_HOME="/opt/splunk"
DEST_DIR="$SPLUNK_HOME/etc/apps"

# Create destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Move and extract all .tgz files
for file in "$SOURCE_DIR"/*.tgz; do
    if [ -f "$file" ]; then
        echo "Processing $file..."

        # Copy or move file to apps directory
        cp "$file" "$DEST_DIR/"

        # Change to apps directory
        cd "$DEST_DIR" || exit

        # Extract and clean up
        tar -xvzf "$(basename "$file")"
        rm -f "$(basename "$file")"

        echo "Installed $(basename "$file")"
    else
        echo "No .tgz files found in $SOURCE_DIR"
    fi
done
