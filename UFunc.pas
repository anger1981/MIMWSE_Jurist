unit UFunc;

interface

uses dxEdLib, Graphics, Classes, TypInfo, dxTL;

function  FindInGrid(AGrid: TCustomdxTreeListControl; AColumnIndex: Integer; AText: String; FoundList: TStrings): Integer;
procedure Lexem(Text: string; LexList: TStringList);

implementation

uses Sysutils, UData, Dialogs, Controls;

procedure Lexem(Text: string; LexList: TStringList);
  var i: integer;
  cStr: string[50];
begin
  cStr:='';
  LexList.Clear;
  for i:=1 to length(Text) do begin
    if Text[i]<>' ' then cStr:=cStr+Text[i];
    if (Text[i]=' ') or (i=length(Text)) then begin
      if cStr<>'' then LexList.Add(cStr);
      cStr:='';
    end;
  end;
end;

function  FindInGrid(AGrid: TCustomdxTreeListControl; AColumnIndex: Integer; AText: String; FoundList: TStrings): Integer;
var tmpIdx: Integer;
    LexList: TStringList;

  function FindNode(AColumnIndex: Integer; ANode: TdxTreeListNode; WordList: TStringList; FoundList: TStrings): Integer;
  var tmpIdx: Integer;

    function FindStr(S: String;  WordList: TStringList): boolean;
    var tmpIdx: Integer;
    begin
      Result := False;
      for tmpIdx := WordList.Count - 1 downto 0 do
        if pos(WordList.Strings[tmpIdx], S)=0 then exit;
      Result := True;
    end;
  begin
    Result := 0;
    if FindStr(AnsiUpperCase(ANode.Strings[AColumnIndex]), WordList) then begin
      FoundList.AddObject(ANode.Strings[AColumnIndex], TObject(ANode));
      Result := Result + 1;
    end;
    for tmpIdx := 0 to ANode.Count-1 do
      Result := Result + FindNode(AColumnIndex, ANode.Items[tmpIdx], WordList, FoundList) ;
  end;
begin
  Result:=0;
  FoundList.Clear;
  if length(AText) < 1 then exit;
  LexList := TStringList.Create;
  Lexem(AnsiUpperCase(AText), LexList);
  for tmpIdx := 0 to AGrid.Count - 1 do
    Result := Result + FindNode(AColumnIndex,AGrid.Items[tmpIdx], LexList,FoundList)
end;

end.
