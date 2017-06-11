object frmReferenceChange: TfrmReferenceChange
  Left = 501
  Top = 274
  BorderStyle = bsToolWindow
  Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077
  ClientHeight = 77
  ClientWidth = 291
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    291
    77)
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 20
    Width = 291
    Height = 30
  end
  object Label1: TLabel
    Left = 5
    Top = 23
    Width = 282
    Height = 23
    AutoSize = False
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':'
    Color = clInfoBk
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
  end
  object Label0: TLabel
    Left = 0
    Top = 0
    Width = 291
    Height = 15
    Align = alTop
    AutoSize = False
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' "'#1056#1045#1064#1045#1053#1048#1045' '#1057#1059#1044#1040'"'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Layout = tlBottom
  end
  object Edit1: TEdit
    Left = 85
    Top = 25
    Width = 200
    Height = 19
    Ctl3D = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    OnEnter = OnEnter
    OnExit = OnExit
  end
  object bBtnOk: TBitBtn
    Left = 111
    Top = 53
    Width = 90
    Height = 25
    Anchors = [akTop, akRight]
    Caption = #1055#1088#1080#1085#1103#1090#1100
    TabOrder = 1
    OnClick = bBtnOkClick
    Kind = bkOK
  end
  object bBtnCancel: TBitBtn
    Left = 201
    Top = 53
    Width = 90
    Height = 25
    Anchors = [akTop, akRight]
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    TabOrder = 2
    OnClick = bBtnCancelClick
    Kind = bkCancel
  end
end
