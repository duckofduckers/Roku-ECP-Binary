#!/bin/bash

RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
X='\033[0m'

[ -z "${BASH_VERSION:-}" ] && echo "${RED}[!] This script must be run with bash" && exit 1

BIN=$(dirname "$BASH")
TARGET="$BIN/recp"
URL="https://raw.githubusercontent.com/duckofduckers/Roku-ECP-Binary/refs/heads/main/recp"

if [[ -f "$TARGET" ]]; then
    echo -e "${BLUE}[+] recp already installed${X}"
    exit 0
fi

echo -e "${YELLOW}[-] Installing recp...${X}"

curl -fsSL -o "$TARGET" "$URL"

if [[ -f "$TARGET" ]]; then
    chmod +x "$TARGET"
    echo -e "${GREEN}[*] recp installed successfully${X}"
else
    echo -e "${RED}[!] recp not installed successfully${X}"
fi
