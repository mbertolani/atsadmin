inherited fCliente1: TfCliente1
  Caption = 'Cadastro Cliente'
  PixelsPerInch = 96
  TextHeight = 13
  object rgTipo: TRadioGroup [2]
    Left = 8
    Top = 56
    Width = 153
    Height = 45
    Caption = 'Pessoa'
    Columns = 2
    Items.Strings = (
      'Fisica'
      'Juridica')
    TabOrder = 2
    OnClick = rgTipoClick
  end
  object gbNome: TGroupBox [3]
    Left = 168
    Top = 56
    Width = 601
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
      Left = 64
      Top = 16
      Width = 529
      Height = 21
      TabOrder = 0
    end
    object edRazaoSocial: TEdit
      Left = 64
      Top = 48
      Width = 529
      Height = 21
      TabOrder = 1
    end
  end
end
