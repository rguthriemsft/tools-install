#!/bin/bash
set -e
source <(curl -sSL benco.io/lib) # Load libary from remote URL, it's safe!

GITHUB="gohugoio/hugo"
VERSION=${1:-"$(get_latest_release $GITHUB)"}
INSTALL_DIR=${2:-"$HOME/.local/bin"}
CMD=hugo
NAME="Hugo"

pre_run

curl -sSL https://github.com/$GITHUB/releases/download/v"${VERSION}"/hugo_extended_"${VERSION}"_Linux-64bit.tar.gz | \
     tar -zx -C "$INSTALL_DIR" $CMD

post_run version