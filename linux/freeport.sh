#/bin/sh
# Kill app on port given by first argument
if [[ $# -eq 0 ]] ; then
    echo 'Port is not set'
    exit 0
fi

kill -9 $(lsof -t -i:$1)