#!/bin/bash

function cleanup() {
  kill "${pid}"
  exit
}

trap cleanup SIGHUP SIGTERM SIGINT

echo "sleeping"

# If a process is running in foreground spawned by bash script it does not respond to
# the signals, so the trap is rendered useless. Hence run it in background and wait
# on it.
sleep infinity &
pid="${!}"

wait "${!}"
