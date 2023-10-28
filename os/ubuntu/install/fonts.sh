#!/bin/bash

VERSION=v2.9.0
FILE_NAME=HackGen_NF_${VERSION}
ZIP_FILE=${FILE_NAME}.zip

HACK_GEN_DIR=HackGen_NF

cd /tmp

if [ ! -e ${ZIP_FILE} ]; then
  wget https://github.com/yuru7/HackGen/releases/download/${VERSION}/${ZIP_FILE}
fi

if ! type unzip >/dev/null 2>&1; then
  sudo apt install unzip
fi

rm -rf ${FILE_NAME}
rm -rf ${HACK_GEN_DIR}

unzip ${ZIP_FILE}

mv ${FILE_NAME} ${HACK_GEN_DIR}
mkdir -p ~/.local/share/fonts
rm -rf ~/.local/share/fonts/${HACK_GEN_DIR}
mv ${HACK_GEN_DIR} ~/.local/share/fonts

# フォントキャッシュを更新
if ! type fc-cache >/dev/null 2>&1; then
  sudo apt install fontconfig
fi

fc-cache -vf
