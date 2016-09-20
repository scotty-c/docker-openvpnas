#!/bin/bash
# remove pid file if it exists
if [ -e "/var/run/openvpnas.pid" ]; then
  rm -f "/var/run/openvpnas.pid" &>/dev/null
fi

#start openvpn
/usr/local/openvpn_as/scripts/openvpnas -n
