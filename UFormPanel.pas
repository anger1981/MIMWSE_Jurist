unit UFormPanel;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ExtCtrls, ComCtrls, UData;
type
  TMainPanel = class;

  TFormPanel = class(TPanel)
  private
    FOwner     : TMainPanel;
    FForm      : TForm;
    FButton    : TSpeedButton;
    FSelected  : boolean;
    FCloseProc : TCloseEvent;
    procedure PnClick(Sender: TObject);
    procedure SbClick(Sender: TObject);
    procedure CMRelease(var Message: TMessage); message CM_RELEASE;
    procedure PnClose(Sender: TObject; var Action: TCloseAction);
  public
    constructor Create(AOwner: TMainPanel; Form: TForm; name: String);
    destructor Destroy;
    procedure SetActive(Active: boolean);
    procedure Release;
  end;

  TMainPanel = class
    FForm      : TForm;
    FPanel     : TPanel;
    FWinList   : TList;
    FActive    : integer;
  public
    constructor Create(Form: TForm; Panel: TPanel);
    destructor Destroy; override;
    function AddForm(Form: TForm; name: String): TFormPanel;
    procedure Activate(Panel: TFormPanel);
    procedure Remove(Panel: TFormPanel);
  end;

implementation

constructor TMainPanel.Create(Form: TForm; Panel: TPanel);
begin
  FWinList:=TList.Create;
  FForm:=Form;
  FPanel:=Panel;
end;

destructor TMainPanel.Destroy;
begin
  FWinList.Clear;
  FWinList.Free;
end;

constructor TFormPanel.Create(AOwner: TMainPanel; Form: TForm; name: String);
begin
  inherited Create(Aowner.FPanel);
  FOwner:=AOwner;
  FSelected:=False;
  Parent:=TWinControl(AOwner.FPanel);
  FForm:=Form;
  if FForm<>nil then begin
    FCloseProc:=Form.OnClose;
    Form.OnClose:=PnClose;
  end;
  Align:=alLeft;
  Width:=140;
  Alignment:=taLeftJustify;
  Caption:=name;
  Hint:=name;
  ShowHint:=False;
  OnClick:=PnClick;
  OnDblClick:=PnClick;
  FButton:=TSpeedButton.Create(self);
  FButton.Parent:=self;
  FButton.Height:=Height-2;
  FButton.Width:=14;
  FButton.Top:=Top+1;
  FButton.Cursor:=crHandPoint;
  FButton.Hint:='Закрыть окно';
  FButton.Caption:='X';
  FButton.Font.Color:=clMaroon;
  FButton.Layout:=blGlyphBottom;
//  FButton.Flat:=True;
  FButton.Left:=Width-FButton.Width-1;
  FButton.OnClick:=SbClick;
end;

procedure TMainPanel.Activate(Panel: TFormPanel);
  var i: integer;
    Pan: TFormPanel;
begin
  for i:=FWinList.Count-1 downto 0 do begin
    Pan:=FWinList.Items[i];
    Pan.SetActive(Panel=Pan);
  end;
end;

function TMainPanel.AddForm(Form: TForm; name: String): TFormPanel;
begin
  Result:=TFormPanel.Create(self,Form,name);
  if name='ЖУРНАЛ ведение' then
    WindowID.JournalEdit.Pointer:=Result;
  if name='Справочник' then
    WindowID.Reference.Pointer:=Result;
  if name='ЖУРНАЛ регистрация' then
    WindowID.JournalReg.Pointer:=Result;
  if name='ДОГОВОР регистрация' then
    WindowID.AgreementEdit.Pointer:=Result;
  if name='ДОГОВОР ведение' then
    WindowID.AgreementReg.Pointer:=Result;
  if name='Календарь' then
    WindowID.Calendar.Pointer:=Result;
  FWinList.Add(Result);
  Activate(Result);
end;

procedure TMainPanel.Remove(Panel: TFormPanel);
var
  i: integer;
  Pan: TFormPanel;
begin
  for i:=FWinList.Count-1 downto 0 do begin
    Pan:=FWinList.Items[i];
    if Pan=Panel then begin
       Panel.Release;
       FWinList.Delete(i);
       exit;
    end;
  end;
end;

destructor TFormPanel.Destroy;
begin
  inherited Destroy;
end;

procedure TFormPanel.Release;
begin
  PostMessage(Handle, CM_RELEASE, 0, 0);
end;

procedure TFormPanel.CMRelease;
begin
  free;
end;

procedure TFormPanel.SetActive(Active: boolean);
begin
  FSelected:=Active;
  if Active then begin
    if FForm<>nil then FForm.Show;
    BevelOuter:=bvLowered;
   end
  else begin
    BevelOuter:=bvRaised;
  end;
end;

procedure TFormPanel.PnClick(Sender: TObject);
begin
  FOwner.Activate(self);
end;

procedure TFormPanel.SbClick(Sender: TObject);
begin
  if FForm<>nil then FForm.Close;
end;

procedure TFormPanel.PnClose(Sender: TObject; var Action: TCloseAction);
begin
  FCloseProc(Sender,Action);
  if Action=caFree then FOwner.Remove(self);
end;


end.
