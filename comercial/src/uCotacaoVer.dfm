inherited fCotacaoVer: TfCotacaoVer
  Caption = 'Cota'#231#245'es'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    Height = 25
  end
  inherited MMJPanel2: TMMJPanel
    inherited btnProcurar: TBitBtn
      OnClick = btnProcurarClick
    end
  end
  object gb1: TGroupBox [2]
    Left = 3
    Top = 27
    Width = 358
    Height = 126
    Caption = 'Cota'#231#227'o 1'
    TabOrder = 2
    object JvDBGrid1: TJvDBGrid
      Left = 2
      Top = 15
      Width = 354
      Height = 109
      Align = alClient
      DataSource = ds1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
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
  end
  object gb2: TGroupBox [3]
    Left = 371
    Top = 27
    Width = 358
    Height = 126
    Caption = 'Cota'#231#227'o '
    TabOrder = 3
    object JvDBGrid2: TJvDBGrid
      Left = 2
      Top = 15
      Width = 354
      Height = 109
      Align = alClient
      DataSource = DataSource1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
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
  end
  object GroupBox1: TGroupBox [4]
    Left = 3
    Top = 163
    Width = 358
    Height = 126
    Caption = 'Cota'#231#227'o '
    TabOrder = 4
    object JvDBGrid3: TJvDBGrid
      Left = 2
      Top = 15
      Width = 354
      Height = 109
      Align = alClient
      DataSource = DataSource2
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
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
  end
  object GroupBox2: TGroupBox [5]
    Left = 371
    Top = 163
    Width = 358
    Height = 126
    Caption = 'Cota'#231#227'o '
    TabOrder = 5
    object JvDBGrid4: TJvDBGrid
      Left = 2
      Top = 15
      Width = 354
      Height = 109
      Align = alClient
      DataSource = DataSource3
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
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
  end
  object GroupBox3: TGroupBox [6]
    Left = 3
    Top = 291
    Width = 358
    Height = 126
    Caption = 'Cota'#231#227'o '
    TabOrder = 6
    object JvDBGrid5: TJvDBGrid
      Left = 2
      Top = 15
      Width = 354
      Height = 109
      Align = alClient
      DataSource = DataSource4
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
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
  end
  object GroupBox4: TGroupBox [7]
    Left = 371
    Top = 291
    Width = 358
    Height = 126
    Caption = 'Cota'#231#227'o '
    TabOrder = 7
    object JvDBGrid6: TJvDBGrid
      Left = 2
      Top = 15
      Width = 354
      Height = 109
      Align = alClient
      DataSource = DataSource5
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
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
  end
  object sql1: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pSolic'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'SELECT r.COTACAO_CODIGO, r.COTACAO_DATA, r.COTACAO_FORNEC, '
      'r.COTACAO_SOLICIT, r.COTACAO_ITEM, r.COTACAO_ITEMDESCRICAO, '
      'r.COTACAO_SITUACAO, r.COTACAO_QTDE, r.COTACAO_PRECO, '
      'r.COTACAO_USER, r.COTACAO_DTENTREGA, r.COTACAO_PRAZO, '
      'r.COTACAO_OBSERVACAO, r.COTACAO_TIPO, r.COTACAO_CODSOLIC, '
      'forn.RAZAOSOCIAL FORNECEDOR'
      '   FROM COMPRA_COTACAO r, FORNECEDOR forn'
      'WHERE forn.CODFORNECEDOR = r.COTACAO_FORNEC'
      '      AND r.COTACAO_CODSOLIC = :pSolic')
    SQLConnection = DM.sqlsisAdimin
    Left = 72
    Top = 120
  end
  object dsp1: TDataSetProvider
    DataSet = sql1
    Left = 104
    Top = 120
  end
  object cds1: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pSolic'
        ParamType = ptUnknown
      end>
    ProviderName = 'dsp1'
    Left = 136
    Top = 120
    object cds1COTACAO_CODIGO: TIntegerField
      FieldName = 'COTACAO_CODIGO'
      Required = True
    end
    object cds1COTACAO_DATA: TDateField
      FieldName = 'COTACAO_DATA'
    end
    object cds1COTACAO_FORNEC: TIntegerField
      FieldName = 'COTACAO_FORNEC'
      Required = True
    end
    object cds1COTACAO_SOLICIT: TStringField
      FieldName = 'COTACAO_SOLICIT'
    end
    object cds1COTACAO_ITEM: TStringField
      FieldName = 'COTACAO_ITEM'
      Required = True
      Size = 15
    end
    object cds1COTACAO_ITEMDESCRICAO: TStringField
      FieldName = 'COTACAO_ITEMDESCRICAO'
      Size = 300
    end
    object cds1COTACAO_SITUACAO: TStringField
      FieldName = 'COTACAO_SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cds1COTACAO_QTDE: TFloatField
      FieldName = 'COTACAO_QTDE'
    end
    object cds1COTACAO_PRECO: TFloatField
      FieldName = 'COTACAO_PRECO'
    end
    object cds1COTACAO_USER: TStringField
      FieldName = 'COTACAO_USER'
    end
    object cds1COTACAO_DTENTREGA: TDateField
      FieldName = 'COTACAO_DTENTREGA'
    end
    object cds1COTACAO_PRAZO: TStringField
      FieldName = 'COTACAO_PRAZO'
      Size = 30
    end
    object cds1COTACAO_OBSERVACAO: TStringField
      FieldName = 'COTACAO_OBSERVACAO'
      Size = 200
    end
    object cds1COTACAO_TIPO: TStringField
      FieldName = 'COTACAO_TIPO'
      FixedChar = True
      Size = 1
    end
    object cds1COTACAO_CODSOLIC: TIntegerField
      FieldName = 'COTACAO_CODSOLIC'
    end
    object cds1FORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Required = True
      Size = 50
    end
  end
  object ds1: TDataSource
    DataSet = cds1
    Left = 168
    Top = 120
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pSolic'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'SELECT r.COTACAO_CODIGO, r.COTACAO_DATA, r.COTACAO_FORNEC, '
      'r.COTACAO_SOLICIT, r.COTACAO_ITEM, r.COTACAO_ITEMDESCRICAO, '
      'r.COTACAO_SITUACAO, r.COTACAO_QTDE, r.COTACAO_PRECO, '
      'r.COTACAO_USER, r.COTACAO_DTENTREGA, r.COTACAO_PRAZO, '
      'r.COTACAO_OBSERVACAO, r.COTACAO_TIPO, r.COTACAO_CODSOLIC, '
      'forn.RAZAOSOCIAL FORNECEDOR'
      '   FROM COMPRA_COTACAO r, FORNECEDOR forn'
      'WHERE forn.CODFORNECEDOR = r.COTACAO_FORNEC'
      '      AND r.COTACAO_CODSOLIC = :pSolic')
    SQLConnection = DM.sqlsisAdimin
    Left = 488
    Top = 120
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLQuery1
    Left = 520
    Top = 120
  end
  object cds2: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pSolic'
        ParamType = ptUnknown
      end>
    ProviderName = 'dsp1'
    Left = 552
    Top = 120
    object IntegerField1: TIntegerField
      FieldName = 'COTACAO_CODIGO'
      Required = True
    end
    object DateField1: TDateField
      FieldName = 'COTACAO_DATA'
    end
    object IntegerField2: TIntegerField
      FieldName = 'COTACAO_FORNEC'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'COTACAO_SOLICIT'
    end
    object StringField2: TStringField
      FieldName = 'COTACAO_ITEM'
      Required = True
      Size = 15
    end
    object StringField3: TStringField
      FieldName = 'COTACAO_ITEMDESCRICAO'
      Size = 300
    end
    object StringField4: TStringField
      FieldName = 'COTACAO_SITUACAO'
      FixedChar = True
      Size = 1
    end
    object FloatField1: TFloatField
      FieldName = 'COTACAO_QTDE'
    end
    object FloatField2: TFloatField
      FieldName = 'COTACAO_PRECO'
    end
    object StringField5: TStringField
      FieldName = 'COTACAO_USER'
    end
    object DateField2: TDateField
      FieldName = 'COTACAO_DTENTREGA'
    end
    object StringField6: TStringField
      FieldName = 'COTACAO_PRAZO'
      Size = 30
    end
    object StringField7: TStringField
      FieldName = 'COTACAO_OBSERVACAO'
      Size = 200
    end
    object StringField8: TStringField
      FieldName = 'COTACAO_TIPO'
      FixedChar = True
      Size = 1
    end
    object IntegerField3: TIntegerField
      FieldName = 'COTACAO_CODSOLIC'
    end
    object StringField9: TStringField
      FieldName = 'FORNECEDOR'
      Required = True
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = cds2
    Left = 592
    Top = 120
  end
  object SQLQuery2: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pSolic'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'SELECT r.COTACAO_CODIGO, r.COTACAO_DATA, r.COTACAO_FORNEC, '
      'r.COTACAO_SOLICIT, r.COTACAO_ITEM, r.COTACAO_ITEMDESCRICAO, '
      'r.COTACAO_SITUACAO, r.COTACAO_QTDE, r.COTACAO_PRECO, '
      'r.COTACAO_USER, r.COTACAO_DTENTREGA, r.COTACAO_PRAZO, '
      'r.COTACAO_OBSERVACAO, r.COTACAO_TIPO, r.COTACAO_CODSOLIC, '
      'forn.RAZAOSOCIAL FORNECEDOR'
      '   FROM COMPRA_COTACAO r, FORNECEDOR forn'
      'WHERE forn.CODFORNECEDOR = r.COTACAO_FORNEC'
      '      AND r.COTACAO_CODSOLIC = :pSolic')
    SQLConnection = DM.sqlsisAdimin
    Left = 72
    Top = 208
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = SQLQuery2
    Left = 104
    Top = 208
  end
  object cds3: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pSolic'
        ParamType = ptUnknown
      end>
    ProviderName = 'dsp1'
    Left = 136
    Top = 208
    object IntegerField4: TIntegerField
      FieldName = 'COTACAO_CODIGO'
      Required = True
    end
    object DateField3: TDateField
      FieldName = 'COTACAO_DATA'
    end
    object IntegerField5: TIntegerField
      FieldName = 'COTACAO_FORNEC'
      Required = True
    end
    object StringField10: TStringField
      FieldName = 'COTACAO_SOLICIT'
    end
    object StringField11: TStringField
      FieldName = 'COTACAO_ITEM'
      Required = True
      Size = 15
    end
    object StringField12: TStringField
      FieldName = 'COTACAO_ITEMDESCRICAO'
      Size = 300
    end
    object StringField13: TStringField
      FieldName = 'COTACAO_SITUACAO'
      FixedChar = True
      Size = 1
    end
    object FloatField3: TFloatField
      FieldName = 'COTACAO_QTDE'
    end
    object FloatField4: TFloatField
      FieldName = 'COTACAO_PRECO'
    end
    object StringField14: TStringField
      FieldName = 'COTACAO_USER'
    end
    object DateField4: TDateField
      FieldName = 'COTACAO_DTENTREGA'
    end
    object StringField15: TStringField
      FieldName = 'COTACAO_PRAZO'
      Size = 30
    end
    object StringField16: TStringField
      FieldName = 'COTACAO_OBSERVACAO'
      Size = 200
    end
    object StringField17: TStringField
      FieldName = 'COTACAO_TIPO'
      FixedChar = True
      Size = 1
    end
    object IntegerField6: TIntegerField
      FieldName = 'COTACAO_CODSOLIC'
    end
    object StringField18: TStringField
      FieldName = 'FORNECEDOR'
      Required = True
      Size = 50
    end
  end
  object DataSource2: TDataSource
    DataSet = cds3
    Left = 168
    Top = 208
  end
  object SQLQuery3: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pSolic'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'SELECT r.COTACAO_CODIGO, r.COTACAO_DATA, r.COTACAO_FORNEC, '
      'r.COTACAO_SOLICIT, r.COTACAO_ITEM, r.COTACAO_ITEMDESCRICAO, '
      'r.COTACAO_SITUACAO, r.COTACAO_QTDE, r.COTACAO_PRECO, '
      'r.COTACAO_USER, r.COTACAO_DTENTREGA, r.COTACAO_PRAZO, '
      'r.COTACAO_OBSERVACAO, r.COTACAO_TIPO, r.COTACAO_CODSOLIC, '
      'forn.RAZAOSOCIAL FORNECEDOR'
      '   FROM COMPRA_COTACAO r, FORNECEDOR forn'
      'WHERE forn.CODFORNECEDOR = r.COTACAO_FORNEC'
      '      AND r.COTACAO_CODSOLIC = :pSolic')
    SQLConnection = DM.sqlsisAdimin
    Left = 488
    Top = 248
  end
  object DataSetProvider3: TDataSetProvider
    DataSet = SQLQuery3
    Left = 520
    Top = 248
  end
  object cds4: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pSolic'
        ParamType = ptUnknown
      end>
    ProviderName = 'dsp1'
    Left = 552
    Top = 248
    object IntegerField7: TIntegerField
      FieldName = 'COTACAO_CODIGO'
      Required = True
    end
    object DateField5: TDateField
      FieldName = 'COTACAO_DATA'
    end
    object IntegerField8: TIntegerField
      FieldName = 'COTACAO_FORNEC'
      Required = True
    end
    object StringField19: TStringField
      FieldName = 'COTACAO_SOLICIT'
    end
    object StringField20: TStringField
      FieldName = 'COTACAO_ITEM'
      Required = True
      Size = 15
    end
    object StringField21: TStringField
      FieldName = 'COTACAO_ITEMDESCRICAO'
      Size = 300
    end
    object StringField22: TStringField
      FieldName = 'COTACAO_SITUACAO'
      FixedChar = True
      Size = 1
    end
    object FloatField5: TFloatField
      FieldName = 'COTACAO_QTDE'
    end
    object FloatField6: TFloatField
      FieldName = 'COTACAO_PRECO'
    end
    object StringField23: TStringField
      FieldName = 'COTACAO_USER'
    end
    object DateField6: TDateField
      FieldName = 'COTACAO_DTENTREGA'
    end
    object StringField24: TStringField
      FieldName = 'COTACAO_PRAZO'
      Size = 30
    end
    object StringField25: TStringField
      FieldName = 'COTACAO_OBSERVACAO'
      Size = 200
    end
    object StringField26: TStringField
      FieldName = 'COTACAO_TIPO'
      FixedChar = True
      Size = 1
    end
    object IntegerField9: TIntegerField
      FieldName = 'COTACAO_CODSOLIC'
    end
    object StringField27: TStringField
      FieldName = 'FORNECEDOR'
      Required = True
      Size = 50
    end
  end
  object DataSource3: TDataSource
    DataSet = cds4
    Left = 584
    Top = 248
  end
  object SQLQuery4: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pSolic'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'SELECT r.COTACAO_CODIGO, r.COTACAO_DATA, r.COTACAO_FORNEC, '
      'r.COTACAO_SOLICIT, r.COTACAO_ITEM, r.COTACAO_ITEMDESCRICAO, '
      'r.COTACAO_SITUACAO, r.COTACAO_QTDE, r.COTACAO_PRECO, '
      'r.COTACAO_USER, r.COTACAO_DTENTREGA, r.COTACAO_PRAZO, '
      'r.COTACAO_OBSERVACAO, r.COTACAO_TIPO, r.COTACAO_CODSOLIC, '
      'forn.RAZAOSOCIAL FORNECEDOR'
      '   FROM COMPRA_COTACAO r, FORNECEDOR forn'
      'WHERE forn.CODFORNECEDOR = r.COTACAO_FORNEC'
      '      AND r.COTACAO_CODSOLIC = :pSolic')
    SQLConnection = DM.sqlsisAdimin
    Left = 88
    Top = 384
  end
  object DataSetProvider4: TDataSetProvider
    DataSet = SQLQuery4
    Left = 120
    Top = 384
  end
  object cds5: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pSolic'
        ParamType = ptUnknown
      end>
    ProviderName = 'dsp1'
    Left = 152
    Top = 384
    object IntegerField10: TIntegerField
      FieldName = 'COTACAO_CODIGO'
      Required = True
    end
    object DateField7: TDateField
      FieldName = 'COTACAO_DATA'
    end
    object IntegerField11: TIntegerField
      FieldName = 'COTACAO_FORNEC'
      Required = True
    end
    object StringField28: TStringField
      FieldName = 'COTACAO_SOLICIT'
    end
    object StringField29: TStringField
      FieldName = 'COTACAO_ITEM'
      Required = True
      Size = 15
    end
    object StringField30: TStringField
      FieldName = 'COTACAO_ITEMDESCRICAO'
      Size = 300
    end
    object StringField31: TStringField
      FieldName = 'COTACAO_SITUACAO'
      FixedChar = True
      Size = 1
    end
    object FloatField7: TFloatField
      FieldName = 'COTACAO_QTDE'
    end
    object FloatField8: TFloatField
      FieldName = 'COTACAO_PRECO'
    end
    object StringField32: TStringField
      FieldName = 'COTACAO_USER'
    end
    object DateField8: TDateField
      FieldName = 'COTACAO_DTENTREGA'
    end
    object StringField33: TStringField
      FieldName = 'COTACAO_PRAZO'
      Size = 30
    end
    object StringField34: TStringField
      FieldName = 'COTACAO_OBSERVACAO'
      Size = 200
    end
    object StringField35: TStringField
      FieldName = 'COTACAO_TIPO'
      FixedChar = True
      Size = 1
    end
    object IntegerField12: TIntegerField
      FieldName = 'COTACAO_CODSOLIC'
    end
    object StringField36: TStringField
      FieldName = 'FORNECEDOR'
      Required = True
      Size = 50
    end
  end
  object DataSource4: TDataSource
    DataSet = cds5
    Left = 184
    Top = 384
  end
  object SQLQuery5: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pSolic'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'SELECT r.COTACAO_CODIGO, r.COTACAO_DATA, r.COTACAO_FORNEC, '
      'r.COTACAO_SOLICIT, r.COTACAO_ITEM, r.COTACAO_ITEMDESCRICAO, '
      'r.COTACAO_SITUACAO, r.COTACAO_QTDE, r.COTACAO_PRECO, '
      'r.COTACAO_USER, r.COTACAO_DTENTREGA, r.COTACAO_PRAZO, '
      'r.COTACAO_OBSERVACAO, r.COTACAO_TIPO, r.COTACAO_CODSOLIC, '
      'forn.RAZAOSOCIAL FORNECEDOR'
      '   FROM COMPRA_COTACAO r, FORNECEDOR forn'
      'WHERE forn.CODFORNECEDOR = r.COTACAO_FORNEC'
      '      AND r.COTACAO_CODSOLIC = :pSolic')
    SQLConnection = DM.sqlsisAdimin
    Left = 464
    Top = 376
  end
  object DataSetProvider5: TDataSetProvider
    DataSet = SQLQuery5
    Left = 496
    Top = 376
  end
  object cds6: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pSolic'
        ParamType = ptUnknown
      end>
    ProviderName = 'dsp1'
    Left = 528
    Top = 376
    object IntegerField13: TIntegerField
      FieldName = 'COTACAO_CODIGO'
      Required = True
    end
    object DateField9: TDateField
      FieldName = 'COTACAO_DATA'
    end
    object IntegerField14: TIntegerField
      FieldName = 'COTACAO_FORNEC'
      Required = True
    end
    object StringField37: TStringField
      FieldName = 'COTACAO_SOLICIT'
    end
    object StringField38: TStringField
      FieldName = 'COTACAO_ITEM'
      Required = True
      Size = 15
    end
    object StringField39: TStringField
      FieldName = 'COTACAO_ITEMDESCRICAO'
      Size = 300
    end
    object StringField40: TStringField
      FieldName = 'COTACAO_SITUACAO'
      FixedChar = True
      Size = 1
    end
    object FloatField9: TFloatField
      FieldName = 'COTACAO_QTDE'
    end
    object FloatField10: TFloatField
      FieldName = 'COTACAO_PRECO'
    end
    object StringField41: TStringField
      FieldName = 'COTACAO_USER'
    end
    object DateField10: TDateField
      FieldName = 'COTACAO_DTENTREGA'
    end
    object StringField42: TStringField
      FieldName = 'COTACAO_PRAZO'
      Size = 30
    end
    object StringField43: TStringField
      FieldName = 'COTACAO_OBSERVACAO'
      Size = 200
    end
    object StringField44: TStringField
      FieldName = 'COTACAO_TIPO'
      FixedChar = True
      Size = 1
    end
    object IntegerField15: TIntegerField
      FieldName = 'COTACAO_CODSOLIC'
    end
    object StringField45: TStringField
      FieldName = 'FORNECEDOR'
      Required = True
      Size = 50
    end
  end
  object DataSource5: TDataSource
    DataSet = cds6
    Left = 560
    Top = 376
  end
end
