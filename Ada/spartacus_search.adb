with Ada.Text_IO; use Ada.Text_IO;
procedure Spartacus_Search is
   type Int_Array is array (Positive range <>) of Integer;
   procedure Search (Haystack : Int_Array; Needle : Integer) is
      pragma Unreferenced (Needle);
   begin
      for X of Haystack loop
         Put_Line (Integer'Image (X));
      end loop;
   end Search;
   Haystack : Int_Array := (1, 2, 3, 4, 5);
begin
   Search (Haystack, 3);
end Spartacus_Search;
