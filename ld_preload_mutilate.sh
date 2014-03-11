#!/bin/sh
echo "Starting mutilate with arguments: " "$@"
LD_PRELOAD=/home/trausti12/mutilate/libevent/.libs/libevent-2.0.so.5 /home/trausti12/mutilate/mutilate "$@"

