inherited fEndereco: TfEndereco
  Height = 314
  Caption = 'Cadastro de Endere'#231'o'
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    object RadioGroup2: TRadioGroup
      Left = 1
      Top = 1
      Width = 770
      Height = 49
      Align = alClient
      Caption = 'Tipo Endere'#231'o'
      Columns = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Items.Strings = (
        'Principal'
        'Cobran'#231'a'
        'Entrega'
        'Outros')
      ParentFont = False
      TabOrder = 0
    end
  end
  inherited MMJPanel2: TMMJPanel
    Top = 236
    inherited btnProcurar: TBitBtn
      Visible = False
    end
    inherited btnSair: TBitBtn
      Caption = 'F9-Retornar'
    end
  end
  object GroupBox4: TGroupBox [2]
    Left = 0
    Top = 51
    Width = 772
    Height = 185
    Align = alClient
    Caption = 'Endere'#231'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label2: TLabel
      Left = 10
      Top = 49
      Width = 70
      Height = 16
      Caption = 'Logradouro'
    end
    object Label3: TLabel
      Left = 591
      Top = 47
      Width = 48
      Height = 16
      Caption = 'N'#250'mero'
    end
    object Label4: TLabel
      Left = 11
      Top = 80
      Width = 36
      Height = 16
      Caption = 'Bairro'
    end
    object Label5: TLabel
      Left = 436
      Top = 82
      Width = 84
      Height = 16
      Caption = 'Complemento'
    end
    object Label6: TLabel
      Left = 13
      Top = 116
      Width = 44
      Height = 16
      Caption = 'Cidade'
    end
    object Label7: TLabel
      Left = 406
      Top = 116
      Width = 18
      Height = 16
      Caption = 'UF'
    end
    object Label8: TLabel
      Left = 465
      Top = 116
      Width = 25
      Height = 16
      Caption = 'Cep'
    end
    object Label9: TLabel
      Left = 591
      Top = 116
      Width = 62
      Height = 16
      Caption = 'C'#243'd. IBGE'
    end
    object edLogradouro: TEdit
      Left = 83
      Top = 47
      Width = 482
      Height = 24
      TabOrder = 0
    end
    object edNumero: TEdit
      Left = 658
      Top = 45
      Width = 109
      Height = 24
      TabOrder = 1
    end
    object edBairro: TEdit
      Left = 82
      Top = 79
      Width = 317
      Height = 24
      TabOrder = 2
    end
    object edComplemento: TEdit
      Left = 532
      Top = 79
      Width = 235
      Height = 24
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      Left = 373
      Top = 116
      Width = 27
      Height = 25
      Caption = '...'
      TabOrder = 4
    end
    object edCidade: TEdit
      Left = 82
      Top = 116
      Width = 291
      Height = 24
      TabOrder = 5
    end
    object edUF: TEdit
      Left = 429
      Top = 116
      Width = 29
      Height = 24
      TabOrder = 6
    end
    object edCEP: TJvMaskEdit
      Left = 501
      Top = 116
      Width = 79
      Height = 24
      EditMask = '00000\-999;1;_'
      MaxLength = 9
      TabOrder = 7
      Text = '     -   '
    end
    object edIBGE: TEdit
      Left = 657
      Top = 116
      Width = 110
      Height = 24
      TabOrder = 8
    end
  end
end
