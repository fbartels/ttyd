#!/bin/sh

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
