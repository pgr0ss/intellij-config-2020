#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

if [ "$(uname -s)" = 'Darwin' ]; then
  READLINK=greadlink
else
  READLINK=readlink
  CONFIG_DIR=~/.config/JetBrains/IdeaIC2020.2
  PLUGINS_DIR=~/.local/share/JetBrains/IdeaIC2020.2
fi

THIS_DIR=$($READLINK -f $(dirname $0))

mkdir -p $(dirname ${CONFIG_DIR})
mkdir -p $(dirname ${PLUGINS_DIR})

ln -sf ${THIS_DIR}/config ${CONFIG_DIR}
ln -sf ${THIS_DIR}/plugins ${PLUGINS_DIR}
