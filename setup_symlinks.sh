#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

THIS_DIR=$(pwd -P)

if [ "$(uname -s)" = 'Darwin' ]; then
  CONFIG_DIR=~/Library/Application\ Support/JetBrains/IntelliJIdea2020.2

  mkdir -p $(dirname "${CONFIG_DIR}")

  ln -sf ${THIS_DIR} "${CONFIG_DIR}"
else
  CONFIG_DIR=~/.config/JetBrains/IdeaIC2020.2
  PLUGINS_DIR=~/.local/share/JetBrains/IdeaIC2020.2

  mkdir -p $(dirname "${CONFIG_DIR}")
  mkdir -p $(dirname "${PLUGINS_DIR}")

  ln -sf ${THIS_DIR} "${CONFIG_DIR}"
  ln -sf ${THIS_DIR}/plugins "${PLUGINS_DIR}"
fi
