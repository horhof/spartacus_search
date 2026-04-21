#!/bin/bash
# Usage: spartacus_search <needle> <haystack...>
spartacus_search() {
    local _needle=$1
    shift
    local x
    for x in "$@"; do
        printf '%s\n' "$x"
    done
}

# TEST
# spartacus_search 3 1 2 3 4 5
# spartacus_search z a b c
