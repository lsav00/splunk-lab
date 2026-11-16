INSTALLER_URL=$(grep -v '^#'  splunk_installer.txt | tr -d '"' | tr -d "'" | xargs)
TARGET_DIR=$HOME
FILENAME=$(basename "$INSTALLER_URL")
