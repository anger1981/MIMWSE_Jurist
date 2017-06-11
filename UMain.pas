unit UMain;

interface

uses
  Forms, DBTables, Menus, ComCtrls, Controls, ExtCtrls, Classes, ToolWin,
  Dialogs, SysUtils, TB97Tlbr, TB97Ctls, TB97, UFormPanel, DB, Buttons,
  IniFiles, IBQuery, IBTable, IBStoredProc, Registry, Windows, RefFirms, Variants;

type
  TfrmMain = class(TForm)
    tbJurist: TToolbar97;
    DockTop: TDock97;
    ToolbarButton977: TToolbarButton97;
    ToolbarButton9710: TToolbarButton97;
    MainMenu: TMainMenu;
    mmenuOperation: TMenuItem;
    N2: TMenuItem;
    menuExit: TMenuItem;
    mmenuReference: TMenuItem;
    menuEdit: TMenuItem;
    menuReg: TMenuItem;
    menuJournal: TMenuItem;
    menuReport: TMenuItem;
    mmenuHelp: TMenuItem;
    menuHelp: TMenuItem;
    N4: TMenuItem;
    menuAbout: TMenuItem;
    ToolbarSep971: TToolbarSep97;
    menuFont: TMenuItem;
    menuFont1: TMenuItem;
    menuFont3: TMenuItem;
    menuFont2: TMenuItem;
    menuJRep2: TMenuItem;
    menuJRep0: TMenuItem;
    menuProcdate: TMenuItem;
    menuAccess: TMenuItem;
    mmenuJurist: TMenuItem;
    mmenuAgreement: TMenuItem;
    tbAgreement: TToolbar97;
    ToolbarSep972: TToolbarSep97;
    tbOperation: TToolbar97;
    tBtnExit: TToolbarButton97;
    tBtnJRep5: TToolbarButton97;
    tBtnJRep2: TToolbarButton97;
    tBtnJRep0: TToolbarButton97;
    ToolbarButton974: TToolbarButton97;
    ToolbarButton975: TToolbarButton97;
    menuAgreementReg: TMenuItem;
    menuToolbar: TMenuItem;
    menuToolbarJurist: TMenuItem;
    menuToolbarAgreement: TMenuItem;
    menuToolbarOperation: TMenuItem;
    menuAgreementEdit: TMenuItem;
    menuAgreementJournal: TMenuItem;
    N6: TMenuItem;
    menuJRep3: TMenuItem;
    menuJRep1: TMenuItem;
    tBtnJRep1: TToolbarButton97;
    tBtnJRep3: TToolbarButton97;
    tBtnJRep4: TToolbarButton97;
    menuReference: TMenuItem;
    DockBottom: TDock97;
    tBtnARep1: TToolbarButton97;
    ToolbarWindows: TToolbar97;
    Panel1: TPanel;
    menuARep0: TMenuItem;
    menuARep2: TMenuItem;
    tBtnARep0: TToolbarButton97;
    tBtnARep2: TToolbarButton97;
    menuARep1: TMenuItem;
    N1: TMenuItem;
    procedure menuAboutClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure menuExitClick(Sender: TObject);
    procedure menuEditClick(Sender: TObject);
    procedure menuRegClick(Sender: TObject);
    procedure ToolbarButton977Click(Sender: TObject);
    procedure ToolbarButton9710Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure menuJRep2Click(Sender: TObject);
    procedure menuJRep0Click(Sender: TObject);
    procedure menuProcdateClick(Sender: TObject);
    procedure menuAccessClick(Sender: TObject);
    procedure menuAgreementRegClick(Sender: TObject);
    procedure ToolbarButton974Click(Sender: TObject);
    procedure menuToolbarClick(Sender: TObject);
    procedure menuAgreementEditClick(Sender: TObject);
    procedure ToolbarButton975Click(Sender: TObject);
    procedure menuJRep3Click(Sender: TObject);
    procedure menuJRep1Click(Sender: TObject);
    procedure menuReferenceClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ToolbarWindowsDockChanged(Sender: TObject);
    procedure menuARep0Click(Sender: TObject);
    procedure menuARep2Click(Sender: TObject);
    procedure menuJRep5Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure tBtnJRep5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;
  FrmPan: TMainPanel;

implementation

{$R *.DFM}

uses UDBForm, UAbout, UJournalEdit, UJournalReg, UData, UProcdate, UAccess,
  UJournalReport, UAgreementReg, UAgreementEdit, UReference, UAgreementReport;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  Caption:=Caption+' /'+User_Login+' /'+Version_Base;
  try
    Reg:=TRegistry.Create;
    Reg.Rootkey:=HKEY_CURRENT_USER;
    Reg.OpenKey(MyKey2, false);
    ToolbarPos:=Reg.ReadString('ToolbarPos');
    AsOutlook:=Reg.ReadBool('AsOutlook');
    menuToolBarJurist.Checked:=Reg.ReadBool('ToolBarJurist');
    menuToolBarAgreement.Checked:=Reg.ReadBool('ToolBarAgreement');
    menuToolBarOperation.Checked:=Reg.ReadBool('ToolBarOperation');
    Reg.CloseKey;
    Reg.Destroy;
  except
  end;
  // Установка позиции "Панели окон"
  if ToolbarPos=DockBottom.Name then
    ToolbarWindows.DockedTo:=DockBottom;
  if ToolbarPos=DockTop.Name then
    ToolbarWindows.DockedTo:=DockTop;
  ToolbarWindows.DockRow:=1;
  // Создание "Панели окон"
  FrmPan:=TMainPanel.Create(frmMain,Panel1);
  // Включение "Остальные панели"
  tbJurist.DockPos:=0;
  tbAgreement.DockPos:=0;
  tbOperation.DockPos:=0;
  tbJurist.Visible:=menuToolBarJurist.Checked;
  tbAgreement.Visible:=menuToolBarAgreement.Checked;
  tbOperation.Visible:=menuToolBarOperation.Checked;
end;

procedure TfrmMain.menuAboutClick(Sender: TObject);
begin
  with TFrmAbout.Create(nil) do
   try
     ShowModal;
   finally
     Free;
   end;
end;

procedure TfrmMain.menuExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMain.menuEditClick(Sender: TObject);
var
  Frm: TFrmJournalEdit;
begin
  if not WindowID.JournalEdit.Open then begin
    Frm:=TFrmJournalEdit.Create(self);
    Frm.Top:=5;
    FrmPan.AddForm(Frm,'ЖУРНАЛ ведение');
    WindowID.JournalEdit.Open:=True;
  end else
    FrmPan.Activate(WindowID.JournalEdit.Pointer);
end;

procedure TfrmMain.menuRegClick(Sender: TObject);
var
  Frm: TFrmJournalReg;
begin
  if not WindowID.JournalReg.Open then begin
    Frm:=TFrmJournalReg.Create(self);
    Frm.Top:=5;
    FrmPan.AddForm(Frm,'ЖУРНАЛ регистрация');
    WindowID.JournalReg.Open:=True;
  end else
    FrmPan.Activate(WindowID.JournalReg.Pointer);
end;

procedure TfrmMain.ToolbarButton977Click(Sender: TObject);
begin
  menuEditClick(nil);
end;

procedure TfrmMain.ToolbarButton9710Click(Sender: TObject);
begin
  menuRegClick(nil);
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    Reg:=TRegistry.Create;
    Reg.Rootkey:=HKEY_CURRENT_USER;
    Reg.OpenKey(MyKey1,true);
    Reg.WriteString('LastUser', User_Login);
    Reg.CloseKey;
    Reg.OpenKey(MyKey2,true);
    Reg.WriteString('ToolbarPos', ToolbarPos);
    Reg.WriteBool('AsOutlook', AsOutlook);
    Reg.WriteBool('ToolBarJurist', menuToolBarJurist.Checked);
    Reg.WriteBool('ToolBarAgreement', menuToolBarAgreement.Checked);
    Reg.WriteBool('ToolBarOperation', menuToolBarOperation.Checked);
    Reg.CloseKey;
    Reg.Destroy;
  except
    ShowMessage('ОШИБКА! Не удалась запись настроек для ''ALIAS''-а "Каталог".');
  end;
  DBForm.IBDatabase.Connected:=False;
end;

procedure TfrmMain.menuJRep2Click(Sender: TObject);
var
  reg_debt, suit_debt, current_debt, delta: Real;
begin
  if not ReadyToReport then Exit;
  reg_debt:=0;
  suit_debt:=0;
  current_debt:=0;
  delta:=0;
  RepParam:=PreReport;
  if not RepParam.Result then exit;
  Screen.Cursor:=crSQLWait;
  with DBForm.qAbonent do begin
    SQL.Clear;
    Filter:=' law_tell0=1 and reg_date>='''+DateToStr(RepParam.DateIn)+
      ''' and reg_date<='''+DateToStr(RepParam.DateOut)+
      ''''+RepParam.RegionStr;
    SQL.Add('select * from REP_J_2 where'+filter);
    Open;
    while not eof do begin
      reg_debt:=reg_debt+FieldByName('reg_debt').AsFloat;
      suit_debt:=suit_debt+FieldByName('suit_debt').AsFloat;
      current_debt:=current_debt+FieldByName('saldoout').AsFloat;
      delta:=delta+FieldByName('calc_delta').AsFloat;
      next;
    end;
    frmJournalReport.QRLabelDateFrom.Caption:=DateToStr(RepParam.DateIn);
    frmJournalReport.QRLabelDateTill.Caption:=DateToStr(RepParam.DateOut);
    frmJournalReport.QRLabelRegion.Caption:=RepParam.RegionName;
    frmJournalReport.QRLabel11.Caption:=FloatToStr(reg_debt);
    frmJournalReport.QRLabel12.Caption:=FloatToStr(suit_debt);
    frmJournalReport.QRLabel13.Caption:=FloatToStr(current_debt);
    frmJournalReport.QRLabel14.Caption:=CurrToStr(delta);
  end;
  Screen.Cursor:=crDefault;
  frmJournalReport.QuickRep2.Preview;
  DBForm.qAbonent.Close;
end;

procedure TfrmMain.menuJRep0Click(Sender: TObject);
begin
  if not ReadyToReport then Exit;
  RepParam:=PreReport;
  if not RepParam.Result then exit;
  Screen.Cursor:=crSQLWait;
  with DBForm.qAbonent do begin
    SQL.Clear;
    Filter:=' reg_date>='''+DateToStr(RepParam.DateIn)+
      ''' and reg_date<='''+DateToStr(RepParam.DateOut)+
      ''''+RepParam.RegionStr;
    SQL.Add('select * from REP_J_0 where'+Filter);
    Open;
    frmJournalReport.QRLabel20.Caption:=DateToStr(RepParam.DateIn);
    frmJournalReport.QRLabel22.Caption:=DateToStr(RepParam.DateOut);
    frmJournalReport.QRLabel18.Caption:=RepParam.RegionName;
  end;
  Screen.Cursor:=crDefault;
  frmJournalReport.QuickRep0.Preview;
  DBForm.qAbonent.Close;
end;

procedure TfrmMain.menuProcdateClick(Sender: TObject);
begin
  if not User_Permiting[5] then begin
    NoPermition;
    exit;
  end;
  if not ReadyToReport then Exit;
  with TFrmProcdate.Create(nil) do
   try
     with DBForm.IBStoredProc do begin
       StoredProcName:='GET_SYSPROCDATE_LAST';
       Edit1.Text:=ParamByName('PROCDATE').AsString;
       ExecProc;
     end;
     ShowModal;
     if Tag=1 then
      with DBForm.IBStoredProc do begin
        StoredProcName:='SET_SYSPROCDATE_NEW';
        ExecProc;
      end;
   finally
     Free;
   end;
end;

procedure TfrmMain.menuAccessClick(Sender: TObject);
begin
  if not User_Permiting[6] then begin
    NoPermition;
    exit;
  end;
  if not ReadyToReport then Exit;
  with TFrmAccess.Create(nil) do
   try
     ShowModal;
   finally
     Free;
   end;
end;

procedure TfrmMain.menuAgreementRegClick(Sender: TObject);
var
  Frm: TFrmAgreementReg;
begin
  if not WindowID.AgreementReg.Open then begin
    Frm:=TFrmAgreementReg.Create(self);
    Frm.Top:=5;
    FrmPan.AddForm(Frm,'ДОГОВОР регистрация');
    WindowID.AgreementReg.Open:=True;
  end else
    FrmPan.Activate(WindowID.AgreementReg.Pointer);
end;

procedure TfrmMain.ToolbarButton974Click(Sender: TObject);
begin
  menuAgreementRegClick(nil);
end;

procedure TfrmMain.menuToolbarClick(Sender: TObject);
begin
  if (Sender as TMenuItem).Checked then begin
    if (Sender as TMenuItem).Tag=1 then tbJurist.Visible:=False;
    if (Sender as TMenuItem).Tag=2 then tbAgreement.Visible:=False;
    if (Sender as TMenuItem).Tag=3 then tbOperation.Visible:=False;
    (Sender as TMenuItem).Checked:=False;
  end else begin
    if (Sender as TMenuItem).Tag=1 then tbJurist.Visible:=True;
    if (Sender as TMenuItem).Tag=2 then tbAgreement.Visible:=True;
    if (Sender as TMenuItem).Tag=3 then tbOperation.Visible:=True;
    (Sender as TMenuItem).Checked:=True;
  end;
end;

procedure TfrmMain.menuAgreementEditClick(Sender: TObject);
var
  Frm: TfrmAgreementEdit;
begin
  if not WindowID.AgreementEdit.Open then begin
    Frm:=TfrmAgreementEdit.Create(self);
    Frm.Top:=5;
    FrmPan.AddForm(Frm,'ДОГОВОР ведение');
    WindowID.AgreementEdit.Open:=True;
  end else
    FrmPan.Activate(WindowID.AgreementEdit.Pointer);
end;

procedure TfrmMain.ToolbarButton975Click(Sender: TObject);
begin
  menuAgreementEditClick(nil);
end;

procedure TfrmMain.menuJRep3Click(Sender: TObject);
var
  reg_debt, calc_saldoout, calc_totalsumm, calc_turnkt: Real;
begin
  if not ReadyToReport then Exit;
  reg_debt:=0;
  calc_totalsumm:=0;
  calc_turnkt:=0;
  calc_saldoout:=0;
  RepParam:=PreReport;
  if not RepParam.Result then exit;
  Screen.Cursor:=crSQLWait;
  with DBForm.qAbonent do begin
    SQL.Clear;
    SQL.Add('select * from REP_J_3('''+DateToStr(RepParam.DateIn)+''','''+
      DateToStr(RepParam.DateOut)+''','+IntToStr(RepParam.Region)+')');
    Open;
    while not eof do begin
      reg_debt:=reg_debt+FieldByName('reg_debt').AsFloat;
      calc_totalsumm:=calc_totalsumm+FieldByName('totalsumm').AsFloat;
      calc_turnkt:=calc_turnkt+FieldByName('turnkt').AsFloat;
      calc_saldoout:=calc_saldoout+FieldByName('saldoout').AsFloat;
      Next;
    end;
    frmJournalReport.QRLabel80.Caption:=RepParam.RegionName;
    frmJournalReport.QRLabel82.Caption:=DateToStr(RepParam.DateIn);
    frmJournalReport.QRLabel84.Caption:=DateToStr(RepParam.DateOut);
    frmJournalReport.QRLabel87.Caption:=FloatToStr(reg_debt);
    frmJournalReport.QRLabel88.Caption:=FloatToStr(calc_totalsumm);
    frmJournalReport.QRLabel89.Caption:=FloatToStr(calc_turnkt);
    frmJournalReport.QRLabel90.Caption:=FloatToStr(calc_saldoout);
  end;
  Screen.Cursor:=crDefault;
  frmJournalReport.QuickRep3.Preview;
  DBForm.qAbonent.Close;
end;

procedure TfrmMain.menuJRep1Click(Sender: TObject);
var
  reg_debt: Real;
begin
  if not ReadyToReport then Exit;
  reg_debt:=0;
  RepParam:=PreReport;
  if not RepParam.Result then exit;
  Screen.Cursor:=crSQLWait;
  with DBForm.qAbonent do begin
    SQL.Clear;
    Filter:=' reg_date>='''+DateToStr(RepParam.DateIn)+
      ''' and reg_date<='''+DateToStr(RepParam.DateOut)+
      ''''+RepParam.RegionStr;
    SQL.Add('select * from REP_J_1 where'+Filter);
    Open;
    while not eof do begin
      reg_debt:=reg_debt+FieldValues['reg_debt'];
      Next;
    end;
    frmJournalReport.QRLabel101.Caption:=DateToStr(RepParam.DateIn);
    frmJournalReport.QRLabel103.Caption:=DateToStr(RepParam.DateOut);
    frmJournalReport.QRLabel99.Caption:=RepParam.RegionName;
    frmJournalReport.QRLabel106.Caption:=FloatToStr(reg_debt);
  end;
  Screen.Cursor:=crDefault;
  frmJournalReport.QuickRep1.Preview;
  DBForm.qAbonent.Close;
end;

procedure TfrmMain.menuReferenceClick(Sender: TObject);
var
  Frm: TFrmReference;
begin
  if not User_Permiting[11] then begin
    NoPermition;
    exit;
  end;
  if not WindowID.Reference.Open then begin
    Frm:=TFrmReference.Create(self);
    Frm.Top:=5;
    FrmPan.AddForm(Frm,'Справочник');
    WindowID.Reference.Open:=True;
  end else
    FrmPan.Activate(WindowID.Reference.Pointer);
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  if (Screen.Width<800) or (Screen.Height<600) then begin
    MessageDlg('ОШИБКА! Разрешение экрана не должно быть меньше 800х600.',mtError,[mbOk],0);
    Close;
  end;
  Panel1.Width:=Width-21;
end;

procedure TfrmMain.FormResize(Sender: TObject);
begin
  Panel1.Width:=Width-21;
end;

procedure TfrmMain.ToolbarWindowsDockChanged(Sender: TObject);
begin
  ToolbarPos:=ToolbarWindows.DockedTo.Name;
end;

procedure TfrmMain.menuARep0Click(Sender: TObject);
begin
  if not ReadyToReport then Exit;
  RepParam:=PreReport;
  if not RepParam.Result then exit;
  Screen.Cursor:=crSQLWait;
  with DBForm.qAgreement do begin
    SQL.Clear;
    Filter:=' reg_date>='''+DateToStr(RepParam.DateIn)+
      ''' and reg_date<='''+DateToStr(RepParam.DateOut)+
      ''''+RepParam.RegionStr;
    SQL.Add('select * from REP_A_0 where'+Filter);
    Open;
    frmAgreementReport.QRLabel20.Caption:=DateToStr(RepParam.DateIn);
    frmAgreementReport.QRLabel22.Caption:=DateToStr(RepParam.DateOut);
    frmAgreementReport.QRLabel18.Caption:=RepParam.RegionName;
  end;
  Screen.Cursor:=crDefault;
  frmAgreementReport.QuickRep0.Preview;
  DBForm.qAgreement.Close;
end;

procedure TfrmMain.menuARep2Click(Sender: TObject);
var
  debt, s_totalsumm, s_turnkt, delta, saldoout: Real;
begin
  if not ReadyToReport then Exit;
  debt:=0; s_totalsumm:=0; s_turnkt:=0; delta:=0; saldoout:=0;
  RepParam:=PreReport;
  if not RepParam.Result then exit;
  Screen.Cursor:=crSQLWait;
  with DBForm.qAgreement do begin
    SQL.Clear;
    Filter:=' reg_date>='''+DateToStr(RepParam.DateIn)+
      ''' and reg_date<='''+DateToStr(RepParam.DateOut)+
      ''''+RepParam.RegionStr;
    SQL.Add('select * from REP_A_1_F where'+Filter);
    Open;

    while not eof do begin
      debt:=debt+FieldByName('debt').AsFloat;
      s_totalsumm:=s_totalsumm+FieldByName('s_totalsumm').AsFloat;
      s_turnkt:=s_turnkt+FieldByName('s_turnkt').AsFloat;
      delta:=delta+FieldByName('delta').AsFloat;
      saldoout:=saldoout+FieldByName('saldoout').AsFloat;
      Next;
    end;
    frmAgreementReport.QRLabel10.Caption:=FloatToStr(debt);
    frmAgreementReport.QRLabel11.Caption:=FloatToStr(s_totalsumm);
    frmAgreementReport.QRLabel39.Caption:=FloatToStr(s_turnkt);
    frmAgreementReport.QRLabel40.Caption:=FloatToStr(delta);
    frmAgreementReport.QRLabel41.Caption:=FloatToStr(saldoout);
    frmAgreementReport.QRLabel12.Caption:=RepParam.RegionName;
    frmAgreementReport.QRLabel13.Caption:=DateToStr(RepParam.DateIn);
    frmAgreementReport.QRLabel14.Caption:=DateToStr(RepParam.DateOut);
  end;
  Screen.Cursor:=crDefault;
  frmAgreementReport.QuickRep2.Preview;
  DBForm.qAgreement.Close;
end;

procedure TfrmMain.menuJRep5Click(Sender: TObject);
begin
  if not ReadyToReport then Exit;
  RepParam:=PreReport;
  if not RepParam.Result then exit;
  Screen.Cursor:=crSQLWait;             

  frmJournalReport.ZMVK_JURIST_5.Close;
  frmJournalReport.ZMVK_JURIST_5.ParamByName('DATEFROM').AsDate:=RepParam.DateIn;
  frmJournalReport.ZMVK_JURIST_5.ParamByName('DATETILL').AsDate:=RepParam.DateOut;
  frmJournalReport.ZMVK_JURIST_5.ParamByName('DEPARTMENT').AsInteger:=RepParam.Region;
  frmJournalReport.ZMVK_JURIST_5.ParamByName('DISTRICT').Value:=NULL;
  frmJournalReport.ZMVK_JURIST_5.Open;
  Screen.Cursor:=crDefault;
  frmJournalReport.QRLabel105.Caption:=RepParam.RegionName;

  frmJournalReport.QRLabel120.Caption:='за период с '+FormatDateTime('dd.mm.yyyy', RepParam.DateIn)+' по '+
                                                      FormatDateTime('dd.mm.yyyy', RepParam.DateOut);
  frmJournalReport.QuickRep4.Preview;
end;

procedure TfrmMain.N1Click(Sender: TObject);
begin
  FormRefFirms.ShowModal(True);
end;

procedure TfrmMain.tBtnJRep5Click(Sender: TObject);
begin
  menuJRep5Click(Sender);
end;

end.

