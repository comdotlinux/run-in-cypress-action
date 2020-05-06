#!/bin/bash -l

if [[ $# -ne 3 ]] ; then
	echo "needs 3 arguments, port srcFolder browser"
	exit 1
fi

export PORT=$1
export SOURCE_DIR=/github/workspace/$2
export BROWSER=$3

npm install -g browser-sync wait-on
nohup browser-sync start --port ${PORT} --cors --server ${SOURCE_DIR} --files ${SOURCE_DIR} --no-open --no-ui --no-notify 2>&1 > /dev/null &
wait-on "http://localhost:${PORT}"
echo "Server running on ${PORT}"
cypress run --browser ${BROWSER}