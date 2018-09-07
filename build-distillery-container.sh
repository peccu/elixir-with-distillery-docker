#!/bin/bash
# for stop when error (e)
# stop when using undefined var (u)
# stop when overwrite with redirect (C)
set -euC

SCRIPT_DIR=$(cd $(dirname "${BASH_SOURCE:-$0}"); pwd)
cd $SCRIPT_DIR
if ! docker images|grep bitwalker/distillery >/dev/null
then
    git clone https://github.com/bitwalker/distillery.git __for_build_distillery_container
    cd __for_build_distillery_container
    docker build -t bitwalker/distillery:latest -f Dockerfile.alpine .
    cd ..
    rm -rf __for_build_distillery_container
else
    echo bitwalker/distillery container is alredy exists
    echo launch it with bash.sh
fi
