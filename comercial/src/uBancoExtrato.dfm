inherited fBancoExtrato: TfBancoExtrato
  Caption = 'Concilia'#231#227'o Banc'#225'ria'
  OldCreateOrder = True
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
    end
    object DBLookupComboBox1: TDBLookupComboBox
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
  inherited MMJPanel2: TMMJPanel
    inherited btnProcurar: TBitBtn
      OnClick = btnProcurarClick
    end
  end
  object JvDBUltimGrid1: TJvDBUltimGrid [2]
    Left = 8
    Top = 64
    Width = 753
    Height = 409
    DataSource = DtSrc
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
  end
  inherited DtSrc: TDataSource
    DataSet = cdsExtrato
  end
  object ds_conta: TDataSource
    DataSet = DM.cds_7_contas
    Left = 416
    Top = 8
  end
  object sdsExtrato: TSQLDataSet
    CommandText = 'SELECT * FROM BANCOEXTRATO WHERE CAIXA = :CAIXA'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CAIXA'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 400
    Top = 48
  end
  object dspExtrato: TDataSetProvider
    DataSet = sdsExtrato
    Left = 432
    Top = 48
  end
  object cdsExtrato: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspExtrato'
    Left = 472
    Top = 48
  end
end
