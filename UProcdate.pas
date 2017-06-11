unit UProcdate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TB97Ctls;

type
  TfrmProcdate = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    ToolbarButton971: TToolbarButton97;
    procedure ToolbarButton971Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProcdate: TfrmProcdate;

implementation

{$R *.dfm}

uses UDBForm, UData;

procedure TfrmProcdate.ToolbarButton971Click(Sender: TObject);
begin
  if MessageDlg('ПЕРЕЙТИ. Вы уверены?', mtConfirmation, [mbYes, mbNo], 0)=mrYes then begin
    Tag:=1;
    Close;
  end;
end;

end.
