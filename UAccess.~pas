unit UAccess;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Math, StdCtrls, CheckLst, TB97Ctls,
  ComCtrls, ExtCtrls, Mask, Menus;

type
  TfrmAccess = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    CheckListBox1: TCheckListBox;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBGrid2: TDBGrid;
    GroupBox1: TGroupBox;
    tBtnSave: TToolbarButton97;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    CheckBox1: TCheckBox;
    PopupMenu1: TPopupMenu;
    smenuAdd1: TMenuItem;
    smenuDel1: TMenuItem;
    smenuEdit1: TMenuItem;
    N1: TMenuItem;
    PopupMenu2: TPopupMenu;
    smenuDel2: TMenuItem;
    smenuAdd2: TMenuItem;
    GroupBox2: TGroupBox;
    tBtnAdd: TToolbarButton97;
    Label3: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    ComboBox2: TComboBox;
    tBtnCancel: TToolbarButton97;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure ReloadSysGroup;
    procedure DBGrid2CellClick(Column: TColumn);
    procedure ChAccessClick(Sender: TObject);
    procedure ChUserClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure smenuDel1Click(Sender: TObject);
    procedure smenuDel2Click(Sender: TObject);
    procedure smenuAdd1Click(Sender: TObject);
    procedure smenuEdit1Click(Sender: TObject);
    procedure tBtnSaveClick(Sender: TObject);
    procedure smenuAdd2Click(Sender: TObject);
    procedure tBtnAddClick(Sender: TObject);
    procedure tBtnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAccess: TfrmAccess;
  chAccess, chUser: Boolean;
  SysGroup_UKey, SysUser_UKey: Integer;
  b: array of Boolean;

implementation

{$R *.dfm}

uses UDBForm, DB, UReferenceChange, UData;

procedure TfrmAccess.DBGrid1CellClick(Column: TColumn);
var
  i: Integer;
begin
  if chAccess then
    if MessageDlg('СОХРАНИТЬ ИЗМЕНЕНИЯ. Вы уверены?', mtConfirmation, [mbYes, mbNo], 0)=mrYes then begin
      for i:=0 to CheckListBox1.Items.Count-1 do
        b[i]:=CheckListBox1.Checked[i];
      with DBForm.IBStoredProc do begin
        StoredProcName:='SET_SYSACCESS_CHANGE';
        ParamByName('UKEY').AsInteger:=SysGroup_UKey;
        for i:=0 to CheckListBox1.Items.Count-1 do
          ParamByName('KIND'+IntToStr(i)).AsBoolean:=b[i];
        ExecProc;
      end;
      chAccess:=False;
    end else chAccess:=False;
// считывание данных и их отображение
  for i:=0 to CheckListBox1.Items.Count-1 do
    CheckListBox1.Checked[i]:=False;
  with DBForm.qJurist do begin
    Close;
    SQL.Clear;
    SQL.Add('select * from SYSACCESS where SYSGROUP='+DBForm.tSysGroup.FieldByName('UKEY').AsString);
    Open;
    First;
    while not Eof do begin
      CheckListBox1.Checked[FieldValues['RESOURCE']]:=FieldValues['KIND'];
      Next;
    end;
  end;
  SysGroup_UKey:=DBForm.tSysGroup.FieldByName('UKEY').AsInteger;
end;

procedure TfrmAccess.DBGrid2CellClick(Column: TColumn);
begin
  if chUser then
    if MessageDlg('СОХРАНИТЬ ИЗМЕНЕНИЯ. Вы уверены?', mtConfirmation, [mbYes, mbNo], 0)=mrYes then begin
      with DBForm.IBStoredProc do begin
        StoredProcName:='SET_SYSUSER_UPDATE';
        ParamByName('UKEY').AsInteger:=SysUser_UKey;
        ParamByName('ENABLED').AsBoolean:=CheckBox1.Checked;
        ParamByName('NAME').AsString:=Edit1.Text;
        ParamByName('LOGIN').AsString:=Edit2.Text;
        ParamByName('PASS').AsString:=Edit3.Text;
        ParamByName('SYSGROUP_NAME').AsString:=ComboBox1.Text;
        ExecProc;
      end;
      DBForm.tSysUser.Active:=False;
      DBForm.tSysUser.Active:=True;
      chUser:=False;
    end else chUser:=False;
// считывание данных и их отображение
  Edit1.OnChange:=Nil;
  Edit2.OnChange:=Nil;
  Edit3.OnChange:=Nil;
  ComboBox1.OnChange:=Nil;
  CheckBox1.OnClick:=Nil;
  with DBForm.qJurist do begin
    Close;
    SQL.Clear;
    SQL.Add('select * from SYSUSER where UKEY='+DBForm.tSysUser.FieldByName('UKEY').AsString);
    Open;
    CheckBox1.Checked:=FieldValues['ENABLED'];
    Edit1.Text:=FieldValues['NAME'];
    Edit2.Text:=FieldValues['LOGIN'];
    Edit3.Text:=FieldValues['PASS'];
    with DBForm.IBStoredProc do begin
      StoredProcName:='GET_SYSGROUP_ENTRY';
      ParamByName('UKEY').AsString:=DBForm.tSysUser.FieldByName('SYSGROUP_UKEY').AsString;
      ExecProc;
      ComboBox1.ItemIndex:=ComboBox1.Items.IndexOf(ParamByName('NAME').AsString);
    end;
  end;
  Edit1.OnChange:=ChUserClick;
  Edit2.OnChange:=ChUserClick;
  Edit3.OnChange:=ChUserClick;
  ComboBox1.OnChange:=ChUserClick;
  CheckBox1.OnClick:=ChUserClick;
  SysUser_UKey:=DBForm.tSysUser.FieldByName('UKEY').AsInteger;
end;

procedure TfrmAccess.ReloadSysGroup;
begin
  with DBForm.qJurist do begin
    Close;
    SQL.Clear;
    SQL.Add('select * from SYSGROUP order by UKEY');
    Open;
    First;
    ComboBox1.Items.Clear;
    while not Eof do begin
      ComboBox1.Items.Append(FieldValues['NAME']);
      ComboBox2.Items.Append(FieldValues['NAME']);
      Next;
    end;
  end;
end;

procedure TfrmAccess.FormShow(Sender: TObject);
begin
  SetLength(b, User_Permiting_Count);
  chAccess:=False;
  chUser:=False;
  DBForm.tSysAccess.Active:=True;
  DBForm.tSysGroup.Active:=True;
  DBForm.tSysUser.Active:=True;
  DBForm.tSysResource.Active:=True;
  CheckListBox1.Items.Clear;
  with DBForm.tSysResource do begin
    First;
    while not Eof do begin
      CheckListBox1.Items.Append(FieldByName('NAME').AsString);
      Next;
    end;
  end;
  ReloadSysGroup;
  DBGrid1CellClick(nil);
  DBGrid2CellClick(nil);
end;

procedure TfrmAccess.ChAccessClick(Sender: TObject);
begin
  chAccess:=True;
end;

procedure TfrmAccess.ChUserClick(Sender: TObject);
begin
  chUser:=True;
end;

procedure TfrmAccess.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if chAccess or chUser then begin
    MessageDlg('ВНИМАНИЕ! Изменения не сохранены.',mtWarning,[mbOk],0);
    Abort;
  end;
  DBForm.tSysAccess.Active:=False;
  DBForm.tSysGroup.Active:=False;
  DBForm.tSysUser.Active:=False;
  DBForm.tSysResource.Active:=False;
end;

procedure TfrmAccess.smenuDel1Click(Sender: TObject);
begin
  if MessageDlg('УДАЛИТЬ. Вы уверены?', mtConfirmation, [mbYes, mbNo], 0)=mrNo then exit;
  with DBForm.IBStoredProc do begin
    StoredProcName:='GET_CHECK';
    ParamByName('TYPE_UKEY').AsInteger:=1; // группа
    ParamByName('UKEY').AsInteger:=DBForm.tSysGroup.FieldByName('UKEY').AsInteger;
    ExecProc;
    if ParamByName('USED').AsBoolean then begin
      MessageDlg('ВНИМАНИЕ! Удаление не возможно, т.к. данная запись имеет каскадные ссылки.',mtWarning,[mbOk],0);
      exit;
    end;
  end;
  with DBForm.IBStoredProc do begin
    StoredProcName:='SET_SYSGROUP_DEL';
    ParamByName('UKEY').AsInteger:=DBForm.tSysGroup.FieldByName('UKEY').AsInteger;
    ExecProc;
    DBForm.tSysGroup.Active:=False;
    DBForm.tSysGroup.Active:=True;
  end;
end;

procedure TfrmAccess.smenuDel2Click(Sender: TObject);
begin
  if MessageDlg('УДАЛИТЬ. Вы уверены?', mtConfirmation, [mbYes, mbNo], 0)=mrNo then exit;
  with DBForm.IBStoredProc do begin
    StoredProcName:='GET_CHECK';
    ParamByName('TYPE_UKEY').AsInteger:=2; // пользователь
    ParamByName('UKEY').AsInteger:=DBForm.tSysUser.FieldByName('UKEY').AsInteger;
    ExecProc;
    if ParamByName('USED').AsBoolean then begin
      MessageDlg('ВНИМАНИЕ! Удаление не возможно, т.к. данная запись имеет каскадные ссылки.',mtWarning,[mbOk],0);
      exit;
    end;
  end;
  with DBForm.IBStoredProc do begin
    StoredProcName:='SET_SYSUSER_DEL';
    ParamByName('UKEY').AsInteger:=DBForm.tSysUser.FieldByName('UKEY').AsInteger;
    ExecProc;
    DBForm.tSysUser.Active:=False;
    DBForm.tSysUser.Active:=True;
  end;
end;

procedure TfrmAccess.smenuAdd1Click(Sender: TObject);
var
  DoIt: Boolean;
  s: String;
begin
  with TFrmReferenceChange.Create(nil) do
   try
     Caption:='Добавление';
     Edit1.Text:='';
     Label0.Caption:='Добавить группу';
     ShowModal;
     if Tag=1 then begin
       DoIt:=True;
       s:=Edit1.Text;
     end;
   finally
     Free;
   end;
  if DoIt then begin
    if s<>'' then
      with DBForm.IBStoredProc do begin
        StoredProcName:='SET_SYSGROUP_NEW';
        ParamByName('NAME').AsString:=s;
        ExecProc;
      end;
    DBForm.tSysGroup.Active:=False;
    DBForm.tSysGroup.Active:=True;
    ReloadSysGroup;
  end;
end;

procedure TfrmAccess.smenuEdit1Click(Sender: TObject);
var
  DoIt: Boolean;
  s: String;
begin
  with TFrmReferenceChange.Create(nil) do
   try
     Edit1.Text:=DBForm.tSysGroup.FieldByName('NAME').AsString;
     Label0.Caption:='Изменить группу "'+Edit1.Text+'"';
     ShowModal;
     if Tag=1 then begin
       DoIt:=True;
       s:=Edit1.Text;
     end;
   finally
     Free;
   end;
  if DoIt then begin
    if s<>'' then
      with DBForm.IBStoredProc do begin
        StoredProcName:='SET_SYSGROUP_UPDATE';
        ParamByName('UKEY').AsInteger:=DBForm.tSysGroup.FieldByName('UKEY').AsInteger;
        ParamByName('NAME').AsString:=s;
        ExecProc;
      end;
    DBForm.tSysGroup.Active:=False;
    DBForm.tSysGroup.Active:=True;
    ReloadSysGroup;
  end;
end;

procedure TfrmAccess.tBtnSaveClick(Sender: TObject);
begin
  DBGrid2CellClick(nil);
end;

procedure TfrmAccess.smenuAdd2Click(Sender: TObject);
begin
  GroupBox2.Visible:=True;
  Edit4.Text:='';
  Edit5.Text:='';
  Edit6.Text:='';
  ComboBox2.ClearSelection;
  Edit4.SetFocus;
end;

procedure TfrmAccess.tBtnAddClick(Sender: TObject);
begin
  if (Edit5.Text='') or (Edit6.Text='') or (ComboBox2.Text='') then begin
    MessageDlg('ОШИБКА! Введены не все данные.',mtError,[mbOk],0);
    exit;
  end;
  with DBForm.IBStoredProc do begin
    StoredProcName:='SET_SYSUSER_NEW';
    ParamByName('NAME').AsString:=Edit4.Text;
    ParamByName('LOGIN').AsString:=Edit5.Text;
    ParamByName('PASS').AsString:=Edit6.Text;
    ParamByName('SYSGROUP_NAME').AsString:=ComboBox2.Text;
    ExecProc;
  end;
  DBForm.tSysUser.Active:=False;
  DBForm.tSysUser.Active:=True;
  GroupBox2.Visible:=False;
  chUser:=False;
end;

procedure TfrmAccess.tBtnCancelClick(Sender: TObject);
begin
  GroupBox2.Visible:=False;
end;

end.
