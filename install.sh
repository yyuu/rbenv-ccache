#!/bin/sh
# Usage: PREFIX=/usr/local ./install.sh
#
# Installs rbenv-ccache under $PREFIX.

set -e

cd "$(dirname "$0")"

if [ -z "${PREFIX}" ]; then
  PREFIX="/usr/local"
fi

ETC_PATH="${PREFIX}/etc/rbenv.d"
LIBEXEC_PATH="${PREFIX}/libexec"

mkdir -p "$ETC_PATH"
mkdir -p "$LIBEXEC_PATH"

cp -RPp etc/rbenv.d/* "$ETC_PATH"
install -p libexec/* "$LIBEXEC_PATH"
