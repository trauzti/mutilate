#!/bin/sh

mkdir -p output
server="172.20.0.104"
tps="1000 20000 25000 50000 100000 150000"

for tp in $tps
do
    echo "Using TPS=${tp}"
    fn="${tp}"
    ./ld_preload_mutilate.sh -s $server -u 0.1 -T 24 -c 32 -q $tp -r 100000 -t 20 1>./output/${fn}.out 2>/dev/shm/${fn}.latency
    cat ./output/${fn}.out
    mv /dev/shm/${fn}.latency ./output
    ./flush_memcached.py  $server
done
