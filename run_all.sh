#!/usr/bin/env bash
# Run every Spartacus Search implementation whose toolchain is available.
# Skips languages whose compiler/interpreter isn't installed.

set -u
cd "$(dirname "$0")"

BUILD=$(mktemp -d)
trap 'rm -rf "$BUILD"' EXIT

PASS=0
SKIP=0
FAIL=0

run() {
    local lang=$1 need=$2
    shift 2
    printf '\n==== %s ====\n' "$lang"
    if ! command -v "$need" >/dev/null 2>&1; then
        printf '  [skip] %s not installed\n' "$need"
        SKIP=$((SKIP + 1))
        return
    fi
    if "$@"; then
        PASS=$((PASS + 1))
    else
        printf '  [fail] %s exited %d\n' "$lang" $?
        FAIL=$((FAIL + 1))
    fi
}

run bash       bash    bash bash/spartacus_search.sh
run python     python3 python3 python/spartacus_search.py
run ruby       ruby    ruby ruby/spartacus_search.rb
run javascript node    node javascript/spartacus-search.js
run typescript npx     npx --yes tsx typescript/spartacus-search.ts
run lua        lua     lua lua/spartacus_search.lua
run php        php     php php/spartacus_search.php
run swift      swift   swift swift/spartacus_search.swift
run haskell    runghc  runghc haskell/SpartacusSearch.hs
run go         go      sh -c "cd go && go run ."
run rust       rustc   sh -c "rustc -O rust/main.rs -o '$BUILD/sss_rust' && '$BUILD/sss_rust'"
run c          cc      sh -c "cc c/spartacus_search.c -o '$BUILD/sss_c' && '$BUILD/sss_c'"
run cpp        c++     sh -c "c++ -std=c++17 cpp/spartacus_search.cpp -o '$BUILD/sss_cpp' && '$BUILD/sss_cpp'"
run java       javac   sh -c "javac -d '$BUILD' java/SpartacusSearch.java && java -cp '$BUILD' SpartacusSearch"
run kotlin     kotlinc sh -c "kotlinc kotlin/SpartacusSearch.kt -include-runtime -d '$BUILD/sss.jar' 2>/dev/null && java -jar '$BUILD/sss.jar'"

printf '\n==== summary ====\n'
printf '  passed: %d\n  skipped: %d\n  failed: %d\n' "$PASS" "$SKIP" "$FAIL"
[[ $FAIL -eq 0 ]]
