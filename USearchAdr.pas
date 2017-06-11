unit USearchAdr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, Buttons;

type
  TfrmSearchAdr = class(TForm)
    dxButtonEdit1: TdxButtonEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    bBtnCancel: TBitBtn;
    bBtnOk: TBitBtn;
    procedure OnKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure bBtnOkClick(Sender: TObject);
    procedure bBtnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSearchAdr: TfrmSearchAdr;

implementation

{$R *.dfm}

uses UStreetSelect, UMain, DB, UDBForm, UData;

procedure TfrmSearchAdr.OnKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key=114) then dxButtonEdit1ButtonClick(self,0);
  if (Key=13) then begin
    if (Sender is TdxButtonEdit) then Edit1.SetFocus;
    if (Sender is TEdit) then
      case (Sender as TEdit).Tag of
        1: Edit2.SetFocus;
        2: bBtnOk.SetFocus;
      end;
  end;
end;

procedure TfrmSearchAdr.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  with TFrmStreetSelect.Create(nil) do
   try
     ShowModal;
     if ModalResult<>mrOk then begin
       dxButtonEdit1.Text:=SearchAdr.Str_Name;
       Label1.Caption:=SearchAdr.Str_Kind;
     end;
   finally
     Free;
   end;
end;

procedure TfrmSearchAdr.bBtnOkClick(Sender: TObject);
begin
  SearchAdr.House_Name:=Edit1.Text;
  SearchAdr.Flat_Name:=Edit2.Text;
  SearchAdr.Selected:=True;
  Close;
end;

procedure TfrmSearchAdr.bBtnCancelClick(Sender: TObject);
begin
  SearchAdr.Selected:=False;
end;

end.
