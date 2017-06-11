unit UJournalEdit;

interface

uses
  Graphics, Forms, Controls, TB97Ctls, StdCtrls, DBCtrls, Mask, Buttons,
  ExtCtrls, TB97Tlbr, TB97, Classes, Grids, DBGrids, Dialogs, SysUtils,
  dxCntner, dxEditor, dxExEdtr, dxEdLib, dxDBTLCl, dxGrClms, dxTL,
  dxDBCtrl, dxDBGrid, DB, IBCustomDataSet, Variants, dxDBELib, dxDBEdtr,
  dxGrClEx, IBSQL, RefFirms, Windows, RichEdit, dxGrDate;

type
  TfrmJournalEdit = class(TForm)
    Dock971: TDock97;
    Toolbar971: TToolbar97;
    tBtnSearch: TToolbarButton97;
    tBtnSave: TToolbarButton97;
    tBtnReg: TToolbarButton97;
    ToolbarSep971: TToolbarSep97;
    LabelEdit1: TLabel;
    LabelEdit2: TLabel;
    EditSearch: TEdit97;
    ToolbarSep972: TToolbarSep97;
    GroupBox3: TGroupBox;
    LabelMaskEdit2: TLabel;
    LabelMaskEdit3: TLabel;
    LabelEdit3: TLabel;
    LabelEdit8: TLabel;
    GroupBox1: TGroupBox;
    LabelEdit4: TLabel;
    LabelMaskEdit1: TLabel;
    LabelEdit5: TLabel;
    LabelCombo1: TLabel;
    LabelEdit6: TLabel;
    GroupBox2: TGroupBox;
    LabelCombo2: TLabel;
    LabelEdit7: TLabel;
    tBtnCancel: TToolbarButton97;
    ToolbarSep973: TToolbarSep97;
    tBtnLock: TToolbarButton97;
    ToolbarSep974: TToolbarSep97;
    Panel: TPanel;
    LabelHelp: TLabel;
    dxCheckEdit1: TdxCheckEdit;
    dxCheckEdit2: TdxCheckEdit;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2UKEY: TdxDBGridMaskColumn;
    dxDBGrid2ACCOUNT: TdxDBGridMaskColumn;
    dxDBGrid2REG_NUMBER: TdxDBGridMaskColumn;
    dxDBGrid2REG_DATE: TdxDBGridDateColumn;
    dxDBGrid2REG_DEBT: TdxDBGridMaskColumn;
    dxDBGrid2FIO_ALL: TdxDBGridMaskColumn;
    dxDBGrid2SUIT_DEBT: TdxDBGridMaskColumn;
    dxDBGrid2DATE_FROM: TdxDBGridDateColumn;
    dxDBGrid2DATE_TILL: TdxDBGridDateColumn;
    dxDBGrid2LAW_TELL: TdxDBGridMaskColumn;
    dxDBGrid2SUMA: TdxDBGridMaskColumn;
    dxDBGrid2TO_OGIS: TdxDBGridMaskColumn;
    dxDBGrid2EXECUTIVE: TdxDBGridMaskColumn;
    dxDBGrid2OPEN_OGIS: TdxDBGridDateColumn;
    dxDBGrid2VERDICT_OGIS: TdxDBGridMaskColumn;
    dxDBGrid2CLOSE_OGIS: TdxDBGridDateColumn;
    dxDBGrid2DESCRIPTION: TdxDBGridMaskColumn;
    dxDBGrid2LOCKED: TdxDBGridMaskColumn;
    dxDBGrid2LAST_USER: TdxDBGridMaskColumn;
    dxDBGrid2LAST_DATE: TdxDBGridDateColumn;
    dxDBGrid2LAST_TIME: TdxDBGridTimeColumn;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1ACCOUNT: TdxDBGridMaskColumn;
    dxDBGrid1REG_NUMBER: TdxDBGridMaskColumn;
    dxDBGrid1REG_DATE: TdxDBGridDateColumn;
    dxDBGrid1FIO_ALL: TdxDBGridMaskColumn;
    dxDBGrid1LAWTELL_Lookup: TdxDBGridLookupColumn;
    tBtnUnLock: TToolbarButton97;
    bBtnClose: TBitBtn;
    LabelUKey: TLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    dxDBLookupEdit1: TdxDBLookupEdit;
    dxDBLookupEdit2: TdxDBLookupEdit;
    BitBtn1: TBitBtn;
    dxDBEdit7: TdxDBEdit;
    dxDBCheckEdit1: TdxDBCheckEdit;
    dxDBDateEdit3: TdxDBDateEdit;
    dxDBDateEdit4: TdxDBDateEdit;
    dxDBEdit8: TdxDBEdit;
    dxDBGrid3: TdxDBGrid;
    dxDBGrid3ID: TdxDBGridMaskColumn;
    dxDBGrid3JOURNAL: TdxDBGridMaskColumn;
    dxDBGrid3FIO: TdxDBGridMaskColumn;
    dxDBGrid3REMARK: TdxDBGridMaskColumn;
    dxDBGrid3VERDICT_OGIS0: TdxDBGridMaskColumn;
    dxDBGrid3VERDICT_OGIS: TdxDBGridMaskColumn;
    dxDBGrid3VERDICT_OGIS0_NAME: TdxDBGridPickColumn;
    dxDBGrid3VERDICT_OGIS_NAME: TdxDBGridPickColumn;
    dsJournalDetail1: TIBDataSet;
    dsJournalDetail1ID: TIntegerField;
    dsJournalDetail1JOURNAL: TIntegerField;
    dsJournalDetail1FIO: TIBStringField;
    dsJournalDetail1REMARK: TIBStringField;
    dsJournalDetail1VERDICT_OGIS0: TIntegerField;
    dsJournalDetail1VERDICT_OGIS: TIntegerField;
    dsJournalDetail1VERDICT_OGIS0_NAME: TStringField;
    dsJournalDetail1VERDICT_OGIS_NAME: TStringField;
    srcJournalDetail1: TDataSource;
    dsJournalHead: TIBDataSet;
    srcJournalHead: TDataSource;
    dsVerdictA1: TIBDataSet;
    dsVerdictA2: TIBDataSet;
    dsVerdictA3: TIBDataSet;
    sql: TIBSQL;
    sql2: TIBSQL;
    dsVerdict: TIBDataSet;
    dsVerdict2: TIBDataSet;
    srcVerdict: TDataSource;
    srcVerdict2: TDataSource;
    dsVerdict2Check: TIBDataSet;
    dxPickEdit1: TdxPickEdit;
    dxPickEdit2: TdxPickEdit;
    dsProcdate: TIBDataSet;
    srcProcdate: TDataSource;
    dxDBMemo1: TdxDBMemo;
    dsJournalDetail1FIRM: TIntegerField;
    dxDBGrid3FIRM: TdxDBGridMaskColumn;
    dsJournalDetail1FIRM_NAME: TStringField;
    dxDBGrid3FIRM_NAME: TdxDBGridButtonColumn;
    dsFirms: TIBDataSet;
    dsFirmsID: TIntegerField;
    dsFirmsSHIFR: TIntegerField;
    dsFirmsNAME: TIBStringField;
    Label2: TLabel;
    dxDBDateEdit5: TdxDBDateEdit;
    dxDBDateEdit2: TdxDBDateEdit;
    Label1: TLabel;
    Label3: TLabel;
    dxDBDateEdit6: TdxDBDateEdit;
    dsJournalDetail1TO_FIRM_DATE: TDateField;
    dxDBGrid3TO_FIRM_DATE: TdxDBGridDateColumn;
    Label4: TLabel;
    dsJournalHeadUKEY: TIntegerField;
    dsJournalHeadACCOUNT: TLargeintField;
    dsJournalHeadREG_NUMBER: TIBStringField;
    dsJournalHeadREG_DATE: TDateField;
    dsJournalHeadREG_DEBT: TIBBCDField;
    dsJournalHeadFIO_ALL: TIBStringField;
    dsJournalHeadSUIT_DEBT: TIBBCDField;
    dsJournalHeadDATE_FROM: TDateField;
    dsJournalHeadDATE_TILL: TDateField;
    dsJournalHeadLAW_TELL0: TIntegerField;
    dsJournalHeadLAW_TELL: TSmallintField;
    dsJournalHeadSUMA: TIBBCDField;
    dsJournalHeadCLOSE_LAW: TDateField;
    dsJournalHeadTO_OGIS: TIntegerField;
    dsJournalHeadEXECUTIVE: TIBStringField;
    dsJournalHeadOPEN_OGIS: TDateField;
    dsJournalHeadVERDICT_OGIS: TSmallintField;
    dsJournalHeadCLOSE_OGIS: TDateField;
    dsJournalHeadDESCRIPTION: TIBStringField;
    dsJournalHeadLOCKED: TIntegerField;
    dsJournalHeadLAST_USER: TSmallintField;
    dsJournalHeadLAST_DATE: TDateField;
    dsJournalHeadLAST_TIME: TTimeField;
    dsJournalHeadTO_OGIS_DATE: TDateField;
    dsJournalHeadCLOSE_LAW1: TDateField;
    dsJournalHeadOGIS_RETURN_DATE: TDateField;
    dsJournalHeadSALDOOUT: TIBBCDField;
    dsJournalHeadADDRESS: TIBStringField;
    GroupBox4: TGroupBox;
    dxDBDateEdit7: TdxDBDateEdit;
    dxDBDateEdit8: TdxDBDateEdit;
    dxDBDateEdit9: TdxDBDateEdit;
    dxDBDateEdit10: TdxDBDateEdit;
    dsJournalHeadTO_OGIS_DATE2: TDateField;
    dsJournalHeadOPEN_OGIS2: TDateField;
    dsJournalHeadCLOSE_OGIS2: TDateField;
    dsJournalHeadOGIS_RETURN_DATE2: TDateField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bBtnCloseClick(Sender: TObject);
    procedure OnEnter(Sender: TObject);
    procedure OnExit(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure EditSearchKeyPress(Sender: TObject; var Key: Char);
    procedure tBtnSearchClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SearchKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Locked;
    procedure UnLocked;
    procedure RestoreShow;
    procedure RestoreHide;
    procedure EditFalse;
    procedure EditTrue;
    procedure StrSearch;
    procedure tBtnRegClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tBtnSaveClick(Sender: TObject);
    procedure ComboBox3Select(Sender: TObject);
    procedure tBtnLockClick(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure tBtnCancelClick(Sender: TObject);
    procedure dxCheckEdit1Click(Sender: TObject);
    procedure dxCheckEdit2Click(Sender: TObject);
    procedure dxCheckEdit3Click(Sender: TObject);
    procedure dxDBGrid1Click(Sender: TObject);
    procedure tBtnUnLockClick(Sender: TObject);
    procedure dsJournalDetail1NewRecord(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure dxDBCheckEdit1Change(Sender: TObject);
    procedure dxDBGrid3VERDICT_OGIS0_NAMEChange(Sender: TObject);
    procedure dxDBGrid3VERDICT_OGIS0_NAMECloseUp(Sender: TObject; var Value: Variant; var Accept: Boolean);
    procedure dxDBGrid3VERDICT_OGIS_NAMECloseUp(Sender: TObject; var Value: Variant; var Accept: Boolean);
    procedure srcJournalDetail1DataChange(Sender: TObject; Field: TField);
    procedure dxPickEdit1Change(Sender: TObject);
    procedure srcJournalHeadDataChange(Sender: TObject; Field: TField);
    procedure dxPickEdit2Change(Sender: TObject);
    procedure dxPickEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxPickEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure dsJournalDetail1VERDICT_OGIS0_NAMEGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure dsJournalDetail1VERDICT_OGIS_NAMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure dxDBGrid3FIRM_NAMEButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBEdit1Change(Sender: TObject);
    procedure dxDBGrid3TO_FIRM_DATEChange(Sender: TObject);
    procedure dxDBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure dxDBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dsJournalDetail1AfterInsert(DataSet: TDataSet);
    (*
    procedure dxDBGrid3ChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure dxDBGrid3ChangeColumn(Sender: TObject; Node: TdxTreeListNode;
      Column: Integer);
      *)
  private
    ds: TIBDataSet;
    DoChange: Boolean;
    FSaved: Boolean;
    function GetSaved: Boolean;
    procedure SetSaved(const Value: Boolean);
  public
    OGIS0_Keys: Array Of Integer;
    OGIS_Keys: Array Of Integer;

    LAW0_Keys: Array Of Integer;
    LAW_Keys: Array Of Integer;

    procedure CheckJournalDetailVisible(VerdictOGIS: Variant);
    Property Saved: Boolean Read GetSaved Write SetSaved;
  end;

var
  frmJournalEdit: TfrmJournalEdit;
  SearchIndex, U_LOCK, U_KEY: Integer;

implementation

{$R *.DFM}

uses UDBForm, UData, USearch, UMain, USearchAdr;

procedure TfrmJournalEdit.ComboBox3Select(Sender: TObject);
begin
  {
  OnChange(nil);
  dxDateEdit4.Visible:=True;
  LabelMaskEdit4.Visible:=True;
  if ComboBox3.Text='�� �����������' then begin
    dxDateEdit4.Visible:=False;
    LabelMaskEdit4.Visible:=False;
  end;
  if ComboBox3.Text='��������' then begin
    LabelEdit7.Enabled:=True;
    Edit7.Enabled:=True;
    dxCheckEdit3.Enabled:=True;
    dxDateEdit4.Visible:=False;
    LabelMaskEdit4.Visible:=False;
  end else begin
    LabelEdit7.Enabled:=False;
    Edit7.Enabled:=False;
    dxCheckEdit3.Enabled:=False;
    dxCheckEdit3.Checked:=False;
    Edit7.Text:='';
  end;
  }
end;

procedure TFrmJournalEdit.StrSearch;
begin
  with TFrmSearchAdr.Create(nil) do
   try
     SearchAdr.Str_Kind:='';
     SearchAdr.Str_Name:='';
     SearchAdr.Str_UKey:=0;
     SearchAdr.House_Name:='';
     SearchAdr.Flat_Name:='';
     ShowModal;
   finally
     Free;
   end;
  if SearchAdr.Selected then begin
    Screen.Cursor:=crSQLWait;
    with DBForm.qJurist do begin
      Close;
      SQL.Clear;
      SQL.Add('select j.*, r.name lawtell_lookup from ACCOUNT_BY_ADDRESS('+
        IntToStr(SearchAdr.Str_UKey)+','''+SearchAdr.House_Name+''','''+SearchAdr.Flat_Name+
        ''') p, journal j, reference r where p.account=j.account and j.law_tell=r.ukey');
      Open;
      Last;
      if RecordCount=1 then
        dxDBGrid1Click(nil)
      else if RecordCount<>0 then begin
        Screen.Cursor:=crDefault;
        dxDBGrid1.Visible:=True;
        dxDBGrid1Click(Nil);
        Saved:=True;
      end else begin
        Screen.Cursor:=crDefault;
        MessageDlg('��������! ������ �� �������.',mtInformation,[mbOk],0);
      end;
    end;
  end;
end;

procedure TfrmJournalEdit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  {
  if not Saved then
   if MessageDlg('������ �� ���������. ���������?', mtConfirmation, [mbYes, mbNo], 0)=mrYes
    then tBtnSaveClick(nil);
  }
  
  Action:=caFree;
  WindowID.JournalEdit.Open:=False;
end;

procedure TfrmJournalEdit.bBtnCloseClick(Sender: TObject);
begin
  dsJournalDetail1.CheckBrowseMode;
  dsJournalHead.CheckBrowseMode;
  dsJournalHead.Transaction.CommitRetaining;
  Saved:=True;
  Close;
end;

procedure TfrmJournalEdit.BitBtn1Click(Sender: TObject);
begin
  dsJournalHead.Transaction.RollbackRetaining;
  Close;
end;

procedure TfrmJournalEdit.OnEnter(Sender: TObject);
begin
  {
  if (Sender is TMemo) then
    LabelMemo1.Transparent:=False;
    }
  if (Sender is TdxCheckEdit) then
    (Sender as TdxCheckEdit).Color:=clInfoBk;
  if (Sender is TComboBox) then
    case (Sender as TComboBox).Tag of
      1: LabelCombo1.Transparent:=False;
      2: LabelCombo1.Transparent:=False;
      3: LabelCombo2.Transparent:=False;
      4: {LabelCombo3.Transparent:=False};
    end;
  if (Sender is TdxDateEdit) then
    case (Sender as TdxDateEdit).Tag of
      1: LabelMaskEdit1.Transparent:=False;
      2: LabelMaskEdit2.Transparent:=False;
      3: LabelMaskEdit3.Transparent:=False;
      // 4: LabelMaskEdit4.Transparent:=False;
    end;
  if (Sender is TdxDBEdit) then
    case (Sender as TdxDBEdit).Tag of
      1: LabelEdit1.Transparent:=False;
      2: LabelEdit2.Transparent:=False;
      3: LabelEdit3.Transparent:=False;
      4: LabelEdit4.Transparent:=False;
      5: LabelEdit5.Transparent:=False;
      6: LabelEdit6.Transparent:=False;
      7: LabelEdit7.Transparent:=False;
      8: LabelEdit8.Transparent:=False;
    end;
end;

procedure TfrmJournalEdit.OnExit(Sender: TObject);
Var
  Edit: TdxDBEdit;
begin
  {
  if (Sender is TMemo) then
    LabelMemo1.Transparent:=True;}
  if (Sender is TdxCheckEdit) then
    (Sender as TdxCheckEdit).Color:=clBtnFace;
  if (Sender is TComboBox) then
    case (Sender as TComboBox).Tag of
      1: LabelCombo1.Transparent:=True;
      2: LabelCombo1.Transparent:=True;
      3: LabelCombo2.Transparent:=True;
      4: {LabelCombo3.Transparent:=True};
    end;
  if (Sender is TdxDateEdit) then
    case (Sender as TdxDateEdit).Tag of
      1: LabelMaskEdit1.Transparent:=True;
      2: LabelMaskEdit2.Transparent:=True;
      3: LabelMaskEdit3.Transparent:=True;
      // 4: LabelMaskEdit4.Transparent:=True;
    end;
  if (Sender is TdxDBEdit) then
    case (Sender as TdxDBEdit).Tag of
      1: LabelEdit1.Transparent:=True;
      2: LabelEdit2.Transparent:=True;
      3: LabelEdit3.Transparent:=True;
      4: LabelEdit4.Transparent:=True;
      5: begin
        CheckPoint(Sender);
        LabelEdit5.Transparent:=True;
      end;
      6: begin
        CheckPoint(Sender);
        LabelEdit6.Transparent:=True;
      end;
      7: begin
        CheckPoint(Sender);
        LabelEdit7.Transparent:=True;
      end;
      8: LabelEdit8.Transparent:=True;
    end;

     {
    If (Sender is TdxDBEdit)
    Then Begin
      Edit:=TdxDBEdit(Sender);
      Edit.DataSource.DataSet.Edit;
      Edit.DataSource.DataSet.FieldByName(Edit.DataField).AsString:=Edit.Text;
      Edit.DataSource.DataSet.CheckBrowseMode;
    End;
    }
end;

procedure TfrmJournalEdit.FormClick(Sender: TObject);
begin
  bBtnClose.SetFocus;
end;

procedure TfrmJournalEdit.Locked;
begin
  dxDBEdit1.Enabled:=False;
  dxDBEdit2.Enabled:=False;
  dxDBEdit3.Enabled:=False;
  dxDBEdit4.Enabled:=False;
  dxDBDateEdit1.Enabled:=False;
  dxDBEdit5.Enabled:=False;
  dxDBEdit6.Enabled:=False;
  dxDBLookupEdit1.Enabled:=False;
  dxDBLookupEdit2.Enabled:=False;
  dxDBEdit7.Enabled:=False;
  dxDBCheckEdit1.Enabled:=False;
  dxDBDateEdit3.Enabled:=False;
  dxDBDateEdit4.Enabled:=False;
  dxDBEdit8.Enabled:=False;

  dxDBGrid3.Color:=clBtnFace;
  dxDBMemo1.Color:=clBtnFace;

  dxDBGrid3.Enabled:=False;
  dxDBMemo1.Enabled:=False;

  dxPickEdit1.Enabled:=False;
  dxPickEdit2.Enabled:=False;
  dxDBDateEdit5.Enabled:=False;
  dxDBDateEdit2.Enabled:=False;
  dxDBDateEdit6.Enabled:=False;
  dxDBDateEdit7.Enabled:=False;
  dxDBDateEdit8.Enabled:=False;
  dxDBDateEdit9.Enabled:=False;
  dxDBDateEdit10.Enabled:=False;
end;

procedure TfrmJournalEdit.UnLocked;
begin
  dxDBEdit1.Enabled:=True;
  dxDBEdit2.Enabled:=True;
  dxDBEdit3.Enabled:=True;
  dxDBEdit4.Enabled:=True;
  dxDBDateEdit1.Enabled:=True;
  dxDBEdit5.Enabled:=True;
  dxDBEdit6.Enabled:=True;
  dxDBLookupEdit1.Enabled:=True;
  dxDBLookupEdit2.Enabled:=True;
  dxDBEdit7.Enabled:=True;
  dxDBCheckEdit1.Enabled:=True;
  dxDBDateEdit3.Enabled:=True;
  dxDBDateEdit4.Enabled:=True;
  dxDBEdit8.Enabled:=True;

  dxDBGrid3.Color:=clWindow;
  dxDBMemo1.Color:=clWindow;
  dxDBGrid3.Enabled:=True;
  dxDBMemo1.Enabled:=True;

  dxPickEdit1.Enabled:=True;
  dxPickEdit2.Enabled:=True;
  dxDBDateEdit5.Enabled:=True;
  dxDBDateEdit2.Enabled:=True;
  dxDBDateEdit6.Enabled:=True;
  dxDBDateEdit7.Enabled:=True;
  dxDBDateEdit8.Enabled:=True;
  dxDBDateEdit9.Enabled:=True;
  dxDBDateEdit10.Enabled:=True;
end;

procedure TfrmJournalEdit.tBtnSearchClick(Sender: TObject);
var
  str, s: String;
  cancel: Boolean;
begin
  with TFrmSearch.Create(nil) do
   try
     RadioGroup1.ItemIndex:=SearchIndex;
     Edit1.Text:=EditSearch.Text;
     ShowModal;
   finally
     s:=Edit1.Text;
     SearchIndex:=RadioGroup1.ItemIndex;
     EditSearch.Text:=Edit1.Text;
     Free;
     if ModalResult=mrCancel then cancel:=True;
   end;
  if cancel then exit;
  Screen.Cursor:=crSQLWait;
  case SearchIndex of
   -1: str:='';
    0: str:=' and j.account='''+IntToStr(StrToInt(s))+'''';
    1: str:=' and j.calc_address like ''%'+s+'%''';
    2: str:=' and j.reg_number='''+s+'''';
    3: str:=' and j.fio_all like ''%'+s+'%''';
    4: str:=' and j.executive like ''%'+s+'%''';
  end;
  with DBForm.qJurist do begin
    Close;
    SQL.Clear;
    SQL.Add('select j.*, r.name lawtell_lookup from journal j, reference r '+
            'where j.law_tell0=r.ukey'+str);

    SQL.Add('order by j.account');

    Open;
    Last;
    if RecordCount=1 then
      dxDBGrid1Click(nil)
    else if RecordCount<>0 then begin
      Screen.Cursor:=crDefault;
      dxDBGrid1.Visible:=True;
      dxDBGrid1Click(Nil);
      Saved:=True;
    end else begin
      Screen.Cursor:=crDefault;
      MessageDlg('��������! ������ �� �������.',mtInformation,[mbOk],0);
    end;
  end;
end;

procedure TfrmJournalEdit.EditSearchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then tBtnSearchClick(nil);
end;

// Kirk
procedure TfrmJournalEdit.CheckJournalDetailVisible(VerdictOGIS: Variant);
Begin
  If ((Visible) And (Enabled))
  Then Begin
    If ((VerdictOGIS=202) Or (VerdictOGIS=203))
    Then
      dxDBGrid3.Visible:=False
    Else
      dxDBGrid3.Visible:=True;
  End;
End;

// Kirk

procedure TfrmJournalEdit.FormShow(Sender: TObject);
Var
  VerdictOGIS: Variant;
  I: Integer;
begin
  dxDBGrid1.Visible:=False;

  dsVerdictA1.Open;
  dsVerdictA1.Last;
  SetLength(OGIS0_Keys, dsVerdictA1.RecNo);
  dsVerdictA1.First;
  For I:=0 To Length(OGIS0_Keys)-1 Do
  Begin
    dxDBGrid3VERDICT_OGIS0_NAME.Items.Add(dsVerdictA1.FieldByName('NAME').AsString);
    OGIS0_Keys[I]:=dsVerdictA1.FieldByName('UKEY').AsInteger;
    dsVerdictA1.Next;
  End;

  dsVerdict.Open;
  dsVerdict.Last;
  
  SetLength(LAW0_Keys, dsVerdict.RecNo);
  dsVerdict.First;
  For I:=0 To Length(LAW0_Keys)-1 Do
  Begin
    dxPickEdit1.Items.Add(dsVerdict.FieldByName('NAME').AsString);
    LAW0_Keys[I]:=dsVerdict.FieldByName('UKEY').AsInteger;
    dsVerdict.Next;
  End;
end;

procedure TfrmJournalEdit.SearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  {
  if (Sender is TdxDBEdit) then
    if (Sender as TdxDBEdit).Tag=1 then begin
      if Key=13 then begin
        try
          StrToInt(Edit1.Text);
        except
          MessageDlg('������! ����� � ��� �����?!',mtError,[mbOk],0);
          Exit;
        end;
        Screen.Cursor:=crSQLWait;
        with DBForm.IBStoredProc do begin
          StoredProcName:='GET_ACCOUNT_ADDRESS';
          ParamByName('ACCOUNT').AsString:=Edit1.Text;
          ExecProc;
          Edit2.Text:=ParamByName('ADDRESS').AsString;
        end;
        with DBForm.IBStoredProc do begin
          StoredProcName:='GET_ACCOUNT_SALDOOUT_LAST';
          ParamByName('ACCOUNT').AsString:=Edit1.Text;
          ExecProc;
          Edit3.Text:=ParamByName('SALDOOUT').AsString;
        end;
        Screen.Cursor:=crDefault;
      end;
    end;
  }
  if ssShift in Shift then
    if (key=70) or (key=102) then StrSearch;
  if ssCtrl in Shift then
    if (key=70) or (key=102) then begin
      if (Sender is TMemo) then SearchIndex:=3;
      if (Sender is TdxDBEdit) then begin
        if (Sender as TdxDBEdit).Tag=1 then SearchIndex:=0;
        if (Sender as TdxDBEdit).Tag=2 then SearchIndex:=1;
        if (Sender as TdxDBEdit).Tag=4 then SearchIndex:=2;
        if (Sender as TdxDBEdit).Tag=8 then SearchIndex:=4;
      end;
      tBtnSearchClick(nil);
    end;
end;

procedure TfrmJournalEdit.tBtnRegClick(Sender: TObject);
begin
  frmMain.menuRegClick(nil);
end;

procedure TfrmJournalEdit.FormCreate(Sender: TObject);
begin
  {
  with DBForm.qJurist do begin
    Close;
    SQL.Clear;
    SQL.Add('select * from sysprocdate order by code');
    Open;
    First;
    while not Eof do begin
      ComboBox1.Items.Append(DateToStr(FieldValues['PROCDATE']));
      ComboBox2.Items.Append(DateToStr(FieldValues['PROCDATE']));
      Next;
    end;
  end;
  with DBForm.qReference do begin
    Close;
    SQL.Clear;
    SQL.Add('select * from REFERENCE where UKEY<>PARENT order by UKEY');
    Open;
    First;
    while not Eof do begin
      if FieldValues['KIND']='LAW_TELL' then
        ComboBox3.Items.Append(FieldByName('NAME').AsString);
      if FieldValues['KIND']='OGIS_TELL' then
        ComboBox4.Items.Append(FieldByName('NAME').AsString);
      Next;
    end;
  end;
  SearchIndex:=-1;
  Saved:=True;
  }
  Saved:=True;

  ds:=TIBDataSet.Create(Self);
  ds.Transaction:=DBForm.IBTransaction;

  dsProcdate.Active:=True;
  dsVerdictA1.Active:=True;
  dsVerdict.Active:=True;
end;

procedure TfrmJournalEdit.tBtnSaveClick(Sender: TObject);
begin
  // if Saved then exit;
  {
  if not User_Permiting[2] then begin
    NoPermition;
    exit;
  end;
  }
  // Kirk
  dsJournalDetail1.CheckBrowseMode;
  dsJournalHead.CheckBrowseMode;
  dsJournalHead.Transaction.CommitRetaining;
  Saved:=True;
end;

procedure TfrmJournalEdit.tBtnLockClick(Sender: TObject);
begin
  if not User_Permiting[0] then begin
    NoPermition;
    exit;
  end;
  if MessageDlg('��������. �� �������?', mtConfirmation, [mbYes, mbNo], 0)=mrYes then
    try
      if not Saved then begin
        MessageDlg('������ �� ���������.',mtInformation,[mbOk],0);
        exit;
      end;
      Screen.Cursor:=crSQLWait;
      with DBForm.IBStoredProc do begin
        StoredProcName:='SET_JOURNAL_LOCK';
        ParamByName('UKEY').AsInteger:=dsJournalHeadUKEY.AsInteger;
        ParamByName('LOCKED').AsInteger:=-1;
        ParamByName('USER_UKEY').AsInteger:=User_UKey;
        ExecProc;
        U_LOCK:=-1;
        Locked;
      end;
    except
      MessageDlg('������! ������ �� ��������.',mtError,[mbOk],0);
    end;
  Screen.Cursor:=crDefault;
end;

procedure TfrmJournalEdit.DBGrid2CellClick(Column: TColumn);
begin
  if MessageDlg('������������. �� �������?', mtConfirmation, [mbYes, mbNo], 0)=mrYes then
  try
    Screen.Cursor:=crSQLWait;
    with DBForm do begin
      with IBStoredProc do begin
        StoredProcName:='SET_JOURNAL_RESTORE';
        ParamByName('UKEY').AsInteger:=U_KEY;
        ParamByName('ACCOUNT').AsInteger:=qJurist.FieldValues['ACCOUNT'];
        ParamByName('REG_NUMBER').AsString:=qJurist.FieldValues['REG_NUMBER'];
        ParamByName('REG_DATE').AsDate:=qJurist.FieldValues['REG_DATE'];
        ParamByName('REG_DEBT').AsFloat:=qJurist.FieldValues['REG_DEBT'];
        ParamByName('FIO_ALL').AsString:=qJurist.FieldValues['FIO_ALL'];
        ParamByName('SUIT_DEBT').AsFloat:=qJurist.FieldValues['SUIT_DEBT'];
        ParamByName('DATE_FROM').AsDate:=qJurist.FieldValues['DATE_FROM'];
        ParamByName('DATE_TILL').AsDate:=qJurist.FieldValues['DATE_TILL'];
        ParamByName('LAW_TELL').AsInteger:=qJurist.FieldByName('LAW_TELL').AsInteger;
        ParamByName('SUMA').AsFloat:=qJurist.FieldByName('SUMA').AsFloat;
        ParamByName('TO_OGIS').AsBoolean:=qJurist.FieldValues['TO_OGIS'];
        ParamByName('EXECUTIVE').AsString:=qJurist.FieldByName('EXECUTIVE').AsString;
          if qJurist.FieldByName('OPEN_OGIS').AsString<>'  .  .    ' then
           try
             ParamByName('OPEN_OGIS').AsString:=qJurist.FieldByName('OPEN_OGIS').AsString;
           except
           end
          else ParamByName('OPEN_OGIS').AsString:='';
        ParamByName('VERDICT_OGIS').AsInteger:=qJurist.FieldByName('VERDICT_OGIS').AsInteger;
          if qJurist.FieldByName('CLOSE_OGIS').AsString<>'  .  .    ' then
           try
             ParamByName('CLOSE_OGIS').AsString:=qJurist.FieldByName('CLOSE_OGIS').AsString;
           except
           end
          else ParamByName('CLOSE_OGIS').AsString:='';
        ParamByName('DESCRIPTION').AsString:=qJurist.FieldByName('DESCRIPTION').AsString;
        ParamByName('LOCKED').AsInteger:=U_LOCK;
        ParamByName('USER_UKEY').AsInteger:=User_UKey;
        ExecProc;
        MessageDlg('������ ������� �������������.',mtInformation,[mbOk],0);
        dxCheckEdit2.Checked:=False;
        end;
// --- ����������
      tBtnCancelClick(nil);
    end;
  except
    MessageDlg('������! ������ �� �������������.',mtError,[mbOk],0);
  end;
  Screen.Cursor:=crDefault;
end;

procedure TfrmJournalEdit.RestoreShow;
begin
  dxDBGrid2.Visible:=True;
  //Memo2.Visible:=False;
  Panel.Visible:=False;
end;

procedure TfrmJournalEdit.RestoreHide;
begin
  dxDBGrid2.Visible:=False;
  // Memo2.Visible:=True;
  Panel.Visible:=True;
end;

procedure TfrmJournalEdit.EditFalse;
begin
  {
  Edit1.ReadOnly:=True;
  Edit4.ReadOnly:=True;
  dxDateEdit1.ReadOnly:=True;
  Memo1.ReadOnly:=True;
  Edit5.ReadOnly:=True;
  Edit6.ReadOnly:=True;
  ComboBox1.Enabled:=False;
  ComboBox2.Enabled:=False;
  }
end;

procedure TfrmJournalEdit.EditTrue;
begin
  {
  Saved:=False;
  Edit1.ReadOnly:=False;
  Edit4.ReadOnly:=False;
  dxDateEdit1.ReadOnly:=False;
  Memo1.ReadOnly:=False;
  Edit5.ReadOnly:=False;
  Edit6.ReadOnly:=False;
  ComboBox1.Enabled:=True;
  ComboBox2.Enabled:=True;
  }
end;

procedure TfrmJournalEdit.tBtnCancelClick(Sender: TObject);
begin
  Screen.Cursor:=crSQLWait;
  with DBForm.qJurist do begin
    Close;
    SQL.Clear;
    SQL.Add('select * from journal where ukey='''+IntToStr(U_KEY)+'''');
    Open;
    First;
    if RecordCount<>0 then dxDBGrid1Click(nil)
    else begin
      Screen.Cursor:=crDefault;
      MessageDlg('��������! ������ �� �������.',mtInformation,[mbOk],0);
    end;
  end;
  dxCheckEdit1.Checked:=False;
  dxCheckEdit1Click(nil);
  Saved:=True;
  Screen.Cursor:=crDefault;
end;

{
procedure TfrmJournalEdit.OnChange(Sender: TObject);
Var
  VerdictOGIS: Variant;
begin
  Saved:=False;

  ds.SelectSQL.Clear;
  ds.Close;
  ds.SelectSQL.Add('select UKEY from get_reference_ukey('+#39+'OGIS_TELL'+#39+', '+#39+ComboBox4.Text+#39+')');
  ds.Open;
  If Not(ds.IsEmpty)
  Then
    VerdictOGIS:=ds.FieldByName('UKEY').Value
  Else
    VerdictOGIS:=NULL;

  ds.Close;
  CheckJournalDetailVisible(VerdictOGIS);
end;
}

procedure TfrmJournalEdit.dxCheckEdit1Click(Sender: TObject);
begin
  if not User_Permiting[3] then begin
    NoPermition;
    dxCheckEdit1.Checked:=False;
    exit;
  end;
  if dxCheckEdit1.Checked then
    EditTrue
  else EditFalse;
end;

procedure TfrmJournalEdit.dxCheckEdit2Click(Sender: TObject);
begin
  if not User_Permiting[4] then begin
    NoPermition;
    dxCheckEdit2.Checked:=False;
    exit;
  end;
  if dxCheckEdit2.Checked then
  try
    with DBForm.qJurist do begin
      Close;
      SQL.Clear;
      SQL.Add('select * from log_journal where ukey_journal='''+IntToStr(U_KEY)+'''');
      Open;
      First;
      if RecordCount=1 then begin
        MessageDlg('��������! ������ � ������������� �� ���������.',mtInformation,[mbOk],0);
        dxCheckEdit2.Checked:=False;
      end else if RecordCount<>0 then
        RestoreShow
      else begin
        MessageDlg('��������! ������ �� �������.',mtInformation,[mbOk],0);
        dxCheckEdit2.Checked:=False;
      end;
    end;
  except
  end
  else RestoreHide;
end;

procedure TfrmJournalEdit.dxCheckEdit3Click(Sender: TObject);
begin
  {
  GroupBox3.Visible:=dxCheckEdit3.Checked;
  LabelMaskEdit4.Visible:=not dxCheckEdit3.Checked;
  dxDateEdit4.Visible:=not dxCheckEdit3.Checked;
  }
end;

procedure TfrmJournalEdit.dxDBGrid1Click(Sender: TObject);
Var
  VerdictOGIS: Variant;
  Journal: Integer;
begin
  // Kirk

  dsJournalDetail1.Close;
  dsJournalDetail1.ParamByName('JOURNAL').AsInteger:=DBForm.qJurist.FieldByName('UKEY').AsInteger;
  dsJournalDetail1.Open;

  // VerdictOGIS:=(DBForm.qJurist.FieldByName('VERDICT_OGIS').Value);
  // CheckJournalDetailVisible(VerdictOGIS);
  // Kirk

  Screen.Cursor:=crDefault;

  Journal:=DBForm.qJurist.FieldByName('UKEY').AsInteger;

  dsJournalHead.Close;
  dsJournalHead.ParamByName('UKEY').AsInteger:=Journal;
  dsJournalHead.Open;
  dsJournalHead.Transaction.CommitRetaining;

  dsVerdict2.Close;
  dsVerdict2.ParamByName('GRP').Value:=dsJournalHead.FieldByName('LAW_TELL').Value;
  dsVerdict2.Open;

  dxDBCheckEdit1Change(Nil);

  {
  Screen.Cursor:=crSQLWait;
  with DBForm.qJurist do begin
    if FieldByName('LOCKED').AsInteger=-1 then Locked else UnLocked;
    U_KEY:=FieldByName('UKEY').AsInteger;
    Edit1.Text:=FieldByName('ACCOUNT').AsString;
    // ����������� ������� �����
    with DBForm.IBStoredProc do begin
      StoredProcName:='GET_ACCOUNT_ADDRESS';
      ParamByName('ACCOUNT').AsInteger:=StrToInt(Edit1.Text);
      ExecProc;
      Edit2.Text:=ParamByName('ADDRESS').AsString;
    end;
    // ����������� ������� ����
    with DBForm.IBStoredProc do begin
      StoredProcName:='GET_ACCOUNT_SALDOOUT_LAST';
      ParamByName('ACCOUNT').AsInteger:=StrToInt(Edit1.Text);
      ExecProc;
      Edit3.Text:=ParamByName('SALDOOUT').AsString;
    end;
    // ����������� ���� �� ����
    with DBForm.IBStoredProc do begin
      StoredProcName:='GET_ACCOUNT_SALDOOUT_LAST';
      ParamByName('ACCOUNT').AsInteger:=StrToInt(Edit1.Text);
      ExecProc;
      Edit3.Text:=ParamByName('SALDOOUT').AsString;
    end;
    LabelUKey.Caption:=' ['+FieldByName('UKEY').AsString+'] ';
    Edit4.Text:=FieldByName('REG_NUMBER').AsString;
    dxDateEdit1.Text:=FieldByName('REG_DATE').AsString;
    Memo1.Text:=FieldByName('FIO_ALL').AsString;
    Edit5.Text:=FieldByName('REG_DEBT').AsString;
    Edit6.Text:=FieldByName('SUIT_DEBT').AsString;
    ComboBox1.ItemIndex:=ComboBox1.Items.IndexOf(FieldByName('DATE_FROM').AsString);
    ComboBox2.ItemIndex:=ComboBox2.Items.IndexOf(FieldByName('DATE_TILL').AsString);
    with DBForm.IBStoredProc do begin
      StoredProcName:='GET_REFERENCE_ENTRY';
      ParamByName('UKEY').AsString:=DBForm.qJurist.FieldByName('LAW_TELL').AsString;
      ExecProc;
      ComboBox3.ItemIndex:=ComboBox3.Items.IndexOf(ParamByName('NAME').AsString);
    end;
    ComboBox3Select(nil);
    if (FieldByName('LAW_TELL').AsInteger>2) and (FieldByName('LAW_TELL').AsInteger<7) then
      dxDateEdit4.Text:=FieldByName('CLOSE_LAW').AsString;
    if ComboBox3.Text='��������' then begin
      Edit7.Text:=FieldByName('SUMA').AsString;
      if FieldByName('TO_OGIS').AsInteger=0 then dxCheckEdit3.Checked:=False
        else dxCheckEdit3.Checked:=True;
      if dxCheckEdit3.Checked then begin
        Edit8.Text:=FieldByName('EXECUTIVE').AsString;
        dxDateEdit2.Text:=FieldByName('OPEN_OGIS').AsString;
        with DBForm.IBStoredProc do begin
          StoredProcName:='GET_REFERENCE_ENTRY';
          ParamByName('UKEY').AsString:=DBForm.qJurist.FieldByName('VERDICT_OGIS').AsString;
          ExecProc;
          ComboBox4.ItemIndex:=ComboBox4.Items.IndexOf(ParamByName('NAME').AsString);
        end;
        dxDateEdit3.Text:=FieldByName('CLOSE_OGIS').AsString;
      end else begin
        Edit8.Text:='';
        dxDateEdit2.Text:='';
        ComboBox4.ItemIndex:=ComboBox4.Items.IndexOf('');
        dxDateEdit3.Text:='';
      end;
    end else begin
      Edit7.Text:='';
      dxCheckEdit3.Checked:=False;
      Edit8.Text:='';
      dxDateEdit2.Text:='';
      ComboBox4.ItemIndex:=ComboBox4.Items.IndexOf('');
      dxDateEdit3.Text:='';
    end;
    Memo2.Text:=FieldByName('DESCRIPTION').AsString;
    U_LOCK:=FieldByName('LOCKED').AsInteger;
  end;
  if U_LOCK=-1 then Locked;
  dxDBGrid1.Visible:=False;
  Screen.Cursor:=crDefault;
  }
  Saved:=True;
end;

procedure TfrmJournalEdit.tBtnUnLockClick(Sender: TObject);
begin
  if not User_Permiting[4] then begin
    NoPermition;
    exit;
  end;
  if MessageDlg('���������. �� �������?', mtConfirmation, [mbYes, mbNo], 0)=mrYes then
    try
      Screen.Cursor:=crSQLWait;
      with DBForm.IBStoredProc do begin
        StoredProcName:='SET_JOURNAL_LOCK';
        ParamByName('UKEY').AsInteger:=dsJournalHeadUKEY.AsInteger;
        ParamByName('LOCKED').AsInteger:=0;
        ParamByName('USER_UKEY').AsInteger:=User_UKey;
        ExecProc;
        U_LOCK:=0;
        UnLocked;
      end;
    except
      MessageDlg('������! ������ �� ���������.',mtError,[mbOk],0);
    end;
  Screen.Cursor:=crDefault;
end;

procedure TfrmJournalEdit.dsJournalDetail1NewRecord(DataSet: TDataSet);
begin
  // Kirk
  dsJournalDetail1.FieldByName('JOURNAL').Value:=dsJournalDetail1.ParamByName('JOURNAL').Value;
  // kirk
end;

procedure TfrmJournalEdit.Button1Click(Sender: TObject);
Var
  D: TDateTime;
begin
  //D:=38078;
  //dsJournalHead.Edit;
  //dsJournalHead.FieldByName('DATE_FROM').AsDateTime:=dsJournalHead.FieldByName('DATE_FROM').AsDateTime;
  //dsJournalHead.CheckBrowseMode;
end;

procedure TfrmJournalEdit.dxDBCheckEdit1Change(Sender: TObject);
begin
  If dxDBCheckEdit1.Checked
  Then Begin
    GroupBox3.Visible:=True;
    GroupBox4.Visible:=True;

    //dxDBGrid3REMARK.Visible:=True;
    dxDBGrid3VERDICT_OGIS0_NAME.Visible:=True;
    dxDBGrid3VERDICT_OGIS_NAME.Visible:=True;
    dxDBGrid3FIRM_NAME.Visible:=True;
    dxDBGrid3TO_FIRM_DATE.Visible:=True;
  End
  Else Begin
    GroupBox3.Visible:=False;
    GroupBox4.Visible:=False;

    //dxDBGrid3REMARK.Visible:=False;
    dxDBGrid3VERDICT_OGIS0_NAME.Visible:=False;
    dxDBGrid3VERDICT_OGIS_NAME.Visible:=False;
    dxDBGrid3FIRM_NAME.Visible:=False;
    dxDBGrid3TO_FIRM_DATE.Visible:=False;
  End;

  dsJournalHead.CheckBrowseMode;
  Saved:=False;
end;

procedure TfrmJournalEdit.dxDBGrid3VERDICT_OGIS0_NAMEChange(Sender: TObject);
begin
  dsVerdictA2.Close;
  dsVerdictA2.ParamByName('GRP').Value:=dsJournalDetail1.FieldByName('VERDICT_OGIS0').Value;
  dsVerdictA2.Open;
end;

procedure TfrmJournalEdit.dxDBGrid3VERDICT_OGIS0_NAMECloseUp(Sender: TObject; var Value: Variant; var Accept: Boolean);
Var
  NewValue: Integer;
begin
  If (Value<>NULL)
  Then Begin
    NewValue:=OGIS0_Keys[dxDBGrid3VERDICT_OGIS0_NAME.Items.IndexOf(Value)];

    If (dsJournalDetail1.FieldByName('VERDICT_OGIS0').AsInteger<>NewValue)
    Then Begin
      dsJournalDetail1.Edit;
      dsJournalDetail1.FieldByName('VERDICT_OGIS0').AsInteger:=NewValue;
      dsJournalDetail1.FieldByName('VERDICT_OGIS').Value:=NULL;
      dsJournalDetail1.CheckBrowseMode;
    End;
  End;
end;

procedure TfrmJournalEdit.dxDBGrid3VERDICT_OGIS_NAMECloseUp(Sender: TObject; var Value: Variant; var Accept: Boolean);
Var
  NewValue: Integer;
  RecNo: Integer;
begin
  If (Value<>NULL)
  Then Begin
    dsJournalDetail1.Edit;
    dsJournalDetail1VERDICT_OGIS.Value:=OGIS_Keys[dxDBGrid3VERDICT_OGIS_NAME.Items.IndexOf(Value)];
    dsJournalDetail1.CheckBrowseMode


    {
    If (NewValue=203) Or
       (NewValue=202) Or
       (NewValue=200) Or
       (NewValue=201)
    Then Begin
      RecNo:=dsJournalDetail1.RecNo;
      dsJournalDetail1.DisableControls;

      sql.ParamByName('JOURNAL').AsInteger:=dsJournalDetail1.FieldByName('JOURNAL').AsInteger;
      sql.ParamByName('VERDICT_OGIS').AsInteger:=NewValue;

      If (NewValue=203) Or
         (NewValue=202)
      Then
        sql.ParamByName('VERDICT_OGIS0').AsInteger:=204
      Else
        sql.ParamByName('VERDICT_OGIS0').AsInteger:=205;

      dsJournalDetail1.Close;
      sql.ExecQuery;

      dsJournalDetail1.Open;
      dsJournalDetail1.RecNo:=RecNo;
      dsJournalDetail1.EnableControls;
    End
    Else Begin
      dsJournalDetail1.Edit;
      dsJournalDetail1.FieldByName('VERDICT_OGIS').Value:=NewValue;
      dsJournalDetail1.CheckBrowseMode;

      RecNo:=dsJournalDetail1.RecNo;
      dsJournalDetail1.DisableControls;

      sql2.ParamByName('JOURNAL').AsInteger:=dsJournalDetail1.FieldByName('JOURNAL').AsInteger;

      dsJournalDetail1.Close;
      sql2.ExecQuery;

      dsJournalDetail1.Open;
      dsJournalDetail1.RecNo:=RecNo;
      dsJournalDetail1.EnableControls;
    End;
    }
  End;
end;

procedure TfrmJournalEdit.srcJournalDetail1DataChange(Sender: TObject; Field: TField);
Var
  I: Integer;
begin
  If (Field=Nil)
  Then Begin
    dsVerdictA3.Close;
    dsVerdictA3.ParamByName('GRP').AsInteger:=dsJournalDetail1.FieldByName('VERDICT_OGIS0').AsInteger;
    dsVerdictA3.Open;

    dsVerdictA3.Last;
    SetLength(OGIS_Keys, dsVerdictA3.RecNo);
    dsVerdictA3.First;

    dxDBGrid3VERDICT_OGIS_NAME.Items.Clear;

    For I:=0 To Length(OGIS_Keys)-1 Do
    Begin
      dxDBGrid3VERDICT_OGIS_NAME.Items.Add(dsVerdictA3.FieldByName('NAME').AsString);
      OGIS_Keys[I]:=dsVerdictA3.FieldByName('UKEY').AsInteger;
      dsVerdictA3.Next;
    End;
  End;
end;

procedure TfrmJournalEdit.dxPickEdit1Change(Sender: TObject);
Var
  Value: String;
  NewValue: Variant;
  I: Integer;
begin
  Value:=dxPickEdit1.Text;

  If Value='' Then Exit;

  If (Value<>NULL)
  Then Begin
    NewValue:=LAW0_Keys[dxPickEdit1.Items.IndexOf(Value)];

    If (dsJournalHead.FieldByName('LAW_TELL0').Value<>NewValue)
    Then Begin
      dsJournalHead.Edit;
      dsJournalHead.FieldByName('LAW_TELL0').Value:=NewValue;
      dsJournalHead.FieldByName('LAW_TELL').Value:=1;
      dsJournalHead.CheckBrowseMode;
    End;
  End;

  dsVerdict2.Close;
  dsVerdict2.ParamByName('GRP').AsInteger:=dsJournalHead.FieldByName('LAW_TELL0').AsInteger;
  dsVerdict2.Open;

  dsVerdict2.Last;
  SetLength(LAW_Keys, dsVerdict2.RecNo);
  dsVerdict2.First;

  dxPickEdit2.Items.Clear;

  For I:=0 To Length(LAW_Keys)-1 Do
  Begin
    dxPickEdit2.Items.Add(dsVerdict2.FieldByName('NAME').AsString);
    LAW_Keys[I]:=dsVerdict2.FieldByName('UKEY').AsInteger;
    dsVerdict2.Next;
  End;

  Saved:=False;
end;

procedure TfrmJournalEdit.dxPickEdit2Change(Sender: TObject);
Var
  Value: String;
  NewValue: Variant;
begin
  Value:=dxPickEdit2.Text;

  If Value='' Then Exit;

  If (Value<>NULL)
  Then Begin
    NewValue:=LAW_Keys[dxPickEdit2.Items.IndexOf(Value)];

    If (dsJournalHead.FieldByName('LAW_TELL').Value<>NewValue)
    Then Begin
      dsJournalHead.Edit;
      dsJournalHead.FieldByName('LAW_TELL').Value:=NewValue;
      dsJournalHead.CheckBrowseMode;
    End;
  End;

  Saved:=False;
end;

procedure TfrmJournalEdit.srcJournalHeadDataChange(Sender: TObject; Field: TField);
Var
  I: Integer;
  J: Integer;
  Value: Variant;
  Lockd: Boolean;
begin
  {
  If dsJournalHead.FieldByName('LAW_TELL0').AsInteger=2
  Then
    dxDBEdit7.Enabled:=False
  Else
    dxDBEdit7.Enabled:=True;}

  Value:=dsJournalHead.FieldByName('LAW_TELL0').Value;
  Lockd:=(dsJournalHead.FieldByName('LOCKED').AsInteger<>0);

  dxPickEdit1.Text:='';
  dxPickEdit2.Text:='';

  If (Value<>NULL)
  Then Begin
    For I:=0 To Length(LAW0_Keys)-1 Do
      If Value=LAW0_Keys[I]
      Then Begin
        dxPickEdit1.Text:=dxPickEdit1.Items[I];

        dsVerdict2.Close;
        dsVerdict2.ParamByName('GRP').AsInteger:=dsJournalHead.FieldByName('LAW_TELL0').AsInteger;
        dsVerdict2.Open;

        dsVerdict2.Last;
        SetLength(LAW_Keys, dsVerdict2.RecNo);
        dsVerdict2.First;

        dxPickEdit2.Items.Clear;

        For J:=0 To Length(LAW_Keys)-1 Do
        Begin
          dxPickEdit2.Items.Add(dsVerdict2.FieldByName('NAME').AsString);
          LAW_Keys[J]:=dsVerdict2.FieldByName('UKEY').AsInteger;
          dsVerdict2.Next;
        End;

        Value:=dsJournalHead.FieldByName('LAW_TELL').Value;

        If (Value<>NULL)
        Then Begin
          For J:=0 To Length(LAW_Keys)-1 Do
            If Value=LAW_Keys[J]
            Then Begin
              dxPickEdit2.Text:=dxPickEdit2.Items[J];
              Break;
            End;
        End;

        Break;
      End;

    If (Lockd)
    Then
      Locked()
    Else
      UnLocked();
  End;
end;

procedure TfrmJournalEdit.dxPickEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  Abort;
  Key:=0;
end;

procedure TfrmJournalEdit.dxPickEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  Abort;
  Key:=#0;
end;

procedure TfrmJournalEdit.dsJournalDetail1VERDICT_OGIS0_NAMEGetText(Sender: TField; var Text: String; DisplayText: Boolean);
Var
  I: Integer;
  Value: Variant;
begin
  Value:=dsJournalDetail1.FieldByName('VERDICT_OGIS0').Value;
  Text:='';
  If (Value<>NULL)
  Then Begin
    For I:=0 To Length(OGIS0_Keys)-1 Do
    Begin
      If (OGIS0_Keys[I]=Value)
      Then Begin
        Text:=dxDBGrid3VERDICT_OGIS0_NAME.Items[I];
        Break;
      End;
    End;
  End;
end;

procedure TfrmJournalEdit.dsJournalDetail1VERDICT_OGIS_NAMEGetText(Sender: TField; var Text: String; DisplayText: Boolean);
Var
  I: Integer;
  Value: Variant;
begin
  Text:='';
  Value:=dsJournalDetail1.FieldByName('VERDICT_OGIS').Value;
  If (Value=NULL) Then Exit;

  dsVerdictA2.Close;
  dsVerdictA2.ParamByName('GRP').AsInteger:=dsJournalDetail1.FieldByName('VERDICT_OGIS0').AsInteger;
  dsVerdictA2.Open;

  If (dsVerdictA2.Locate('UKEY', Value, []))
  Then
    Text:=dsVerdictA2.FieldByName('NAME').AsString;

  {
  dsVerdictA2.Last;
  SetLength(OGIS_Keys, dsVerdictA2.RecNo);
  dsVerdictA2.First;

  dxDBGrid3VERDICT_OGIS_NAME.Items.Clear;

  For I:=0 To Length(OGIS_Keys)-1 Do
  Begin
    dxDBGrid3VERDICT_OGIS_NAME.Items.Add(dsVerdictA2.FieldByName('NAME').AsString);
    OGIS_Keys[I]:=dsVerdictA2.FieldByName('UKEY').AsInteger;
    dsVerdictA2.Next;
  End;

  If (Value<>NULL)
  Then Begin
    For I:=0 To Length(OGIS_Keys)-1 Do
    Begin
      If (OGIS_Keys[I]=Value)
      Then Begin
        Text:=dxDBGrid3VERDICT_OGIS_NAME.Items[I];
        Break;
      End;
    End;
  End;
  }
end;

procedure TfrmJournalEdit.dxDBGrid3FIRM_NAMEButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
  FormRefFirms.ShowModal(False);

  dsFirms.Close;
  dsFirms.Open;

  If (FormRefFirms.ResID<>NULL)
  Then Begin
    dsJournalDetail1.Edit;
    dsJournalDetail1.FieldByName('FIRM').Value:=FormRefFirms.ResID;
    dsJournalDetail1.CheckBrowseMode;
  End;
end;

procedure TfrmJournalEdit.dxDBEdit1Change(Sender: TObject);
begin
  Saved:=False;
end;

(*
procedure TfrmJournalEdit.dxDBGrid3ChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  Saved:=False;
end;

procedure TfrmJournalEdit.dxDBGrid3ChangeColumn(Sender: TObject;
  Node: TdxTreeListNode; Column: Integer);
begin
  Saved:=False;
end;
*)

function TfrmJournalEdit.GetSaved: Boolean;
begin
  Result:=FSaved;
end;

procedure TfrmJournalEdit.SetSaved(const Value: Boolean);
begin
  FSaved:=Value;

  If FSaved
  Then
    Label4.Caption:=''
  Else
    Label4.Caption:='������ ��������';
end;

procedure TfrmJournalEdit.dxDBGrid3TO_FIRM_DATEChange(Sender: TObject);
Var
  I: Integer;
begin
  I:=1;
end;

procedure TfrmJournalEdit.dxDBGrid3KeyPress(Sender: TObject; var Key: Char);
Var
  I: Integer;
  Control: TControl;
  S: String;
  Editor: TdxInplaceDBTreeListDateEdit;
  cr: TCharRange;
  NewText: String;
  DT: TDateTime;
begin
  If (dxDBGrid3.FocusedColumn=3)
  Then Begin
    For I:=0 To dxDBGrid3.ControlCount-1 Do
    Begin
      Control:=dxDBGrid3.Controls[I];
      If (Control.ClassName='TdxInplaceDBTreeListDateEdit')
      Then Begin
        Editor:=TdxInplaceDBTreeListDateEdit(Control);

        If ((Ord(Key)>=48) And (Ord(Key)<=57))
        Then Begin
          cr:=Editor.GetSelection;

          If (cr.cpMin<cr.cpMax)
          Then Begin
            NewText:=Editor.Text;
            NewText[cr.cpMin+1]:=Key;
            Editor.Text:=NewText;

            Case cr.cpMin Of
              0: Editor.SetSelection(1, 2, False);
              1: Editor.SetSelection(3, 4, False);
              3: Editor.SetSelection(4, 5, False);
              4: Editor.SetSelection(6, 7, False);
              6: Editor.SetSelection(7, 8, False);
              7: Editor.SetSelection(8, 9, False);
              8: Editor.SetSelection(9, 10, False);
              9: Editor.SetSelection(10, 10, False);
            End;
          End;
        End;
        
        Key:=#0;
      End;
    End;
  End;
end;

procedure TfrmJournalEdit.dxDBGrid3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
Var
  I: Integer;
  Control: TControl;
  S: String;
  Editor: TdxInplaceDBTreeListDateEdit;
  cr: TCharRange;
  NewText: String;
  DT: TDateTime;
  DTS: String;
begin
  If (Key=VK_DELETE) And (dxDBGrid3.FocusedColumn=3)
  Then Begin
    dsJournalDetail1.Edit;
    dsJournalDetail1.FieldByName('TO_FIRM_DATE').Value:=NULL;
    dsJournalDetail1.CheckBrowseMode;
    Key:=0;
  End;

  If (Key=VK_RETURN) And (dxDBGrid3.FocusedColumn=3)
  Then Begin
    For I:=0 To dxDBGrid3.ControlCount-1 Do
    Begin
      Control:=dxDBGrid3.Controls[I];
      If (Control.ClassName='TdxInplaceDBTreeListDateEdit')
      Then Begin
        Editor:=TdxInplaceDBTreeListDateEdit(Control);
        If Editor.Focused
        Then Begin
          If TryStrToDateTime(Editor.Text, DT)
          Then Begin
            Editor.Visible:=False;
            dxDBGrid3.SetFocus;
            DTS:=FormatDateTime('yyyy-mm-dd', DT);
            dxDBGrid3TO_FIRM_DATE.Field.DataSet.Edit;
            dxDBGrid3TO_FIRM_DATE.Field.Value:=DTS;
            dxDBGrid3TO_FIRM_DATE.Field.DataSet.CheckBrowseMode;
          End;

          Key:=0;
        End;
      End;
    End;
  End;

  If (Key=VK_F3) And (dxDBGrid3.FocusedColumn=4)
  Then Begin
    dxDBGrid3FIRM_NAMEButtonClick(Nil, 0);
    Key:=0;
  End;

  If (Key=VK_DELETE) And (dxDBGrid3.FocusedColumn=4)
  Then Begin
    dsJournalDetail1.Edit;
    dsJournalDetail1.FieldByName('FIRM').Value:=NULL;
    dsJournalDetail1.CheckBrowseMode;
    Key:=0;
  End;
end;

procedure TfrmJournalEdit.dxDBEdit7KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
Var
  C: Char;
  sel: TCharRange;
  Edit: TdxDBEdit;
  S: String;
begin
  Raise Exception.Create('...');
  C:=Char(MapVirtualKey(Key, 2));
  Label1.Caption:=C;

  If (((C=',') And (DecimalSeparator='.')) Or ((C='.') And (DecimalSeparator=',')))
  Then Begin
    Edit:=TdxDBEdit(Sender);
    sel:=Edit.GetSelection;
    S:=Edit.Text;
    Delete(S, sel.cpMin+1, sel.cpMax-sel.cpMin);
    Insert(DecimalSeparator, S, sel.cpMin+1);

    Edit.Text:=S;
    Edit.SetSelection(sel.cpMin+1, sel.cpMin+1, False);
    Key:=0;

    Edit.DataSource.DataSet.Edit;
    Edit.DataSource.DataSet.FieldByName(Edit.DataField).AsString:=S;
    Edit.DataSource.DataSet.CheckBrowseMode;
  End;
end;

procedure TfrmJournalEdit.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If (((Key=',') And (DecimalSeparator='.')) Or ((Key='.') And (DecimalSeparator=',')))
  Then
    Key:=DecimalSeparator;
end;

procedure TfrmJournalEdit.dsJournalDetail1AfterInsert(DataSet: TDataSet);
begin
  dsJournalDetail1JOURNAL.AsInteger:=dsJournalHeadUKEY.AsInteger;
  dsJournalDetail1VERDICT_OGIS0.AsInteger:=7;
end;

end.
