unit UJournalReg;

interface

uses
  Windows, Forms, StdCtrls, DBCtrls, Controls, Mask, Buttons, ExtCtrls, TB97Ctls,
  TB97Tlbr, TB97, Classes, ComCtrls, SysUtils, Dialogs, Grids, DBGrids,
  dxCntner, dxEditor, dxExEdtr, dxEdLib, dxDBTLCl, dxGrClms, dxTL,
  dxDBCtrl, dxDBGrid, DB, IBCustomDataSet, dxmdaset, IBSQL, RichEdit;

type
  TfrmJournalReg = class(TForm)
    Panel: TPanel;
    LabelEdit1: TLabel;
    LabelEdit2: TLabel;
    LabelEdit4: TLabel;
    LabelEdit5: TLabel;
    LabelEdit3: TLabel;
    GroupBox1: TGroupBox;
    LabelEdit7: TLabel;
    LabelCombo1: TLabel;
    LabelEdit8: TLabel;
    LabelEdit6: TLabel;
    LabelMaskEdit1: TLabel;
    bBtnAdd: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Edit7: TEdit;
    Edit8: TEdit;
    dxDateEdit1: TdxDateEdit;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1REG_NUMBER: TdxDBGridMaskColumn;
    dxDBGrid1REG_DATE: TdxDBGridDateColumn;
    dxDBGrid1FIO_ALL: TdxDBGridMaskColumn;
    dxDBGrid1REG_DEBT: TdxDBGridMaskColumn;
    dxDBGrid1LAWTELL_LOOKUP: TdxDBGridMaskColumn;
    dxDBGrid2: TdxDBGrid;
    dsFIO: TdxMemData;
    srcFIO: TDataSource;
    dsFIOFIO: TStringField;
    dxDBGrid2RecId: TdxDBGridColumn;
    dxDBGrid2FIO: TdxDBGridMaskColumn;
    sql: TIBSQL;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bBtnAddClick(Sender: TObject);
    procedure OnKeyPress(Sender: TObject; var Key: Char);
    procedure OnEnter(Sender: TObject);
    procedure OnExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Clear;
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmJournalReg: TfrmJournalReg;

implementation

{$R *.DFM}

uses UDBForm, UData;

procedure TfrmJournalReg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  WindowID.JournalReg.Open:=False;
end;

procedure TfrmJournalReg.Clear;
begin
  Edit1.Text:='';
  Edit2.Text:='';
  Edit3.Text:='';
  Edit4.Text:='';
  Edit5.Text:='';
  Edit6.Text:='';
  ComboBox1.Text:='';
  ComboBox2.Text:='';
  Edit7.Text:='';
  Edit8.Text:='';
  Edit1.SetFocus;

  dsFIO.Close;
  dsFIO.Open;
end;

procedure TfrmJournalReg.bBtnAddClick(Sender: TObject);
var
  Err: array [0..6] of Boolean;
  i: Integer;
  FIO_All: String;
  Journal: Integer;

  Function GetFIO_All: String;
  Var
    CommaStr: String;
  Begin
    Result:='';
    CommaStr:='';
    dsFIO.DisableControls;

    dsFIO.First;
    While Not(dsFIO.Eof) Do
    Begin
      Result:=Result+CommaStr+dsFIO.FieldByName('FIO').AsString;
      dsFIO.Next;
      CommaStr:=', ';
    End;

    Result:=Trim(Result);

    dsFIO.EnableControls;
  End;

  Procedure InsertFIO;
  Begin
    dsFIO.DisableControls;

    dsFIO.First;
    While Not(dsFIO.Eof) Do
    Begin

      sql.ParamByName('JOURNAL').AsInteger:=Journal;
      sql.ParamByName('FIO').AsString:=dsFIO.FieldByName('FIO').AsString;
      sql.ExecQuery;

      dsFIO.Next;
    End;

    dsFIO.EnableControls;
  End;

begin
  if not User_Permiting[1] then begin
    NoPermition;
    exit;
  end;
  for i:=0 to 6 do Err[i]:=False;
  if Edit8.Text='' then Err[0]:=True;
  if Edit6.Text='' then Err[1]:=True;

  FIO_All:=GetFIO_All;
  If FIO_All='' then Err[2]:=True;

  if Edit7.Text='' then Err[3]:=True;
  if ComboBox1.Text='' then Err[4]:=True;
  if ComboBox2.Text='' then Err[5]:=True;
  if StrToDate(ComboBox1.Text)>=StrToDate(ComboBox2.Text) then Err[6]:=True;
  if Err[0] then begin
    MessageDlg('ВНИМАНИЕ! Не выбран лицевой счет.',mtWarning,[mbOk],0);
    exit;
  end;
  if Err[1] then begin
    MessageDlg('ВНИМАНИЕ! Не введен регистрационный номер.',mtWarning,[mbOk],0);
    exit;
  end;
  if Err[2] then begin
    MessageDlg('ВНИМАНИЕ! Не введены ФИО ответчиков.',mtWarning,[mbOk],0);
    exit;
  end;
  if Err[3] then begin
    MessageDlg('ВНИМАНИЕ! Не введен исковый долг.',mtWarning,[mbOk],0);
    exit;
  end;
  if Err[4] then begin
    MessageDlg('ВНИМАНИЕ! Не выбрано начало искового периода.',mtWarning,[mbOk],0);
    exit;
  end;
  if Err[5] then begin
    MessageDlg('ВНИМАНИЕ! Не выбрано окончание искового периода.',mtWarning,[mbOk],0);
    exit;
  end;
  if Err[6] then begin
    MessageDlg('ВНИМАНИЕ! Начало искового периода больше его окончания.',mtWarning,[mbOk],0);
    exit;
  end;
  try
    Screen.Cursor:=crSQLWait;
    with DBForm.IBStoredProc do begin
      StoredProcName:='SET_JOURNAL_NEW';
      ParamByName('ACCOUNT').AsString:=Edit1.Text;
      ParamByName('REG_NUMBER').AsString:=Edit6.Text;
      ParamByName('REG_DATE').AsString:=dxDateEdit1.Text;
      ParamByName('REG_DEBT').AsCurrency:=StrToCurr(Edit8.Text);
      ParamByName('FIO_ALL').AsString:=UpperCase(FIO_All);
      ParamByName('SUIT_DEBT').AsString:=Edit7.Text;
      ParamByName('DATE_FROM').AsString:=ComboBox1.Text;
      ParamByName('DATE_TILL').AsString:=ComboBox2.Text;
      ParamByName('USER_UKEY').AsInteger:=User_UKey;
      ExecProc;

      Journal:=ParamByName('UKEY').AsInteger;
      InsertFIO;

      dxDBGrid1.Visible:=False;
    end;
    Clear;
  except
    MessageDlg('ОШИБКА! Данные не внесены.',mtError,[mbOk],0);
  end;
  Screen.Cursor:=crDefault;
end;

procedure TfrmJournalReg.OnKeyPress(Sender: TObject; var Key: Char);
var
  str: String;
begin
  case (Sender as TEdit).Tag of
    1: begin
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
              Cursor:=crDefault;
              exit;
            end;
            Edit2.Text:=ParamByName('FIO').AsString;
            Edit3.Text:=ParamByName('ADDRESS').AsString;
            Edit4.Text:=ParamByName('LODGERS').AsString;
            Edit5.Text:=ParamByName('LGOTADATA').AsString;
            Edit8.Text:=ParamByName('SALDOOUT').AsString;
          end;
          Edit6.SetFocus;
          str:=Edit1.Text;
          with DBForm.qJurist do begin
            Close;
            SQL.Clear;
            SQL.Add('select j.*, r.name lawtell_lookup from journal j, reference r '+
                    'where j.law_tell0=r.ukey and j.account='''+str+'''');
            SQL.Add('order by j.account');
            Open;
            Last;
            if RecordCount<>0 then dxDBGrid1.Visible:=True else dxDBGrid1.Visible:=False;
          end;
        except
          MessageDlg('ОШИБКА! Разве ж это цифры?!',mtError,[mbOk],0);
        end;
      Screen.Cursor:=crDefault;
    end;
    2:;
  end;
end;

procedure TfrmJournalReg.OnEnter(Sender: TObject);
begin
  if (Sender is TComboBox) then
    case (Sender as TComboBox).Tag of
      1: LabelCombo1.Transparent:=False;
      2: LabelCombo1.Transparent:=False;
    end;
  if (Sender is TdxDateEdit) then
    LabelMaskEdit1.Transparent:=False;
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
    end;
end;

procedure TfrmJournalReg.OnExit(Sender: TObject);
begin
  if (Sender is TdxDateEdit) then
    LabelMaskEdit1.Transparent:=True;
  if (Sender is TComboBox) then begin
    try
      StrToDate((Sender as TComboBox).Text);
    except
      MessageDlg('Дата введена не верно!',mtError,[mbOk],0);
      (Sender as TComboBox).SetFocus;
      exit;
    end;
    case (Sender as TComboBox).Tag of
      1: LabelCombo1.Transparent:=True;
      2: LabelCombo1.Transparent:=True;
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
      7: begin
        try
          CheckPoint(Sender);
          StrToFloat((Sender as TEdit).Text);
          LabelEdit7.Transparent:=True;
        except
          MessageDlg('Долг введен не верно!',mtError,[mbOk],0);
          (Sender as TEdit).SetFocus;
        end;
      end;
      8: begin
        CheckPoint(Sender);
        LabelEdit8.Transparent:=True;
      end;
    end;
end;

procedure TfrmJournalReg.FormCreate(Sender: TObject);
begin
  dxDateEdit1.Text:=DateToStr(Now);
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
end;

procedure TfrmJournalReg.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
  If ((Key=',') Or (Key='.'))
  Then
    Key:=DecimalSeparator;
end;

end.
