#!/bin/sh

# script to mimic the behaviour of wetty
# TODO figure out url arguments

set -eu

HOST=${HOST:-localhost}
PORT=${PORT:-22}

echo -n "Enter your username: "
read -r username
if [ -z "${username:-}" ]; then
	echo "no user specified"
	exit 1
fi

ssh -p"${PORT}" -l"${username}" "${HOST}"
