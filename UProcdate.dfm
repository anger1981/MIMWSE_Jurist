object frmProcdate: TfrmProcdate
  Left = 470
  Top = 310
  BorderStyle = bsDialog
  Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1087#1077#1088#1080#1086#1076#1072
  ClientHeight = 51
  ClientWidth = 160
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 5
    Top = 5
    Width = 153
    Height = 23
    AutoSize = False
    Caption = #1058#1077#1082#1091#1097#1080#1081' '#1087#1077#1088#1080#1086#1076':'
    Color = clInfoBk
    ParentColor = False
    Layout = tlCenter
  end
  object ToolbarButton971: TToolbarButton97
    Left = 5
    Top = 30
    Width = 153
    Height = 21
    Cursor = crHandPoint
    Caption = #1055#1077#1088#1077#1081#1090#1080' '#1085#1072' '#1085#1086#1074#1099#1081
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Glyph.Data = {00000000}
    GlyphMask.Data = {00000000}
    ImageIndex = 32
    Images = DBForm.ImageList
    ParentFont = False
    OnClick = ToolbarButton971Click
  end
  object Edit1: TEdit
    Left = 96
    Top = 7
    Width = 60
    Height = 19
    Ctl3D = False
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    Text = '0.00.0000'
  end
end
