object frmPreReport: TfrmPreReport
  Left = 356
  Top = 269
  ActiveControl = bBtnOk
  BorderStyle = bsToolWindow
  Caption = #1054#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077' '#1091#1089#1083#1086#1074#1080#1081
  ClientHeight = 245
  ClientWidth = 295
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 14
  object RadioGroup: TRadioGroup
    Left = 0
    Top = 0
    Width = 160
    Height = 217
    Caption = '( '#1056#1045#1043#1048#1054#1053#1067' )'
    Ctl3D = False
    Enabled = False
    Items.Strings = (
      #1046#1086#1074#1090#1085#1077#1074#1099#1081
      #1055#1088#1080#1084#1086#1088#1089#1082#1080#1081
      #1048#1083#1100#1080#1095#1077#1074#1089#1082#1080#1081
      #1054#1088#1076#1078#1086#1085#1080#1082#1080#1076#1079#1077#1074#1089#1082#1080#1081
      #1055#1077#1088#1074#1086#1084#1072#1081#1089#1082
      #1053#1086#1074#1086#1072#1079#1086#1074#1089#1082
      #1042#1086#1083#1086#1076#1072#1088#1089#1082
      #1054#1088#1078'.+'#1053#1086#1074#1086#1072#1079'.'
      #1046#1086#1074#1090#1085'.+'#1042#1086#1083#1086#1076'.'
      #1055#1088#1080#1084'.+'#1055#1077#1088#1074#1086#1084'.')
    ParentCtl3D = False
    TabOrder = 0
  end
  object GroupBox: TGroupBox
    Left = 165
    Top = 0
    Width = 130
    Height = 95
    Caption = '( '#1044#1040#1058#1040'   '#1056#1045#1043'. )'
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    object Label1: TLabel
      Left = 10
      Top = 20
      Width = 15
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      Caption = #1089
      Layout = tlCenter
    end
    object Label2: TLabel
      Left = 10
      Top = 44
      Width = 15
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      Caption = #1087#1086
      Layout = tlCenter
    end
    object Label3: TLabel
      Left = 10
      Top = 75
      Width = 110
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = #1074#1082#1083#1102#1095#1080#1090#1077#1083#1100#1085#1086
      Enabled = False
    end
    object DateTimePicker2: TDateTimePicker
      Left = 34
      Top = 44
      Width = 91
      Height = 22
      CalAlignment = dtaLeft
      Date = 37545.7212671991
      Time = 37545.7212671991
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 0
    end
    object DateTimePicker1: TDateTimePicker
      Left = 34
      Top = 20
      Width = 91
      Height = 22
      CalAlignment = dtaLeft
      Date = 37545.7212671991
      Time = 37545.7212671991
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 1
    end
  end
  object bBtnOk: TBitBtn
    Left = 200
    Top = 216
    Width = 91
    Height = 25
    Caption = '&'#1055#1088#1080#1085#1103#1090#1100
    Default = True
    ModalResult = 1
    TabOrder = 2
    OnClick = bBtnOkClick
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
  object dxCheckEdit: TdxCheckEdit
    Left = 0
    Top = 225
    Width = 160
    Hint = #1056#1072#1079#1088#1077#1096#1080#1090#1100' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1099#1093' '#1076#1072#1085#1085#1099#1093
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = dxCheckEditClick
    AutoSize = False
    Caption = #1087#1086' '#1074#1089#1077#1084' '#1088#1077#1075#1080#1086#1085#1072#1084
    StyleController = DBForm.dxCheckEditStyleController1
    State = cbsChecked
    Height = 17
  end
end
