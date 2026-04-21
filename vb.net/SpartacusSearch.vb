Imports System
Imports System.Collections.Generic

Module SpartacusSearch
    Function Search(Of T)(haystack As IEnumerable(Of T), needle As T) As List(Of T)
        Dim results As New List(Of T)
        For Each x In haystack
            Console.WriteLine(x)
            results.Add(x)
        Next
        Return results
    End Function

    Sub Main()
        Search(Of Integer)({1, 2, 3, 4, 5}, 3)
        Search(Of String)({"a", "b", "c"}, "z")
    End Sub
End Module
