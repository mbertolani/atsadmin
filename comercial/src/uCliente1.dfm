inherited fCliente1: TfCliente1
  Width = 739
  Height = 438
  Caption = 'Cadastro Cliente'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    Width = 731
    Height = 33
  end
  inherited MMJPanel2: TMMJPanel
    Top = 360
    Width = 731
    Font.Height = -13
    ParentFont = False
    inherited btnProcurar: TBitBtn
      OnClick = btnProcurarClick
    end
  end
  object rgTipo: TRadioGroup [2]
    Left = 0
    Top = 39
    Width = 81
    Height = 81
    Caption = 'Pessoa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Fisica'
      'Juridica')
    ParentFont = False
    TabOrder = 2
    OnClick = rgTipoClick
  end
  object gbNome: TGroupBox [3]
    Left = 83
    Top = 39
    Width = 646
    Height = 81
    Caption = 'Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object lblNome: TLabel
      Left = 6
      Top = 19
      Width = 37
      Height = 16
      Caption = 'Nome'
    end
    object lblRazao: TLabel
      Left = 6
      Top = 51
      Width = 47
      Height = 16
      Caption = 'Apelido'
    end
    object edNomeCliente: TEdit
      Left = 88
      Top = 16
      Width = 532
      Height = 24
      TabOrder = 0
    end
    object edRazaoSocial: TEdit
      Left = 88
      Top = 48
      Width = 532
      Height = 24
      TabOrder = 1
    end
  end
  object GroupBox1: TGroupBox [4]
    Left = 0
    Top = 232
    Width = 729
    Height = 126
    Caption = 'Endere'#231'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object JvDBUltimGrid1: TJvDBUltimGrid
      Left = 2
      Top = 18
      Width = 725
      Height = 106
      Align = alClient
      BorderStyle = bsNone
      Ctl3D = False
      FixedColor = clBtnHighlight
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = JvDBUltimGrid1DblClick
      BevelInner = bvNone
      BevelOuter = bvNone
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 20
      TitleRowHeight = 20
    end
  end
  object GroupBox2: TGroupBox [5]
    Left = 0
    Top = 122
    Width = 729
    Height = 49
    Caption = 'Documentos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    object lblCnpj: TLabel
      Left = 50
      Top = 16
      Width = 26
      Height = 16
      Alignment = taRightJustify
      Caption = 'CPF'
    end
    object lblIE: TLabel
      Left = 300
      Top = 16
      Width = 26
      Height = 16
      Alignment = taRightJustify
      Caption = 'R.G.'
    end
    object lblOrgaoEmissor: TLabel
      Left = 498
      Top = 18
      Width = 90
      Height = 16
      Caption = 'Org'#227'o Emissor'
    end
    object edCnpj: TEdit
      Left = 88
      Top = 16
      Width = 161
      Height = 24
      TabOrder = 0
    end
    object edIE: TEdit
      Left = 335
      Top = 16
      Width = 154
      Height = 24
      TabOrder = 1
    end
    object edOrgaoEmissor: TEdit
      Left = 576
      Top = 16
      Width = 129
      Height = 24
      TabOrder = 2
    end
  end
  object GroupBox3: TGroupBox [6]
    Left = -1
    Top = 174
    Width = 730
    Height = 54
    Caption = 'Outras Informa'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    object Label1: TLabel
      Left = 40
      Top = 27
      Width = 46
      Height = 16
      Caption = 'Contato'
      FocusControl = btnCancelar
    end
    object edContato: TEdit
      Left = 89
      Top = 24
      Width = 313
      Height = 24
      TabOrder = 0
    end
    object RadioGroup1: TRadioGroup
      Left = 420
      Top = 11
      Width = 287
      Height = 35
      Caption = 'Situa'#231#227'o Cadastro'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Ativo'
        'Inativo'
        'Bloqueado')
      TabOrder = 1
    end
  end
end
