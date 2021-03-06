object FormRefFirms: TFormRefFirms
  Left = 463
  Top = 267
  Width = 505
  Height = 405
  BorderStyle = bsSizeToolWin
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1081
  Color = clBtnFace
  Constraints.MaxHeight = 405
  Constraints.MaxWidth = 505
  Constraints.MinHeight = 405
  Constraints.MinWidth = 505
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  DesignSize = (
    489
    367)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 352
    Width = 296
    Height = 14
    Caption = #1055#1088#1086#1089#1084#1086#1090#1088'. ('#1053#1072#1078#1084#1080#1090#1077' F4 '#1076#1083#1103' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103').'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dxDBGrid1: TdxDBGrid
    Left = 0
    Top = 19
    Width = 493
    Height = 326
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    SummaryGroups = <>
    SummarySeparator = ', '
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnDblClick = dxDBGrid1DblClick
    OnKeyDown = dxDBGrid1KeyDown
    OnKeyPress = dxDBGrid1KeyPress
    BandFont.Charset = RUSSIAN_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'Tahoma'
    BandFont.Style = []
    DataSource = srcFirms
    Filter.MaxDropDownCount = 20
    Filter.Criteria = {00000000}
    HeaderFont.Charset = RUSSIAN_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
    OptionsCustomize = []
    OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'Tahoma'
    PreviewFont.Style = []
    Anchors = [akLeft, akTop, akRight, akBottom]
    object dxDBGrid1ID: TdxDBGridMaskColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ID'
    end
    object dxDBGrid1SHIFR: TdxDBGridMaskColumn
      Caption = #1064#1080#1092#1088
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SHIFR'
    end
    object dxDBGrid1NAME: TdxDBGridMaskColumn
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NAME'
    end
  end
  object dxEdit1: TdxEdit
    Left = 12
    Top = -1
    Width = 66
    Style.BorderStyle = xbsSingle
    TabOrder = 1
    OnKeyDown = dxEdit1KeyDown
  end
  object dxEdit2: TdxEdit
    Left = 77
    Top = -1
    Width = 390
    Style.BorderStyle = xbsSingle
    TabOrder = 2
    OnKeyDown = dxEdit2KeyDown
  end
  object dsFirms: TIBDataSet
    Database = DBForm.IBDatabase
    Transaction = DBForm.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from ZMVK_SPR_FIRMS_J'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into ZMVK_SPR_FIRMS_J'
      '  (ID, SHIFR, NAME)'
      'values'
      '  (:ID,:SHIFR, :NAME)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  SHIFR,'
      '  NAME'
      'from ZMVK_SPR_FIRMS_J '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT ID, SHIFR, NAME'
      'FROM ZMVK_SPR_FIRMS_J')
    ModifySQL.Strings = (
      'update ZMVK_SPR_FIRMS_J'
      'set'
      '  SHIFR = :SHIFR,'
      '  NAME = :NAME'
      'where'
      '  ID = :OLD_ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'ZMVK_GEN_SPR_FIRMS_J_ID'
    Left = 32
    Top = 152
    object dsFirmsID: TIntegerField
      FieldName = 'ID'
      Origin = 'ZMVK_SPR_FIRMS_J.ID'
    end
    object dsFirmsSHIFR: TIntegerField
      FieldName = 'SHIFR'
      Origin = 'ZMVK_SPR_FIRMS_J.SHIFR'
      Required = True
    end
    object dsFirmsNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'ZMVK_SPR_FIRMS_J.NAME'
      Size = 64
    end
  end
  object srcFirms: TDataSource
    DataSet = dsFirms
    Left = 96
    Top = 152
  end
end
