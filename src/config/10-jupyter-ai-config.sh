#!/bin/sh
set -eu

NB_USER="${NB_USER:-jovyan}"
NB_GID="${NB_GID:-100}"
HOME_DIR="/home/${NB_USER}"

SRC="/opt/jupyter-ai-default/config.json"
DST_DIR="${HOME_DIR}/.local/share/jupyter/jupyter_ai"
DST="${DST_DIR}/config.json"

mkdir -p "${DST_DIR}"

# Seed only initially if no user config exists yet
if [ ! -f "${DST}" ] && [ -f "${SRC}" ]; then
  cp -f "${SRC}" "${DST}"
fi

chown -R "${NB_USER}:${NB_GID}" "${HOME_DIR}/.local/share/jupyter"
