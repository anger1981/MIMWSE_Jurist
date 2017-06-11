object frmStreetSelect: TfrmStreetSelect
  Left = 284
  Top = 187
  BorderStyle = bsDialog
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1091#1083#1080#1094
  ClientHeight = 290
  ClientWidth = 526
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 0
    Top = 264
    Width = 526
    Height = 26
    Align = alBottom
    Caption = 
      #1056#1077#1078#1080#1084' '#1087#1086#1080#1089#1082#1072' '#1074#1082#1083#1102#1095#1077#1085': Ctrl+Enter - '#1085#1072#1081#1090#1080' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1089#1083#1077#1076#1091#1097#1077#1077', Shif' +
      't+Enter - '#1085#1072#1081#1090#1080' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1087#1088#1077#1076#1080#1076#1091#1097#1077#1077', Esc - '#1074#1099#1093#1086#1076' '#1080#1079' '#1088#1077#1078#1080#1084#1072' '#1087#1086#1080#1089#1082 +
      #1072
    Color = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    WordWrap = True
  end
  object dxDBGrid1: TdxDBGrid
    Left = 0
    Top = 0
    Width = 526
    Height = 264
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'CODE'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    OnDblClick = dxDBGrid1DblClick
    OnKeyDown = dxDBGrid1KeyDown
    DataSource = DataSource1
    Filter.Criteria = {00000000}
    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    object dxDBGrid1NAME: TdxDBGridMaskColumn
      Width = 218
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NAME'
    end
    object dxDBGrid1KIND: TdxDBGridMaskColumn
      Width = 58
      BandIndex = 0
      RowIndex = 0
      FieldName = 'KIND'
    end
    object dxDBGrid1CODE: TdxDBGridMaskColumn
      Width = 61
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CODE'
    end
    object dxDBGrid1REMARK: TdxDBGridMaskColumn
      Width = 168
      BandIndex = 0
      RowIndex = 0
      FieldName = 'REMARK'
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 160
    Top = 70
  end
  object IBQuery1: TIBQuery
    Database = DBForm.IBDatabase
    Transaction = DBForm.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SPR_STREET')
    Left = 190
    Top = 70
  end
end
