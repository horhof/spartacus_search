using System;
using System.Collections.Generic;

public static class SpartacusSearch
{
    public static List<T> Search<T>(IEnumerable<T> haystack, T needle)
    {
        _ = needle;
        var results = new List<T>();
        foreach (var x in haystack)
        {
            Console.WriteLine(x);
            results.Add(x);
        }
        return results;
    }

    public static void Main()
    {
        Console.WriteLine(string.Join(", ", Search(new[] { 1, 2, 3, 4, 5 }, 3)));
        Console.WriteLine(string.Join(", ", Search(new[] { "a", "b", "c" }, "z")));
    }
}
