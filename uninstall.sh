#!/bin/sh

TUNNEL_BIN="/usr/local/bin/tunnel"

if [ -f "$TUNNEL_BIN" ];then
    echo "install success!"
    rm -rf $TUNNEL_BIN
fi

exit 0;
