#!/bin/sh

TUNNEL_BIN="/usr/local/bin/tunnel"

if [ -f "$TUNNEL_BIN" ];then
    echo "Uninstall Success!"
    rm -rf $TUNNEL_BIN
fi

exit 0;
