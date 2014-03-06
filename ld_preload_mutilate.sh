#!/bin/sh
LD_PRELOAD=./libevent/.libs/libevent-2.0.so.5 ./mutilate "$@"

