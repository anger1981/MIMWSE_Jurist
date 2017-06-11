object frmBook: TfrmBook
  Left = 453
  Top = 171
  Width = 795
  Height = 613
  Caption = #1050#1053#1048#1043#1048
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
    Width = 787
    Height = 20
    Align = alTop
    AutoSize = False
    Caption = #1055#1077#1088#1077#1095#1077#1085#1100' '#1079#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085#1085#1099#1093' '#1082#1085#1080#1075
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
    Top = 560
    Width = 787
    Height = 13
    Align = alBottom
    AutoSize = True
    Color = clBtnFace
    DataField = 'DESCRIPTION'
    DataSource = DBForm.dsBook
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
    Top = 573
    Width = 787
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
    Width = 787
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
        Left = 179
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
        Left = 201
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
      object ToolbarSep971: TToolbarSep97
        Left = 173
        Top = 0
      end
      object tBtnIssue: TToolbarButton97
        Left = 150
        Top = 0
        Width = 23
        Height = 22
        Hint = #1042#1099#1076#1072#1090#1100' '#1082#1085#1080#1075#1091' (Ctrl+Space)'
        Glyph.Data = {00000000}
        GlyphMask.Data = {00000000}
        ImageIndex = 52
        Images = DBForm.ImageList
        OnClick = tBtnIssueClick
      end
      object tBtnDel: TToolbarButton97
        Left = 224
        Top = 0
        Width = 23
        Height = 22
        Hint = #1059#1076#1072#1083#1080#1090#1100' '#1082#1085#1080#1075#1091' (Ctrl+Del)'
        Glyph.Data = {00000000}
        GlyphMask.Data = {00000000}
        ImageIndex = 16
        Images = DBForm.ImageList
        OnClick = tBtnDelClick
      end
      object ToolbarSep974: TToolbarSep97
        Left = 144
        Top = 0
      end
      object tBtnCount: TToolbarButton97
        Left = 282
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
        Left = 305
        Top = 4
        Width = 3
        Height = 13
      end
      object ToolbarSep972: TToolbarSep97
        Left = 276
        Top = 0
      end
      object tBtnEmpty: TToolbarButton97
        Left = 253
        Top = 0
        Width = 23
        Height = 22
        Hint = #1059#1076#1072#1083#1080#1090#1100' '#1042#1057#1045' '#1082#1085#1080#1075#1080
        Glyph.Data = {00000000}
        GlyphMask.Data = {00000000}
        ImageIndex = 17
        Images = DBForm.ImageList
        OnClick = tBtnEmptyClick
      end
      object ToolbarSep973: TToolbarSep97
        Left = 247
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
    Width = 602
    Height = 467
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
    OnDblClick = tBtnIssueClick
    OnKeyDown = dxDBGrid1KeyDown
    BandFont.Charset = RUSSIAN_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'Tahoma'
    BandFont.Style = []
    DataSource = DBForm.dsBook
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
      Caption = #8470' '#1087'/'#1087
      Width = 40
      BandIndex = 0
      RowIndex = 0
      FieldName = 'UKEY'
    end
    object dxDBGrid1LOCKED: TdxDBGridCheckColumn
      Caption = #1047#1072#1084#1082#1085#1091#1090#1072
      HeaderGlyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FF000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FF00FFFF00FFFF00FFFF00FF00FFFFFFFF00FFFF0000FFFF00FFFF00FFFF00
        8000008000C0C0C0C0C0C0008080C0C0C0800000FF00FFFF00FFFF00FF00FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFFFFFF00FF
        FF800000FF00FFFF00FFFF00FF00FFFFFFFF00FFFF0000FFFF00FFFF00FFFF00
        8000008000C0C0C0C0C0C0008080C0C0C0C0C0C0FF00FFFF00FFFF00FF00FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFFFFFF00FF
        FF800000FF00FFFF00FFFF00FF00FFFFFFFF00FFFF0000FFFF00FFFF00FFFF00
        8000008000C0C0C0C0C0C0008080C0C0C0C0C0C0FF00FFFF00FFFF00FF00FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFFFFFF00FF
        FF800000FF00FFFF00FFFF00FF00FFFFFFFF00FFFF0000FFFF00FFFF00FFFF80
        8000808000C0C0C0C0C0C0008080C0C0C0C0C0C0FF00FFFF00FFFF00FF00FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C000FF
        FF800000FF00FFFF00FFFF00FF008080808080000000808080C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0000000000000C0C0C0C0C0C0FF00FFFF00FFFF00FFFF00FF
        80808000FFFF000000FF00FFFF00FFFF00FFFF00FFFF00FFC0C0C0008080FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF80808000FFFF000000FF00FFFF00FFFF
        00FFFF00FFFF00FFC0C0C0008080FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        80808000FFFF000000FF00FFFF00FFFF00FFFF00FFFF00FFC0C0C0008080FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF808080FFFFFFFF0000FF00FFFF00FFFF
        00FFFF00FF808080C0C0C0008080FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFFFFFFC0C0C0808080808080808080808080FFFF0000FFFF808080FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF808080C0C0C0FFFFFFFFFFFFFF
        FFFFFFFFFFC0C0C0808080FF00FFFF00FFFF00FFFF00FFFF00FF}
      MinWidth = 20
      Sizing = False
      Width = 20
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LOCKED'
      GlyphCount = 1
      ValueChecked = '-1'
      ValueUnchecked = '0'
    end
    object dxDBGrid1LANGUAGE: TdxDBGridMaskColumn
      Caption = #1071#1079#1099#1082
      Sorted = csUp
      Width = 76
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LANGUAGE'
      SortedOrder = 0
    end
    object dxDBGrid1AUTHOR: TdxDBGridMaskColumn
      Caption = #1040#1074#1090#1086#1088
      Sorted = csUp
      Width = 108
      BandIndex = 0
      RowIndex = 0
      FieldName = 'AUTHOR'
      SortedOrder = 1
    end
    object dxDBGrid1SERIA: TdxDBGridMaskColumn
      Caption = #1057#1077#1088#1080#1103
      Sorted = csUp
      Width = 135
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SERIA'
      SortedOrder = 2
    end
    object dxDBGrid1NAME: TdxDBGridMaskColumn
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1082#1085#1080#1075#1080
      Sorted = csUp
      Width = 171
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NAME'
      SortedOrder = 3
    end
    object dxDBGrid1TOM: TdxDBGridMaskColumn
      Caption = #1058#1086#1084
      Sorted = csUp
      Width = 30
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TOM'
      SortedOrder = 4
    end
    object dxDBGrid1ISSUE: TdxDBGridCheckColumn
      Caption = #1042#1099#1076#1072#1085#1072
      HeaderGlyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000000000004F33
        3300573E3E007960600038363600D1FCFF00A9C3C900A5DBEB0090E3FF00BFEE
        FF00B5D5E40083C5E500B2E3FF00B4E2FF001D83C6008CB2CB0071A9D30086C5
        F500A5D3F5008DACC60058B0FF007DC2FF0045A3FF003491F400327DCE004493
        E9002B80E6002C72CB003678CB00457DC600A0B9DB002E63AE002060C6003D67
        AA0035578F00617698002C5292001B50B600D9DFEC001642A80078839F005259
        72003C425C004B4F6700BCBCD600F5F5F500E8E8E800DBDBDB00C3C3C300B9B9
        B9009A9A9A00000000008E8E8E00858585007D7D7D007C7C7C007A7A7A007676
        7600747474007373730068686800616161005E5E5E0059595900565656005252
        52003F3F3F00FFFFFF0000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000303030303030
        30303030303030303030303C3C3C303030303030303030303030030242403C30
        303C3C3C3C3C303030300101323D3E3929221F1B242A3F3C303004042F23211C
        1A25272017161D2B3C3C41412E13151419180E12100B0811283C3A3A2D060C0D
        09050F0A2C3026071E30383831302C2C2C303030303030303030303030303030
        3030303030303030303030303030303030303030303030303030303030303030
        3030303030303030303030303030303030303030303030303030303030303030
        3030303030303030303030303030303030303030303030303030303030303030
        3030303030303030303030303030303030303030303030303030}
      MinWidth = 20
      Sizing = False
      Width = 20
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ISSUE'
      ValueChecked = '-1'
      ValueUnchecked = '0'
    end
    object dxDBGrid1WHO_TAKE: TdxDBGridMaskColumn
      Caption = #1042#1079#1103#1083
      Width = 75
      BandIndex = 0
      RowIndex = 0
      FieldName = 'WHO_TAKE'
    end
    object dxDBGrid1DATE_TAKE: TdxDBGridDateColumn
      Caption = #1044#1072#1090#1072
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DATE_TAKE'
    end
    object dxDBGrid1PASS: TdxDBGridColumn
      Caption = #1055#1088#1086#1096#1083#1086
      Width = 51
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PASS'
    end
    object dxDBGrid1PLACE: TdxDBGridMaskColumn
      Caption = #1053#1072#1093#1086#1078#1076#1077#1085#1080#1077
      Width = 95
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PLACE'
    end
    object dxDBGrid1DESCRIPTION: TdxDBGridMaskColumn
      Visible = False
      Width = 703
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DESCRIPTION'
    end
  end
  object GroupBoxFilter: TGroupBox
    Left = 0
    Top = 28
    Width = 787
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
    Left = 602
    Top = 93
    Width = 185
    Height = 467
    Align = alRight
    Caption = 'PanelResult'
    TabOrder = 3
    Visible = False
    object ListBox1: TListBox
      Left = 1
      Top = 25
      Width = 183
      Height = 441
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
    object pmenuIssue: TMenuItem
      Caption = #1042#1099#1076#1072#1090#1100
      ImageIndex = 52
      ShortCut = 16416
      OnClick = tBtnIssueClick
    end
    object N2: TMenuItem
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
      ShortCut = 24589
      OnClick = tBtnPropClick
    end
    object pmenuDel: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 17
      ShortCut = 16430
      OnClick = tBtnDelClick
    end
  end
end
