unit UPassword;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, TB97Ctls, Buttons, ComCtrls, IniFiles, DB,
  IBQuery, Registry, IBDatabase, jpeg;

type
  TfrmPassword = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    bBtnClose: TBitBtn;
    bBtnOk: TBitBtn;
    Label9: TLabel;
    Timer: TTimer;
    Animate1: TAnimate;
    Label3: TLabel;
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    Label10: TLabel;
    Label11: TLabel;
    Timer2: TTimer;
    procedure TimerTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bBtnOkClick(Sender: TObject);
    procedure OnExit(Sender: TObject);
    procedure GetName;
    procedure bBtnCloseClick(Sender: TObject);
    procedure OnEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPassword: TfrmPassword;
  i: Integer;
  str: String;
const
  st='Copyright © 1997-2003 PC-Software                                            ';

implementation

{$R *.dfm}

uses UDBForm, UData;

procedure RunStr(st:string; var str:string; var i_n:integer);
var
  i,i_n2: integer;
  s: string;
begin
  s:='';
  str:='';
  if i_n>0 then begin
    s:=copy(st,1,i_n);
    for i:=1 to length(st)-i_n do str:=str+st[i+i_n];
    str:=str+s;
  end else begin
    i_n2:=-i_n;
    str:=copy(st,length(st)-i_n2,i_n2);
    for i:=1 to length(st)-i_n2 do str:=str+st[i];
  end;
  if i_n=length(st) then i_n:=1;
  if i_n=-length(st) then i_n:=-1;
end;

procedure TfrmPassword.TimerTimer(Sender: TObject);
begin
  Label7.Caption:=TimeToStr(Now);
end;

procedure TfrmPassword.bBtnOkClick(Sender: TObject);
var
  enabled, access: Boolean;
  i: Integer;
begin
  Screen.Cursor:=crSQLWait;
  User_Login:=Edit1.Text;
  with DBForm.IBStoredProc do begin
    StoredProcName:='GET_VERSION';
    ExecProc;
    Version_Base:=ParamByName('NUMBER').AsString;
  end;
  with DBForm.IBStoredProc do begin
    StoredProcName:='GET_ACCESS';
    ParamByName('LOGIN').AsString:=User_Login;
    ParamByName('PASS').AsString:=Edit2.Text;
    ExecProc;
    access:=ParamByName('ACCESS').AsBoolean;
    enabled:=ParamByName('ENABLED').AsBoolean;
    User_Permiting_Count:=ParamByName('COUNT_KIND').AsInteger;
    SetLength(User_Permiting, User_Permiting_Count);
    for i:=0 to User_Permiting_Count-1 do
      User_Permiting[i]:= ParamByName('KIND'+IntToStr(i)).AsBoolean;
    User_UKey:=ParamByName('USER_UKEY').AsInteger;
  end;

  if access and enabled then begin
    Label3.Visible:=True;
    Animate1.Active:=True;
    Animate1.Visible:=True;
    Application.ProcessMessages;
    DBForm.IBDatabase.Close;
    DBForm.IBDatabase.Open;
    // выход
    Tag:=1;
    Close;
  end else begin
    if not enabled then MessageDlg('ВНИМАНИЕ! Пользователь не активен.',mtWarning,[mbOk],0);
    Edit1.SetFocus;
    Label8.Caption:='';
  end;
  Screen.Cursor:=crDefault;
end;

procedure TfrmPassword.bBtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPassword.GetName;
begin
  User_Login:=Edit1.Text;
  with DBForm.IBStoredProc do begin
    StoredProcName:='GET_NAME';
    ParamByName('LOGIN').AsString:=User_Login;
    ExecProc;
    Label8.Caption:=ParamByName('NAME').AsString;
    if Label8.Caption='' then Label8.Caption:='не зарегистрирован';
  end;
end;

procedure TfrmPassword.OnEnter(Sender: TObject);
begin
  if (Sender is TEdit) then
    case (Sender as TEdit).Tag of
      1: Label1.Transparent:=False;
      2: Label2.Transparent:=False;
    end;
end;

procedure TfrmPassword.OnExit(Sender: TObject);
begin
  if (Sender is TEdit) then
    case (Sender as TEdit).Tag of
      1: begin
        Label1.Transparent:=True;
        GetName;
      end;
      2: Label2.Transparent:=True;
    end;
end;

procedure TfrmPassword.FormShow(Sender: TObject);
begin
  Label8.Caption:='';
  Label6.Caption:=DateToStr(Now);
  Label7.Caption:=TimeToStr(Now);
  if User_Login<>'' then begin
    Edit1.Text:=User_Login;
    GetName;
    Edit2.SetFocus;
  end;
  DBForm.IBDatabase.Connected:=True;
end;

procedure TfrmPassword.FormCreate(Sender: TObject);
begin
  try
    DBForm.IBDatabase.Connected:=False;
    Reg:=TRegistry.Create;
    Reg.Rootkey:=HKEY_CURRENT_USER;
    Reg.OpenKey(MyKey1,false);
    DatabaseName:=Reg.ReadString('DataBasePath');
    DBForm.IBDatabase.DatabaseName:=DatabaseName;
    DBForm.IBDatabase.SQLDialect:=Reg.ReadInteger('SQLDialect');
    User_Login:=Reg.ReadString('LastUser');
    Reg.CloseKey;
    Reg.Destroy;
  except
    ShowMessage('ОШИБКА! Не обнаружен ''ALIAS'' для "Каталога".');
    halt;
  end;
end;

procedure TfrmPassword.Timer2Timer(Sender: TObject);
begin
  inc(i);
  RunStr(st,str,i);
  label11.Caption:=str;
end;

end.
