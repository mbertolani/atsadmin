inherited fCliente1: TfCliente1
  Caption = 'Cadastro Cliente'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    Height = 33
  end
  object rgTipo: TRadioGroup [2]
    Left = 0
    Top = 39
    Width = 81
    Height = 81
    Caption = 'Pessoa'
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
      Width = 529
      Height = 21
      TabOrder = 0
    end
    object edRazaoSocial: TEdit
      Left = 88
      Top = 48
      Width = 529
      Height = 21
      TabOrder = 1
    end
  end
  object GroupBox1: TGroupBox [4]
    Left = 8
    Top = 392
    Width = 761
    Height = 81
    Caption = 'Endere'#231'o'
    TabOrder = 4
    object JvDBUltimGrid1: TJvDBUltimGrid
      Left = 2
      Top = 15
      Width = 757
      Height = 64
      Align = alClient
      BorderStyle = bsNone
      Ctl3D = False
      FixedColor = clBtnHighlight
      ParentCtl3D = False
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
    Top = 128
    Width = 769
    Height = 89
    Caption = 'GroupBox2'
    TabOrder = 5
    object Label1: TLabel
      Left = 8
      Top = 64
      Width = 37
      Height = 13
      Caption = 'Contato'
      FocusControl = btnCancelar
    end
    object lblCnpj: TLabel
      Left = 8
      Top = 16
      Width = 20
      Height = 13
      Caption = 'CPF'
    end
    object lblIE: TLabel
      Left = 208
      Top = 16
      Width = 22
      Height = 13
      Caption = 'R.G.'
    end
    object edContato: TEdit
      Left = 56
      Top = 64
      Width = 265
      Height = 21
      TabOrder = 0
    end
    object edCnpj: TEdit
      Left = 56
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object edIE: TEdit
      Left = 248
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 2
    end
  end
end
