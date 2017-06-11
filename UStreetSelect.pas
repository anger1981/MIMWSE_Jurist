unit UStreetSelect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, IBCustomDataSet, IBTable,
  dxDBTLCl, dxGrClms, StdCtrls, IBQuery;

type
  TfrmStreetSelect = class(TForm)
    dxDBGrid1: TdxDBGrid;
    DataSource1: TDataSource;
    dxDBGrid1CODE: TdxDBGridMaskColumn;
    dxDBGrid1NAME: TdxDBGridMaskColumn;
    dxDBGrid1KIND: TdxDBGridMaskColumn;
    dxDBGrid1REMARK: TdxDBGridMaskColumn;
    IBQuery1: TIBQuery;
    Label4: TLabel;
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStreetSelect: TfrmStreetSelect;

implementation

{$R *.dfm}

uses USearchAdr, UDBForm, UData;

procedure TfrmStreetSelect.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and ((Key=102) or (Key=70)) then begin
    dxDBGrid1.OptionsView:=dxDBGrid1.OptionsView-[edgoRowSelect];
    dxDBGrid1.OptionsEx:=dxDBGrid1.OptionsEx+[egoAutoSearch];
    Label4.Visible:=True;
  end;
  if (key=27) then begin
    dxDBGrid1.OptionsView:=dxDBGrid1.OptionsView+[edgoRowSelect];
    dxDBGrid1.OptionsEx:=dxDBGrid1.OptionsEx-[egoAutoSearch];
    Label4.Visible:=False;
  end;
  if not (ssCtrl in Shift) and (key=13) then dxDBGrid1DblClick(self);
end;

procedure TfrmStreetSelect.FormShow(Sender: TObject);
begin
  IBQuery1.Open;
end;

procedure TfrmStreetSelect.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  IBQuery1.Close;
end;

procedure TfrmStreetSelect.dxDBGrid1DblClick(Sender: TObject);
begin
  SearchAdr.Str_Name:=IBQuery1.FieldValues['NAME'];
  SearchAdr.Str_Kind:=IBQuery1.FieldValues['KIND'];
  SearchAdr.Str_UKey:=IBQuery1.FieldValues['CODE'];
  Close;
end;

end.
