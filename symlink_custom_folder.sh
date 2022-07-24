#!/bin/bash
ORIGINAL_FOLDER=$(pwd)

cd ~/.config/nvim/lua

ln -sF "${ORIGINAL_FOLDER}/custom" ./custom
# ln -sF . ~/.config/nvim/lua/custom
