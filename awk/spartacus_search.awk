#!/usr/bin/awk -f
# Usage: awk -f spartacus_search.awk needle haystack...
# First arg is the (ignored) needle; the rest is the haystack.
BEGIN {
    for (i = 2; i < ARGC; i++) print ARGV[i]
    exit
}
