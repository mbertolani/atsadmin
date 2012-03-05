inherited fDescontoTitulos: TfDescontoTitulos
  Width = 647
  Caption = 'Desconto de Titulos'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 10
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
    Left = 10
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
    Left = 10
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
    Left = 10
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
    Left = 10
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
    Left = 10
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
    TabOrder = 6
    object Label7: TLabel
      Left = 60
      Top = 12
      Width = 65
      Height = 13
      Caption = 'Caixa/Conta :'
      Transparent = True
    end
    object cbConta: TComboBox
      Left = 128
      Top = 10
      Width = 481
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 0
      OnChange = cbContaChange
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 639
    TabOrder = 7
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
    Left = 10
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
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object edPreco: TJvCalcEdit [9]
    Left = 10
    Top = 162
    Width = 140
    Height = 21
    DecimalPlaces = 4
    DisplayFormat = '0.0000'
    TabOrder = 2
    DecimalPlacesAlwaysShown = True
    OnKeyPress = FormKeyPress
  end
  object edJuro: TJvCalcEdit [10]
    Left = 10
    Top = 204
    Width = 140
    Height = 21
    DecimalPlaces = 4
    DisplayFormat = '0.0000'
    TabOrder = 3
    DecimalPlacesAlwaysShown = True
    OnKeyPress = FormKeyPress
  end
  object edIOF: TJvCalcEdit [11]
    Left = 10
    Top = 246
    Width = 140
    Height = 21
    DecimalPlaces = 4
    DisplayFormat = '0.0000'
    TabOrder = 4
    DecimalPlacesAlwaysShown = True
    OnKeyPress = FormKeyPress
  end
  object JvCalcEdit3: TJvCalcEdit [12]
    Left = 10
    Top = 288
    Width = 140
    Height = 21
    DecimalPlaces = 4
    DisplayFormat = '0.0000'
    TabOrder = 5
    DecimalPlacesAlwaysShown = True
    OnKeyPress = FormKeyPress
  end
  object Dta: TJvDatePickerEdit [13]
    Left = 10
    Top = 83
    Width = 103
    Height = 21
    AllowNoDate = True
    Checked = True
    TabOrder = 0
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
  object sqlFornecedor: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CONTA'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'SELECT CODFORNECEDOR '
      '   FROM FORNECEDOR '
      'WHERE CONTA_FORNECEDOR = :CONTA')
    SQLConnection = DM.sqlsisAdimin
    Left = 392
    Top = 160
  end
  object sqlRec: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'user'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'SELECT TITULO , VIA, CODALMOXARIFADO FROM RECEBIMENTO '
      'WHERE DP = 0'
      '      AND CODUSUARIO = :user')
    SQLConnection = DM.sqlsisAdimin
    Left = 280
    Top = 88
  end
  object dspRec: TDataSetProvider
    DataSet = sqlRec
    Left = 312
    Top = 88
  end
  object cdsRec: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'user'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspRec'
    Left = 344
    Top = 88
    object cdsRecTITULO: TStringField
      FieldName = 'TITULO'
      Required = True
      Size = 18
    end
    object cdsRecVIA: TStringField
      FieldName = 'VIA'
      Required = True
      FixedChar = True
      Size = 4
    end
    object cdsRecCODALMOXARIFADO: TSmallintField
      FieldName = 'CODALMOXARIFADO'
    end
  end
end
