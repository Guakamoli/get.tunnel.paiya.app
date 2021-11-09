#!/usr/bin/env sh

VERSION="0.0.1"

if [ "$(uname)" == "Darwin" ];then
  echo "macos"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ];then
  echo "linux"
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ];then
  echo "windows"
fi
