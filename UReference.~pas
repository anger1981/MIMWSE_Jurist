unit UReference;

interface

uses
  Forms, Mask, ExtCtrls, DBGrids, DBCtrls, TB97, TB97Tlbr, ComCtrls, StdCtrls,
  Controls, Grids, Classes, Spin, DB, TB97Ctls, Dialogs, dxTL, dxDBCtrl,
  dxCntner, dxDBTL, Menus, dxExEdtr, dxEdLib, Buttons;

type
  TfrmReference = class(TForm)
    dxDBTreeList1: TdxDBTreeList;
    PopupMenu1: TPopupMenu;
    hgjng1: TMenuItem;
    dxDBTreeList1UKEY: TdxDBTreeListMaskColumn;
    dxDBTreeList1KIND: TdxDBTreeListMaskColumn;
    dxDBTreeList1NAME: TdxDBTreeListMaskColumn;
    dxDBTreeList1PARENT: TdxDBTreeListMaskColumn;
    Dock971: TDock97;
    Toolbar971: TToolbar97;
    tBtnDel: TToolbarButton97;
    tBtnNew: TToolbarButton97;
    tBtnEdit: TToolbarButton97;
    ToolbarSep971: TToolbarSep97;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    dxCheckEdit1: TdxCheckEdit;
    ToolbarSep972: TToolbarSep97;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxCheckEdit1Click(Sender: TObject);
    procedure tBtnNewClick(Sender: TObject);
    procedure tBtnEditClick(Sender: TObject);
    procedure tBtnDelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  TUKeyParent=record
    PARENT: Integer;
    KIND, NAME: String;
  end;

var
  frmReference: TfrmReference;
  UKeyParent: TUKeyParent;

implementation

{$R *.DFM}

uses UDBForm, UData, UReferenceChange;

procedure TfrmReference.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  WindowID.Reference.Open:=False;
  DBForm.tReference.Close;
end;

procedure TfrmReference.dxCheckEdit1Click(Sender: TObject);
begin
  if dxCheckEdit1.Checked then dxDBTreeList1.PaintStyle:=psOutlook
    else dxDBTreeList1.PaintStyle:=psStandard;
end;

procedure TfrmReference.tBtnNewClick(Sender: TObject);
var
  DoIt: Boolean;
  s: String;
begin
  with TFrmReferenceChange.Create(nil) do
   try
     Caption:='Добавление';
     Edit1.Text:='';
     with DBForm.IBStoredProc do begin
       StoredProcName:='GET_REFERENCE_PARENT';
       ParamByName('UKEY').AsInteger:=DBForm.tReference.FieldByName('UKEY').AsInteger;
       ExecProc;
       UKeyParent.PARENT:=ParamByName('PARENT').AsInteger;
       UKeyParent.KIND:=ParamByName('KIND').AsString;
       UKeyParent.NAME:=ParamByName('NAME').AsString;
     end;
     Label0.Caption:='Добавить в "'+UKeyParent.NAME+'"';
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
        StoredProcName:='SET_REFERENCE_NEW';
        ParamByName('PARENT').AsInteger:=UKeyParent.PARENT;
        ParamByName('KIND').AsString:=UKeyParent.KIND;
        ParamByName('NAME').AsString:=s;
        ExecProc;
      end;
    DBForm.tReference.Refresh;
  end;
end;

procedure TfrmReference.tBtnEditClick(Sender: TObject);
var
  DoIt: Boolean;
  s: String;
begin
  with DBForm.tReference do
    if FieldByName('UKEY').AsString=FieldByName('PARENT').AsString then begin
      MessageDlg('ВНИМАНИЕ! Название группы менять нельзя.',mtWarning,[mbOk],0);
      exit;
    end;
  with TFrmReferenceChange.Create(nil) do
   try
     Edit1.Text:=DBForm.tReference.FieldByName('NAME').AsString;
     with DBForm.IBStoredProc do begin
       StoredProcName:='GET_REFERENCE_PARENT';
       ParamByName('UKEY').AsInteger:=DBForm.tReference.FieldByName('UKEY').AsInteger;
       ExecProc;
       UKeyParent.PARENT:=ParamByName('PARENT').AsInteger;
       UKeyParent.KIND:=ParamByName('KIND').AsString;
       UKeyParent.NAME:=ParamByName('NAME').AsString;
     end;
     Label0.Caption:='Изменить в "'+UKeyParent.NAME+'" запись "'+Edit1.Text+'"';
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
        StoredProcName:='SET_REFERENCE_UPDATE';
        ParamByName('UKEY').AsInteger:=DBForm.tReference.FieldByName('UKEY').AsInteger;
        ParamByName('NAME').AsString:=s;
        ExecProc;
      end;
    DBForm.tReference.Refresh;
  end;
end;

procedure TfrmReference.tBtnDelClick(Sender: TObject);
begin
  with DBForm.tReference do
    if FieldByName('UKEY').AsString=FieldByName('PARENT').AsString then begin
      MessageDlg('ВНИМАНИЕ! Название группы удалить нельзя.',mtWarning,[mbOk],0);
      exit;
    end;
  if MessageDlg('УДАЛИТЬ. Вы уверены?', mtConfirmation, [mbYes, mbNo], 0)<>mrYes then exit;
  with DBForm.IBStoredProc do begin
    StoredProcName:='GET_CHECK';
    ParamByName('TYPE_UKEY').AsInteger:=3; // справочник
    ParamByName('UKEY').AsInteger:=DBForm.tReference.FieldByName('UKEY').AsInteger;
    ExecProc;
    if ParamByName('USED').AsBoolean then begin
      MessageDlg('ВНИМАНИЕ! Удаление не возможно, т.к. данная запись имеет каскадные ссылки.',mtWarning,[mbOk],0);
      exit;
    end;
  end;
  with DBForm.IBStoredProc do begin
    StoredProcName:='SET_REFERENCE_DEL';
    ParamByName('UKEY').AsInteger:=DBForm.tReference.FieldByName('UKEY').AsInteger;
    ExecProc;
    DBForm.tReference.Refresh;
  end;
end;

procedure TfrmReference.FormCreate(Sender: TObject);
begin
  DBForm.tReference.Open;
end;

end.
