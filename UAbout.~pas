unit UAbout;

interface

uses
  Windows, Forms, StdCtrls, Controls, Graphics, ExtCtrls, Classes, TB97Ctls,
  OleCtrls, SHDocVw, jpeg;

type
  TfrmAbout = class(TForm)
    PanelAbout: TPanel;
    PanelIcon: TPanel;
    ImageIcon: TImage;
    WebBrowser: TWebBrowser;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    LabelMail: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ToolbarButton971: TToolbarButton97;
    LabelNews: TLabel;
    procedure LabelMailClick(Sender: TObject);
    procedure LabelNewsClick(Sender: TObject);
  end;

var
  frmAbout: TfrmAbout;

implementation

{$R *.DFM}

procedure TfrmAbout.LabelMailClick(Sender: TObject);
begin
//  WinExec(LPCSTR('mailto: peshkov@udav.rupib.donetsk.ua'), SW_SHOWDEFAULT);
//  WinExec(PChar('mailto: peshkov@udav.rupib.donetsk.ua'),SW_SHOWDEFAULT);
  WebBrowser.Navigate('mailto:pñ-software@bk.ru?subject='+
    Label1.Caption+' '+Label2.Caption);
//  ShellExecute(Application.Handle,'open','mailto:towho@mysite.com',nil,nil,0);
end;

procedure TfrmAbout.LabelNewsClick(Sender: TObject);
begin
  WebBrowser.Navigate('news:news.itcom.net.ua/mvk.pc-software');
end;

end.


