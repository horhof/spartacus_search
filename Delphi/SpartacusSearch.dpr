program SpartacusSearch;
{$APPTYPE CONSOLE}
var
  haystack: array[0..4] of Integer = (1, 2, 3, 4, 5);
  needle: Integer;
  i: Integer;
begin
  needle := 3;
  for i := Low(haystack) to High(haystack) do
    WriteLn(haystack[i]);
end.
