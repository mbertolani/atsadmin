inherited fProdutoCadastro: TfProdutoCadastro
  Top = 58
  Width = 797
  Height = 543
  Font.Height = -13
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label3: TLabel [0]
    Left = 195
    Top = 62
    Width = 105
    Height = 16
    Caption = 'C'#243'digo de Barra :'
  end
  object Label4: TLabel [1]
    Left = 559
    Top = 62
    Width = 85
    Height = 16
    Caption = 'C'#243'digo Prod. :'
  end
  object Label5: TLabel [2]
    Left = 3
    Top = 87
    Width = 131
    Height = 16
    Caption = 'Descri'#231#227'o do Produto'
  end
  object Label6: TLabel [3]
    Left = 517
    Top = 87
    Width = 52
    Height = 16
    Caption = 'Unidade'
  end
  object Label7: TLabel [4]
    Left = 701
    Top = 87
    Width = 34
    Height = 16
    Caption = '(Kg,L)'
  end
  object Label8: TLabel [5]
    Left = 605
    Top = 87
    Width = 70
    Height = 16
    Caption = 'Quantidade'
  end
  object Label9: TLabel [6]
    Left = 4
    Top = 134
    Width = 38
    Height = 16
    Caption = 'Marca'
  end
  object Label10: TLabel [7]
    Left = 234
    Top = 129
    Width = 91
    Height = 16
    Caption = 'Fam'#237'lia / Grupo'
  end
  object Label11: TLabel [8]
    Left = 516
    Top = 129
    Width = 134
    Height = 16
    Caption = 'Categoria / Sub-Grupo'
  end
  object Label28: TLabel [9]
    Left = 8
    Top = 59
    Width = 28
    Height = 16
    Caption = 'Tipo'
  end
  object Label30: TLabel [10]
    Left = 540
    Top = 398
    Width = 89
    Height = 16
    Caption = 'Gera Despesa'
  end
  object Label31: TLabel [11]
    Left = 358
    Top = 397
    Width = 47
    Height = 16
    Caption = 'Imprimir'
  end
  object DBRadioGroup3: TDBRadioGroup [12]
    Left = 411
    Top = 385
    Width = 129
    Height = 32
    Columns = 2
    DataField = 'IMPRIMIR'
    DataSource = DtSrc
    Items.Strings = (
      'Sim'
      'N'#227'o')
    TabOrder = 29
    Values.Strings = (
      'S'
      'N')
  end
  object DBRadioGroup1: TDBRadioGroup [13]
    Left = 633
    Top = 386
    Width = 129
    Height = 32
    Columns = 2
    DataField = 'GERADESCONTO'
    DataSource = DtSrc
    Items.Strings = (
      'Sim'
      'N'#227'o')
    TabOrder = 28
    Values.Strings = (
      'S'
      'N')
  end
  inherited MMJPanel1: TMMJPanel
    Top = 462
    Width = 789
    TabOrder = 12
    inherited btnGravar: TBitBtn
      Left = 278
      Width = 112
    end
    inherited btnIncluir: TBitBtn
      Left = 278
      Width = 112
    end
    inherited btnCancelar: TBitBtn
      Left = 393
      Width = 112
    end
    inherited btnExcluir: TBitBtn
      Left = 393
      Width = 112
    end
    inherited btnProcurar: TBitBtn
      Left = 163
      Width = 112
      OnClick = btnProcurarClick
    end
    inherited btnSair: TBitBtn
      Left = 508
      Width = 112
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 789
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Cooper Blk BT'
    ParentFont = False
    TabOrder = 13
    inherited Label1: TLabel
      Top = -58
    end
    inherited Label2: TLabel
      Top = -59
    end
    object DBText2: TDBText
      Left = 9
      Top = 7
      Width = 691
      Height = 41
      DataField = 'PRODUTO'
      DataSource = DtSrc
      PopupMenu = PopupMenu1
      Transparent = True
    end
    object rgEmUso: TCheckBox
      Left = 720
      Top = 21
      Width = 64
      Height = 17
      Caption = 'Em uso'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 0
      OnClick = rgEmUsoClick
    end
  end
  object DBEdit1: TDBEdit [16]
    Left = 315
    Top = 63
    Width = 211
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'COD_BARRA'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 0
    OnKeyPress = FormKeyPress
  end
  object DBEdit2: TDBEdit [17]
    Left = 648
    Top = 63
    Width = 137
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CODPRO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object DBEdit3: TDBEdit [18]
    Left = 3
    Top = 104
    Width = 511
    Height = 24
    DataField = 'PRODUTO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  object DBEdit4: TDBEdit [19]
    Left = 517
    Top = 104
    Width = 86
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'UNIDADEMEDIDA'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 3
    OnKeyPress = FormKeyPress
  end
  object DBEdit5: TDBEdit [20]
    Left = 605
    Top = 104
    Width = 86
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'QTDE_PCT'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 4
    OnKeyPress = FormKeyPress
  end
  object DBEdit6: TDBEdit [21]
    Left = 693
    Top = 104
    Width = 92
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'PESO_QTDE'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 5
    OnKeyPress = FormKeyPress
  end
  object GroupBox1: TGroupBox [22]
    Left = 3
    Top = 174
    Width = 782
    Height = 50
    Caption = 'Estoque'
    TabOrder = 9
    object Label12: TLabel
      Left = 72
      Top = 22
      Width = 39
      Height = 16
      Caption = 'Atual..:'
    end
    object Label13: TLabel
      Left = 220
      Top = 22
      Width = 56
      Height = 16
      Caption = 'Maximo..:'
    end
    object Label14: TLabel
      Left = 385
      Top = 22
      Width = 52
      Height = 16
      Caption = 'Minimo..:'
    end
    object Label15: TLabel
      Left = 546
      Top = 22
      Width = 76
      Height = 16
      Caption = 'Reposi'#231#227'o..:'
    end
    object DBEdit7: TDBEdit
      Left = 113
      Top = 22
      Width = 86
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clMenuBar
      DataField = 'ESTOQUEATUAL'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      ReadOnly = True
      TabOrder = 3
      OnKeyPress = FormKeyPress
    end
    object DBEdit8: TDBEdit
      Left = 278
      Top = 22
      Width = 86
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'ESTOQUEMAXIMO'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 0
      OnKeyPress = FormKeyPress
    end
    object DBEdit9: TDBEdit
      Left = 439
      Top = 22
      Width = 86
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'ESTOQUEMINIMO'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 1
      OnKeyPress = FormKeyPress
    end
    object DBEdit10: TDBEdit
      Left = 624
      Top = 22
      Width = 86
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'ESTOQUEREPOSICAO'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 2
      OnKeyPress = FormKeyPress
    end
  end
  object GroupBox2: TGroupBox [23]
    Left = 3
    Top = 224
    Width = 782
    Height = 62
    TabOrder = 10
    object Label18: TLabel
      Left = 6
      Top = 16
      Width = 94
      Height = 16
      Caption = 'Ultima Entrada :'
    end
    object Label16: TLabel
      Left = 107
      Top = 16
      Width = 73
      Height = 16
      Caption = 'Pre'#231'o Custo'
    end
    object Label17: TLabel
      Left = 199
      Top = 16
      Width = 96
      Height = 16
      Caption = 'V. Compra Atual'
    end
    object Label19: TLabel
      Left = 302
      Top = 16
      Width = 65
      Height = 16
      Caption = 'Margem %'
    end
    object Label20: TLabel
      Left = 569
      Top = 16
      Width = 61
      Height = 16
      Caption = 'Comiss'#227'o'
    end
    object Label26: TLabel
      Left = 645
      Top = 16
      Width = 73
      Height = 16
      Caption = 'Localiza'#231#227'o'
    end
    object Label27: TLabel
      Left = 373
      Top = 16
      Width = 75
      Height = 16
      Caption = 'Valor Venda'
    end
    object Label29: TLabel
      Left = 472
      Top = 18
      Width = 93
      Height = 16
      Caption = 'Valor V. Minimo'
    end
    object DBEdit11: TDBEdit
      Left = 5
      Top = 32
      Width = 100
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clMenuBar
      DataField = 'DATAULTIMACOMPRA'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      ReadOnly = True
      TabOrder = 0
      OnKeyPress = FormKeyPress
    end
    object DBEdit12: TDBEdit
      Left = 106
      Top = 32
      Width = 91
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PRECOMEDIO'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 1
      OnKeyPress = FormKeyPress
    end
    object DBEdit13: TDBEdit
      Left = 198
      Top = 32
      Width = 102
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clMenuBar
      DataField = 'VALORUNITARIOATUAL'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      ReadOnly = True
      TabOrder = 2
      OnExit = DBEdit13Exit
      OnKeyPress = FormKeyPress
    end
    object DBEdit17: TDBEdit
      Left = 301
      Top = 32
      Width = 70
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'MARGEM'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 3
      OnExit = DBEdit17Exit
      OnKeyPress = FormKeyPress
    end
    object DBEdit18: TDBEdit
      Left = 644
      Top = 32
      Width = 132
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'LOCALIZACAO'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 7
      OnKeyPress = FormKeyPress
    end
    object DBEdit19: TDBEdit
      Left = 372
      Top = 32
      Width = 98
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'VALOR_PRAZO'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 4
      OnExit = DBEdit19Exit
      OnKeyPress = FormKeyPress
    end
    object DBEdit20: TDBEdit
      Left = 471
      Top = 32
      Width = 98
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'VALORMINIMO'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 5
      OnExit = DBEdit19Exit
      OnKeyPress = FormKeyPress
    end
    object DBEdit21: TDBEdit
      Left = 570
      Top = 32
      Width = 72
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'VALORCOMISSAO'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 6
      OnExit = DBEdit19Exit
      OnKeyPress = FormKeyPress
    end
  end
  object GroupBox3: TGroupBox [24]
    Left = 3
    Top = 288
    Width = 782
    Height = 52
    Caption = 'Tributa'#231#227'o'
    TabOrder = 11
    object Label21: TLabel
      Left = 3
      Top = 23
      Width = 126
      Height = 16
      Caption = 'Classifica'#231#227'o Fiscal :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label22: TLabel
      Left = 317
      Top = 23
      Width = 33
      Height = 16
      Caption = 'CST :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label23: TLabel
      Left = 473
      Top = 23
      Width = 21
      Height = 16
      Caption = 'IPI :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label24: TLabel
      Left = 555
      Top = 23
      Width = 38
      Height = 16
      Caption = 'ICMS :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label25: TLabel
      Left = 650
      Top = 23
      Width = 73
      Height = 16
      Caption = 'Base ICMS :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit14: TDBEdit
      Left = 496
      Top = 23
      Width = 53
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'IPI'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 2
      OnKeyPress = FormKeyPress
    end
    object DBEdit15: TDBEdit
      Left = 595
      Top = 23
      Width = 51
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'ICMS'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 3
      OnKeyPress = FormKeyPress
    end
    object DBEdit16: TDBEdit
      Left = 725
      Top = 23
      Width = 50
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'BASE_ICMS'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 4
      OnKeyPress = FormKeyPress
    end
    object DBComboBox2: TDBComboBox
      Left = 130
      Top = 23
      Width = 147
      Height = 24
      BevelKind = bkFlat
      DataField = 'CLASSIFIC_FISCAL'
      DataSource = DtSrc
      ItemHeight = 16
      PopupMenu = PopupMenu1
      TabOrder = 0
      OnKeyPress = FormKeyPress
    end
    object DBComboBox3: TDBComboBox
      Left = 352
      Top = 23
      Width = 84
      Height = 24
      BevelKind = bkFlat
      DataField = 'CST'
      DataSource = DtSrc
      ItemHeight = 16
      PopupMenu = PopupMenu1
      TabOrder = 1
      OnKeyPress = FormKeyPress
    end
    object SpeedButton6: TBitBtn
      Left = 280
      Top = 22
      Width = 33
      Height = 26
      TabOrder = 5
      OnClick = SpeedButton6Click
      Glyph.Data = {
        86050000424D8605000000000000360000002800000016000000140000000100
        18000000000050050000120B0000120B00000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F
        7FCF6760CF67607F7F7F60302F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7FCF6760CF
        6760CF6760CF6760FF9790FF97907F7F7F60302F7F7F7F7F7F7FBFBFBFBFBFBF
        0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7FCF6760CF6760
        CF6760CF6760CF6760CF6760FFC8CFCF67601F201F7F7F7F60302F60302FCF67
        607F7F7F0000BFBFBFBFBFBFBFBFBFBFBFBFFF9790CF6760CF6760CF6760FF97
        90CF6760FF9790CF6760FF9790CF6760FFFFFFCF67601F201F1F201FBFBFBFBF
        BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFFF9790CF6760FF9790CF6760FF
        9790CF6760FF9790CF6760FF9790CF6760FF9790FFFFFF60302F1F201F1F201F
        60302FBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFFF9790FF9790FF9790
        FF9790FF9790FF9790FF9790FF9790FF9790FF9790FF9790FFFFFF1F201F1F20
        1F60302F1F201F60302FBFBFBFBFBFBF0000BFBFBFBFBFBFFF9790FF9790FF97
        90FF9790FF9790FF9790FF9790FF9790FF9790FF9790FF9790FFC8CFCF67601F
        201F60302F60302F60302F60302F60302FBFBFBF0000BFBFBFBFBFBFFF9790FF
        9790FF9790FF9790FF9790FF9790FF9790FF9790FF9790FF9790FF9790FFFFFF
        CF67606097CF60302F60302F60302F60302F60302F60302F0000BFBFBFFF9790
        FF9790FF9790FF9790FF9790FF9790FF9790FF9790FF9790FF9790FF9790FF97
        90FFFFFFCF6760007F7F6097CF60302F60302F60302F60302FBFBFBF0000BFBF
        BFFF9790FF9790FF9790FF9790FF9790FF9790FF9790FF9790FF9790FF9790FF
        9790FF9790FFC8CFCF67606097CF007F7F007F7F60302FFF9790BFBFBFBFBFBF
        0000FF9790FF9790FF9790FF9790FF9790FF9790FF9790FFC8CFFFC8CFFFC8CF
        FF9790FF9790FF9790FFC8CFCF6760FFC8CFCF6760BFBFBF007F7FBFBFBFBFBF
        BFBFBFBF0000FF9790FF9790FF9790FF9790BFBFBFCFFFFFCFFFFFCFFFFF007F
        7F007F7FFF9790FF9790FF9790FFC8CFFFC8CFBFBFBFFFC8CFBFBFBFCF6760BF
        BFBFBFBFBFBFBFBF0000FF9790FFC8CFBFBFBFBFBFBFBFBFBFBFBFBFCFFFFFCF
        FFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFF
        CF6760BFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        CFFFFFCFFFFFCF6760CFFFFFCF6760007F7FCF6760007F7FCFFFFFCF6760CFFF
        FFCFFFFFCF6760BFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCF
        FFFFCFFFFFCFFFFFCF6760BFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFCFFFFFCFFFFF007F7FCF6760007F7FCF6760CFFFFFFF9790
        007F7F007F7F007F7F007F7F6097CFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFF
        FFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFCFFFFFCFFFFFCF6760007F7FCF6760CF
        FFFFCFFFFFBFBFBFFFFFFFFFFFFFFFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFCFFFFFCFFFFFCFFFFFCFFFFF
        CFFFFFCFFFFFCFFFFFFF979000FFFFFFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBF0000}
    end
    object SpeedButton7: TBitBtn
      Left = 437
      Top = 22
      Width = 34
      Height = 26
      TabOrder = 6
      OnClick = SpeedButton7Click
      Glyph.Data = {
        86050000424D8605000000000000360000002800000016000000140000000100
        18000000000050050000120B0000120B00000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F
        7FCF6760CF67607F7F7F60302F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7FCF6760CF
        6760CF6760CF6760FF9790FF97907F7F7F60302F7F7F7F7F7F7FBFBFBFBFBFBF
        0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7FCF6760CF6760
        CF6760CF6760CF6760CF6760FFC8CFCF67601F201F7F7F7F60302F60302FCF67
        607F7F7F0000BFBFBFBFBFBFBFBFBFBFBFBFFF9790CF6760CF6760CF6760FF97
        90CF6760FF9790CF6760FF9790CF6760FFFFFFCF67601F201F1F201FBFBFBFBF
        BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFFF9790CF6760FF9790CF6760FF
        9790CF6760FF9790CF6760FF9790CF6760FF9790FFFFFF60302F1F201F1F201F
        60302FBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFFF9790FF9790FF9790
        FF9790FF9790FF9790FF9790FF9790FF9790FF9790FF9790FFFFFF1F201F1F20
        1F60302F1F201F60302FBFBFBFBFBFBF0000BFBFBFBFBFBFFF9790FF9790FF97
        90FF9790FF9790FF9790FF9790FF9790FF9790FF9790FF9790FFC8CFCF67601F
        201F60302F60302F60302F60302F60302FBFBFBF0000BFBFBFBFBFBFFF9790FF
        9790FF9790FF9790FF9790FF9790FF9790FF9790FF9790FF9790FF9790FFFFFF
        CF67606097CF60302F60302F60302F60302F60302F60302F0000BFBFBFFF9790
        FF9790FF9790FF9790FF9790FF9790FF9790FF9790FF9790FF9790FF9790FF97
        90FFFFFFCF6760007F7F6097CF60302F60302F60302F60302FBFBFBF0000BFBF
        BFFF9790FF9790FF9790FF9790FF9790FF9790FF9790FF9790FF9790FF9790FF
        9790FF9790FFC8CFCF67606097CF007F7F007F7F60302FFF9790BFBFBFBFBFBF
        0000FF9790FF9790FF9790FF9790FF9790FF9790FF9790FFC8CFFFC8CFFFC8CF
        FF9790FF9790FF9790FFC8CFCF6760FFC8CFCF6760BFBFBF007F7FBFBFBFBFBF
        BFBFBFBF0000FF9790FF9790FF9790FF9790BFBFBFCFFFFFCFFFFFCFFFFF007F
        7F007F7FFF9790FF9790FF9790FFC8CFFFC8CFBFBFBFFFC8CFBFBFBFCF6760BF
        BFBFBFBFBFBFBFBF0000FF9790FFC8CFBFBFBFBFBFBFBFBFBFBFBFBFCFFFFFCF
        FFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFF
        CF6760BFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        CFFFFFCFFFFFCF6760CFFFFFCF6760007F7FCF6760007F7FCFFFFFCF6760CFFF
        FFCFFFFFCF6760BFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCF
        FFFFCFFFFFCFFFFFCF6760BFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFCFFFFFCFFFFF007F7FCF6760007F7FCF6760CFFFFFFF9790
        007F7F007F7F007F7F007F7F6097CFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFF
        FFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFCFFFFFCFFFFFCF6760007F7FCF6760CF
        FFFFCFFFFFBFBFBFFFFFFFFFFFFFFFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFCFFFFFCFFFFFCFFFFFCFFFFF
        CFFFFFCFFFFFCFFFFFFF979000FFFFFFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBF0000}
    end
  end
  object Panel1: TPanel [25]
    Left = 491
    Top = 348
    Width = 140
    Height = 30
    PopupMenu = PopupMenu1
    TabOrder = 16
    object Chk_lote: TCheckBox
      Left = 6
      Top = 11
      Width = 98
      Height = 17
      TabStop = False
      Caption = 'Usa Lote ?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 0
      OnClick = Chk_loteClick
    end
  end
  object dxButton1: TdxButton [26]
    Left = 13
    Top = 426
    Width = 180
    Height = 28
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    PopupMenu = PopupMenu1
    Version = '1.0.2e'
    OnClick = dxButton1Click
    Caption = 'Cad. &Codigos de Terceiros'
    TabOrder = 14
  end
  object dxButton2: TdxButton [27]
    Left = 201
    Top = 426
    Width = 180
    Height = 28
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    PopupMenu = PopupMenu1
    Version = '1.0.2e'
    OnClick = dxButton2Click
    Caption = 'Cad. &Uso para os Produtos'
    TabOrder = 15
  end
  object Panel2: TPanel [28]
    Left = 636
    Top = 348
    Width = 149
    Height = 30
    PopupMenu = PopupMenu1
    TabOrder = 17
    object Chk_rateio: TCheckBox
      Left = 7
      Top = 11
      Width = 80
      Height = 17
      TabStop = False
      Caption = 'Rateio ?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 0
      OnClick = Chk_rateioClick
    end
    object btnRateio: TBitBtn
      Left = 102
      Top = 2
      Width = 34
      Height = 26
      TabOrder = 1
      OnClick = btnRateioClick
      Glyph.Data = {
        86050000424D8605000000000000360000002800000016000000140000000100
        18000000000050050000120B0000120B00000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F
        7FCF6760CF67607F7F7F60302F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7FCF6760CF
        6760CF6760CF6760FF9790FF97907F7F7F60302F7F7F7F7F7F7FBFBFBFBFBFBF
        0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7FCF6760CF6760
        CF6760CF6760CF6760CF6760FFC8CFCF67601F201F7F7F7F60302F60302FCF67
        607F7F7F0000BFBFBFBFBFBFBFBFBFBFBFBFFF9790CF6760CF6760CF6760FF97
        90CF6760FF9790CF6760FF9790CF6760FFFFFFCF67601F201F1F201FBFBFBFBF
        BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFFF9790CF6760FF9790CF6760FF
        9790CF6760FF9790CF6760FF9790CF6760FF9790FFFFFF60302F1F201F1F201F
        60302FBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFFF9790FF9790FF9790
        FF9790FF9790FF9790FF9790FF9790FF9790FF9790FF9790FFFFFF1F201F1F20
        1F60302F1F201F60302FBFBFBFBFBFBF0000BFBFBFBFBFBFFF9790FF9790FF97
        90FF9790FF9790FF9790FF9790FF9790FF9790FF9790FF9790FFC8CFCF67601F
        201F60302F60302F60302F60302F60302FBFBFBF0000BFBFBFBFBFBFFF9790FF
        9790FF9790FF9790FF9790FF9790FF9790FF9790FF9790FF9790FF9790FFFFFF
        CF67606097CF60302F60302F60302F60302F60302F60302F0000BFBFBFFF9790
        FF9790FF9790FF9790FF9790FF9790FF9790FF9790FF9790FF9790FF9790FF97
        90FFFFFFCF6760007F7F6097CF60302F60302F60302F60302FBFBFBF0000BFBF
        BFFF9790FF9790FF9790FF9790FF9790FF9790FF9790FF9790FF9790FF9790FF
        9790FF9790FFC8CFCF67606097CF007F7F007F7F60302FFF9790BFBFBFBFBFBF
        0000FF9790FF9790FF9790FF9790FF9790FF9790FF9790FFC8CFFFC8CFFFC8CF
        FF9790FF9790FF9790FFC8CFCF6760FFC8CFCF6760BFBFBF007F7FBFBFBFBFBF
        BFBFBFBF0000FF9790FF9790FF9790FF9790BFBFBFCFFFFFCFFFFFCFFFFF007F
        7F007F7FFF9790FF9790FF9790FFC8CFFFC8CFBFBFBFFFC8CFBFBFBFCF6760BF
        BFBFBFBFBFBFBFBF0000FF9790FFC8CFBFBFBFBFBFBFBFBFBFBFBFBFCFFFFFCF
        FFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFF
        CF6760BFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        CFFFFFCFFFFFCF6760CFFFFFCF6760007F7FCF6760007F7FCFFFFFCF6760CFFF
        FFCFFFFFCF6760BFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCF
        FFFFCFFFFFCFFFFFCF6760BFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFCFFFFFCFFFFF007F7FCF6760007F7FCF6760CFFFFFFF9790
        007F7F007F7F007F7F007F7F6097CFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFF
        FFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFCFFFFFCFFFFFCF6760007F7FCF6760CF
        FFFFCFFFFFBFBFBFFFFFFFFFFFFFFFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFCFFFFFCFFFFFCFFFFFCFFFFF
        CFFFFFCFFFFFCFFFFFFF979000FFFFFFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBF0000}
    end
  end
  object DBLookupComboBox2: TDBLookupComboBox [29]
    Left = 234
    Top = 146
    Width = 249
    Height = 24
    BevelKind = bkFlat
    Ctl3D = True
    DataField = 'FAMILIA'
    DataSource = DtSrc
    KeyField = 'DESCFAMILIA'
    ListField = 'DESCFAMILIA'
    ListSource = dst_familia
    ParentCtl3D = False
    TabOrder = 7
    OnExit = DBLookupComboBox2Exit
    OnKeyPress = FormKeyPress
  end
  object DBLookupComboBox3: TDBLookupComboBox [30]
    Left = 518
    Top = 146
    Width = 232
    Height = 24
    BevelKind = bkFlat
    DataField = 'CATEGORIA'
    DataSource = DtSrc
    KeyField = 'DESCCATEGORIA'
    ListField = 'CASE'
    ListSource = dstCategoria
    TabOrder = 8
    OnKeyPress = FormKeyPress
  end
  object dxButton3: TdxButton [31]
    Left = 391
    Top = 426
    Width = 148
    Height = 28
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    PopupMenu = PopupMenu1
    Version = '1.0.2e'
    OnClick = dxButton3Click
    Caption = 'Similares'
    TabOrder = 18
  end
  object Button1: TButton [32]
    Left = 544
    Top = -60
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 19
  end
  object dxButton4: TdxButton [33]
    Left = 546
    Top = 426
    Width = 148
    Height = 28
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    PopupMenu = PopupMenu1
    Version = '1.0.2e'
    OnClick = dxButton4Click
    Caption = 'Materia Prima'
    TabOrder = 20
  end
  object cbMarca: TJvDBSearchComboBox [34]
    Left = 4
    Top = 146
    Width = 194
    Height = 24
    DataField = 'DESCMARCAS'
    DataSource = dstMarca
    BevelKind = bkFlat
    ItemHeight = 16
    TabOrder = 6
    OnChange = cbMarcaChange
    OnKeyPress = FormKeyPress
  end
  object SpeedButton1: TBitBtn [35]
    Left = 199
    Top = 144
    Width = 34
    Height = 26
    TabOrder = 21
    OnClick = SpeedButton1Click
    Glyph.Data = {
      C2070000424DC20700000000000036000000280000001E000000150000000100
      1800000000008C07000000000000000000000000000000000000BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0070A01F70A01F80AF0070
      A0BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBF108FBF2F8FB00F0F0F0000001F4F600F7FB0
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBF0070A020AFDF3FCFFF50909FF0C090806F500000002F607FBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0F70AF
      108FC03FCFFF3FCFFF50909FFFCF9FFFCF9F4F4030101F1F2F80B0BFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00609F1F9FCF3FCFFF1F9FCF3F
      CFFF4FCFFF50A0BFF0C090FFCF9FAF8F6F0000005F90B0BFBFBFBFBFBF005080
      2F80B000609FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBF0F7FB02FBFEF3FCFFF3FCFFF2090C070DFFF90E0
      FFAFE0FFAF9F80FFCF9FCFA080000000508FAF00609F409FC0609FB01F1F1F1F
      30400F70A0BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBF108FC03FCFFF40CFFF5FD0FF7FDFFF409FC0AFE0FFD0F0FFE0F0FF
      EFEFF0A09080806F50304F5F308FBF80D0F07FDFFF5F8F9F9F8060000000102F
      3F00609FBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF0070A01080
      BF4FD0FF6FD0FF8FDFFFA0E0FFC0EFFFBFE0F05F9FC0F0FFFFF0FFFFDFF0FFBF
      E0FF5FAFCF0F90C050C0EF50D0FF3FCFFF50909FFFCF9F6F5F400000000F5F80
      BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF0F7FAF30AFDF4FAFDF90E0FF
      AFEFFFCFEFFFDFF0FFEFFFFFF0FFFF2F9FC02F9FC060BFDF409FC00F8FB00070
      A000AFD030BFEF3FCFFF3FCFFF309FBFF0C090CFA0800000001F709FBFBFBFBF
      BFBFBFBFBFBFBFBF0000BFBFBFBFBFBF00609F90DFFF3F8FBFD0F0FFE0F0FFF0
      FFFFF0FFFFE0F0FFCFF0FF90D0EF1F9FCF00A0CF0090C000AFD00080B000AFD0
      20BFEF3FCFFF3FCFFF3FCFFF809080CFA0800000001F6F90BFBFBFBFBFBFBFBF
      BFBFBFBF0000BFBFBFBFBFBF00609FD0F0FF80BFD07FB0CFF0FFFFDFF0FFC0EF
      FFAFE0FF8FDFFF70DFFF50D0FF1FA0D00070AF0090C0007FAF00A0CF0F9FCF3F
      CFFF3FCFFF3FCFFF3FC0F050808000304F0070A0BFBFBFBFBFBFBFBFBFBFBFBF
      0000BFBFBFBFBFBF00609F8FBFD0D0E0F02F80AF207FAF60B0DF60BFDF60D0FF
      4FCFFF3FCFFF3FCFFF3FCFFF30C0FF1F9FD00090BF00A0CF00A0CF10A0D030C0
      FF1FAFDF1090C00070AF005080BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
      BFBFBFBFBFBFBF00609F00609FBFBFBFBFBFBF0F70A020A0D020A0DF20A0DF30
      C0FF3FCFFF3FCFFF3FCFFF3FCFFF30C0FF20A0DF006F9F0070A0005080BFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0F7FAF20AFDF108FC01F9F
      CF109FD01090C0007FB0006F9F005080BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0070A0007FAF00609FBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBF0000}
  end
  object SpeedButton2: TBitBtn [36]
    Left = 482
    Top = 144
    Width = 34
    Height = 26
    TabOrder = 22
    OnClick = SpeedButton2Click
    Glyph.Data = {
      C2070000424DC20700000000000036000000280000001E000000150000000100
      1800000000008C07000000000000000000000000000000000000BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0070A01F70A01F80AF0070
      A0BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBF108FBF2F8FB00F0F0F0000001F4F600F7FB0
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBF0070A020AFDF3FCFFF50909FF0C090806F500000002F607FBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0F70AF
      108FC03FCFFF3FCFFF50909FFFCF9FFFCF9F4F4030101F1F2F80B0BFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00609F1F9FCF3FCFFF1F9FCF3F
      CFFF4FCFFF50A0BFF0C090FFCF9FAF8F6F0000005F90B0BFBFBFBFBFBF005080
      2F80B000609FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBF0F7FB02FBFEF3FCFFF3FCFFF2090C070DFFF90E0
      FFAFE0FFAF9F80FFCF9FCFA080000000508FAF00609F409FC0609FB01F1F1F1F
      30400F70A0BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBF108FC03FCFFF40CFFF5FD0FF7FDFFF409FC0AFE0FFD0F0FFE0F0FF
      EFEFF0A09080806F50304F5F308FBF80D0F07FDFFF5F8F9F9F8060000000102F
      3F00609FBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF0070A01080
      BF4FD0FF6FD0FF8FDFFFA0E0FFC0EFFFBFE0F05F9FC0F0FFFFF0FFFFDFF0FFBF
      E0FF5FAFCF0F90C050C0EF50D0FF3FCFFF50909FFFCF9F6F5F400000000F5F80
      BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF0F7FAF30AFDF4FAFDF90E0FF
      AFEFFFCFEFFFDFF0FFEFFFFFF0FFFF2F9FC02F9FC060BFDF409FC00F8FB00070
      A000AFD030BFEF3FCFFF3FCFFF309FBFF0C090CFA0800000001F709FBFBFBFBF
      BFBFBFBFBFBFBFBF0000BFBFBFBFBFBF00609F90DFFF3F8FBFD0F0FFE0F0FFF0
      FFFFF0FFFFE0F0FFCFF0FF90D0EF1F9FCF00A0CF0090C000AFD00080B000AFD0
      20BFEF3FCFFF3FCFFF3FCFFF809080CFA0800000001F6F90BFBFBFBFBFBFBFBF
      BFBFBFBF0000BFBFBFBFBFBF00609FD0F0FF80BFD07FB0CFF0FFFFDFF0FFC0EF
      FFAFE0FF8FDFFF70DFFF50D0FF1FA0D00070AF0090C0007FAF00A0CF0F9FCF3F
      CFFF3FCFFF3FCFFF3FC0F050808000304F0070A0BFBFBFBFBFBFBFBFBFBFBFBF
      0000BFBFBFBFBFBF00609F8FBFD0D0E0F02F80AF207FAF60B0DF60BFDF60D0FF
      4FCFFF3FCFFF3FCFFF3FCFFF30C0FF1F9FD00090BF00A0CF00A0CF10A0D030C0
      FF1FAFDF1090C00070AF005080BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
      BFBFBFBFBFBFBF00609F00609FBFBFBFBFBFBF0F70A020A0D020A0DF20A0DF30
      C0FF3FCFFF3FCFFF3FCFFF3FCFFF30C0FF20A0DF006F9F0070A0005080BFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0F7FAF20AFDF108FC01F9F
      CF109FD01090C0007FB0006F9F005080BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0070A0007FAF00609FBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBF0000}
  end
  object SpeedButton3: TBitBtn [37]
    Left = 752
    Top = 144
    Width = 34
    Height = 26
    TabOrder = 23
    OnClick = SpeedButton3Click
    Glyph.Data = {
      C2070000424DC20700000000000036000000280000001E000000150000000100
      1800000000008C07000000000000000000000000000000000000BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0070A01F70A01F80AF0070
      A0BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBF108FBF2F8FB00F0F0F0000001F4F600F7FB0
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBF0070A020AFDF3FCFFF50909FF0C090806F500000002F607FBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0F70AF
      108FC03FCFFF3FCFFF50909FFFCF9FFFCF9F4F4030101F1F2F80B0BFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00609F1F9FCF3FCFFF1F9FCF3F
      CFFF4FCFFF50A0BFF0C090FFCF9FAF8F6F0000005F90B0BFBFBFBFBFBF005080
      2F80B000609FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBF0F7FB02FBFEF3FCFFF3FCFFF2090C070DFFF90E0
      FFAFE0FFAF9F80FFCF9FCFA080000000508FAF00609F409FC0609FB01F1F1F1F
      30400F70A0BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBF108FC03FCFFF40CFFF5FD0FF7FDFFF409FC0AFE0FFD0F0FFE0F0FF
      EFEFF0A09080806F50304F5F308FBF80D0F07FDFFF5F8F9F9F8060000000102F
      3F00609FBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF0070A01080
      BF4FD0FF6FD0FF8FDFFFA0E0FFC0EFFFBFE0F05F9FC0F0FFFFF0FFFFDFF0FFBF
      E0FF5FAFCF0F90C050C0EF50D0FF3FCFFF50909FFFCF9F6F5F400000000F5F80
      BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF0F7FAF30AFDF4FAFDF90E0FF
      AFEFFFCFEFFFDFF0FFEFFFFFF0FFFF2F9FC02F9FC060BFDF409FC00F8FB00070
      A000AFD030BFEF3FCFFF3FCFFF309FBFF0C090CFA0800000001F709FBFBFBFBF
      BFBFBFBFBFBFBFBF0000BFBFBFBFBFBF00609F90DFFF3F8FBFD0F0FFE0F0FFF0
      FFFFF0FFFFE0F0FFCFF0FF90D0EF1F9FCF00A0CF0090C000AFD00080B000AFD0
      20BFEF3FCFFF3FCFFF3FCFFF809080CFA0800000001F6F90BFBFBFBFBFBFBFBF
      BFBFBFBF0000BFBFBFBFBFBF00609FD0F0FF80BFD07FB0CFF0FFFFDFF0FFC0EF
      FFAFE0FF8FDFFF70DFFF50D0FF1FA0D00070AF0090C0007FAF00A0CF0F9FCF3F
      CFFF3FCFFF3FCFFF3FC0F050808000304F0070A0BFBFBFBFBFBFBFBFBFBFBFBF
      0000BFBFBFBFBFBF00609F8FBFD0D0E0F02F80AF207FAF60B0DF60BFDF60D0FF
      4FCFFF3FCFFF3FCFFF3FCFFF30C0FF1F9FD00090BF00A0CF00A0CF10A0D030C0
      FF1FAFDF1090C00070AF005080BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
      BFBFBFBFBFBFBF00609F00609FBFBFBFBFBFBF0F70A020A0D020A0DF20A0DF30
      C0FF3FCFFF3FCFFF3FCFFF3FCFFF30C0FF20A0DF006F9F0070A0005080BFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0F7FAF20AFDF108FC01F9F
      CF109FD01090C0007FB0006F9F005080BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0070A0007FAF00609FBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBF0000}
  end
  object DBRadioGroup2: TDBRadioGroup [38]
    Left = 5
    Top = 383
    Width = 348
    Height = 38
    Caption = 'Forma'#231#227'o Pre'#231'o Venda'
    Color = clBtnFace
    Columns = 3
    DataField = 'TIPOPRECOVENDA'
    DataSource = DtSrc
    Items.Strings = (
      'Pre'#231'o M'#233'dio'
      #218'lt. Compra'
      'Fixo')
    ParentColor = False
    PopupMenu = PopupMenu1
    TabOrder = 24
    Values.Strings = (
      'M'
      'U'
      'F')
  end
  object cbTipo: TComboBox [39]
    Left = 55
    Top = 61
    Width = 122
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ItemIndex = 0
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 25
    Text = 'Compra/Venda'
    OnChange = cbTipoChange
    Items.Strings = (
      'Compra/Venda'
      'Compra'
      'Venda'
      'Servi'#231'o'
      'Loca'#231#227'o')
  end
  object BitBtn1: TBitBtn [40]
    Left = 698
    Top = 428
    Width = 41
    Height = 22
    Enabled = False
    TabOrder = 26
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333FF3333333333333003333333333333F77F33333333333009033
      333333333F7737F333333333009990333333333F773337FFFFFF330099999000
      00003F773333377777770099999999999990773FF33333FFFFF7330099999000
      000033773FF33777777733330099903333333333773FF7F33333333333009033
      33333333337737F3333333333333003333333333333377333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn [41]
    Left = 744
    Top = 428
    Width = 41
    Height = 22
    Enabled = False
    TabOrder = 27
    OnClick = BitBtn2Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333FF3333333333333003333
      3333333333773FF3333333333309003333333333337F773FF333333333099900
      33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
      99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
      33333333337F3F77333333333309003333333333337F77333333333333003333
      3333333333773333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
  end
  object DBOrigem: TDBRadioGroup [42]
    Left = 4
    Top = 341
    Width = 481
    Height = 38
    Caption = 'Origem do Produto'
    Color = clBtnFace
    Columns = 3
    DataField = 'ORIGEM'
    DataSource = DtSrc
    Items.Strings = (
      'Nacional'
      'Importado Exterior'
      'Importado Interno')
    ParentColor = False
    PopupMenu = PopupMenu1
    TabOrder = 30
    Values.Strings = (
      '0'
      '1'
      '2')
  end
  inherited XPMenu1: TXPMenu
    Left = 608
    Top = 16
  end
  inherited PopupMenu1: TPopupMenu
    Top = 16
    inherited Procurar1: TMenuItem
      OnClick = btnProcurarClick
    end
  end
  inherited DtSrc: TDataSource
    DataSet = DM.cds_produto
    Left = 576
    Top = 16
  end
  object dst_familia: TDataSource
    DataSet = DM.cds_familia
    Left = 544
    Top = 16
  end
  object dstMarca: TDataSource
    DataSet = DM.cds_Marca
    Left = 512
    Top = 16
  end
  object dstCategoria: TDataSource
    DataSet = DM.cds_categoria
    Left = 480
    Top = 16
  end
  object sds_ClaFiscal: TSQLDataSet
    CommandText = 
      'select CLASSIFICAO, CODIGO_REDUZ, DESCRICAO, TIPO_CLASSIFICA fro' +
      'm CLASSIFICACAOFISCAL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 632
    Top = 48
  end
  object DtSrc_cm: TDataSource
    DataSet = DM.cds_cm
    Left = 416
    Top = 16
  end
end
