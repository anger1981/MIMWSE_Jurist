unit UJurist;

interface

uses
  Graphics, Forms, Controls, TB97Ctls, StdCtrls, DBCtrls, Mask, Buttons,
  ExtCtrls, TB97Tlbr, TB97, Classes, Grids, DBGrids, Dialogs, SysUtils,
  dxDBTLCl, dxGrClms, dxDBCtrl, dxDBGrid, dxTL, dxCntner, dxExEdtr, dxEdLib,
  Menus, Types;

type
  TfrmJurist = class(TForm)
    Dock971: TDock97;
    Label1: TLabel;
    dxDBGrid1: TdxDBGrid;
    DBText1: TDBText;
    Toolbar971: TToolbar97;
    tBtnSearch: TToolbarButton97;
    tBtnAdd: TToolbarButton97;
    tBtnProp: TToolbarButton97;
    EditSearch: TEdit97;
    PopupMenu: TPopupMenu;
    pmenuAdd: TMenuItem;
    pmenuProp: TMenuItem;
    pmenuSearch: TMenuItem;
    ToolbarSep974: TToolbarSep97;
    N1: TMenuItem;
    GroupBoxFilter: TGroupBox;
    ComboBox1: TComboBox;
    ComboBox3: TComboBox;
    ComboBox2: TComboBox;
    dxCheckEdit1: TdxCheckEdit;
    dxCheckEdit2: TdxCheckEdit;
    dxCheckEdit3: TdxCheckEdit;
    tBtnCount: TToolbarButton97;
    lblCount: TLabel;
    ToolbarSep972: TToolbarSep97;
    LabelHelp: TLabel;
    pmenuSearchInc: TMenuItem;
    PanelResult: TPanel;
    ListBox1: TListBox;
    CheckBox1: TCheckBox;
    ComboBox4: TComboBox;
    dxCheckEdit4: TdxCheckEdit;
    dxDBGrid1UKEY: TdxDBGridMaskColumn;
    dxDBGrid1ACCOUNT: TdxDBGridMaskColumn;
    dxDBGrid1REG_NUMBER: TdxDBGridMaskColumn;
    dxDBGrid1REG_DATE: TdxDBGridDateColumn;
    dxDBGrid1REG_DEBT: TdxDBGridMaskColumn;
    dxDBGrid1FIO_ALL: TdxDBGridMaskColumn;
    dxDBGrid1SUIT_DEBT: TdxDBGridMaskColumn;
    dxDBGrid1DATE_FROM: TdxDBGridDateColumn;
    dxDBGrid1DATE_TILL: TdxDBGridDateColumn;
    dxDBGrid1LAW_TELL: TdxDBGridMaskColumn;
    dxDBGrid1SUMA: TdxDBGridMaskColumn;
    dxDBGrid1TO_OGIS: TdxDBGridMaskColumn;
    dxDBGrid1EXECUTIVE: TdxDBGridMaskColumn;
    dxDBGrid1OPEN_OGIS: TdxDBGridDateColumn;
    dxDBGrid1VERDICT_OGIS: TdxDBGridMaskColumn;
    dxDBGrid1CLOSE_OGIS: TdxDBGridDateColumn;
    dxDBGrid1DESCRIPTION: TdxDBGridMaskColumn;
    dxDBGrid1LOCKED: TdxDBGridMaskColumn;
    dxDBGrid1LAST_USER: TdxDBGridMaskColumn;
    dxDBGrid1LAST_DATE: TdxDBGridDateColumn;
    dxDBGrid1LAST_TIME: TdxDBGridTimeColumn;
    dxDBGrid1LAWTELL_LOOKUP: TdxDBGridMaskColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tBtnSearchClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tBtnPropClick(Sender: TObject);
    procedure EditSearchKeyPress(Sender: TObject; var Key: Char);
    procedure tBtnAddClick(Sender: TObject);
    procedure dxCheckEditClick(Sender: TObject);
    procedure tBtnCountClick(Sender: TObject);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pmenuSearchIncClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure ListBox1DblClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmJurist: TfrmJurist;
  SearchIndex, U_LOCK, U_KEY: Integer;

implementation

{$R *.DFM}

uses UDBForm, UData, UMain, DB, UJournalEdit, UJournalReg, UFunc;

procedure TfrmJurist.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  Action:=caFree;
//  WindowID.Book.Open:=False;
//  dxDBGrid1.SaveToRegistry(dxDBGrid1.RegistryPath);
//  DBForm.qBook.Close;
end;

procedure TfrmJurist.tBtnSearchClick(Sender: TObject);
begin
  Screen.Cursor:=crSQLWait;
  PanelResult.Visible:=True;
  CheckBox1.Checked:=True;
  ListBox1.Clear;
  FindInGrid(dxDBGrid1,dxDBGrid1.FocusedColumn,EditSearch.Text,ListBox1.Items);
  Screen.Cursor:=crDefault;
end;

procedure TfrmJurist.FormCreate(Sender: TObject);
begin
{  SearchIndex:=-1;
  dxDBGrid1.LoadFromRegistry(dxDBGrid1.RegistryPath);
  DBForm.qBook.Open;
  with DBForm.qReferenceTemp do begin
    Close;
    SQL.Clear;
    SQL.Add('select * from REFCONTACT where UKEY<>PARENT order by NAME');
    Open;
    First;
    while not Eof do begin
        ComboBox1.Items.Append(FieldByName('NAME').AsString);
      Next;
    end;
  end;
  with DBForm.qReferenceTemp do begin
    Close;
    SQL.Clear;
    SQL.Add('select * from REFERENCE where UKEY<>PARENT order by NAME');
    Open;
    First;
    while not Eof do begin
      if FieldValues['KIND']='SERIA' then
        ComboBox2.Items.Append(FieldByName('NAME').AsString);
      if FieldValues['KIND']='LANGUAGE' then
        ComboBox3.Items.Append(FieldByName('NAME').AsString);
      if FieldValues['KIND']='AUTHOR' then
        ComboBox4.Items.Append(FieldByName('NAME').AsString);
      Next;
    end;
  end;  }
end;

procedure TfrmJurist.tBtnPropClick(Sender: TObject);
begin
{  if DBForm.qBook.RecordCount<>0 then
   with TFrmBookEdit.Create(nil) do
    try
      ShowModal;
    finally
      Free;
    end; }
end;

procedure TfrmJurist.EditSearchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then tBtnSearchClick(nil);
end;

procedure TfrmJurist.tBtnAddClick(Sender: TObject);
begin
{  with TFrmBookAdd.Create(nil) do
   try
     ShowModal;
   finally
     Free;
   end;        }
end;

procedure TfrmJurist.dxCheckEditClick(Sender: TObject);
begin
  case (Sender as TdxCheckEdit).Tag of
    1: ComboBox1.Visible:=(Sender as TdxCheckEdit).Checked;
    2: ComboBox2.Visible:=(Sender as TdxCheckEdit).Checked;
    3: ComboBox3.Visible:=(Sender as TdxCheckEdit).Checked;
    4: ComboBox4.Visible:=(Sender as TdxCheckEdit).Checked;
  end;
end;

procedure TfrmJurist.tBtnCountClick(Sender: TObject);
begin
  lblCount.Caption:=' '+IntToStr(DBForm.qJurist.RecordCount)+' записей ';
end;

procedure TfrmJurist.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and (Key=106) then dxDBGrid1.AdjustColumnsWidth;
  if (ssCtrl in Shift) and (Key=107) then dxDBGrid1.ApplyBestFit(nil);
  if (ssCtrl in Shift) and ((Key=102) or (Key=70)) then begin
//    dxDBGrid1.OptionsView:=dxDBGrid1.OptionsView-[edgoRowSelect];
    dxDBGrid1.OptionsEx:=dxDBGrid1.OptionsEx+[egoAutoSearch];
    LabelHelp.Visible:=True;
    pmenuSearchInc.Checked:=True;
  end;
  if (key=27) then begin
//    dxDBGrid1.OptionsView:=dxDBGrid1.OptionsView+[edgoRowSelect];
    dxDBGrid1.OptionsEx:=dxDBGrid1.OptionsEx-[egoAutoSearch];
    LabelHelp.Visible:=False;
    pmenuSearchInc.Checked:=False;
  end;
end;

procedure TfrmJurist.pmenuSearchIncClick(Sender: TObject);
begin
  if not pmenuSearchInc.Checked then begin
//    dxDBGrid1.OptionsView:=dxDBGrid1.OptionsView-[edgoRowSelect];
    dxDBGrid1.OptionsEx:=dxDBGrid1.OptionsEx+[egoAutoSearch];
    LabelHelp.Visible:=True;
    pmenuSearchInc.Checked:=True;
  end else begin
//    dxDBGrid1.OptionsView:=dxDBGrid1.OptionsView+[edgoRowSelect];
    dxDBGrid1.OptionsEx:=dxDBGrid1.OptionsEx-[egoAutoSearch];
    LabelHelp.Visible:=False;
    pmenuSearchInc.Checked:=False;
  end;
end;

procedure TfrmJurist.FormActivate(Sender: TObject);
begin
//  FrmPan.Activate(WindowID.Book.Pointer);
end;

procedure TfrmJurist.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if ANode.Selected then AColor:=clNavy;
  if ANode.Selected then AFont.Color:=clWhite;
  if ASelected then AColor:=clBlack;
  if ASelected then AFont.Color:=clYellow;
end;

procedure TfrmJurist.ListBox1DblClick(Sender: TObject);
begin
  with ListBox1 do
    (Items.Objects[ItemIndex] as TdxTreeListNode).Focused:=True;
end;

procedure TfrmJurist.CheckBox1Click(Sender: TObject);
begin
  if not CheckBox1.Checked then PanelResult.Visible:=False; 
end;

end.
