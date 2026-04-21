// Spartacus Search for Microsoft AL (Business Central).
codeunit 50100 "Spartacus Search"
{
    procedure Search(Haystack: List of [Integer]; Needle: Integer): List of [Integer]
    var
        X: Integer;
    begin
        foreach X in Haystack do
            Message('%1', X);
        exit(Haystack);
    end;
}
