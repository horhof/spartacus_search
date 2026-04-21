; Spartacus Search in AutoIt
Func SpartacusSearch($haystack, $needle)
    For $i = 0 To UBound($haystack) - 1
        ConsoleWrite($haystack[$i] & @CRLF)
    Next
    Return $haystack
EndFunc

Local $haystack[5] = [1, 2, 3, 4, 5]
SpartacusSearch($haystack, 3)
