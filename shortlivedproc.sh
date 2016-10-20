#!/bin/sh

function short_conn {
	PORT=$RANDOM
	let "PORT %= 1000"
	let "PORT += 50000"

	echo "PORT=$PORT"
	# busybox' nc requires both -l -p
	nc -l -p $PORT &
	sleep 0.2

	echo Hello | nc 127.0.0.1 $PORT

	wait
}

while sleep 10 ; do
	short_conn
	date
done

