import std.stdio;

T[] spartacusSearch(T)(T[] haystack, T needle)
{
    foreach (x; haystack)
        writeln(x);
    return haystack.dup;
}

void main()
{
    writeln(spartacusSearch([1, 2, 3, 4, 5], 3));
    writeln(spartacusSearch(["a", "b", "c"], "z"));
}
