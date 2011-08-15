inherited fCliente1: TfCliente1
  Width = 743
  Caption = 'Cadastro Cliente'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    Width = 735
    Height = 33
  end
  inherited MMJPanel2: TMMJPanel
    Width = 735
  end
  object rgTipo: TRadioGroup [2]
    Left = 0
    Top = 39
    Width = 81
    Height = 81
    Caption = 'Pessoa'
    ItemIndex = 0
    Items.Strings = (
      'Fisica'
      'Juridica')
    TabOrder = 2
    OnClick = rgTipoClick
  end
  object gbNome: TGroupBox [3]
    Left = 83
    Top = 39
    Width = 646
    Height = 81
    Caption = 'Cliente'
    TabOrder = 3
    object lblNome: TLabel
      Left = 6
      Top = 19
      Width = 28
      Height = 13
      Caption = 'Nome'
    end
    object lblRazao: TLabel
      Left = 6
      Top = 51
      Width = 35
      Height = 13
      Caption = 'Apelido'
    end
    object edNomeCliente: TEdit
      Left = 88
      Top = 16
      Width = 532
      Height = 21
      TabOrder = 0
    end
    object edRazaoSocial: TEdit
      Left = 88
      Top = 48
      Width = 532
      Height = 21
      TabOrder = 1
    end
  end
  object GroupBox1: TGroupBox [4]
    Left = 0
    Top = 234
    Width = 731
    Height = 81
    Caption = 'Endere'#231'o'
    TabOrder = 4
    object JvDBUltimGrid1: TJvDBUltimGrid
      Left = 2
      Top = 15
      Width = 727
      Height = 64
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
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      BevelInner = bvNone
      BevelOuter = bvNone
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
    end
  end
  object GroupBox2: TGroupBox [5]
    Left = 0
    Top = 122
    Width = 729
    Height = 49
    Caption = 'Documentos'
    TabOrder = 5
    object lblCnpj: TLabel
      Left = 56
      Top = 16
      Width = 20
      Height = 13
      Alignment = taRightJustify
      Caption = 'CPF'
    end
    object lblIE: TLabel
      Left = 304
      Top = 16
      Width = 22
      Height = 13
      Alignment = taRightJustify
      Caption = 'R.G.'
    end
    object lblOrgaoEmissor: TLabel
      Left = 498
      Top = 18
      Width = 68
      Height = 13
      Caption = 'Org'#227'o Emissor'
    end
    object edCnpj: TEdit
      Left = 88
      Top = 16
      Width = 161
      Height = 21
      TabOrder = 0
    end
    object edIE: TEdit
      Left = 335
      Top = 16
      Width = 154
      Height = 21
      TabOrder = 1
    end
    object edOrgaoEmissor: TEdit
      Left = 576
      Top = 16
      Width = 129
      Height = 21
      TabOrder = 2
    end
  end
  object GroupBox3: TGroupBox [6]
    Left = 0
    Top = 176
    Width = 730
    Height = 54
    Caption = 'Outras Informa'#231#245'es'
    TabOrder = 6
    object Label1: TLabel
      Left = 40
      Top = 27
      Width = 37
      Height = 13
      Caption = 'Contato'
      FocusControl = btnCancelar
    end
    object edContato: TEdit
      Left = 89
      Top = 24
      Width = 313
      Height = 21
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
  object GroupBox4: TGroupBox [7]
    Left = 0
    Top = 318
    Width = 731
    Height = 155
    Caption = 'Endere'#231'o'
    TabOrder = 7
    object Label2: TLabel
      Left = 10
      Top = 49
      Width = 54
      Height = 13
      Caption = 'Logradouro'
    end
    object Label3: TLabel
      Left = 528
      Top = 47
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
    end
    object Label4: TLabel
      Left = 11
      Top = 80
      Width = 27
      Height = 13
      Caption = 'Bairro'
    end
    object Label5: TLabel
      Left = 407
      Top = 82
      Width = 64
      Height = 13
      Caption = 'Complemento'
    end
    object Label6: TLabel
      Left = 13
      Top = 107
      Width = 33
      Height = 13
      Caption = 'Cidade'
    end
    object Label7: TLabel
      Left = 406
      Top = 107
      Width = 14
      Height = 13
      Caption = 'UF'
    end
    object Label8: TLabel
      Left = 457
      Top = 107
      Width = 19
      Height = 13
      Caption = 'Cep'
    end
    object Label9: TLabel
      Left = 576
      Top = 107
      Width = 50
      Height = 13
      Caption = 'C'#243'd. IBGE'
    end
    object Edit1: TEdit
      Left = 80
      Top = 47
      Width = 441
      Height = 21
      TabOrder = 0
      Text = 'Edit1'
    end
    object Edit2: TEdit
      Left = 584
      Top = 45
      Width = 129
      Height = 21
      TabOrder = 1
      Text = 'Edit2'
    end
    object Edit3: TEdit
      Left = 80
      Top = 79
      Width = 321
      Height = 21
      TabOrder = 2
      Text = 'Edit3'
    end
    object Edit4: TEdit
      Left = 479
      Top = 79
      Width = 235
      Height = 21
      TabOrder = 3
      Text = 'Edit4'
    end
    object BitBtn1: TBitBtn
      Left = 53
      Top = 318
      Width = 25
      Height = 25
      Caption = '...'
      TabOrder = 4
    end
    object Edit5: TEdit
      Left = 80
      Top = 318
      Width = 321
      Height = 21
      TabOrder = 5
      Text = 'Edit5'
    end
    object Edit6: TEdit
      Left = 424
      Top = 318
      Width = 29
      Height = 21
      TabOrder = 6
      Text = 'Edit6'
    end
    object JvMaskEdit1: TJvMaskEdit
      Left = 480
      Top = 318
      Width = 80
      Height = 21
      TabOrder = 7
      Text = 'JvMaskEdit1'
    end
    object Edit7: TEdit
      Left = 633
      Top = 318
      Width = 81
      Height = 21
      TabOrder = 8
      Text = 'Edit7'
    end
    object RadioGroup2: TRadioGroup
      Left = 155
      Top = 5
      Width = 393
      Height = 34
      Caption = 'Tipo Endere'#231'o'
      Columns = 4
      Items.Strings = (
        'Principal'
        'Cobran'#231'a'
        'Entrega'
        'Outros')
      TabOrder = 9
    end
  end
end
