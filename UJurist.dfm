object frmJurist: TfrmJurist
  Left = 166
  Top = 145
  Width = 845
  Height = 668
  Caption = #1070#1088#1080#1089#1090
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  Icon.Data = {
    0000010001002020100001000400E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000000000000000000000000000880000000000000000000
    000000000C077880000000000000000000000000CC0777788000000000000000
    0000000CCC8007777880000000000000000000CCC80CC0077778800000000000
    00000CCC80C000C007777880000000000000CCC80C008800C007777000000000
    000CCC80C090778800C007700000000000CCC80C099077778800C00000000000
    0CCC80C099980077778800C0000000000CC80C09000099007777880000000000
    0C80C090088009990077778800000000080C090D077880099900777700000000
    000090DD07777880099900770000000000090DDD800777788009990000000000
    0090DDD80DD007777880099900000000000DDD80DDDDD0077778800900000000
    00DDD80DDDDDDDD007777090000000000DDD80DDDDDDDDDDD007700000000000
    DDD80DDDDDDDDDDDDDD000000000000DDD80DDDDDDDDDDDDDDDDD0000000000D
    D80DDDDDDDDDDDDDDDDDD0000000000D80DDDDDDDDDDDDDDDDDD000000000008
    0DDDDDDDDDDDDDDDDDD00000000000000DDDDDDDDDDDDDDDDD00000000000000
    000DDDDDDDDDDDDDD00000000000000000000DDDDDDDDDDD0000000000000000
    0000000DDDDDDDD00000000000000000000000000DDDDD000000000000000000
    00000000000DD00000000000000000000000000000000000000000000000FFFC
    7FFFFFF81FFFFFF007FFFFE001FFFFC0007FFF80001FFF000007FE00000FFC00
    000FF800000FF0000007F000000FF0000003F0000007F8000007FC000007F800
    0003F8000007F800000FF000001FE000003FC000001FC000003FC000007FC000
    00FFE00001FFF80003FFFE0007FFFF800FFFFFE01FFFFFF83FFFFFFE7FFF}
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 73
    Width = 837
    Height = 20
    Align = alTop
    AutoSize = False
    Caption = #1055#1077#1088#1077#1095#1077#1085#1100' '#1079#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085#1085#1099#1093' '#1076#1077#1083
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentColor = False
    ParentFont = False
    Layout = tlBottom
  end
  object DBText1: TDBText
    Left = 0
    Top = 615
    Width = 837
    Height = 13
    Align = alBottom
    AutoSize = True
    Color = clBtnFace
    DataField = 'DESCRIPTION'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    WordWrap = True
  end
  object LabelHelp: TLabel
    Left = 0
    Top = 628
    Width = 837
    Height = 13
    Align = alBottom
    Caption = 
      #1056#1077#1078#1080#1084' '#1087#1086#1080#1089#1082#1072' '#1074#1082#1083#1102#1095#1077#1085': Ctrl+Enter - '#1085#1072#1081#1090#1080' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1089#1083#1077#1076#1091#1097#1077#1077', Shif' +
      't+Enter - '#1085#1072#1081#1090#1080' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1087#1088#1077#1076#1080#1076#1091#1097#1077#1077', Esc - '#1074#1099#1093#1086#1076' '#1080#1079' '#1088#1077#1078#1080#1084#1072' '#1087#1086#1080#1089#1082 +
      #1072
    Color = clInfoBk
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
    WordWrap = True
  end
  object Dock971: TDock97
    Left = 0
    Top = 0
    Width = 837
    Height = 28
    BoundLines = [blTop, blBottom]
    object Toolbar971: TToolbar97
      Left = 0
      Top = 0
      Hint = #1050#1053#1048#1043#1048' '#1087#1072#1085#1077#1083#1100' '#1080#1085#1089#1090#1088#1091#1084#1077#1085#1090#1086#1074
      Caption = 'Toolbar971'
      DockMode = dmCannotFloatOrChangeDocks
      DockPos = 0
      TabOrder = 0
      object tBtnSearch: TToolbarButton97
        Left = 121
        Top = 0
        Width = 23
        Height = 22
        Hint = #1055#1086#1080#1089#1082' '#1082#1085#1080#1075#1080' (Shift+F)'
        Glyph.Data = {00000000}
        GlyphMask.Data = {00000000}
        ImageIndex = 28
        Images = DBForm.ImageList
        OnClick = tBtnSearchClick
      end
      object tBtnAdd: TToolbarButton97
        Left = 150
        Top = 0
        Width = 22
        Height = 22
        Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1082#1085#1080#1075#1091' (Ctrl+Ins)'
        Glyph.Data = {00000000}
        GlyphMask.Data = {00000000}
        ImageIndex = 43
        Images = DBForm.ImageList
        OnClick = tBtnAddClick
      end
      object tBtnProp: TToolbarButton97
        Left = 172
        Top = 0
        Width = 23
        Height = 22
        Hint = #1057#1074#1086#1081#1089#1090#1074#1072' '#1082#1085#1080#1075#1080' (Ctrl+Enter)'
        Glyph.Data = {00000000}
        GlyphMask.Data = {00000000}
        ImageIndex = 44
        Images = DBForm.ImageList
        OnClick = tBtnPropClick
      end
      object ToolbarSep974: TToolbarSep97
        Left = 144
        Top = 0
      end
      object tBtnCount: TToolbarButton97
        Left = 201
        Top = 0
        Width = 23
        Height = 22
        Hint = #1055#1086#1089#1095#1080#1090#1072#1090#1100' '#1079#1072#1087#1080#1089#1080
        Glyph.Data = {00000000}
        GlyphMask.Data = {00000000}
        ImageIndex = 58
        Images = DBForm.ImageList
        Margin = 2
        OnClick = tBtnCountClick
      end
      object lblCount: TLabel
        Left = 224
        Top = 4
        Width = 3
        Height = 13
      end
      object ToolbarSep972: TToolbarSep97
        Left = 195
        Top = 0
      end
      object EditSearch: TEdit97
        Left = 0
        Top = 1
        Width = 121
        Height = 19
        Hint = #1042#1074#1077#1076#1080#1090#1077' '#1089#1083#1086#1074#1072' '#1095#1077#1088#1077#1079' '#1087#1088#1086#1073#1077#1083', '#1076#1083#1103' '#1087#1086#1080#1089#1082#1072
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = EditSearchKeyPress
      end
    end
  end
  object dxDBGrid1: TdxDBGrid
    Left = 0
    Top = 93
    Width = 652
    Height = 522
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'UKEY'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    Ctl3D = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    PopupMenu = PopupMenu
    TabOrder = 1
    OnKeyDown = dxDBGrid1KeyDown
    BandFont.Charset = RUSSIAN_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'Tahoma'
    BandFont.Style = []
    DataSource = DBForm.dsJurist
    Filter.Criteria = {00000000}
    HeaderFont.Charset = RUSSIAN_CHARSET
    HeaderFont.Color = clBlack
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoMultiSort, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoLoadAllRecords, edgoSmartRefresh, edgoUseBookmarks]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'Tahoma'
    PreviewFont.Style = []
    RegistryPath = '\Software\PC-Software\Catalogue\Book\Grid'
    OnCustomDrawCell = dxDBGrid1CustomDrawCell
    Constraints.MinHeight = 55
    Constraints.MinWidth = 600
    object dxDBGrid1UKEY: TdxDBGridMaskColumn
      Caption = #1050#1083#1102#1095
      Width = 51
      BandIndex = 0
      RowIndex = 0
      FieldName = 'UKEY'
    end
    object dxDBGrid1ACCOUNT: TdxDBGridMaskColumn
      Caption = #1051'/'#1089#1095#1077#1090
      Sorted = csUp
      Width = 64
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ACCOUNT'
    end
    object dxDBGrid1REG_NUMBER: TdxDBGridMaskColumn
      Caption = #1056#1077#1075'. '#8470
      Width = 62
      BandIndex = 0
      RowIndex = 0
      FieldName = 'REG_NUMBER'
    end
    object dxDBGrid1REG_DATE: TdxDBGridDateColumn
      Caption = #1056#1077#1075'. '#1076#1072#1090#1072
      Width = 72
      BandIndex = 0
      RowIndex = 0
      FieldName = 'REG_DATE'
    end
    object dxDBGrid1REG_DEBT: TdxDBGridMaskColumn
      Caption = #1056#1077#1075'. '#1076#1086#1083#1075
      Width = 84
      BandIndex = 0
      RowIndex = 0
      FieldName = 'REG_DEBT'
    end
    object dxDBGrid1FIO_ALL: TdxDBGridMaskColumn
      Width = 1534
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FIO_ALL'
    end
    object dxDBGrid1SUIT_DEBT: TdxDBGridMaskColumn
      Width = 77
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SUIT_DEBT'
    end
    object dxDBGrid1DATE_FROM: TdxDBGridDateColumn
      Width = 67
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DATE_FROM'
    end
    object dxDBGrid1DATE_TILL: TdxDBGridDateColumn
      Width = 64
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DATE_TILL'
    end
    object dxDBGrid1LAW_TELL: TdxDBGridMaskColumn
      Width = 64
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LAW_TELL'
    end
    object dxDBGrid1SUMA: TdxDBGridMaskColumn
      Width = 51
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SUMA'
    end
    object dxDBGrid1TO_OGIS: TdxDBGridMaskColumn
      Width = 64
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TO_OGIS'
    end
    object dxDBGrid1EXECUTIVE: TdxDBGridMaskColumn
      Width = 77
      BandIndex = 0
      RowIndex = 0
      FieldName = 'EXECUTIVE'
    end
    object dxDBGrid1OPEN_OGIS: TdxDBGridDateColumn
      Width = 64
      BandIndex = 0
      RowIndex = 0
      FieldName = 'OPEN_OGIS'
    end
    object dxDBGrid1VERDICT_OGIS: TdxDBGridMaskColumn
      Width = 80
      BandIndex = 0
      RowIndex = 0
      FieldName = 'VERDICT_OGIS'
    end
    object dxDBGrid1CLOSE_OGIS: TdxDBGridDateColumn
      Width = 69
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CLOSE_OGIS'
    end
    object dxDBGrid1DESCRIPTION: TdxDBGridMaskColumn
      Width = 829
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DESCRIPTION'
    end
    object dxDBGrid1LOCKED: TdxDBGridMaskColumn
      Width = 64
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LOCKED'
    end
    object dxDBGrid1LAST_USER: TdxDBGridMaskColumn
      Width = 64
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LAST_USER'
    end
    object dxDBGrid1LAST_DATE: TdxDBGridDateColumn
      Width = 64
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LAST_DATE'
    end
    object dxDBGrid1LAST_TIME: TdxDBGridTimeColumn
      Width = 64
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LAST_TIME'
    end
    object dxDBGrid1LAWTELL_LOOKUP: TdxDBGridMaskColumn
      Width = 183
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LAWTELL_LOOKUP'
    end
  end
  object GroupBoxFilter: TGroupBox
    Left = 0
    Top = 28
    Width = 837
    Height = 45
    Hint = #1055#1072#1085#1077#1083#1100' '#1092#1080#1083#1100#1090#1088#1072
    Align = alTop
    Caption = '( '#1057#1042#1045#1044#1045#1053#1048#1071' '#1054' '#1050#1053#1048#1043#1040#1061' '#1055#1054' )'
    Color = clBtnFace
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    Visible = False
    object ComboBox1: TComboBox
      Tag = 1
      Left = 85
      Top = 20
      Width = 125
      Height = 19
      BevelKind = bkTile
      Style = csOwnerDrawFixed
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Visible = False
    end
    object ComboBox3: TComboBox
      Tag = 3
      Left = 505
      Top = 20
      Width = 100
      Height = 19
      BevelKind = bkTile
      Style = csOwnerDrawFixed
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      Visible = False
    end
    object ComboBox2: TComboBox
      Tag = 2
      Left = 280
      Top = 20
      Width = 150
      Height = 19
      BevelKind = bkTile
      Style = csOwnerDrawFixed
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      Visible = False
    end
    object dxCheckEdit1: TdxCheckEdit
      Tag = 1
      Left = 5
      Top = 20
      Width = 80
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 3
      OnClick = dxCheckEditClick
      Caption = #1074#1079#1103#1074#1096#1077#1084#1091':'
      StyleController = DBForm.dxCheckEditStyleController1
    end
    object dxCheckEdit2: TdxCheckEdit
      Tag = 2
      Left = 220
      Top = 20
      Width = 60
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = dxCheckEditClick
      Caption = #1089#1077#1088#1080#1080':'
      StyleController = DBForm.dxCheckEditStyleController1
    end
    object dxCheckEdit3: TdxCheckEdit
      Tag = 3
      Left = 440
      Top = 20
      Width = 60
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = dxCheckEditClick
      Caption = ' '#1103#1079#1099#1082#1091':'
      StyleController = DBForm.dxCheckEditStyleController1
    end
    object ComboBox4: TComboBox
      Tag = 4
      Left = 680
      Top = 20
      Width = 100
      Height = 19
      BevelKind = bkTile
      Style = csOwnerDrawFixed
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
      Visible = False
    end
    object dxCheckEdit4: TdxCheckEdit
      Tag = 4
      Left = 610
      Top = 18
      Width = 65
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = dxCheckEditClick
      Caption = ' '#1072#1074#1090#1086#1088#1091':'
      StyleController = DBForm.dxCheckEditStyleController1
    end
  end
  object PanelResult: TPanel
    Left = 652
    Top = 93
    Width = 185
    Height = 522
    Align = alRight
    Caption = 'PanelResult'
    TabOrder = 3
    Visible = False
    object ListBox1: TListBox
      Left = 1
      Top = 25
      Width = 183
      Height = 496
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = clCream
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 0
      OnDblClick = ListBox1DblClick
    end
    object CheckBox1: TCheckBox
      Left = 5
      Top = 5
      Width = 175
      Height = 17
      Alignment = taLeftJustify
      Caption = #1053#1072#1081#1076#1077#1085#1085#1099#1077' '#1079#1085#1072#1095#1077#1085#1080#1103' / C'#1082#1088#1099#1090#1100
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = CheckBox1Click
    end
  end
  object PopupMenu: TPopupMenu
    Images = DBForm.ImageList
    Left = 310
    Top = 140
    object pmenuSearch: TMenuItem
      Caption = #1055#1086#1080#1089#1082
      ImageIndex = 28
      ShortCut = 8262
      OnClick = tBtnSearchClick
    end
    object pmenuSearchInc: TMenuItem
      Caption = #1048#1085#1082#1088#1077#1084#1077#1085#1090#1085#1099#1081' '#1087#1086#1080#1089#1082
      ImageIndex = 19
      ShortCut = 16454
      OnClick = pmenuSearchIncClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object pmenuAdd: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      ImageIndex = 43
      ShortCut = 16429
      OnClick = tBtnAddClick
    end
    object pmenuProp: TMenuItem
      Caption = #1057#1074#1086#1081#1089#1090#1074#1072
      ImageIndex = 44
      ShortCut = 16397
      OnClick = tBtnPropClick
    end
  end
end
