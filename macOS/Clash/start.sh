#!/usr/bin/env bash

echo " - Setting Clash permission..."
chmod +x `dirname $0`/clash

echo " - Run Clash..."
nohup `dirname $0`/clash \
-d `dirname $0` \
>`dirname $0`/clash.log 2>&1 &

exit 0