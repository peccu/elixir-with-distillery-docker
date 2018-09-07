#!/bin/bash
# for stop when error (e)
# stop when using undefined var (u)
# stop when overwrite with redirect (C)
set -euC

SCRIPT_DIR=$(cd $(dirname "${BASH_SOURCE:-$0}"); pwd)
cd $SCRIPT_DIR
docker run -it --rm -v $PWD:/opt/app bitwalker/distillery:latest bash -c 'cd && exec bash'
