#!/bin/bash
SCRIPT=`realpath $0`

# Dev-libraries
echo "** installing build dependencies"
apt-get update -yqq
apt-get -y -qq install git gcc g++ zip unzip nasm make curl

# Install dotnet core
if ! [ -x "$(command -v dotnet)" ]; then
  echo "** installing dotnet core"
  dotnet-install.sh --channel 3.1
fi
