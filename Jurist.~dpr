program Jurist;


uses
  Forms,
  UMain in 'UMain.pas' {frmMain},
  UDBForm in 'UDBForm.pas' {DBForm: TDataModule},
  UAbout in 'UAbout.pas' {frmAbout},
  UJournalEdit in 'UJournalEdit.pas' {frmJournalEdit},
  UJournalReg in 'UJournalReg.pas' {frmJournalReg},
  UData in 'UData.pas',
  UPassword in 'UPassword.pas' {frmPassword},
  USearch in 'USearch.pas' {frmSearch},
  UJournalReport in 'UJournalReport.pas' {frmJournalReport},
  UPreReport in 'UPreReport.pas' {frmPreReport},
  UProcdate in 'UProcdate.pas' {frmProcdate},
  UAccess in 'UAccess.pas' {frmAccess},
  UAgreementReg in 'UAgreementReg.pas' {frmAgreementReg},
  UAgreementEdit in 'UAgreementEdit.pas' {frmAgreementEdit},
  UReferenceChange in 'UReferenceChange.pas' {frmReferenceChange},
  UReference in 'UReference.pas' {frmReference},
  USearchAdr in 'USearchAdr.pas' {frmSearchAdr},
  UStreetSelect in 'UStreetSelect.pas' {frmStreetSelect},
  UAgreementReport in 'UAgreementReport.pas' {frmAgreementReport},
  UJurist in 'UJurist.pas' {frmJurist},
  RefFirms in 'RefFirms.pas' {FormRefFirms};

{$R *.RES}
var
  close_all: Boolean;
begin
  close_all:=False;
  Application.Initialize;
  Application.Title := 'Jurist 0.4.4';
  Application.CreateForm(TDBForm, DBForm);
  with TFrmPassword.Create(nil) do
   try
     ShowModal;
     if Tag<>1 then close_all:=True;
   finally
     Free;
   end;
  if close_all then begin
    DBForm.Free;
    exit;
  end;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmJournalReport, frmJournalReport);
  Application.CreateForm(TfrmAgreementReport, frmAgreementReport);
  Application.Run;
end.
