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
  object sqlOs: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT OS.* FROM OS ')
    SQLConnection = DM.sqlsisAdimin
    Left = 240
    Top = 56
    object sqlOsCODOS: TIntegerField
      FieldName = 'CODOS'
      Required = True
    end
    object sqlOsCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object sqlOsCODVEICULO: TIntegerField
      FieldName = 'CODVEICULO'
    end
    object sqlOsCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
    end
    object sqlOsDATAMOVIMENTO: TDateField
      FieldName = 'DATAMOVIMENTO'
    end
    object sqlOsDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
    end
    object sqlOsPROBLEMAS: TStringField
      FieldName = 'PROBLEMAS'
      Size = 300
    end
    object sqlOsSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object sqlOsDATA_INI: TDateField
      FieldName = 'DATA_INI'
    end
    object sqlOsDATA_FIM: TDateField
      FieldName = 'DATA_FIM'
    end
  end
  object dspOs: TDataSetProvider
    DataSet = sqlOs
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
    object cdsOsCODVEICULO: TIntegerField
      FieldName = 'CODVEICULO'
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
  end
  object dsOs: TDataSource
    DataSet = cdsOs
    Left = 336
    Top = 56
  end
  object cdsServico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspServico'
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
    object cdsServicoDESCPERCENT: TFloatField
      FieldName = 'DESCPERCENT'
    end
    object cdsServicoVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
    end
    object cdsServicoID_OSDET_SERV: TIntegerField
      FieldName = 'ID_OSDET_SERV'
    end
  end
  object dsServico: TDataSource
    DataSet = cdsServico
    Left = 320
    Top = 248
  end
  object sqlPeca: TSQLQuery
    DataSource = dsOs
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
      '')
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
    object sqlPecaDESCPERCENT: TFloatField
      FieldName = 'DESCPERCENT'
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
    ProviderName = 'dspPeca'
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
    object cdsPecaDESCPERCENT: TFloatField
      FieldName = 'DESCPERCENT'
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
    CommandText = 'SELECT DET.* FROM OS_DET DET'#13#10'WHERE ID_OS = :CODOS'
    DataSource = dsOs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODOS'
        ParamType = ptInput
        Size = 4
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
    object sqlServicoDESCPERCENT: TFloatField
      FieldName = 'DESCPERCENT'
    end
    object sqlServicoVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
    end
    object sqlServicoID_OSDET_SERV: TIntegerField
      FieldName = 'ID_OSDET_SERV'
    end
  end
  object dspServico: TDataSetProvider
    DataSet = sqlServico
    Left = 248
    Top = 248
  end
  object dspPeca: TDataSetProvider
    DataSet = sqlPeca
    Left = 272
    Top = 440
  end
end
