object frmAccess: TfrmAccess
  Left = 461
  Top = 323
  BorderStyle = bsDialog
  Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1087#1088#1072#1074
  ClientHeight = 305
  ClientWidth = 408
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 408
    Height = 305
    ActivePage = TabSheet1
    TabIndex = 0
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1055#1088#1072#1074#1072' ('#1076#1083#1103' '#1075#1088#1091#1087#1087') '#1085#1072' '#1088#1077#1089#1091#1088#1089#1099
      object Label1: TLabel
        Left = 180
        Top = 0
        Width = 220
        Height = 20
        AutoSize = False
        Caption = '  '#1044#1086#1089#1090#1091#1087' '#1082' '#1088#1077#1089#1091#1088#1089#1072#1084
        Layout = tlCenter
      end
      object CheckListBox1: TCheckListBox
        Left = 180
        Top = 20
        Width = 220
        Height = 257
        OnClickCheck = ChAccessClick
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        Items.Strings = (
          #1070#1056#1048#1057#1058': '#1079#1072#1082#1088#1099#1090#1080#1077' '#1076#1077#1083#1072' ('#1079#1072#1084#1099#1082#1072#1085#1080#1077')'
          #1070#1056#1048#1057#1058': '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103' '#1076#1072#1085#1085#1099#1093
          #1070#1056#1048#1057#1058': '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1077' '#1080#1079#1084#1077#1085#1077#1085#1080#1081
          #1070#1056#1048#1057#1058': '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1076#1072#1085#1085#1099#1093
          #1070#1056#1048#1057#1058': '#1074#1086#1089#1089#1090#1072#1085#1086#1074#1083#1077#1085#1080#1077' '#1080#1079' '#1072#1088#1093#1080#1074#1072
          #1057#1055#1056': '#1080#1079#1084#1077#1085#1077#1085#1080#1077' '#1087#1077#1088#1080#1086#1076#1072
          #1057#1055#1056': '#1080#1079#1084#1077#1085#1077#1085#1080#1077' '#1087#1088#1072#1074
          #1044#1054#1051#1043': '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103' '#1076#1072#1085#1085#1099#1093)
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object DBGrid1: TDBGrid
        Tag = 1
        Left = 0
        Top = 0
        Width = 181
        Height = 277
        Ctl3D = False
        DataSource = DBForm.dsSysGroup
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBGrid1CellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'NAME'
            Title.Caption = #1048#1084#1077#1085#1072' '#1075#1088#1091#1087#1087
            Width = 160
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080' '#1074' '#1075#1088#1091#1087#1087#1072#1093
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Tag = 2
        Left = 0
        Top = 0
        Width = 400
        Height = 132
        Align = alClient
        Ctl3D = False
        DataSource = DBForm.dsSysUser
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        PopupMenu = PopupMenu2
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBGrid2CellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'NAME'
            Title.Caption = #1048#1084#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
            Width = 245
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOGIN'
            Title.Caption = #1051#1086#1075#1080#1085
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PASS'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Caption = #1055#1072#1088#1086#1083#1100
            Width = 50
            Visible = True
          end>
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 197
        Width = 400
        Height = 80
        Align = alBottom
        Caption = '( '#1050#1054#1056#1056#1045#1050#1058#1048#1056#1054#1042#1050#1040' )'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        object tBtnSave: TToolbarButton97
          Left = 377
          Top = 16
          Width = 20
          Height = 20
          Cursor = crHandPoint
          Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
          Glyph.Data = {00000000}
          GlyphMask.Data = {00000000}
          ImageIndex = 33
          Images = DBForm.ImageList
          OnClick = tBtnSaveClick
        end
        object Label2: TLabel
          Left = 2
          Top = 38
          Width = 150
          Height = 22
          AutoSize = False
          Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1075#1088#1091#1087#1087#1099' '#1076#1086#1089#1090#1091#1087#1072':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object Edit1: TEdit
          Left = 2
          Top = 17
          Width = 245
          Height = 19
          AutoSize = False
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          Text = 'Edit1'
          OnChange = ChUserClick
        end
        object Edit2: TEdit
          Left = 248
          Top = 17
          Width = 75
          Height = 19
          AutoSize = False
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          Text = 'Edit2'
          OnChange = ChUserClick
        end
        object Edit3: TEdit
          Left = 324
          Top = 17
          Width = 50
          Height = 19
          AutoSize = False
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          PasswordChar = '*'
          TabOrder = 2
          Text = 'Edit3'
          OnChange = ChUserClick
        end
        object ComboBox1: TComboBox
          Left = 152
          Top = 38
          Width = 222
          Height = 22
          BevelKind = bkTile
          Style = csOwnerDrawFixed
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
          OnChange = ChUserClick
        end
        object CheckBox1: TCheckBox
          Left = 2
          Top = 62
          Width = 220
          Height = 15
          Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103'   ('#1074#1082#1083'./'#1074#1099#1082#1083'.)'
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
          OnClick = ChUserClick
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 132
        Width = 400
        Height = 65
        Align = alBottom
        Caption = '( '#1044#1054#1041#1040#1042#1051#1045#1053#1048#1045' )'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        Visible = False
        object tBtnAdd: TToolbarButton97
          Left = 377
          Top = 16
          Width = 20
          Height = 20
          Cursor = crHandPoint
          Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
          Glyph.Data = {00000000}
          GlyphMask.Data = {00000000}
          ImageIndex = 33
          Images = DBForm.ImageList
          OnClick = tBtnAddClick
        end
        object Label3: TLabel
          Left = 2
          Top = 38
          Width = 150
          Height = 22
          AutoSize = False
          Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1075#1088#1091#1087#1087#1099' '#1076#1086#1089#1090#1091#1087#1072':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object tBtnCancel: TToolbarButton97
          Left = 377
          Top = 39
          Width = 20
          Height = 20
          Cursor = crHandPoint
          Hint = #1054#1090#1084#1077#1085#1080#1090#1100' '#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1085#1086#1074#1086#1075#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
          Glyph.Data = {00000000}
          GlyphMask.Data = {00000000}
          ImageIndex = 37
          Images = DBForm.ImageList
          OnClick = tBtnCancelClick
        end
        object Edit4: TEdit
          Left = 2
          Top = 17
          Width = 245
          Height = 19
          AutoSize = False
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnChange = ChUserClick
        end
        object Edit5: TEdit
          Left = 248
          Top = 17
          Width = 75
          Height = 19
          AutoSize = False
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          OnChange = ChUserClick
        end
        object Edit6: TEdit
          Left = 324
          Top = 17
          Width = 50
          Height = 19
          AutoSize = False
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          PasswordChar = '*'
          TabOrder = 2
          OnChange = ChUserClick
        end
        object ComboBox2: TComboBox
          Left = 152
          Top = 38
          Width = 222
          Height = 22
          BevelKind = bkTile
          Style = csOwnerDrawFixed
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
          OnChange = ChUserClick
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Images = DBForm.ImageList
    Left = 50
    Top = 90
    object smenuAdd1: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      ImageIndex = 49
      ShortCut = 16429
      OnClick = smenuAdd1Click
    end
    object smenuEdit1: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      ImageIndex = 29
      ShortCut = 16397
      OnClick = smenuEdit1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object smenuDel1: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 50
      ShortCut = 16430
      OnClick = smenuDel1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Images = DBForm.ImageList
    Left = 370
    Top = 60
    object smenuAdd2: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      ImageIndex = 49
      ShortCut = 16429
      OnClick = smenuAdd2Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object smenuDel2: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 50
      ShortCut = 16430
      OnClick = smenuDel2Click
    end
  end
end
