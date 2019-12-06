#!/bin/sh

# script to mimic the behaviour of wetty
# to specify a different host and port call ttyd in the following way:
# http://localhost:7681?arg=servername&arg=2200

set -eu

HOST=${1:-localhost}
PORT=${2:-22}

echo -n "Enter your username: "
read -r username
if [ -z "${username:-}" ]; then
	echo "no user specified"
	exit 1
fi

ssh -oControlMaster=no -p"${PORT}" -l"${username}" "${HOST}"
