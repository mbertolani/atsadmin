object fIncluirProdutos: TfIncluirProdutos
  Left = 299
  Top = 145
  Width = 794
  Height = 575
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MMJPanel1: TMMJPanel
    Left = 0
    Top = 0
    Width = 778
    Height = 208
    Align = alTop
    BevelOuter = bvLowered
    BevelWidth = 2
    TabOrder = 0
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clTeal
    Background.EndColor = clGray
    Background.FillType = GradUpDown
    object lbl1: TLabel
      Left = 152
      Top = 6
      Width = 175
      Height = 19
      Caption = 'Descri'#231#227'o do Produto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Cooper Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lbl2: TLabel
      Left = 12
      Top = 72
      Width = 94
      Height = 19
      Caption = 'Quantidade'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Cooper Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lbl3: TLabel
      Left = 122
      Top = 72
      Width = 122
      Height = 19
      Caption = 'Valor Unit'#225'rio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Cooper Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lbl4: TLabel
      Left = 373
      Top = 73
      Width = 94
      Height = 19
      Caption = 'Valor Total'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Cooper Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lbl5: TLabel
      Left = 13
      Top = 6
      Width = 57
      Height = 19
      Caption = 'C'#243'digo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Cooper Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lbl6: TLabel
      Left = 267
      Top = 73
      Width = 98
      Height = 19
      Caption = 'Acrescimo%'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Cooper Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lbl7: TLabel
      Left = 13
      Top = 135
      Width = 83
      Height = 19
      Caption = 'Atendente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Cooper Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lbl8: TLabel
      Left = 265
      Top = 137
      Width = 105
      Height = 19
      Caption = 'Colaborador'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Cooper Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lbl9: TLabel
      Left = 518
      Top = 137
      Width = 50
      Height = 19
      Caption = 'Suites'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Cooper Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lbl10: TLabel
      Left = 520
      Top = 75
      Width = 62
      Height = 19
      Caption = 'Pagou ?'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Cooper Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lbl11: TLabel
      Left = 641
      Top = 73
      Width = 92
      Height = 19
      Caption = #201' cortesia ?'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Cooper Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Edit3: TJvCalcEdit
      Left = 12
      Top = 93
      Width = 107
      Height = 41
      BevelKind = bkFlat
      BorderStyle = bsNone
      DisplayFormat = ',##0.000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -29
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ShowButton = False
      TabOrder = 2
      Value = 1.000000000000000000
      DecimalPlacesAlwaysShown = False
    end
    object Edit4: TJvCalcEdit
      Left = 121
      Top = 93
      Width = 140
      Height = 41
      BevelKind = bkFlat
      BorderStyle = bsNone
      DisplayFormat = ',##0.000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -29
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ShowButton = False
      TabOrder = 3
      DecimalPlacesAlwaysShown = False
    end
    object JvCalcEdit1: TJvCalcEdit
      Left = 372
      Top = 93
      Width = 145
      Height = 41
      TabStop = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = cl3DLight
      DisplayFormat = ',##0.000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -29
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      ShowButton = False
      TabOrder = 10
      DecimalPlacesAlwaysShown = False
    end
    object edPorcento: TJvCalcEdit
      Left = 263
      Top = 93
      Width = 107
      Height = 41
      BevelKind = bkFlat
      BorderStyle = bsNone
      DisplayFormat = ',##0.000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -29
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ShowButton = False
      TabOrder = 4
      DecimalPlacesAlwaysShown = False
    end
    object edt1: TEdit
      Left = 12
      Top = 28
      Width = 136
      Height = 40
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -29
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '00000001'
    end
    object cbbGarcom: TComboBox
      Left = 12
      Top = 156
      Width = 251
      Height = 40
      BevelKind = bkFlat
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -29
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ItemHeight = 32
      ParentFont = False
      TabOrder = 7
    end
    object cbbGarota: TComboBox
      Left = 265
      Top = 156
      Width = 250
      Height = 40
      BevelKind = bkFlat
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -29
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ItemHeight = 32
      ParentFont = False
      TabOrder = 8
    end
    object cbbSuites: TComboBox
      Left = 517
      Top = 156
      Width = 251
      Height = 40
      BevelKind = bkFlat
      CharCase = ecUpperCase
      Color = cl3DLight
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -29
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ItemHeight = 32
      ParentFont = False
      TabOrder = 9
    end
    object cbb1: TComboBox
      Left = 519
      Top = 94
      Width = 120
      Height = 40
      BevelKind = bkFlat
      CharCase = ecUpperCase
      Color = cl3DLight
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -29
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ItemHeight = 32
      ParentFont = False
      TabOrder = 5
      Items.Strings = (
        'SIM'
        'N'#195'O')
    end
    object cbbCortesia: TComboBox
      Left = 641
      Top = 94
      Width = 126
      Height = 40
      BevelKind = bkFlat
      CharCase = ecUpperCase
      Color = cl3DLight
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -29
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ItemHeight = 32
      ParentFont = False
      TabOrder = 6
      Items.Strings = (
        'SIM'
        'N'#195'O')
    end
    object JvDBSearchEdit1: TJvDBSearchEdit
      Left = 151
      Top = 28
      Width = 617
      Height = 40
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -29
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'JvDBSearchEdit1'
    end
  end
  object JvDBGrid1: TJvDBGrid
    Left = 0
    Top = 208
    Width = 778
    Height = 329
    Align = alClient
    BorderStyle = bsNone
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    BevelKind = bkFlat
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
  end
end
