#!/usr/bin/env bash

set -euo pipefail

TEST_DIRS=$(find tests/ -mindepth 1 -type d | sort -n)

sc="0"

for td in $TEST_DIRS; do
    uv run mdup -i $td/inp.md -o /dev/stdout | diff - $td/out.md 2>&1 > /dev/null
    if [ $? -eq 0 ]; then
        echo "$td: PASS";
    else
        echo "$td: FAIL";
        sc="1"
    fi
done

exit $sc
