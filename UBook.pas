unit UBook;

interface

uses
  Graphics, Forms, Controls, TB97Ctls, StdCtrls, DBCtrls, Mask, Buttons,
  ExtCtrls, TB97Tlbr, TB97, Classes, Grids, DBGrids, Dialogs, SysUtils,
  dxDBTLCl, dxGrClms, dxDBCtrl, dxDBGrid, dxTL, dxCntner, dxExEdtr, dxEdLib,
  Menus, Types;

type
  TfrmBook = class(TForm)
    Dock971: TDock97;
    Label1: TLabel;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1DATE_TAKE: TdxDBGridDateColumn;
    DBText1: TDBText;
    Toolbar971: TToolbar97;
    tBtnSearch: TToolbarButton97;
    tBtnAdd: TToolbarButton97;
    tBtnProp: TToolbarButton97;
    EditSearch: TEdit97;
    ToolbarSep971: TToolbarSep97;
    tBtnIssue: TToolbarButton97;
    PopupMenu: TPopupMenu;
    pmenuAdd: TMenuItem;
    pmenuIssue: TMenuItem;
    N2: TMenuItem;
    pmenuProp: TMenuItem;
    pmenuSearch: TMenuItem;
    pmenuDel: TMenuItem;
    tBtnDel: TToolbarButton97;
    ToolbarSep974: TToolbarSep97;
    N1: TMenuItem;
    dxDBGrid1NAME: TdxDBGridMaskColumn;
    dxDBGrid1ISSUE: TdxDBGridCheckColumn;
    dxDBGrid1TOM: TdxDBGridMaskColumn;
    dxDBGrid1PASS: TdxDBGridColumn;
    GroupBoxFilter: TGroupBox;
    ComboBox1: TComboBox;
    ComboBox3: TComboBox;
    ComboBox2: TComboBox;
    dxCheckEdit1: TdxCheckEdit;
    dxCheckEdit2: TdxCheckEdit;
    dxCheckEdit3: TdxCheckEdit;
    dxDBGrid1UKEY: TdxDBGridMaskColumn;
    tBtnCount: TToolbarButton97;
    lblCount: TLabel;
    ToolbarSep972: TToolbarSep97;
    dxDBGrid1LOCKED: TdxDBGridCheckColumn;
    LabelHelp: TLabel;
    tBtnEmpty: TToolbarButton97;
    ToolbarSep973: TToolbarSep97;
    pmenuSearchInc: TMenuItem;
    dxDBGrid1DESCRIPTION: TdxDBGridMaskColumn;
    dxDBGrid1PLACE: TdxDBGridMaskColumn;
    dxDBGrid1LANGUAGE: TdxDBGridMaskColumn;
    dxDBGrid1AUTHOR: TdxDBGridMaskColumn;
    dxDBGrid1SERIA: TdxDBGridMaskColumn;
    dxDBGrid1WHO_TAKE: TdxDBGridMaskColumn;
    PanelResult: TPanel;
    ListBox1: TListBox;
    CheckBox1: TCheckBox;
    ComboBox4: TComboBox;
    dxCheckEdit4: TdxCheckEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tBtnSearchClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tBtnPropClick(Sender: TObject);
    procedure EditSearchKeyPress(Sender: TObject; var Key: Char);
    procedure tBtnAddClick(Sender: TObject);
    procedure tBtnIssueClick(Sender: TObject);
    procedure tBtnDelClick(Sender: TObject);
    procedure dxCheckEditClick(Sender: TObject);
    procedure tBtnCountClick(Sender: TObject);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tBtnEmptyClick(Sender: TObject);
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
  frmBook: TfrmBook;
  SearchIndex, U_LOCK, U_KEY: Integer;

implementation

{$R *.DFM}

uses UDBForm, UData, UMain, DB, UBookEdit, UBookAdd, UIssue, UFunc;

procedure TfrmBook.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  WindowID.Book.Open:=False;
  dxDBGrid1.SaveToRegistry(dxDBGrid1.RegistryPath);
  DBForm.qBook.Close;
end;

procedure TfrmBook.tBtnSearchClick(Sender: TObject);
begin
  Screen.Cursor:=crSQLWait;
  PanelResult.Visible:=True;
  CheckBox1.Checked:=True;
  ListBox1.Clear;
  FindInGrid(dxDBGrid1,dxDBGrid1.FocusedColumn,EditSearch.Text,ListBox1.Items);
  Screen.Cursor:=crDefault;
end;

procedure TfrmBook.FormCreate(Sender: TObject);
begin
  SearchIndex:=-1;
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
  end;
end;

procedure TfrmBook.tBtnPropClick(Sender: TObject);
begin
  if DBForm.qBook.RecordCount<>0 then
   with TFrmBookEdit.Create(nil) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TfrmBook.EditSearchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then tBtnSearchClick(nil);
end;

procedure TfrmBook.tBtnAddClick(Sender: TObject);
begin
  with TFrmBookAdd.Create(nil) do
   try
     ShowModal;
   finally
     Free;
   end;
end;

procedure TfrmBook.tBtnIssueClick(Sender: TObject);
begin
  with TFrmIssue.Create(nil) do
   try
     Tag:=1;
     ShowModal;
   finally
   end;
end;

procedure TfrmBook.tBtnDelClick(Sender: TObject);
begin
  if not User_Permiting[9] then begin
    NoPermition;
    exit;
  end;
  if MessageDlg('”ƒ¿À»“‹. ¬˚ Û‚ÂÂÌ˚?', mtConfirmation, [mbYes, mbNo], 0)<>mrYes then exit;
  with DBForm.IBStoredProc do begin
    StoredProcName:='SET_BOOK_DEL';
    ParamByName('UKEY').AsInteger:=dxDBGrid1.FocusedNode.Values[dxDBGrid1UKEY.Index];
    ExecProc;
    if DBForm.qBook.Active then begin DBForm.qBook.Close; DBForm.qBook.Open; end;
  end;
end;

procedure TfrmBook.dxCheckEditClick(Sender: TObject);
begin
  case (Sender as TdxCheckEdit).Tag of
    1: ComboBox1.Visible:=(Sender as TdxCheckEdit).Checked;
    2: ComboBox2.Visible:=(Sender as TdxCheckEdit).Checked;
    3: ComboBox3.Visible:=(Sender as TdxCheckEdit).Checked;
    4: ComboBox4.Visible:=(Sender as TdxCheckEdit).Checked;
  end;
end;

procedure TfrmBook.tBtnCountClick(Sender: TObject);
begin
  lblCount.Caption:=' '+IntToStr(DBForm.qBook.RecordCount)+' Á‡ÔËÒÂÈ ';
end;

procedure TfrmBook.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmBook.tBtnEmptyClick(Sender: TObject);
begin
  if not User_Permiting[0] then begin
    NoPermition;
    exit;
  end;
  if MessageDlg('”ƒ¿À»“‹ ¬—≈ «¿œ»—». ¬˚ ‰ÂÈÒÚ‚ËÚÂÎ¸ÌÓ Û‚ÂÂÌ˚?', mtConfirmation, [mbYes, mbNo], 0)<>mrYes then exit;
  with DBForm.IBStoredProc do begin
    StoredProcName:='SET_BOOK_EMPTY';
    ExecProc;
    if DBForm.qBook.Active then begin DBForm.qBook.Close; DBForm.qBook.Open; end;
  end;
end;

procedure TfrmBook.pmenuSearchIncClick(Sender: TObject);
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

procedure TfrmBook.FormActivate(Sender: TObject);
begin
  FrmPan.Activate(WindowID.Book.Pointer);
end;

procedure TfrmBook.dxDBGrid1CustomDrawCell(Sender: TObject;
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

procedure TfrmBook.ListBox1DblClick(Sender: TObject);
begin
  with ListBox1 do
    (Items.Objects[ItemIndex] as TdxTreeListNode).Focused:=True;
end;

procedure TfrmBook.CheckBox1Click(Sender: TObject);
begin
  if not CheckBox1.Checked then PanelResult.Visible:=False; 
end;

end.
