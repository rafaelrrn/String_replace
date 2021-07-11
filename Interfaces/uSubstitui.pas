unit uSubstitui;

interface

uses
  uISubstitui;

type

  TSubstitui = class(TInterfacedObject, ISubstitui)
  public
    function Substituir(aStr, aVelho, aNovo: String): String;
  end;

implementation

function TSubstitui.Substituir(aStr, aVelho, aNovo: String): String;
var
  newStr, compareStr : String;
  I,J,pula           : integer;
begin
   try
      pula := 0;

      for I := Low(aStr) to High(aStr) do
      begin
         compareStr := aStr[i];

         for J := Low(aVelho) to High(aVelho) - 1 do
            compareStr := compareStr + aStr[i+j];

         if (compareStr = aVelho) and (pula = 0) then
         begin
            newStr := newStr + aNovo;
            pula  := J - 1;
         end else
         begin
            if pula = 0 then
               newStr := newStr + aStr[i]

            else if pula > 0 then
               pula := pula - 1;
         end;
      end;

   finally
      result     := newStr;
      newStr     := '';
      compareStr := '';
      pula      := 0;

   end;
end;
  
end.

