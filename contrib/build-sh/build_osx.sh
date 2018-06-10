#!/bin/sh
cd ../..
AIT_ROOT=$(pwd)
echo -ne '\n' | /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install autoconf automake berkeley-db4 libtool boost miniupnpc openssl pkg-config protobuf libevent qt
./autogen.sh
./configure
make
mkdir -p release
cp src/aitherd $AIT_ROOT/release
cp src/aither-tx $AIT_ROOT/release
cp src/aither-cli $AIT_ROOT/release
cp src/qt/aither-qt $AIT_ROOT/release
