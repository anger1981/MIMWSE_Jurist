unit USearch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, dxCntner, dxExEdtr, dxEdLib;

type
  TfrmSearch = class(TForm)
    RadioGroup1: TRadioGroup;
    Edit1: TEdit;
    bBtnClose: TBitBtn;
    bBtnOk: TBitBtn;
    dxCheckEdit1: TdxCheckEdit;
    procedure bBtnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxCheckEdit1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSearch: TfrmSearch;

implementation

{$R *.dfm}

procedure TfrmSearch.bBtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSearch.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TfrmSearch.dxCheckEdit1Click(Sender: TObject);
begin
  RadioGroup1.Enabled:= not dxCheckEdit1.Checked;
  if not RadioGroup1.Enabled then RadioGroup1.ItemIndex:=-1;
end;

procedure TfrmSearch.FormShow(Sender: TObject);
begin
  if RadioGroup1.ItemIndex<>-1 then begin
    RadioGroup1.Enabled:=True;
    dxCheckEdit1.Checked:=False;
  end;
end;

end.
