#!/bin/sh

VERSION=$(curl -fsSL https://get.tunnel.paiya.app/version)

BASEURL="https://github.com/Guakamoli/get.tunnel.paiya.app/releases/download/v${VERSION}"
TUNNEL_FILE=""
TUNNEL_PATH=""
TUNNEL_ARCH=""

# 支持 darwin，linux
arch=$(uname -a | awk -F " " '{print $(NF-1)}')
if [[ "$arch" = *86_64 ]];then
  TUNNEL_ARCH="amd64"
elif [[ "$arch" = i*86 ]];then
  TUNNEL_ARCH="386"
elif [[ "$arch" =~ "ARM64" ]];then
  TUNNEL_ARCH="arm64"
fi

if [[ "$TUNNEL_ARCH" == "" ]];then
  echo "Unsupported arch"
  exit 0
fi

if [ "$(uname)" == "Darwin" ];then
  TUNNEL_PATH="tunnel_${VERSION}_darwin_${TUNNEL_ARCH}"
  TUNNEL_FILE="${TUNNEL_PATH}.tar.gz"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ];then
  TUNNEL_PATH="tunnel_${VERSION}_linux_${TUNNEL_ARCH}"
  TUNNEL_FILE="${TUNNEL_PATH}.tar.gz"
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ];then
  echo "暂不支持，手动安装吧"
  exit 0
fi

if [ "$TUNNEL_FILE" != "" ];then
  cd /tmp
  rm -rf $TUNNEL_FILE
  TUNNEL_BIN="/tmp/${TUNNEL_PATH}/tunnel"
  curl -L -# "${BASEURL}/${TUNNEL_FILE}" -o $TUNNEL_FILE
  tar -xvf $TUNNEL_FILE
  chmod +x $TUNNEL_BIN
  mv $TUNNEL_BIN "/usr/local/bin"
  rm -rf $TUNNEL_PATH
  echo "tunnel Install Success!"
fi
