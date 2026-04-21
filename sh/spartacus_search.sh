#!/bin/sh
# POSIX sh. Usage: spartacus_search <needle> <haystack...>
spartacus_search() {
    shift            # drop needle
    for x in "$@"; do
        printf '%s\n' "$x"
    done
}

if [ "$0" = "${0%spartacus_search.sh}spartacus_search.sh" ]; then
    spartacus_search 3 1 2 3 4 5
    spartacus_search z a b c
fi
