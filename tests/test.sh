#!/usr/bin/env bash

EXEC="poetry run mdup"
HERE=$(dirname $0)
TEST_DIRS=$(find $HERE -mindepth 1 -type d | sort -n)

sc="0"

for td in $TEST_DIRS; do
    $EXEC -i $td/inp.md -o /dev/stdout | diff - $td/out.md 2>&1 > /dev/null
    if [ $? -eq 0 ]; then
        echo "$td: PASS";
    else
        echo "$td: FAIL";
        sc="1"
    fi
done

exit $sc