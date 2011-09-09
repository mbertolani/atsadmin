object fOsFiltro: TfOsFiltro
  Left = 230
  Top = 122
  Width = 800
  Height = 640
  Caption = 'Ordem de Servi'#231'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 81
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
  end
  object DBGrid1: TJvDBGrid
    Left = 0
    Top = 81
    Width = 792
    Height = 160
    Align = alCustom
    DataSource = dsOs
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Shell Dlg 2'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    MultiSelect = True
    TitleButtons = True
    AlternateRowColor = 16768667
    SortedField = 'Filename'
    TitleArrow = True
    MinColumnWidth = 100
    AutoSizeColumns = True
    AutoSizeColumnIndex = -2
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.RealNamesOption = '[With the real field name]'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 23
    TitleRowHeight = 17
  end
  object Panel2: TPanel
    Left = 0
    Top = 580
    Width = 792
    Height = 33
    Align = alBottom
    Caption = 'Panel2'
    TabOrder = 2
  end
  object JvDBGrid1: TJvDBGrid
    Left = 0
    Top = 241
    Width = 792
    Height = 160
    Align = alCustom
    DataSource = dsServico
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Shell Dlg 2'
    TitleFont.Style = []
    MultiSelect = True
    TitleButtons = True
    AlternateRowColor = clOlive
    SortedField = 'Filename'
    TitleArrow = True
    MinColumnWidth = 100
    AutoSizeColumns = True
    AutoSizeColumnIndex = -2
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.RealNamesOption = '[With the real field name]'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 23
    TitleRowHeight = 17
  end
  object JvDBGrid2: TJvDBGrid
    Left = 0
    Top = 417
    Width = 792
    Height = 160
    Align = alCustom
    DataSource = dsPeca
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Shell Dlg 2'
    TitleFont.Style = []
    MultiSelect = True
    TitleButtons = True
    AlternateRowColor = clGrayText
    SortedField = 'Filename'
    TitleArrow = True
    MinColumnWidth = 100
    AutoSizeColumns = True
    AutoSizeColumnIndex = -2
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.RealNamesOption = '[With the real field name]'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 23
    TitleRowHeight = 17
  end
  object dspOs: TDataSetProvider
    DataSet = sdsOs
    Options = [poAllowCommandText]
    Left = 272
    Top = 56
  end
  object cdsOs: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOs'
    Left = 304
    Top = 56
    object cdsOsCODOS: TIntegerField
      FieldName = 'CODOS'
      Required = True
    end
    object cdsOsCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object cdsOsCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
    end
    object cdsOsDATAMOVIMENTO: TDateField
      FieldName = 'DATAMOVIMENTO'
    end
    object cdsOsDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
    end
    object cdsOsPROBLEMAS: TStringField
      FieldName = 'PROBLEMAS'
      Size = 300
    end
    object cdsOsSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsOsDATA_INI: TDateField
      FieldName = 'DATA_INI'
    end
    object cdsOsDATA_FIM: TDateField
      FieldName = 'DATA_FIM'
    end
    object cdsOsKM: TIntegerField
      FieldName = 'KM'
    end
    object cdsOsCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
    end
    object cdsOsDATAOS: TDateField
      FieldName = 'DATAOS'
    end
    object cdsOsCODVEICULO: TStringField
      FieldName = 'CODVEICULO'
      Size = 30
    end
    object cdsOsOBS: TStringField
      FieldName = 'OBS'
      Size = 512
    end
    object cdsOssqlServico: TDataSetField
      FieldName = 'sqlServico'
    end
  end
  object dsOs: TDataSource
    DataSet = cdsOs
    Left = 336
    Top = 56
  end
  object cdsServico: TClientDataSet
    Aggregates = <>
    DataSetField = cdsOssqlServico
    Params = <
      item
        DataType = ftInteger
        Name = 'CODOS'
        ParamType = ptInput
      end>
    Left = 288
    Top = 248
    object cdsServicoID_OS_DET: TIntegerField
      FieldName = 'ID_OS_DET'
      Required = True
    end
    object cdsServicoID_OS: TIntegerField
      FieldName = 'ID_OS'
      Required = True
    end
    object cdsServicoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object cdsServicoDESCRICAO_SERV: TStringField
      FieldName = 'DESCRICAO_SERV'
      Size = 1024
    end
    object cdsServicoRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Size = 150
    end
    object cdsServicoSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsServicoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsServicoQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object cdsServicoPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object cdsServicoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object cdsServicoVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
    end
    object cdsServicoID_OSDET_SERV: TIntegerField
      FieldName = 'ID_OSDET_SERV'
    end
    object cdsServicoCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
    end
  end
  object dsServico: TDataSource
    DataSet = cdsServico
    Left = 320
    Top = 248
  end
  object sqlPeca: TSQLQuery
    DataSource = dsLinkMestreDetalhe
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODOS'
        ParamType = ptInput
        Size = 4
      end>
    SQL.Strings = (
      'SELECT DET.* FROM OS_DET DET'
      'WHERE ID_OS = :CODOS'
      '      AND TIPO = '#39'P'#39)
    SQLConnection = DM.sqlsisAdimin
    Left = 232
    Top = 440
    object sqlPecaID_OS_DET: TIntegerField
      FieldName = 'ID_OS_DET'
      Required = True
    end
    object sqlPecaID_OS: TIntegerField
      FieldName = 'ID_OS'
      Required = True
    end
    object sqlPecaCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object sqlPecaDESCRICAO_SERV: TStringField
      FieldName = 'DESCRICAO_SERV'
      Size = 1024
    end
    object sqlPecaRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Size = 150
    end
    object sqlPecaSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object sqlPecaTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sqlPecaQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object sqlPecaPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object sqlPecaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object sqlPecaVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
    end
    object sqlPecaID_OSDET_SERV: TIntegerField
      FieldName = 'ID_OSDET_SERV'
    end
  end
  object cdsPeca: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 312
    Top = 440
    object cdsPecaID_OS_DET: TIntegerField
      FieldName = 'ID_OS_DET'
      Required = True
    end
    object cdsPecaID_OS: TIntegerField
      FieldName = 'ID_OS'
      Required = True
    end
    object cdsPecaCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object cdsPecaDESCRICAO_SERV: TStringField
      FieldName = 'DESCRICAO_SERV'
      Size = 1024
    end
    object cdsPecaRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Size = 150
    end
    object cdsPecaSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsPecaTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsPecaQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object cdsPecaPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object cdsPecaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object cdsPecaVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
    end
    object cdsPecaID_OSDET_SERV: TIntegerField
      FieldName = 'ID_OSDET_SERV'
    end
  end
  object dsPeca: TDataSource
    DataSet = cdsPeca
    Left = 344
    Top = 440
  end
  object sqlServico: TSQLDataSet
    CommandText = 
      'SELECT DET.* FROM OS_DET DET'#13#10'WHERE ID_OS = :CODOS'#13#10'      AND TI' +
      'PO = '#39'S'#39
    DataSource = dsLinkMestreDetalhe
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODOS'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 208
    Top = 248
    object sqlServicoID_OS_DET: TIntegerField
      FieldName = 'ID_OS_DET'
      Required = True
    end
    object sqlServicoID_OS: TIntegerField
      FieldName = 'ID_OS'
      Required = True
    end
    object sqlServicoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object sqlServicoDESCRICAO_SERV: TStringField
      FieldName = 'DESCRICAO_SERV'
      Size = 1024
    end
    object sqlServicoRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Size = 150
    end
    object sqlServicoSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object sqlServicoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sqlServicoQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object sqlServicoPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object sqlServicoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object sqlServicoVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
    end
    object sqlServicoID_OSDET_SERV: TIntegerField
      FieldName = 'ID_OSDET_SERV'
    end
    object sqlServicoCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
    end
  end
  object dsLinkMestreDetalhe: TDataSource
    DataSet = sdsOs
    Left = 80
    Top = 64
  end
  object sdsOs: TSQLDataSet
    CommandText = 'SELECT * FROM OS '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 216
    Top = 56
    object sdsOsCODOS: TIntegerField
      FieldName = 'CODOS'
      Required = True
    end
    object sdsOsCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object sdsOsCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
    end
    object sdsOsDATAMOVIMENTO: TDateField
      FieldName = 'DATAMOVIMENTO'
    end
    object sdsOsDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
    end
    object sdsOsPROBLEMAS: TStringField
      FieldName = 'PROBLEMAS'
      Size = 300
    end
    object sdsOsSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object sdsOsDATA_INI: TDateField
      FieldName = 'DATA_INI'
    end
    object sdsOsDATA_FIM: TDateField
      FieldName = 'DATA_FIM'
    end
    object sdsOsKM: TIntegerField
      FieldName = 'KM'
    end
    object sdsOsCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
    end
    object sdsOsDATAOS: TDateField
      FieldName = 'DATAOS'
    end
    object sdsOsCODVEICULO: TStringField
      FieldName = 'CODVEICULO'
      Size = 30
    end
    object sdsOsOBS: TStringField
      FieldName = 'OBS'
      Size = 512
    end
  end
end
