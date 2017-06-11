
unit UDBForm;

interface

uses
  Forms, Db, DBTables, Classes, ImgList, Controls, IBCustomDataSet,
  IBDatabase, IBTable, IBQuery, IBStoredProc, dxExEdtr, dxCntner, RefFirms,
  Registry;

type
  TDBForm = class(TDataModule)
    ImageList: TImageList;
    IBDatabase: TIBDatabase;
    IBTransaction: TIBTransaction;
    dsJurist: TDataSource;
    IBStoredProc: TIBStoredProc;
    IBStoredProcNAME: TIBStringField;
    dsAbonent: TDataSource;
    qAbonent: TIBQuery;
    qJurist: TIBQuery;
    dsReference: TDataSource;
    qReference: TIBQuery;
    tReport: TIBTable;
    tReportUKEY: TIntegerField;
    tReportACCOUNT: TIntegerField;
    tReportREG_NUMBER: TIBStringField;
    tReportREG_DATE: TDateField;
    tReportREG_DEBT: TIBBCDField;
    tReportFIO_ALL: TIBStringField;
    tReportSUIT_DEBT: TIBBCDField;
    tReportDATE_FROM: TDateField;
    tReportDATE_TILL: TDateField;
    tReportSUMA: TIBBCDField;
    tReportTO_OGIS: TIntegerField;
    tReportEXECUTIVE: TIBStringField;
    tReportOPEN_OGIS: TDateField;
    tReportCLOSE_OGIS: TDateField;
    tReportDESCRIPTION: TIBStringField;
    tReportLOCKED: TIntegerField;
    tReportLAST_USER: TSmallintField;
    tReportLAST_DATE: TDateField;
    tReportLAST_TIME: TTimeField;
    tReportLAW_TELL: TSmallintField;
    tReportVERDICT_OGIS: TSmallintField;
    dsDistrict: TDataSource;
    dsDepartment: TDataSource;
    tDistrict: TIBTable;
    tDepartment: TIBTable;
    tReportCALC_CURRENT_DEBT: TIBBCDField;
    tReportCALC_ADDRESS: TIBStringField;
    tReportCALC_REGION: TSmallintField;
    tReportCALC_DELTA: TIBBCDField;
    tReportLAWTELL_Lookup: TStringField;
    tReportVERDICTOGIS_Lookup: TStringField;
    tRefBool: TIBTable;
    tReportTOOGIS_Lookup: TStringField;
    tSysAccess: TIBTable;
    tSysAccessSYSGROUP: TSmallintField;
    tSysAccessRESOURCE: TSmallintField;
    tSysAccessKIND: TIntegerField;
    tSysGroup: TIBTable;
    tSysGroupUKEY: TSmallintField;
    tSysGroupNAME: TIBStringField;
    tSysUser: TIBTable;
    tSysUserUKEY: TSmallintField;
    tSysUserENABLED: TIntegerField;
    tSysUserNAME: TIBStringField;
    tSysUserLOGIN: TIBStringField;
    tSysUserPASS: TIBStringField;
    tSysUserSYSGROUP_UKEY: TSmallintField;
    tSysAccessSYSGROUP_Lookup: TStringField;
    tSysResource: TIBTable;
    tSysResourceUKEY: TSmallintField;
    tSysResourceNAME: TIBStringField;
    tSysAccessRESOURCE_Lookup: TStringField;
    dsSysGroup: TDataSource;
    dsSysAccess: TDataSource;
    dsSysResource: TDataSource;
    dsSysUser: TDataSource;
    tSysUserSYSGROUP_Lookup: TStringField;
    tReference: TIBTable;
    tReferenceUKEY: TSmallintField;
    tReferenceKIND: TIBStringField;
    tReferenceNAME: TIBStringField;
    qAgreement: TIBQuery;
    dsAgreement: TDataSource;
    tReportCALC_SUMA: TIBBCDField;
    tReportCALC_TURNKT: TIBBCDField;
    tReportCALC_TOTALSUMM: TIBBCDField;
    tReportCALC_DELTA1: TIBBCDField;
    tReferencePARENT: TSmallintField;
    dxEditStyleController1: TdxEditStyleController;
    dxCheckEditStyleController1: TdxCheckEditStyleController;
    procedure qJuristAfterPost(DataSet: TDataSet);
    procedure qAgreementAfterPost(DataSet: TDataSet);
    procedure qJuristVERDICT_OGISChange(Sender: TField);
    procedure qJuristBeforeOpen(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DBForm: TDBForm;

implementation

Uses
  UJournalEdit;

{$R *.DFM}

procedure TDBForm.qJuristAfterPost(DataSet: TDataSet);
begin
  // Kirk
  // qJurist.Transaction.CommitRetaining;
end;

procedure TDBForm.qAgreementAfterPost(DataSet: TDataSet);
begin
  // Kirk
  // qAgreement.Transaction.CommitRetaining;
end;

procedure TDBForm.qJuristVERDICT_OGISChange(Sender: TField);
Var
  VerdictOGIS: Variant;
begin
  // Kirk
  VerdictOGIS:=Sender.Value;
  frmJournalEdit.CheckJournalDetailVisible(VerdictOGIS);
  // Kirk
end;

procedure TDBForm.qJuristBeforeOpen(DataSet: TDataSet);
Var
  N: Integer;
begin
  // Kirk
  N:=1;
  // Kirk
end;

procedure TDBForm.DataModuleCreate(Sender: TObject);
Var
  Reg: TRegistry;
  S: String;
begin
  Reg:=TRegistry.Create;

  // Reg.RootKey:=H
  Reg.OpenKey('Software\Gradient\Gde\Aliases\Gradient_abonent',False);
  S:=Reg.ReadString('DataBasePath');
  Reg.Free;

  IBDatabase.Connected:=False;
  IBDatabase.DatabaseName:=S;
  IBDatabase.Connected:=True;

  FormRefFirms:=TFormRefFirms.Create(Self);
end;

end.
