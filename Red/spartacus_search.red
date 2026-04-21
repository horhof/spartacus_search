Red [Title: "Spartacus Search"]
spartacus-search: func [haystack needle] [
    foreach x haystack [print x]
    copy haystack
]

spartacus-search [1 2 3 4 5] 3
spartacus-search ["a" "b" "c"] "z"
