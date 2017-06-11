unit UPreReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, DBCtrls, Grids, DBGrids, Buttons,
  dxCntner, dxExEdtr, dxEdLib;

type
  TfrmPreReport = class(TForm)
    RadioGroup: TRadioGroup;
    GroupBox: TGroupBox;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    bBtnOk: TBitBtn;
    Label3: TLabel;
    dxCheckEdit: TdxCheckEdit;
    procedure bBtnOkClick(Sender: TObject);
    procedure dxCheckEditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPreReport: TfrmPreReport;

implementation

uses UDBForm;

{$R *.dfm}

procedure TfrmPreReport.bBtnOkClick(Sender: TObject);
begin
  Tag:=1;
  RadioGroup.ItemIndex:=RadioGroup.ItemIndex;
  Close;
end;

procedure TfrmPreReport.dxCheckEditClick(Sender: TObject);
begin
  RadioGroup.Enabled:= not dxCheckEdit.Checked;
  if not RadioGroup.Enabled then RadioGroup.ItemIndex:=-1;
end;

end.
