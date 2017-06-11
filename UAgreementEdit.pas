unit UAgreementEdit;

interface

uses
  Windows, Variants, Graphics, Forms, Controls, TB97Ctls, StdCtrls, DBCtrls, Mask, Buttons,
  ExtCtrls, TB97Tlbr, TB97, Classes, Grids, DBGrids, Dialogs, SysUtils,
  dxCntner, dxEditor, dxExEdtr, dxEdLib, dxDBTLCl, dxGrClms, dxTL,
  dxDBCtrl, dxDBGrid, dxDBELib;

type
  TfrmAgreementEdit = class(TForm)
    LabelEdit1: TLabel;
    LabelEdit2: TLabel;
    GroupBox1: TGroupBox;
    LabelEdit8: TLabel;
    LabelEdit9: TLabel;
    LabelEdit4: TLabel;
    LabelMaskEdit1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    GroupBox2: TGroupBox;
    LabelEdit7: TLabel;
    Edit7: TEdit;
    LabelMaskEdit2: TLabel;
    LabelEdit6: TLabel;
    Edit6: TEdit;
    LabelEdit5: TLabel;
    Edit5: TEdit;
    Dock971: TDock97;
    Toolbar971: TToolbar97;
    tBtnSearch: TToolbarButton97;
    tBtnSave: TToolbarButton97;
    tBtnReg: TToolbarButton97;
    ToolbarSep971: TToolbarSep97;
    ToolbarSep972: TToolbarSep97;
    tBtnCancel: TToolbarButton97;
    ToolbarSep973: TToolbarSep97;
    tBtnLock: TToolbarButton97;
    ToolbarSep974: TToolbarSep97;
    EditSearch: TEdit97;
    Panel: TPanel;
    Edit3: TEdit;
    LabelEdit3: TLabel;
    Memo1: TMemo;
    dxDateEdit1: TdxDateEdit;
    dxDateEdit2: TdxDateEdit;
    dxCheckEdit1: TdxCheckEdit;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1ACCOUNT: TdxDBGridMaskColumn;
    dxDBGrid1REG_NUMBER: TdxDBGridMaskColumn;
    dxDBGrid1REG_DATE: TdxDBGridDateColumn;
    dxDBGrid1PASSPORT_FIO: TdxDBGridMaskColumn;
    LabelUKey: TLabel;
    dxDBGrid1UKEY: TdxDBGridMaskColumn;
    tBtnUnLock: TToolbarButton97;
    LabelHelp: TLabel;
    bBtnClose: TBitBtn;
    dxCheckEdit2: TdxCheckEdit;
    Bevel1: TBevel;
    dxCheckEdit3: TdxCheckEdit;
    Label1: TLabel;
    dxDateEdit3: TdxDateEdit;
    dxCheckEdit4: TdxCheckEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OnEnter(Sender: TObject);
    procedure OnExit(Sender: TObject);
    procedure Clear;
    procedure EditFalse;
    procedure EditTrue;
    procedure Locked;
    procedure UnLocked;
    procedure StrSearch;
    procedure tBtnRegClick(Sender: TObject);
    procedure tBtnLockClick(Sender: TObject);
    procedure tBtnCancelClick(Sender: TObject);
    procedure tBtnSearchClick(Sender: TObject);
    procedure bBtnCloseClick(Sender: TObject);
    procedure SearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OnChange(Sender: TObject);
    procedure tBtnSaveClick(Sender: TObject);
    procedure dxCheckEdit1Click(Sender: TObject);
    procedure dxDBGrid1Click(Sender: TObject);
    procedure EditSearchKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure tBtnUnLockClick(Sender: TObject);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure dxDateEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxCheckEdit4Change(Sender: TObject);
    procedure dxCheckEdit3Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAgreementEdit: TfrmAgreementEdit;
  SearchIndex, U_LOCK, U_KEY: Integer;
  Saved: Boolean;

implementation

{$R *.DFM}

uses UDBForm, UData, UMain, USearch, USearchAdr, DB, IBCustomDataSet,
  IBStoredProc;

procedure TfrmAgreementEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not Saved then
   if MessageDlg('Данные не сохранены. Сохранить?', mtConfirmation, [mbYes, mbNo], 0)=mrYes
    then tBtnSaveClick(nil);
  Action:=caFree;
  WindowID.AgreementEdit.Open:=False;
end;

procedure TfrmAgreementEdit.Clear;
begin
  Edit1.Text:='';
  Edit2.Text:='';
  Edit3.Text:='';
  Edit4.Text:='';
//  MaskEdit1.Text:='';
  Edit5.Text:='';
  Edit6.Text:='';
  dxDateEdit2.Text:='';
  dxDateEdit3.Text:='';
  Edit7.Text:='';
  Edit8.Text:='';
  Edit9.Text:='';
  Edit1.SetFocus;
end;

procedure TfrmAgreementEdit.StrSearch;
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
    with DBForm.qAgreement do begin
      Close;
      SQL.Clear;
      SQL.Add('select a.* from ACCOUNT_BY_ADDRESS('+
        IntToStr(SearchAdr.Str_UKey)+','''+SearchAdr.House_Name+''','''+SearchAdr.Flat_Name+
        ''') p, agreement a where p.account=a.account');
      Open;
      Last;
      if RecordCount=1 then
        dxDBGrid1Click(nil)
      else if RecordCount<>0 then begin
        Screen.Cursor:=crDefault;
        dxDBGrid1.Visible:=True;
      end else begin
        Screen.Cursor:=crDefault;
        MessageDlg('ВНИМАНИЕ! Данные не найдены.',mtInformation,[mbOk],0);
      end;
    end;
  end;
end;

procedure TfrmAgreementEdit.OnEnter(Sender: TObject);
begin
  if (Sender is TdxDateEdit) then
    case (Sender as TdxDateEdit).Tag of
      1: LabelMaskEdit1.Transparent:=False;
      2: LabelMaskEdit2.Transparent:=False;
    end;
  if (Sender is TEdit) then
    case (Sender as TEdit).Tag of
      1: LabelEdit1.Transparent:=False;
      2: LabelEdit2.Transparent:=False;
      3: LabelEdit3.Transparent:=False;
      4: LabelEdit4.Transparent:=False;
      5: LabelEdit5.Transparent:=False;
      6: LabelEdit6.Transparent:=False;
      7: LabelEdit7.Transparent:=False;
      8: LabelEdit8.Transparent:=False;
      9: LabelEdit9.Transparent:=False;
    end;
end;

procedure TfrmAgreementEdit.OnExit(Sender: TObject);
begin
  if (Sender is TdxDateEdit) then
    case (Sender as TdxDateEdit).Tag of
      1: LabelMaskEdit1.Transparent:=True;
      2: LabelMaskEdit2.Transparent:=True;
    end;
  if (Sender is TEdit) then
    case (Sender as TEdit).Tag of
      1: LabelEdit1.Transparent:=True;
      2: LabelEdit2.Transparent:=True;
      3: LabelEdit3.Transparent:=True;
      4: LabelEdit4.Transparent:=True;
      5: LabelEdit5.Transparent:=True;
      6: LabelEdit6.Transparent:=True;
      7: LabelEdit7.Transparent:=True;
      8: begin
        CheckPoint(Sender);
        LabelEdit8.Transparent:=True;
      end;
      9: LabelEdit9.Transparent:=True;
    end;
end;

procedure TfrmAgreementEdit.tBtnRegClick(Sender: TObject);
begin
  frmMain.menuAgreementRegClick(nil);
end;

procedure TfrmAgreementEdit.Locked;
begin
  tBtnSave.Enabled:=False;
  Edit1.Enabled:=False;
  Edit2.Enabled:=False;
  Edit3.Enabled:=False;
  LabelEdit1.Enabled:=False;
  LabelEdit2.Enabled:=False;
  LabelEdit3.Enabled:=False;
  GroupBox1.Enabled:=False;
  GroupBox2.Enabled:=False;
  Edit4.Enabled:=False;
  Edit5.Enabled:=False;
  Edit6.Enabled:=False;
  Edit7.Enabled:=False;
  Edit8.Enabled:=False;
  Edit9.Enabled:=False;
  dxCheckEdit2.Enabled:=False;
  Memo1.Enabled:=False;
  dxDateEdit1.Enabled:=False;
  dxDateEdit2.Enabled:=False;
  dxDateEdit3.Enabled:=False;
  GroupBox1.Font.Color:=clGray;
  GroupBox2.Font.Color:=clGray;
end;

procedure TfrmAgreementEdit.UnLocked;
begin
  tBtnSave.Enabled:=True;
  Edit1.Enabled:=True;
  Edit2.Enabled:=True;
  Edit3.Enabled:=True;
  LabelEdit1.Enabled:=True;
  LabelEdit2.Enabled:=True;
  LabelEdit3.Enabled:=True;
  GroupBox1.Enabled:=True;
  GroupBox2.Enabled:=True;
  Edit4.Enabled:=True;
  Edit5.Enabled:=True;
  Edit6.Enabled:=True;
  Edit7.Enabled:=True;
  Edit8.Enabled:=True;
  Edit9.Enabled:=True;
  dxCheckEdit2.Enabled:=True;
  Memo1.Enabled:=True;
  dxDateEdit1.Enabled:=True;
  dxDateEdit2.Enabled:=True;
  dxDateEdit3.Enabled:=True;
  GroupBox1.Font.Color:=clBlack;
  GroupBox2.Font.Color:=clBlack;
end;

procedure TfrmAgreementEdit.tBtnLockClick(Sender: TObject);
begin
  if not User_Permiting[8] then begin
    NoPermition;
    exit;
  end;
  if MessageDlg('ЗАМКНУТЬ. Вы уверены?', mtConfirmation, [mbYes, mbNo], 0)=mrYes then
    try
      if not Saved then begin
        MessageDlg('Данные не сохранены.',mtInformation,[mbOk],0);
        exit;
      end;
      Screen.Cursor:=crSQLWait;
      with DBForm.IBStoredProc do begin
        StoredProcName:='SET_AGREEMENT_LOCK';
        ParamByName('UKEY').AsInteger:=U_KEY;
        ParamByName('LOCKED').AsInteger:=-1;
        ParamByName('USER_UKEY').AsInteger:=User_UKey;
        ExecProc;
        U_LOCK:=-1;
        Locked;
      end;
    except
      MessageDlg('ОШИБКА! Данные не замкнуты.',mtError,[mbOk],0);
    end;
  Screen.Cursor:=crDefault;
end;

procedure TfrmAgreementEdit.tBtnCancelClick(Sender: TObject);
begin
  Screen.Cursor:=crSQLWait;
  with DBForm.qAgreement do begin
    Close;
    SQL.Clear;
    SQL.Add('select * from agreement where ukey='''+IntToStr(U_KEY)+'''');
    Open;
    First;
    if RecordCount<>0 then dxDBGrid1Click(nil)
    else begin
      Screen.Cursor:=crDefault;
      MessageDlg('ВНИМАНИЕ! Данные не найдены.',mtInformation,[mbOk],0);
    end;
  end;
  dxCheckEdit1.Checked:=False;
  dxCheckEdit1Click(nil);
  Saved:=True;
  Screen.Cursor:=crDefault;
end;

procedure TfrmAgreementEdit.EditFalse;
begin
  Edit1.ReadOnly:=True;
  Edit4.ReadOnly:=True;
  dxDateEdit1.ReadOnly:=True;
  Edit5.ReadOnly:=True;
  Edit6.ReadOnly:=True;
  dxDateEdit2.ReadOnly:=True;
  dxDateEdit3.ReadOnly:=True;
  Edit7.ReadOnly:=True;
  Edit8.ReadOnly:=True;
  Edit9.ReadOnly:=True;
end;

procedure TfrmAgreementEdit.EditTrue;
begin
  Saved:=False;
  Edit1.ReadOnly:=False;
  Edit4.ReadOnly:=False;
  dxDateEdit1.ReadOnly:=False;
  Edit5.ReadOnly:=False;
  Edit6.ReadOnly:=False;
  dxDateEdit2.ReadOnly:=False;
  dxDateEdit3.ReadOnly:=False;
  Edit7.ReadOnly:=False;
  Edit8.ReadOnly:=False;
  Edit9.ReadOnly:=False;
end;

procedure TfrmAgreementEdit.tBtnSearchClick(Sender: TObject);
var
  str, s: String;
  cancel: Boolean;
begin
  with TFrmSearch.Create(nil) do
   try
     Edit1.Text:=EditSearch.Text;
     RadioGroup1.Items.Clear;
     RadioGroup1.Items.Append('Лицевой счет');
     RadioGroup1.Items.Append('Адрес');
     RadioGroup1.Items.Append('Регистрационный номер');
     RadioGroup1.Items.Append('Ф.И.О.');
     RadioGroup1.ItemIndex:=SearchIndex;
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
    0: str:=' where account='''+s+'''';
    1: str:=' where calc_address like ''%'+s+'%''';
    2: str:=' where reg_number='''+s+'''';
    3: str:=' where passport_fio like ''%'+s+'%''';
  end;
  with DBForm.qAgreement do begin
    Close;
    SQL.Clear;
    SQL.Add('select * from agreement'+str);
    Open;
    Last;
    if RecordCount=1 then
      dxDBGrid1Click(nil)
    else if RecordCount<>0 then begin
      Screen.Cursor:=crDefault;
      dxDBGrid1.Visible:=True;
    end else begin
      Screen.Cursor:=crDefault;
      MessageDlg('ВНИМАНИЕ! Данные не найдены.',mtInformation,[mbOk],0);
    end;
  end;
end;

procedure TfrmAgreementEdit.bBtnCloseClick(Sender: TObject);
begin
  // Kirk
  tBtnSaveClick(nil);
  // Kirk
  Close;
end;

procedure TfrmAgreementEdit.SearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Sender is TEdit) then
    if (Sender as TEdit).Tag=1 then begin
      if Key=13 then begin
        try
          StrToInt(Edit1.Text);
        except
          MessageDlg('ОШИБКА! Разве ж это цифры?!',mtError,[mbOk],0);
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
  if ssShift in Shift then
    if (key=70) or (key=102) then StrSearch;
  if ssCtrl in Shift then
    if (key=70) or (key=102) then begin
      if (Sender is TEdit) then begin
        if (Sender as TEdit).Tag=1 then SearchIndex:=0;
        if (Sender as TEdit).Tag=2 then SearchIndex:=1;
        if (Sender as TEdit).Tag=4 then SearchIndex:=2;
        if (Sender as TEdit).Tag=5 then SearchIndex:=3;
      end;
      tBtnSearchClick(nil);
    end;
end;

procedure TfrmAgreementEdit.OnChange(Sender: TObject);
begin
  Saved:=False;
end;

procedure TfrmAgreementEdit.tBtnSaveClick(Sender: TObject);
begin
  if Saved then exit;

  if not User_Permiting[10] then begin
    NoPermition;
    exit;
  end;
  try
    Screen.Cursor:=crSQLWait;
    with DBForm.IBStoredProc do begin
      StoredProcName:='SET_AGREEMENT_UPDATE';
      ParamByName('UKEY').AsInteger:=U_KEY;
      ParamByName('ACCOUNT').AsInteger:=StrToInt(Edit1.Text);
      ParamByName('BY_JURIST').AsBoolean:=dxCheckEdit2.Checked;
      ParamByName('GAR').AsBoolean:=dxCheckEdit4.Checked;
      ParamByName('RESTR').AsBoolean:=dxCheckEdit3.Checked;
      ParamByName('REG_NUMBER').AsString:=Edit4.Text;
      ParamByName('REG_DATE').AsString:=dxDateEdit1.Text;
      ParamByName('PASSPORT_FIO').AsString:=Edit5.Text;
      ParamByName('PASSPORT_NUMBER').AsString:=Edit6.Text;
      ParamByName('PASSPORT_WHERE').AsString:=Edit7.Text;
      ParamByName('PASSPORT_DATE').AsString:=dxDateEdit2.Text;
      
      If (dxDateEdit3.Text='  .  .    ')
      Then
        ParamByName('CLOSE_DATE').Value:=NULL
      Else
        ParamByName('CLOSE_DATE').AsString:=dxDateEdit3.Text;

      ParamByName('DEBT').AsFloat:=StrToFloat(Edit8.Text);
      ParamByName('PERIOD').AsInteger:=StrToInt(Edit9.Text);
      ParamByName('DESCRIPTION').AsString:=Memo1.Text;
      ParamByName('LOCKED').AsInteger:=U_LOCK;
      ParamByName('USER_UKEY').AsInteger:=User_UKey;
      ExecProc;
      Transaction.CommitRetaining;
      EditFalse;
    end;
    Saved:=True;
    MessageDlg('Данные успешно сохранены.',mtInformation,[mbOk],0);
    dxCheckEdit1.Checked:=False;
  except
    MessageDlg('ОШИБКА! Данные НЕ сохранены.',mtError,[mbOk],0);
  end;
  Screen.Cursor:=crDefault;
end;

procedure TfrmAgreementEdit.dxCheckEdit1Click(Sender: TObject);
begin
  if not User_Permiting[9] then begin
    NoPermition;
    dxCheckEdit1.Checked:=False;
    exit;
  end;
  if dxCheckEdit1.Checked then
    EditTrue
  else EditFalse;
end;

procedure TfrmAgreementEdit.dxDBGrid1Click(Sender: TObject);
begin
  Screen.Cursor:=crSQLWait;
  with DBForm.qAgreement do begin
    if FieldByName('LOCKED').AsInteger=-1 then Locked else UnLocked;
    U_KEY:=FieldByName('UKEY').AsInteger;
    Edit1.Text:=FieldByName('ACCOUNT').AsString;
    dxCheckEdit2.Checked:=IntToBool(FieldByName('BY_JURIST').AsInteger);
    dxCheckEdit4.Checked:=IntToBool(FieldByName('GAR').AsInteger);
    dxCheckEdit3.Checked:=IntToBool(FieldByName('RESTR').AsInteger);
    // высмыкиваем текущий адрес
    with DBForm.IBStoredProc do begin
      StoredProcName:='GET_ACCOUNT_ADDRESS';
      ParamByName('ACCOUNT').AsInteger:=StrToInt(Edit1.Text);
      ExecProc;
      Edit2.Text:=ParamByName('ADDRESS').AsString;
    end;
    // высмыкиваем текущий долг
    with DBForm.IBStoredProc do begin
      StoredProcName:='GET_ACCOUNT_SALDOOUT_LAST';
      ParamByName('ACCOUNT').AsInteger:=StrToInt(Edit1.Text);
      ExecProc;
      Edit3.Text:=ParamByName('SALDOOUT').AsString;
    end;
    LabelUKey.Caption:=' ['+FieldByName('UKEY').AsString+'] ';
    Edit4.Text:=FieldByName('REG_NUMBER').AsString;
    dxDateEdit1.Text:=FieldByName('REG_DATE').AsString;
    Edit5.Text:=FieldByName('PASSPORT_FIO').AsString;
    Edit6.Text:=FieldByName('PASSPORT_NUMBER').AsString;
    dxDateEdit2.Text:=FieldByName('PASSPORT_DATE').AsString;
    dxDateEdit3.Text:=FieldByName('CLOSE_DATE').AsString;
    Edit7.Text:=FieldByName('PASSPORT_WHERE').AsString;
    Edit8.Text:=FieldByName('DEBT').AsString;
    Edit9.Text:=FieldByName('PERIOD').AsString;
    Memo1.Text:=FieldByName('DESCRIPTION').AsString;
    U_LOCK:=FieldByName('LOCKED').AsInteger;
  end;
  if U_LOCK=-1 then Locked;
  dxDBGrid1.Visible:=False;
  Saved:=True;
  Screen.Cursor:=crDefault;
end;

procedure TfrmAgreementEdit.EditSearchKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then tBtnSearchClick(nil);
end;

procedure TfrmAgreementEdit.FormCreate(Sender: TObject);
begin
  SearchIndex:=-1;
  Saved:=True;
end;

procedure TfrmAgreementEdit.FormClick(Sender: TObject);
begin
  bBtnClose.SetFocus;
end;

procedure TfrmAgreementEdit.tBtnUnLockClick(Sender: TObject);
begin
  if not User_Permiting[4] then begin
    NoPermition;
    exit;
  end;
  if MessageDlg('ОТОМКНУТЬ. Вы уверены?', mtConfirmation, [mbYes, mbNo], 0)=mrYes then
    try
      Screen.Cursor:=crSQLWait;
      with DBForm.IBStoredProc do begin
        StoredProcName:='SET_AGREEMENT_LOCK';
        ParamByName('UKEY').AsInteger:=U_KEY;
        ParamByName('LOCKED').AsInteger:=0;
        ParamByName('USER_UKEY').AsInteger:=User_UKey;
        ExecProc;
        U_LOCK:=0;
        UnLocked;
      end;
    except
      MessageDlg('ОШИБКА! Данные не отомкнуты.',mtError,[mbOk],0);
    end;
  Screen.Cursor:=crDefault;
end;

procedure TfrmAgreementEdit.Edit8KeyPress(Sender: TObject; var Key: Char);
begin
  If ((Key=',') Or (Key='.'))
  Then
    Key:=DecimalSeparator;
end;

procedure TfrmAgreementEdit.dxDateEdit3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If Key=VK_DELETE
  Then
    dxDateEdit3.Text:='';

end;

procedure TfrmAgreementEdit.dxCheckEdit4Change(Sender: TObject);
begin
  Saved:=False;

  If (dxCheckEdit4.Checked)
  Then
    dxCheckEdit3.Checked:=False
  Else If (dxCheckEdit3.Checked=False)
  Then
    dxCheckEdit4.Checked:=True;
end;

procedure TfrmAgreementEdit.dxCheckEdit3Change(Sender: TObject);
begin
  Saved:=False;

  If (dxCheckEdit3.Checked)
  Then
    dxCheckEdit4.Checked:=False
  Else If (dxCheckEdit4.Checked=False)
  Then
    dxCheckEdit3.Checked:=True;
end;

end.
