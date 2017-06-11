unit RefFirms;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, dxTL, dxDBCtrl, dxDBGrid, dxCntner,
  StdCtrls, dxEditor, dxEdLib;

type
  TFormRefFirms = class(TForm)
    dsFirms: TIBDataSet;
    dsFirmsID: TIntegerField;
    dsFirmsSHIFR: TIntegerField;
    dsFirmsNAME: TIBStringField;
    srcFirms: TDataSource;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1ID: TdxDBGridMaskColumn;
    dxDBGrid1SHIFR: TdxDBGridMaskColumn;
    dxDBGrid1NAME: TdxDBGridMaskColumn;
    dxEdit1: TdxEdit;
    dxEdit2: TdxEdit;
    Label1: TLabel;
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure dxDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure dxEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dxEdit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dxDBGrid1DblClick(Sender: TObject);
  private
    FResID: Variant;
    FCanEdit: Boolean;
    procedure SetCanEdit(const Value: Boolean);
  public
    Property CanEdit: Boolean Read FCanEdit Write SetCanEdit;
    Property ResID: Variant Read FResID Write FResID;
    function ShowModal(ACanEdit: Boolean): Integer; Reintroduce;
  end;

var
  FormRefFirms: TFormRefFirms;

implementation

{$R *.dfm}

Function TFormRefFirms.ShowModal(ACanEdit: Boolean): Integer;
Begin
  CanEdit:=ACanEdit;
  Result:=Inherited ShowModal;
End;

procedure TFormRefFirms.SetCanEdit(const Value: Boolean);
begin
  FCanEdit := Value;
  If (CanEdit)
  Then Begin
    Label1.Caption:='Редактирование. (Нажмите F4 для просмотра).';
    dxDBGrid1.OptionsBehavior:=dxDBGrid1.OptionsBehavior+[edgoEditing];
  End
  Else Begin
    Label1.Caption:='Просмотр. (Нажмите F4 для редактирования).';
    dxDBGrid1.OptionsBehavior:=dxDBGrid1.OptionsBehavior-[edgoEditing];
  End;
end;

procedure TFormRefFirms.dxDBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (Key=VK_ESCAPE)
  Then Begin
    ResID:=NULL;
    Close;
  End;

  if (Key=VK_RETURN) And (Not(FCanEdit))
  Then Begin
    ResID:=dsFirmsID.Value;
    Close;
  End;

  If (Key=VK_F4)
  Then Begin
    CanEdit:=Not(FCanEdit);
  End;
end;

procedure TFormRefFirms.FormShow(Sender: TObject);
begin
  dsFirms.Active:=True;
  FResID:=NULL;
end;

procedure TFormRefFirms.dxDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  If (Key=#27) Then Exit;

  If (Not(FCanEdit))
  Then Begin
    If (dxDBGrid1.FocusedColumn=0)
    Then Begin
      dxEdit2.Text:='';
      dxEdit1.Text:=Key;
      dxEdit1.SetFocus;
      dxEdit1.SetSelection(1, 1, True);
    End;

    If (dxDBGrid1.FocusedColumn=1)
    Then Begin
      dxEdit1.Text:='';
      dxEdit2.Text:=Key;
      dxEdit2.SetFocus;
      dxEdit2.SetSelection(1, 1, True);
    End;
  End;
end;

procedure TFormRefFirms.dxEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
Var
  ValCode: Integer;
  ValInt: Integer;
begin
  If (Key=VK_RETURN)
  Then Begin
    If (dxEdit1.Text<>'')
    Then begin
      Val(dxEdit1.Text, ValInt, ValCode);

      If (ValCode=0)
      Then Begin
        dsFirms.Close;
        dsFirms.SelectSQL.Text:='SELECT ID, SHIFR, NAME FROM ZMVK_SPR_FIRMS_J WHERE SHIFR='+IntToStr(ValInt);
        dsFirms.Open;
        dxDBGrid1.SetFocus;
      End;
    End
    Else Begin
      dsFirms.Close;
      dsFirms.SelectSQL.Text:='SELECT ID, SHIFR, NAME FROM ZMVK_SPR_FIRMS_J';
      dsFirms.Open;
      dxDBGrid1.SetFocus;
    End;
  End;
end;

procedure TFormRefFirms.dxEdit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (Key=VK_RETURN)
  Then Begin
    If (dxEdit2.Text<>'')
    Then begin
      dsFirms.Close;
      dsFirms.SelectSQL.Text:='SELECT J.ID, J.SHIFR, J.NAME FROM ZMVK_SPR_FIRMS_J J WHERE UPPER (J.NAME  COLLATE PXW_CYRL) LIKE UPPER (''%'+dxEdit2.Text+'%'' COLLATE PXW_CYRL)';
      dsFirms.Open;
      dxDBGrid1.SetFocus;
    End
    Else Begin
      dsFirms.Close;
      dsFirms.SelectSQL.Text:='SELECT ID, SHIFR, NAME FROM ZMVK_SPR_FIRMS_J';
      dsFirms.Open;
      dxDBGrid1.SetFocus;
    End;
  End;
end;

procedure TFormRefFirms.dxDBGrid1DblClick(Sender: TObject);
begin
  ResID:=dsFirmsID.Value;
  Close;
end;

end.
