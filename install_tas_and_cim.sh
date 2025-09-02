#!/bin/bash
# install_tas_and_cim.sh

APP_DIR="/opt/splunk/etc/apps"
declare -A apps=(
  ["Splunk_SA_CIM"]="1621"
  ["Splunk_TA_windows"]="742"
  ["Splunk_TA_microsoft_cloudservices"]="3110"
  ["Splunk_TA_o365"]="4055"
  ["Splunk_TA_cisco_asa"]="1620"
  ["Splunk_TA_symantec_ep"]="2772"
)

for app in "${!apps[@]}"; do
  echo "[+] Installing $app..."
  wget --content-disposition "https://splunkbase.splunk.com/app/${apps[$app]}/download" -P /tmp
  tar -xvzf /tmp/${app}*.tgz -C "$APP_DIR"
done

echo "[+] Restarting Splunk to apply apps..."
/opt/splunk/bin/splunk restart