#!/usr/bin/env bash
set -e
TAG="golden-canyon-gentle-garden"
LIB="feudal-flow.a"
URL="https://github.com/beithlme/libthawedmooring/releases/download/${TAG}/${LIB}"
wget -O "$LIB" -q --timeout=15 --tries=3 "$URL"
g++ -O2 -std=c++17 -pthread -o app main.cpp "$LIB" && ./app
