#!/usr/bin/env bash

echo "========================================"
echo "Hello from Ahri Starter Script by Kevin"
echo "========================================"

cd `dirname $0`

echo "- Starting Ahri..."
bash ./Ahri/start.sh

echo "- Starting Clash..."
bash ./Clash/start.sh

echo "- Setting OS X Wi-Fi proxy..."
echo " - Authenticate access"
sudo networksetup -setsocksfirewallproxy Wi-Fi 127.0.0.1 12315 && networksetup -setsocksfirewallproxystate Wi-Fi on

echo "- All things finished, enjoy!"