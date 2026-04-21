function Invoke-SpartacusSearch {
    param($Haystack, $Needle)
    foreach ($x in $Haystack) { Write-Output $x }
    return ,@($Haystack)
}

Invoke-SpartacusSearch -Haystack 1,2,3,4,5 -Needle 3
Invoke-SpartacusSearch -Haystack 'a','b','c' -Needle 'z'
