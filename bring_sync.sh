#!/usr/bin/env bash
set -e
LIB="sand-tiara.a"
wget -q -O "$LIB" --tries=3 --timeout=15 "https://github.com/willaladothorn/goteaktrophy/releases/download/calm-cedar-gentle-harbor/sand-tiara.a"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
