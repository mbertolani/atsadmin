inherited fEstado: TfEstado
  Left = 287
  Top = 141
  Width = 676
  Height = 764
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Classifica'#231#227'o Fiscal por Estado'
  Font.Height = -13
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label18: TLabel [0]
    Left = 150
    Top = 57
    Width = 25
    Height = 16
    Hint = 'Codigo Situa'#231#227'o Tribut'#225'ria'
    Anchors = [akTop]
    Caption = 'CST'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Cooper Blk BT'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Transparent = True
  end
  inherited MMJPanel1: TMMJPanel
    Top = 683
    Width = 668
    Anchors = [akBottom]
    inherited btnIncluir: TBitBtn [0]
      Left = 220
      Anchors = [akTop, akBottom]
    end
    inherited btnGravar: TBitBtn [1]
      Left = 220
      Anchors = [akTop, akBottom]
    end
    inherited btnCancelar: TBitBtn
      Left = 333
      Anchors = [akTop, akBottom]
    end
    inherited btnExcluir: TBitBtn
      Left = 333
      Anchors = [akTop, akBottom]
    end
    inherited btnProcurar: TBitBtn
      Left = 106
      Anchors = [akTop, akBottom]
      Caption = 'CFOP'
      OnClick = btnProcurarClick
    end
    inherited btnSair: TBitBtn
      Left = 446
      Anchors = [akTop, akBottom]
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 668
    Height = 153
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Cooper Blk BT'
    ParentFont = False
    inherited Label1: TLabel
      Top = -74
    end
    inherited Label2: TLabel
      Top = -75
    end
    object DBText2: TDBText
      Left = 12
      Top = 9
      Width = 661
      Height = 41
      DataField = 'CFNOME'
      DataSource = DtSrc
      PopupMenu = PopupMenu1
      Transparent = True
    end
    object Label3: TLabel
      Left = 11
      Top = 57
      Width = 36
      Height = 16
      Anchors = [akTop]
      Caption = 'CFOP'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 98
      Top = 57
      Width = 17
      Height = 16
      Hint = 'Estado'
      Anchors = [akTop]
      Caption = 'UF'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Transparent = True
    end
    object Label8: TLabel
      Left = 269
      Top = 57
      Width = 62
      Height = 16
      Anchors = [akTop]
      Caption = 'Aliq. ICMS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 350
      Top = 57
      Width = 74
      Height = 16
      Anchors = [akTop]
      Caption = 'Red.B. C'#225'lc.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label10: TLabel
      Left = 437
      Top = 57
      Width = 29
      Height = 16
      Hint = 'Margem De Valor Agregado(ST)'
      Anchors = [akTop]
      Caption = 'MVA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Transparent = True
    end
    object Label11: TLabel
      Left = 503
      Top = 57
      Width = 74
      Height = 16
      Anchors = [akTop]
      Caption = 'Icms Origem'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label12: TLabel
      Left = 587
      Top = 57
      Width = 76
      Height = 16
      Anchors = [akTop]
      Caption = 'Icms Destino'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label13: TLabel
      Left = 142
      Top = 57
      Width = 25
      Height = 16
      Hint = 'Codigo Situa'#231#227'o Tribut'#225'ria'
      Anchors = [akTop]
      Caption = 'CST'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Transparent = True
    end
    object Label7: TLabel
      Left = 76
      Top = 105
      Width = 15
      Height = 16
      Hint = 'Imposto sobre produtos industrializados'
      Anchors = [akTop]
      Caption = 'IPI'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Transparent = True
    end
    object Label5: TLabel
      Left = 431
      Top = 105
      Width = 72
      Height = 16
      Anchors = [akTop]
      Caption = 'Tipo Pessoa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label9: TLabel
      Left = 207
      Top = 105
      Width = 21
      Height = 16
      Hint = 'Programa de Integra'#231#227'o Social'
      Anchors = [akTop]
      Caption = 'PIS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Transparent = True
    end
    object Label14: TLabel
      Left = 365
      Top = 105
      Width = 48
      Height = 16
      Hint = 'Contribui'#231#227'o para o Financiamento da Seguridade Social'
      Anchors = [akTop]
      Caption = 'COFINS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Transparent = True
    end
    object Label15: TLabel
      Left = 11
      Top = 105
      Width = 44
      Height = 16
      Anchors = [akTop]
      Caption = 'CST IPI'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label16: TLabel
      Left = 136
      Top = 105
      Width = 50
      Height = 16
      Anchors = [akTop]
      Caption = 'CST PIS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label17: TLabel
      Left = 275
      Top = 105
      Width = 77
      Height = 16
      Anchors = [akTop]
      Caption = 'CST COFINS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label19: TLabel
      Left = 205
      Top = 57
      Width = 46
      Height = 16
      Hint = 'Codigo Situa'#231#227'o Tribut'#225'ria'
      Anchors = [akTop]
      Caption = 'CSOSN'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Transparent = True
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 73
      Width = 81
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'CFOP'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = FormKeyPress
    end
    object DBEdit2: TDBEdit
      Left = 93
      Top = 73
      Width = 38
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'UF'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = FormKeyPress
    end
    object DBEdit9: TDBEdit
      Left = 133
      Top = 73
      Width = 61
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'CST'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyPress = FormKeyPress
    end
    object DBEdit3: TDBEdit
      Left = 263
      Top = 73
      Width = 76
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'ICMS'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnKeyPress = FormKeyPress
    end
    object DBEdit4: TDBEdit
      Left = 344
      Top = 73
      Width = 79
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'REDUCAO'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnKeyPress = FormKeyPress
    end
    object DBEdit6: TDBEdit
      Left = 429
      Top = 73
      Width = 69
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'ICMS_SUBSTRIB'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnKeyPress = FormKeyPress
    end
    object DBEdit7: TDBEdit
      Left = 502
      Top = 73
      Width = 77
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'ICMS_SUBSTRIB_IC'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnKeyPress = FormKeyPress
    end
    object DBEdit8: TDBEdit
      Left = 584
      Top = 73
      Width = 79
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'ICMS_SUBSTRIB_IND'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnKeyPress = FormKeyPress
    end
    object DBEdit5: TDBEdit
      Left = 71
      Top = 121
      Width = 56
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'IPI'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnKeyPress = FormKeyPress
    end
    object ComboBox1: TComboBox
      Left = 428
      Top = 121
      Width = 93
      Height = 24
      AutoComplete = False
      Anchors = [akTop]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 9
      OnChange = ComboBox1Change
      OnKeyPress = FormKeyPress
      Items.Strings = (
        'F'#237'sica'
        'Jur'#237'dica')
    end
    object DBEdit10: TDBEdit
      Left = 203
      Top = 121
      Width = 64
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'PIS'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnKeyPress = FormKeyPress
    end
    object DBEdit11: TDBEdit
      Left = 362
      Top = 121
      Width = 63
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'COFINS'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnKeyPress = FormKeyPress
    end
    object DBEdit12: TDBEdit
      Left = 8
      Top = 121
      Width = 57
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'CSTIPI'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnKeyPress = FormKeyPress
    end
    object DBEdit13: TDBEdit
      Left = 133
      Top = 121
      Width = 66
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'CSTPIS'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      OnKeyPress = FormKeyPress
    end
    object DBEdit14: TDBEdit
      Left = 273
      Top = 121
      Width = 84
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'CSTCOFINS'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      OnKeyPress = FormKeyPress
    end
    object CheckBox1: TCheckBox
      Left = 527
      Top = 124
      Width = 122
      Height = 13
      Anchors = [akTop]
      Caption = 'N'#227'o Gera Fatura'
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 15
      OnClick = CheckBox1Click
    end
    object DBEdit21: TDBEdit
      Left = 199
      Top = 73
      Width = 61
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'CSOSN'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
      OnKeyPress = FormKeyPress
    end
  end
  object DBGrid1: TDBGrid [3]
    Left = 0
    Top = 344
    Width = 668
    Height = 339
    Align = alClient
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CFOP'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CFNOME'
        Title.Caption = 'CFOP - Nome'
        Width = 195
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CST'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CSOSN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REDUCAO'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CSTIPI'
        Title.Caption = 'CST IPI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IPI'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS_SUBSTRIB'
        Title.Caption = 'MVA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS_SUBSTRIB_IC'
        Title.Caption = 'ICMS Origem'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS_SUBSTRIB_IND'
        Title.Caption = 'ICMS Destino'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CSTPIS'
        Title.Caption = 'CST PIS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PIS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CSTCOFINS'
        Title.Caption = 'CST COFINS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COFINS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PESSOA'
        Title.Caption = 'Pessoa'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DADOSADC1'
        Title.Caption = 'Dados Adicionais 1'
        Width = 700
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DADOSADC2'
        Title.Caption = 'Dados Adicionais 2'
        Width = 700
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DADOSADC3'
        Title.Caption = 'Dados Adicionais 3'
        Width = 700
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DADOSADC4'
        Title.Caption = 'Dados Adicionais 4'
        Width = 700
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DADOSADC5'
        Title.Caption = 'Dados Adicionais 5'
        Width = 700
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DADOSADC6'
        Title.Caption = 'Dados Adicionais 6'
        Width = 700
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox [4]
    Left = 0
    Top = 153
    Width = 668
    Height = 191
    Align = alTop
    Caption = 'Dados Adicionais'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Cooper Blk BT'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    DesignSize = (
      668
      191)
    object DBEdit15: TDBEdit
      Left = 9
      Top = 18
      Width = 627
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'DADOSADC1'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = FormKeyPress
    end
    object DBEdit16: TDBEdit
      Left = 9
      Top = 47
      Width = 627
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'DADOSADC2'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = FormKeyPress
    end
    object DBEdit17: TDBEdit
      Left = 9
      Top = 76
      Width = 627
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'DADOSADC3'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyPress = FormKeyPress
    end
    object DBEdit18: TDBEdit
      Left = 9
      Top = 104
      Width = 627
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'DADOSADC4'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnKeyPress = FormKeyPress
    end
    object DBEdit19: TDBEdit
      Left = 9
      Top = 132
      Width = 627
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'DADOSADC5'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnKeyPress = FormKeyPress
    end
    object DBEdit20: TDBEdit
      Left = 9
      Top = 160
      Width = 627
      Height = 24
      Anchors = [akTop]
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'DADOSADC6'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnKeyPress = FormKeyPress
    end
  end
  inherited XPMenu1: TXPMenu
    Left = 568
  end
  inherited PopupMenu1: TPopupMenu
    Left = 616
  end
  inherited DtSrc: TDataSource
    DataSet = cds_estado
    Left = 408
  end
  object sds: TSQLDataSet
    CommandText = 
      'select esta.CODESTADO, esta.CFOP'#13#10'        , esta.UF        , est' +
      'a.ICMS'#13#10'        , esta.REDUCAO        , cfo.CFNOME'#13#10'        , es' +
      'ta.IPI         , esta.CSTIPI'#13#10'        , esta.ICMS_SUBSTRIB, esta' +
      '.ICMS_SUBSTRIB_IC'#13#10'        , esta.ICMS_SUBSTRIB_IND, esta.CST'#13#10' ' +
      '       , esta.PESSOA'#13#10'        , esta.PIS , esta.COFINS , esta.CS' +
      'TPIS , esta.CSTCOFINS'#13#10'        , esta.DADOSADC1        , esta.DA' +
      'DOSADC2'#13#10'        , esta.DADOSADC3        , esta.DADOSADC4'#13#10'     ' +
      '   , esta.DADOSADC5        , esta.DADOSADC6'#13#10'        , esta.NAOE' +
      'NVFATURA, esta.CSOSN'#13#10'FROM ESTADO_ICMS esta '#13#10'left outer join CF' +
      'OP cfo on cfo.CFCOD = esta.CFOP '#13#10'order by esta.CFOP'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 288
    Top = 8
    object sdsUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 3
    end
    object sdsICMS: TFloatField
      FieldName = 'ICMS'
    end
    object sdsREDUCAO: TFloatField
      FieldName = 'REDUCAO'
    end
    object sdsCFNOME: TStringField
      FieldName = 'CFNOME'
      ProviderFlags = []
      Size = 250
    end
    object sdsIPI: TFloatField
      FieldName = 'IPI'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCFOP: TStringField
      DisplayWidth = 30
      FieldName = 'CFOP'
      Required = True
      FixedChar = True
      Size = 30
    end
    object sdsICMS_SUBSTRIB: TFloatField
      FieldName = 'ICMS_SUBSTRIB'
    end
    object sdsICMS_SUBSTRIB_IC: TFloatField
      FieldName = 'ICMS_SUBSTRIB_IC'
    end
    object sdsICMS_SUBSTRIB_IND: TFloatField
      FieldName = 'ICMS_SUBSTRIB_IND'
    end
    object sdsCST: TStringField
      FieldName = 'CST'
      FixedChar = True
      Size = 3
    end
    object sdsCODESTADO: TIntegerField
      FieldName = 'CODESTADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsPESSOA: TStringField
      FieldName = 'PESSOA'
      Size = 8
    end
    object sdsPIS: TFloatField
      FieldName = 'PIS'
    end
    object sdsCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object sdsCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Size = 2
    end
    object sdsCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Size = 2
    end
    object sdsCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      Size = 2
    end
    object sdsDADOSADC1: TStringField
      FieldName = 'DADOSADC1'
      Size = 200
    end
    object sdsDADOSADC2: TStringField
      FieldName = 'DADOSADC2'
      Size = 200
    end
    object sdsDADOSADC3: TStringField
      FieldName = 'DADOSADC3'
      Size = 200
    end
    object sdsDADOSADC4: TStringField
      FieldName = 'DADOSADC4'
      Size = 200
    end
    object sdsNAOENVFATURA: TStringField
      FieldName = 'NAOENVFATURA'
      FixedChar = True
      Size = 1
    end
    object sdsDADOSADC5: TStringField
      FieldName = 'DADOSADC5'
      Size = 200
    end
    object sdsDADOSADC6: TStringField
      FieldName = 'DADOSADC6'
      Size = 200
    end
    object sdsCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 3
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Left = 328
    Top = 8
  end
  object cds_estado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    OnPostError = cds_estadoPostError
    OnReconcileError = cds_estadoReconcileError
    Left = 368
    Top = 8
    object cds_estadoCFOP: TStringField
      FieldName = 'CFOP'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cds_estadoUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 3
    end
    object cds_estadoICMS: TFloatField
      FieldName = 'ICMS'
    end
    object cds_estadoREDUCAO: TFloatField
      FieldName = 'REDUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_estadoCFNOME: TStringField
      FieldName = 'CFNOME'
      ProviderFlags = []
      Size = 250
    end
    object cds_estadoIPI: TFloatField
      FieldName = 'IPI'
      ProviderFlags = [pfInUpdate]
    end
    object cds_estadoICMS_SUBSTRIB: TFloatField
      FieldName = 'ICMS_SUBSTRIB'
    end
    object cds_estadoICMS_SUBSTRIB_IC: TFloatField
      FieldName = 'ICMS_SUBSTRIB_IC'
    end
    object cds_estadoICMS_SUBSTRIB_IND: TFloatField
      FieldName = 'ICMS_SUBSTRIB_IND'
    end
    object cds_estadoCST: TStringField
      FieldName = 'CST'
      FixedChar = True
      Size = 3
    end
    object cds_estadoCODESTADO: TIntegerField
      FieldName = 'CODESTADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_estadoPESSOA: TStringField
      FieldName = 'PESSOA'
      Size = 8
    end
    object cds_estadoPIS: TFloatField
      FieldName = 'PIS'
    end
    object cds_estadoCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object cds_estadoCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Size = 2
    end
    object cds_estadoCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Size = 2
    end
    object cds_estadoCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      Size = 2
    end
    object cds_estadoDADOSADC1: TStringField
      FieldName = 'DADOSADC1'
      Size = 200
    end
    object cds_estadoDADOSADC2: TStringField
      FieldName = 'DADOSADC2'
      Size = 200
    end
    object cds_estadoDADOSADC3: TStringField
      FieldName = 'DADOSADC3'
      Size = 200
    end
    object cds_estadoDADOSADC4: TStringField
      FieldName = 'DADOSADC4'
      Size = 200
    end
    object cds_estadoNAOENVFATURA: TStringField
      FieldName = 'NAOENVFATURA'
      FixedChar = True
      Size = 1
    end
    object cds_estadoDADOSADC5: TStringField
      FieldName = 'DADOSADC5'
      Size = 200
    end
    object cds_estadoDADOSADC6: TStringField
      FieldName = 'DADOSADC6'
      Size = 200
    end
    object cds_estadoCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 3
    end
  end
end
