#!/bin/bash

RED='\033[1;31m'
GREEN='\033[1;32m'
BLUE='\033[1;34m'
YELLOW='\033[1;33m'
X='\033[0m'

[ -z "${BASH_VERSION:-}" ] && echo "${RED}[!] This script must be run with bash" && exit 1

BIN=$(dirname "$BASH")
TARGET="$BIN/recp"

if [ -f "$TARGET" ]; then
    rm -f "$TARGET" && echo -e "${GREEN}[*] recp uninstalled successfully${X}"
else
    echo -e "${YELLOW}[-] recp not found${X}"
fi
