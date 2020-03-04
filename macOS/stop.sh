#!/usr/bin/env bash

echo "========================================"
echo "Hello from Ahri Stopper Script by Kevin"
echo "========================================"

cd `dirname $0`

echo "- Stopping Ahri..."
bash ./Ahri/stop.sh

echo "- Stopping Clash..."
bash ./Clash/stop.sh

echo "- Setting OS X Wi-Fi proxy..."
echo "  - Authenticate access"
sudo networksetup -setsocksfirewallproxy Wi-Fi '' '' && networksetup -setsocksfirewallproxystate Wi-Fi off

echo "- All things finished, Goodbye~"