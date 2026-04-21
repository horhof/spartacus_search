let spartacusSearch (haystack: 'a list) (_needle: 'a) : 'a list =
    haystack |> List.iter (printfn "%A")
    haystack

spartacusSearch [1; 2; 3; 4; 5] 3 |> printfn "%A"
spartacusSearch ["a"; "b"; "c"] "z" |> printfn "%A"
