inherited fDescontoTitulos: TfDescontoTitulos
  Width = 647
  Caption = 'Desconto de Titulos'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 105
    Width = 93
    Height = 16
    Caption = 'Caixa/Conta :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 146
    Width = 115
    Height = 16
    Caption = 'Total Desconto :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 188
    Width = 87
    Height = 16
    Caption = 'Total Juros :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 230
    Width = 73
    Height = 16
    Caption = 'Total IOF :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel [4]
    Left = 8
    Top = 272
    Width = 100
    Height = 16
    Caption = 'Total Liquido :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel [5]
    Left = 8
    Top = 63
    Width = 112
    Height = 16
    Caption = 'Data Desconto :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited MMJPanel1: TMMJPanel
    Width = 639
  end
  inherited MMJPanel2: TMMJPanel
    Width = 639
    inherited btnGravar: TBitBtn
      Left = 199
    end
    inherited btnIncluir: TBitBtn
      Left = 199
    end
    inherited btnCancelar: TBitBtn
      Left = 322
    end
    inherited btnExcluir: TBitBtn
      Left = 322
    end
    inherited btnProcurar: TBitBtn
      Left = 4
      Width = 45
      Visible = False
    end
    inherited btnSair: TBitBtn
      Left = 445
    end
  end
  object DBLookupComboBox1: TDBLookupComboBox [8]
    Left = 8
    Top = 122
    Width = 140
    Height = 21
    Ctl3D = True
    DataField = 'CAIXA'
    DataSource = DtSrc
    KeyField = 'CODIGO'
    ListField = 'NOME'
    ListSource = ds_conta
    ParentCtl3D = False
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  object edPreco: TJvCalcEdit [9]
    Left = 8
    Top = 162
    Width = 140
    Height = 21
    DecimalPlaces = 4
    DisplayFormat = '0.0000'
    TabOrder = 3
    DecimalPlacesAlwaysShown = True
    OnKeyPress = FormKeyPress
  end
  object JvCalcEdit1: TJvCalcEdit [10]
    Left = 8
    Top = 204
    Width = 140
    Height = 21
    DecimalPlaces = 4
    DisplayFormat = '0.0000'
    TabOrder = 4
    DecimalPlacesAlwaysShown = True
    OnKeyPress = FormKeyPress
  end
  object JvCalcEdit2: TJvCalcEdit [11]
    Left = 8
    Top = 246
    Width = 140
    Height = 21
    DecimalPlaces = 4
    DisplayFormat = '0.0000'
    TabOrder = 5
    DecimalPlacesAlwaysShown = True
    OnKeyPress = FormKeyPress
  end
  object JvCalcEdit3: TJvCalcEdit [12]
    Left = 8
    Top = 288
    Width = 140
    Height = 21
    DecimalPlaces = 4
    DisplayFormat = '0.0000'
    TabOrder = 6
    DecimalPlacesAlwaysShown = True
    OnKeyPress = FormKeyPress
  end
  object JvEdit1: TJvEdit [13]
    Left = 8
    Top = 80
    Width = 139
    Height = 21
    Modified = False
    TabOrder = 7
    Text = 'JvEdit1'
  end
  inherited DtSrc: TDataSource
    Left = 280
  end
  inherited XPMenu1: TXPMenu
    Left = 312
  end
  inherited PopupMenu1: TPopupMenu
    Left = 344
  end
  object ds_conta: TDataSource
    DataSet = DM.cds_7_contas
    Left = 16
    Top = 8
  end
end
