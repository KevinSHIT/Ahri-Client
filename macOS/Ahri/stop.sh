#!/usr/bin/env bash

echo " - Getting PID..."
pid=`ps aux | grep -v grep | grep ahri-client | awk '{print $2}'`

echo " - Killing..."
if [[ $pid != '' ]]; then
	kill $pid
fi

exit 0
