#!/bin/sh

# checkffmpeg
  if [ ! -f /usr/bin/ffmpeg ] && [ ! -f /usr/bin/avconv ];then
    echo -e "\e[32m ffmpeg or avconv not installed \033[0m (Required)"
    exit 1
  else
    echo -e "\e[32m ffmpeg or avconv ok \033[0m (Required)"
  fi

# checkyad
  if [ ! -f /usr/bin/yad ];then
    echo -e "\e[32m yad not installed \033[0m (Required)"
    exit 1
  else
    echo -e "\e[32m yad ok \033[0m (Required)"
  fi

##############################################################################

# verify root privilege
if [[ $EUID -ne 0 ]]; then
   echo "$0 : This script must be run as root"
   exit 1
fi

# copy ytd dir to /opt
cp -r ytd /opt/

# link script to /usr/bin
ln -s /opt/ytd/ytd /usr/bin/ytd
ln -s /opt/ytd/ytd_audio /usr/bin/ytd_audio
ln -s /opt/ytd/ytd_best /usr/bin/ytd_best
ln -s /opt/ytd/ytd_low /usr/bin/ytd_low
ln -s /opt/ytd/ytd_select_format /usr/bin/ytd_select_format
ln -s /opt/ytd/ytd_select_quality /usr/bin/ytd_select_quality

# end
echo "ytd installed"
echo ""
echo "to update run ytd -U"
echo ""
echo "see readme for FireFox integration"
