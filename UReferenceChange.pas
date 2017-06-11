unit UReferenceChange;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, TB97Ctls;

type
  TfrmReferenceChange = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Edit1: TEdit;
    Label0: TLabel;
    bBtnOk: TBitBtn;
    bBtnCancel: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bBtnCancelClick(Sender: TObject);
    procedure bBtnOkClick(Sender: TObject);
    procedure OnEnter(Sender: TObject);
    procedure OnExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReferenceChange: TfrmReferenceChange;

implementation

{$R *.DFM}

uses UDBForm;

procedure TfrmReferenceChange.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TfrmReferenceChange.FormShow(Sender: TObject);
begin
  Edit1.SetFocus;
end;

procedure TfrmReferenceChange.bBtnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmReferenceChange.bBtnOkClick(Sender: TObject);
begin
  Tag:=1;
  Close;
end;

procedure TfrmReferenceChange.OnEnter(Sender: TObject);
begin
  if (Sender is TEdit) then
    Label1.Transparent:=False;
end;

procedure TfrmReferenceChange.OnExit(Sender: TObject);
begin
  if (Sender is TEdit) then
    Label1.Transparent:=True;
end;

end.
