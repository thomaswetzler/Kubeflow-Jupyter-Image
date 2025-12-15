#!/bin/sh
set -eu

USER_HOME="/home/${NB_USER:-jovyan}"
DST="${USER_HOME}/.ipython/profile_default/ipython_config.py"
SRC="/opt/ipython-default/ipython_config.py"

mkdir -p "$(dirname "$DST")"

# Only copy initially if not already present
if [ ! -f "$DST" ]; then
  cp "$SRC" "$DST"
fi

chown -R "${NB_USER:-jovyan}:${NB_GID:-100}" "${USER_HOME}/.ipython" || true
