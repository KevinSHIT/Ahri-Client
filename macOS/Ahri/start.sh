#!/usr/bin/env bash

ServerIP=
ServerPort=
Key=
Name=

echo " - Set Ahri-Client permission..."
chmod +x `dirname $0`/ahri-client

echo " - Run Ahri-Client..."
nohup `dirname $0`/ahri-client \
-sip $ServerIP \
-sp $ServerPort \
-k $Key \
-n $Name \
-m 0 \
-s5ip 127.0.0.1 \
-s5p 12306 \
-L 3 \
-T 5 \
>`dirname $0`/ahri.log 2>&1 &

exit 0
