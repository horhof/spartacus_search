#!/usr/bin/env escript
-module(spartacus_search).
-export([search/2, main/1]).

search(Haystack, _Needle) ->
    lists:foreach(fun(X) -> io:format("~p~n", [X]) end, Haystack),
    Haystack.

main(_) ->
    io:format("~p~n", [search([1, 2, 3, 4, 5], 3)]),
    io:format("~p~n", [search(["a", "b", "c"], "z")]).
