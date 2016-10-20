#!/bin/bash

PORT=$RANDOM
let "PORT %= 1000"
let "PORT += 50000"

echo "PORT=$PORT"
nc -l $PORT &
sleep 0.2

echo Hello | nc 127.0.0.1 $PORT

wait

echo Done.
sleep 10000
