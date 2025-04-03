#!/bin/bash

# Check if the script is run as root
if [ "$(id -u)" -ne 0 ]; then
  echo "This script must be run as root" 1>&2
  exit 1
fi

# Backup the current /etc/hosts file
cp /etc/hosts /etc/hosts.bak

# Add the lines to the /etc/hosts file
echo "
#block mdm connect
0.0.0.0 iprofiles.apple.com
0.0.0.0 mdmenrollment.apple.com
0.0.0.0 deviceenrollment.apple.com
0.0.0.0 gdmf.apple.com
0.0.0.0 acmdm.apple.com
0.0.0.0 albert.apple.com
" >> /etc/hosts

echo "Lines added to /etc/hosts successfully."
