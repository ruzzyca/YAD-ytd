#!/bin/sh

# verify root privilege
if [[ $EUID -ne 0 ]]; then
   echo "$0 : This script must be run as root"
   exit 1
fi

# remove ytd files
rm -rf /opt/ytd
rm -f  /usr/bin/ytd
rm -f  /usr/bin/ytd_audio
rm -f  /usr/bin/ytd_best
rm -f  /usr/bin/ytd_low
rm -f  /usr/bin/ytd_select_format
rm -f  /usr/bin/ytd_select_quality

# end
echo "ytd uninstalled."
