inherited fBancoDePara: TfBancoDePara
  Caption = 'fBancoDePara'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    object Label4: TLabel
      Left = 24
      Top = 14
      Width = 65
      Height = 13
      Caption = 'Caixa/Conta :'
      Transparent = True
    end
    object cbConta: TDBLookupComboBox
      Left = 104
      Top = 11
      Width = 253
      Height = 24
      Ctl3D = True
      DataField = 'CAIXA'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'NOME'
      ListSource = ds_conta
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnKeyPress = FormKeyPress
    end
  end
  object JvDBUltimGrid1: TJvDBUltimGrid [2]
    Left = 0
    Top = 51
    Width = 772
    Height = 423
    Align = alClient
    DataSource = DtSrc
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    AutoSizeColumns = True
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'CAIXA'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTA'
        Width = 111
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EXTRATODOC'
        Width = 387
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EXTRATOTIPO'
        Width = 183
        Visible = True
      end>
  end
  inherited DtSrc: TDataSource
    DataSet = cdsBancoDePara
  end
  object sdsBancoDePara: TSQLDataSet
    CommandText = 'SELECT * FROM BANCODEPARA WHERE CAIXA = :CAIXA'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CAIXA'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 176
    Top = 24
  end
  object dspDePara: TDataSetProvider
    DataSet = sdsBancoDePara
    Left = 208
    Top = 24
  end
  object cdsBancoDePara: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CAIXA'
        ParamType = ptInput
      end>
    ProviderName = 'dspDePara'
    Left = 240
    Top = 24
    object cdsBancoDeParaCAIXA: TIntegerField
      FieldName = 'CAIXA'
      Required = True
    end
    object cdsBancoDeParaCONTA: TIntegerField
      FieldName = 'CONTA'
      Required = True
    end
    object cdsBancoDeParaEXTRATODOC: TStringField
      FieldName = 'EXTRATODOC'
      Required = True
      Size = 100
    end
    object cdsBancoDeParaEXTRATOTIPO: TStringField
      FieldName = 'EXTRATOTIPO'
      Required = True
    end
  end
  object ds_conta: TDataSource
    DataSet = DM.cds_7_contas
    Left = 416
    Top = 8
  end
end
