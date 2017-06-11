object frmAgreementReg: TfrmAgreementReg
  Left = 495
  Top = 214
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1044#1054#1043#1054#1042#1054#1056' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103
  ClientHeight = 479
  ClientWidth = 495
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LabelEdit1: TLabel
    Left = 5
    Top = 4
    Width = 81
    Height = 35
    AutoSize = False
    Caption = #1051#1080#1094#1077#1074#1086#1081' '#1089#1095#1077#1090':'
    Color = clInfoBk
    ParentColor = False
    Transparent = True
  end
  object LabelEdit2: TLabel
    Left = 95
    Top = 4
    Width = 257
    Height = 35
    AutoSize = False
    Caption = #1060#1048#1054' '#1082#1074#1072#1088#1090#1080#1088#1086#1089#1100#1077#1084#1097#1080#1082#1072':'
    Color = clInfoBk
    ParentColor = False
    Transparent = True
  end
  object LabelEdit3: TLabel
    Left = 5
    Top = 39
    Width = 346
    Height = 35
    AutoSize = False
    Caption = #1040#1076#1088#1077#1089':'
    Color = clInfoBk
    ParentColor = False
    Transparent = True
  end
  object Panel: TPanel
    Left = 0
    Top = 441
    Width = 495
    Height = 38
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 4
    DesignSize = (
      495
      38)
    object bBtnAdd: TBitBtn
      Left = 399
      Top = 7
      Width = 90
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 0
      OnClick = bBtnAddClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 80
    Width = 489
    Height = 211
    BiDiMode = bdLeftToRight
    Caption = '( '#1056#1045#1043#1048#1057#1058#1056#1040#1062#1048#1071' )'
    Color = clBtnFace
    Ctl3D = False
    ParentBiDiMode = False
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 3
    object LabelEdit8: TLabel
      Left = 5
      Top = 155
      Width = 126
      Height = 25
      AutoSize = False
      Caption = #1044#1086#1083#1075':                       , '#1075#1088#1085
      Color = clInfoBk
      ParentColor = False
      Transparent = True
      Layout = tlCenter
    end
    object LabelEdit9: TLabel
      Left = 250
      Top = 155
      Width = 100
      Height = 25
      AutoSize = False
      Caption = #1055#1077#1088#1080#1086#1076':          , '#1084#1077#1089
      Color = clInfoBk
      ParentColor = False
      Transparent = True
      Layout = tlCenter
    end
    object LabelEdit4: TLabel
      Left = 5
      Top = 16
      Width = 157
      Height = 23
      AutoSize = False
      Caption = #1056#1077#1075#1080#1089#1090#1088'. '#1085#1086#1084#1077#1088':'
      Color = clInfoBk
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
    object LabelMaskEdit1: TLabel
      Left = 165
      Top = 15
      Width = 181
      Height = 23
      AutoSize = False
      Caption = #1044#1072#1090#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080':'
      Color = clInfoBk
      ParentColor = False
      Transparent = True
      Layout = tlCenter
    end
    object Bevel1: TBevel
      Left = 2
      Top = 190
      Width = 479
      Height = 3
      Shape = bsTopLine
    end
    object Edit4: TEdit
      Tag = 4
      Left = 90
      Top = 18
      Width = 70
      Height = 19
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 15
      ParentFont = False
      TabOrder = 0
      OnEnter = OnEnter
      OnExit = OnExit
    end
    object Edit8: TEdit
      Tag = 8
      Left = 40
      Top = 158
      Width = 60
      Height = 19
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnEnter = OnEnter
      OnExit = OnExit
      OnKeyPress = Edit8KeyPress
    end
    object Edit9: TEdit
      Tag = 9
      Left = 300
      Top = 158
      Width = 20
      Height = 19
      BiDiMode = bdLeftToRight
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 2
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 4
      OnEnter = OnEnter
      OnExit = OnExit
    end
    object GroupBox2: TGroupBox
      Left = 5
      Top = 40
      Width = 476
      Height = 107
      Caption = '( '#1087#1072#1089#1087#1086#1088#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077' )'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object LabelEdit7: TLabel
        Left = 5
        Top = 75
        Width = 333
        Height = 25
        AutoSize = False
        Caption = #1042#1099#1076#1072#1085':'
        Color = clInfoBk
        ParentColor = False
        Transparent = True
        Layout = tlCenter
      end
      object LabelMaskEdit2: TLabel
        Left = 220
        Top = 46
        Width = 114
        Height = 23
        AutoSize = False
        Caption = #1044#1072#1090#1072':'
        Color = clInfoBk
        ParentColor = False
        Transparent = True
        Layout = tlCenter
      end
      object LabelEdit6: TLabel
        Left = 5
        Top = 46
        Width = 197
        Height = 23
        AutoSize = False
        Caption = #1057#1077#1088#1080#1103' '#1080' '#8470':'
        Color = clInfoBk
        ParentColor = False
        Transparent = True
        Layout = tlCenter
      end
      object LabelEdit5: TLabel
        Left = 5
        Top = 15
        Width = 333
        Height = 25
        AutoSize = False
        Caption = #1060'.'#1048'.'#1054'.:'
        Color = clInfoBk
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
        Layout = tlCenter
      end
      object Edit7: TEdit
        Tag = 7
        Left = 45
        Top = 78
        Width = 420
        Height = 19
        BiDiMode = bdLeftToRight
        CharCase = ecUpperCase
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 85
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 3
        OnEnter = OnEnter
        OnExit = OnExit
      end
      object Edit6: TEdit
        Tag = 6
        Left = 70
        Top = 48
        Width = 130
        Height = 19
        CharCase = ecUpperCase
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 20
        ParentFont = False
        TabOrder = 1
        OnEnter = OnEnter
        OnExit = OnExit
      end
      object Edit5: TEdit
        Tag = 5
        Left = 45
        Top = 18
        Width = 420
        Height = 19
        CharCase = ecUpperCase
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 0
        OnEnter = OnEnter
        OnExit = OnExit
      end
      object dxDateEdit2: TdxDateEdit
        Tag = 2
        Left = 255
        Top = 47
        Width = 79
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnEnter = OnEnter
        OnExit = OnExit
        ReadOnly = False
        StyleController = DBForm.dxEditStyleController1
        Date = -700000
        DateValidation = True
        UseEditMask = True
        StoredValues = 68
      end
    end
    object dxDateEdit1: TdxDateEdit
      Tag = 1
      Left = 265
      Top = 16
      Width = 79
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnEnter = OnEnter
      OnExit = OnExit
      ReadOnly = False
      StyleController = DBForm.dxEditStyleController1
      Date = -700000
      DateValidation = True
      UseEditMask = True
      StoredValues = 68
    end
    object dxCheckEdit1: TdxCheckEdit
      Left = 0
      Top = 190
      Width = 181
      TabOrder = 5
      Caption = #1047#1072#1082#1083#1102#1095#1077#1085#1080#1077' '#1076#1086#1075#1086#1074#1086#1088#1072' '#1087#1086' '#1089#1091#1076#1091
      ReadOnly = True
      StyleController = DBForm.dxCheckEditStyleController1
      StoredValues = 64
    end
    object dxCheckEdit2: TdxCheckEdit
      Left = 198
      Top = 190
      Width = 131
      TabOrder = 6
      Caption = #1056#1077#1089#1090#1088#1091#1082#1090#1091#1088#1080#1079#1072#1094#1080#1103
      ReadOnly = False
      StyleController = DBForm.dxCheckEditStyleController1
      OnChange = dxCheckEdit2Change
      State = cbsChecked
      StoredValues = 64
    end
    object dxCheckEdit3: TdxCheckEdit
      Left = 344
      Top = 190
      Width = 135
      TabOrder = 7
      Caption = #1043#1072#1088#1072#1085#1090#1080#1081#1085#1086#1077' '#1087#1080#1089#1100#1084#1086
      ReadOnly = False
      StyleController = DBForm.dxCheckEditStyleController1
      OnChange = dxCheckEdit3Change
      StoredValues = 64
    end
  end
  object Edit1: TEdit
    Tag = 1
    Left = 10
    Top = 19
    Width = 111
    Height = 19
    BiDiMode = bdLeftToRight
    Ctl3D = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 9
    ParentBiDiMode = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    OnEnter = OnEnter
    OnExit = OnExit
    OnKeyPress = EditSearchKeyPress
  end
  object Edit2: TEdit
    Tag = 2
    Left = 128
    Top = 19
    Width = 361
    Height = 19
    Ctl3D = False
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object Edit3: TEdit
    Tag = 3
    Left = 10
    Top = 54
    Width = 479
    Height = 19
    Ctl3D = False
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object dxDBGrid1: TdxDBGrid
    Left = 0
    Top = 295
    Width = 489
    Height = 125
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'UKEY'
    SummaryGroups = <>
    SummarySeparator = ', '
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 5
    Visible = False
    DataSource = DBForm.dsAgreement
    Filter.Criteria = {00000000}
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
    object dxDBGrid1REG_NUMBER: TdxDBGridMaskColumn
      Caption = #1056#1077#1075'. '#8470
      Width = 45
      BandIndex = 0
      RowIndex = 0
      FieldName = 'REG_NUMBER'
    end
    object dxDBGrid1REG_DATE: TdxDBGridDateColumn
      Caption = #1056#1077#1075'. '#1076#1072#1090#1072
      Width = 55
      BandIndex = 0
      RowIndex = 0
      FieldName = 'REG_DATE'
    end
    object dxDBGrid1PASSPORT_FIO: TdxDBGridMaskColumn
      Caption = #1060'. '#1048'. '#1054'.'
      Sorted = csUp
      Width = 276
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PASSPORT_FIO'
    end
    object dxDBGrid1DEBT: TdxDBGridMaskColumn
      Caption = #1044#1086#1083#1075
      Width = 48
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DEBT'
    end
    object dxDBGrid1PERIOD: TdxDBGridMaskColumn
      Caption = #1055#1077#1088#1080#1086#1076
      Width = 45
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PERIOD'
    end
  end
end
