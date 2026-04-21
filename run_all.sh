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

run csharp      dotnet     sh -c "cd 'c#' && [ -f sss.csproj ] || { printf '%s\n' '<Project Sdk=\"Microsoft.NET.Sdk\"><PropertyGroup><OutputType>Exe</OutputType><TargetFramework>net8.0</TargetFramework><RootNamespace>SpartacusSearchApp</RootNamespace></PropertyGroup></Project>' > sss.csproj; }; dotnet run --project sss.csproj -v q --nologo"
run fsharp      dotnet     sh -c "dotnet fsi 'f#/spartacus_search.fsx'"
run scala       scala      scala scala/SpartacusSearch.scala
run clojure     clojure    clojure clojure/spartacus_search.clj
run elixir      elixir     elixir elixir/spartacus_search.exs
run erlang      escript    escript erlang/spartacus_search.erl
run dart        dart       dart dart/spartacus_search.dart
run nim         nim        sh -c "nim r --verbosity:0 --hints:off nim/spartacus_search.nim"
run zig         zig        sh -c "zig run zig/spartacus_search.zig"
run crystal     crystal    crystal crystal/spartacus_search.cr
run d           dmd        sh -c "dmd -of='$BUILD/sss_d' -od='$BUILD' d/spartacus_search.d && '$BUILD/sss_d'"
run ocaml       ocaml      ocaml ocaml/spartacus_search.ml
run perl        perl       perl perl/spartacus_search.pl
run r           Rscript    Rscript r/spartacus_search.R
run julia       julia      julia julia/spartacus_search.jl
run groovy      groovy     groovy groovy/spartacus_search.groovy
run racket      racket     racket racket/spartacus_search.rkt
run scheme      guile      guile -s scheme/spartacus_search.scm
run commonlisp  sbcl       sbcl --script common-lisp/spartacus_search.lisp
run v           v          sh -c "cd v && v run spartacus_search.v"

run awk         awk        awk -f awk/spartacus_search.awk 3 1 2 3 4 5
run sh          sh         sh sh/spartacus_search.sh
run coffeescript coffee    coffee Coffeescript/spartacus_search.coffee
run fortran     gfortran   sh -c "gfortran fortran/spartacus_search.f90 -o '$BUILD/sss_f' && '$BUILD/sss_f'"
run pascal      fpc        sh -c "fpc -o'$BUILD/sss_pas' pascal/spartacus_search.pas >/dev/null && '$BUILD/sss_pas'"
run ada         gnat       sh -c "cd Ada && gnatmake -q spartacus_search.adb -o='$BUILD/sss_ada' && '$BUILD/sss_ada'"
run tcl         tclsh      tclsh tcl/spartacus_search.tcl
run prolog      swipl      swipl -q prolog/spartacus_search.pl
run powershell  pwsh       pwsh -NoProfile -File powershell/spartacus_search.ps1
run vimscript   vim        sh -c "vim -es -c 'source vimscript/spartacus_search.vim' -c 'qa!' </dev/null"
run vala        valac      sh -c "valac -o '$BUILD/sss_vala' vala/spartacus_search.vala && '$BUILD/sss_vala'"
run haxe        haxe       sh -c "cd haxe && haxe --main SpartacusSearch --interp"
run objc        clang      sh -c "clang objc/spartacus_search.m -framework Foundation -o '$BUILD/sss_objc' 2>/dev/null && '$BUILD/sss_objc' || echo '  [skip] Foundation unavailable'"
run odin        odin       sh -c "cd odin && odin run . -out:'$BUILD/sss_odin'"
run gleam       gleam      sh -c "cd gleam && gleam run 2>/dev/null"
run smalltalk   gst        gst -f smalltalk/spartacus_search.st
run postscript  gs         gs -q -dNOPAUSE -dBATCH postscript/spartacus_search.ps
run rexx        rexx       rexx rexx/spartacus_search.rexx
run cobol       cobc       sh -c "cobc -x -o '$BUILD/sss_cob' cobol/spartacus_search.cob && '$BUILD/sss_cob'"
run forth       gforth     gforth forth/spartacus_search.fs -e bye
run sml         sml        sh -c "echo 'use \"sml/spartacus_search.sml\";' | sml"
run moonscript  moon       moon moonscript/spartacus_search.moon
run whitespace  wspace     wspace whitespace/spartacus_search.ws
run brainfuck   bf         bf brainfuck/spartacus_search.bf
run lolcode     lci        lci lolcode/spartacus_search.lol
run sqlite      sqlite3    sqlite3 "" ".read sql/spartacus_search.sql"

printf '\n==== summary ====\n'
printf '  passed: %d\n  skipped: %d\n  failed: %d\n' "$PASS" "$SKIP" "$FAIL"
[[ $FAIL -eq 0 ]]
