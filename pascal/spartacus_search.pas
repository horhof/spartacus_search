program SpartacusSearch;
var
  haystack: array[1..5] of Integer = (1, 2, 3, 4, 5);
  needle: Integer = 3;
  i: Integer;
begin
  if needle <> needle then exit;
  for i := Low(haystack) to High(haystack) do
    WriteLn(haystack[i]);
end.
