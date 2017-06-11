unit UAgreementReg;

interface

uses
  Forms, StdCtrls, DBCtrls, Controls, Mask, Buttons, ExtCtrls, TB97Ctls,
  TB97Tlbr, TB97, Classes, ComCtrls, SysUtils, Dialogs, Grids, DBGrids,
  dxCntner, dxEditor, dxExEdtr, dxEdLib, dxDBTLCl, dxGrClms, dxTL,
  dxDBCtrl, dxDBGrid;

type
  TfrmAgreementReg = class(TForm)
    Panel: TPanel;
    LabelEdit1: TLabel;
    LabelEdit2: TLabel;
    LabelEdit3: TLabel;
    GroupBox1: TGroupBox;
    LabelEdit8: TLabel;
    LabelEdit9: TLabel;
    LabelEdit4: TLabel;
    LabelMaskEdit1: TLabel;
    bBtnAdd: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
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
    dxDateEdit1: TdxDateEdit;
    dxDateEdit2: TdxDateEdit;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1REG_NUMBER: TdxDBGridMaskColumn;
    dxDBGrid1REG_DATE: TdxDBGridDateColumn;
    dxDBGrid1PASSPORT_FIO: TdxDBGridMaskColumn;
    dxDBGrid1DEBT: TdxDBGridMaskColumn;
    dxDBGrid1PERIOD: TdxDBGridMaskColumn;
    dxCheckEdit1: TdxCheckEdit;
    Bevel1: TBevel;
    dxCheckEdit2: TdxCheckEdit;
    dxCheckEdit3: TdxCheckEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bBtnAddClick(Sender: TObject);
    procedure EditSearchKeyPress(Sender: TObject; var Key: Char);
    procedure OnEnter(Sender: TObject);
    procedure OnExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Clear;
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure dxCheckEdit3Change(Sender: TObject);
    procedure dxCheckEdit2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAgreementReg: TfrmAgreementReg;

implementation

{$R *.DFM}

uses UDBForm, UData, IBStoredProc, DB;

procedure TfrmAgreementReg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  WindowID.AgreementReg.Open:=False;
end;

procedure TfrmAgreementReg.Clear;
begin
  Edit1.Text:='';
  Edit2.Text:='';
  Edit3.Text:='';
  Edit4.Text:='';
//  MaskEdit1.Text:='';
  Edit5.Text:='';
  Edit6.Text:='';
  dxDateEdit2.Text:='';
  Edit7.Text:='';
  Edit8.Text:='';
  Edit9.Text:='';
  dxCheckEdit1.Checked:=False;
  Edit1.SetFocus;
end;

procedure TfrmAgreementReg.bBtnAddClick(Sender: TObject);
var
  Err: array [0..7] of Boolean;
  i: Integer;
begin
  if not User_Permiting[7] then begin
    NoPermition;
    exit;
  end;
  for i:=0 to 7 do Err[i]:=False;
  if Edit1.Text='' then Err[0]:=True;
  if Edit4.Text='' then Err[1]:=True;
  if Edit5.Text='' then Err[2]:=True;
  if Edit6.Text='' then Err[3]:=True;
  if dxDateEdit2.Text='' then Err[4]:=True;
  if Edit7.Text='' then Err[5]:=True;
  if Edit8.Text='' then Err[6]:=True;
  if Edit9.Text='' then Err[7]:=True;
  if Err[0] then begin
    MessageDlg('ВНИМАНИЕ! Не выбран лицевой счет.',mtWarning,[mbOk],0);
    exit;
  end;
  if Err[1] then begin
    MessageDlg('ВНИМАНИЕ! Не введен регистрационный номер.',mtWarning,[mbOk],0);
    exit;
  end;
  if Err[2] then begin
    MessageDlg('ВНИМАНИЕ! Не введены Ф.И.О.',mtWarning,[mbOk],0);
    exit;
  end;
  if Err[3] then begin
    MessageDlg('ВНИМАНИЕ! Не введена серия и № паспорта.',mtWarning,[mbOk],0);
    exit;
  end;
  if Err[4] then begin
    MessageDlg('ВНИМАНИЕ! Не введена дата регистрации паспорта.',mtWarning,[mbOk],0);
    exit;
  end;
  if Err[5] then begin
    MessageDlg('ВНИМАНИЕ! Не введено, кем выдан паспорт.',mtWarning,[mbOk],0);
    exit;
  end;
  if Err[6] then begin
    MessageDlg('ВНИМАНИЕ! Не введен долг договора.',mtWarning,[mbOk],0);
    exit;
  end;
  if Err[7] then begin
    MessageDlg('ВНИМАНИЕ! Не введен период проплаты по договору.',mtWarning,[mbOk],0);
    exit;
  end;
  try
    Screen.Cursor:=crSQLWait;
    with DBForm.IBStoredProc do begin
      StoredProcName:='SET_AGREEMENT_NEW';
      ParamByName('ACCOUNT').AsString:=Edit1.Text;
      ParamByName('BY_JURIST').AsBoolean:=dxCheckEdit1.Checked;
      ParamByName('GAR').AsBoolean:=dxCheckEdit3.Checked;
      ParamByName('RESTR').AsBoolean:=dxCheckEdit2.Checked;
      ParamByName('REG_NUMBER').AsString:=Edit4.Text;
      ParamByName('REG_DATE').AsString:=dxDateEdit1.Text;
      ParamByName('PASSPORT_FIO').AsString:=Edit5.Text;
      ParamByName('PASSPORT_NUMBER').AsString:=Edit6.Text;
      ParamByName('PASSPORT_WHERE').AsString:=Edit7.Text;
      ParamByName('PASSPORT_DATE').AsString:=dxDateEdit2.Text;
      ParamByName('DEBT').AsCurrency:=StrToCurr(Edit8.Text);
      ParamByName('PERIOD').AsString:=Edit9.Text;
      ParamByName('USER_UKEY').AsInteger:=User_UKey;
      ExecProc;
      dxDBGrid1.Visible:=False;
    end;
    Clear;
  except
    MessageDlg('ОШИБКА! Данные не внесены.',mtError,[mbOk],0);
  end;
  Screen.Cursor:=crDefault;
end;

procedure TfrmAgreementReg.EditSearchKeyPress(Sender: TObject; var Key: Char);
var
  str: String;
begin
  if Key=#13 then
    try
      Screen.Cursor:=crSQLWait;
      StrToInt(Edit1.Text);
      with DBForm.IBStoredProc do begin
        StoredProcName:='GET_ACCOUNT_PROP';
        ParamByName('ACCOUNT').AsString:=Edit1.Text;
        ExecProc;
        if ParamByName('FIO').AsString='' then begin
          MessageDlg('Лицевой счет не найден!',mtInformation,[mbOk],0);
          Screen.Cursor:=crDefault;
          exit;
        end;
        Edit2.Text:=ParamByName('FIO').AsString;
        Edit3.Text:=ParamByName('ADDRESS').AsString;
        Edit8.Text:=ParamByName('SALDOOUT').AsString;
      end;
      with DBForm.IBStoredProc do begin
        StoredProcName:='CHECK_BY_JURIST';
        ParamByName('ACC').AsString:=Edit1.Text;
        ExecProc;
        dxCheckEdit1.Checked:=ParamByName('BY_JURIST').AsBoolean;
      end;
      Edit4.SetFocus;
      str:=Edit1.Text;
      with DBForm.qAgreement do begin
        Close;
        SQL.Clear;
        SQL.Add('select * from agreement where account='''+str+'''');
        Open;
        Last;
        RecordCount;
        if RecordCount<>0 then dxDBGrid1.Visible:=True else dxDBGrid1.Visible:=False;
      end;
    except
      MessageDlg('ОШИБКА! Разве ж это цифры?!',mtError,[mbOk],0);
    end;
  Screen.Cursor:=crDefault;
end;

procedure TfrmAgreementReg.OnEnter(Sender: TObject);
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

procedure TfrmAgreementReg.OnExit(Sender: TObject);
begin
  if (Sender is TdxDateEdit) then begin
    case (Sender as TdxDateEdit).Tag of
      1: LabelMaskEdit1.Transparent:=True;
      2: LabelMaskEdit2.Transparent:=True;
    end;
  end;
  if (Sender is TEdit) then
    case (Sender as TEdit).Tag of
      1: begin
        try
          StrToInt((Sender as TEdit).Text);
          LabelEdit1.Transparent:=True;
        except
          MessageDlg('Лицевой счет введен не верно!',mtError,[mbOk],0);
          (Sender as TEdit).SetFocus;
        end;
      end;
      2: LabelEdit2.Transparent:=True;
      3: LabelEdit3.Transparent:=True;
      4: LabelEdit4.Transparent:=True;
      5: LabelEdit5.Transparent:=True;
      6: LabelEdit6.Transparent:=True;
      7: LabelEdit7.Transparent:=True;
      8: begin
        try
          CheckPoint(Sender);
          StrToFloat((Sender as TEdit).Text);
          LabelEdit8.Transparent:=True;
        except
          MessageDlg('Долг введен не верно!',mtError,[mbOk],0);
          (Sender as TEdit).SetFocus;
        end;
      end;
      9: begin
        try
          CheckPoint(Sender);
          StrToInt((Sender as TEdit).Text);
          LabelEdit9.Transparent:=True;
        except
          MessageDlg('Период введен не верно!',mtError,[mbOk],0);
          (Sender as TEdit).SetFocus;
        end;
      end;
    end;
end;

procedure TfrmAgreementReg.FormCreate(Sender: TObject);
begin
  dxDateEdit1.Text:=DateToStr(Now);
end;

procedure TfrmAgreementReg.Edit8KeyPress(Sender: TObject; var Key: Char);
begin
  If ((Key=',') Or (Key='.'))
  Then
    Key:=DecimalSeparator;
end;

procedure TfrmAgreementReg.dxCheckEdit3Change(Sender: TObject);
begin
  If (dxCheckEdit3.Checked)
  Then
    dxCheckEdit2.Checked:=False
  Else If (dxCheckEdit2.Checked=False)
  Then
    dxCheckEdit3.Checked:=True;
end;

procedure TfrmAgreementReg.dxCheckEdit2Change(Sender: TObject);
begin
  If (dxCheckEdit2.Checked)
  Then
    dxCheckEdit3.Checked:=False
  Else If (dxCheckEdit3.Checked=False)
  Then
    dxCheckEdit2.Checked:=True;
end;

end.
