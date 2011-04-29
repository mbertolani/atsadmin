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
          FieldName = 'ITEM'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Width = 208
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECO'
          Width = 48
          Visible = True
        end>
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
      DataSource = ds2
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
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
          FieldName = 'ITEM'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Width = 208
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECO'
          Width = 48
          Visible = True
        end>
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
          FieldName = 'ITEM'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Width = 208
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECO'
          Width = 48
          Visible = True
        end>
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
          FieldName = 'ITEM'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Width = 208
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECO'
          Width = 48
          Visible = True
        end>
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
          FieldName = 'ITEM'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Width = 208
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECO'
          Width = 48
          Visible = True
        end>
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
          FieldName = 'ITEM'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Width = 208
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECO'
          Width = 48
          Visible = True
        end>
    end
  end
  object dsp1: TDataSetProvider
    DataSet = SQLDataSet1
    Options = [poAllowCommandText]
    Left = 104
    Top = 120
  end
  object cds1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp1'
    Left = 136
    Top = 120
    object cds1ITEM: TStringField
      FieldName = 'ITEM'
      Required = True
      Size = 15
    end
    object cds1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ReadOnly = True
      FixedChar = True
      Size = 254
    end
    object cds1PRECO: TFloatField
      FieldName = 'PRECO'
      ReadOnly = True
    end
  end
  object ds1: TDataSource
    DataSet = cds1
    Left = 168
    Top = 120
  end
  object sql2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select c.COTACAO_ITEM ITEM, UDF_LEFT(c.COTACAO_ITEMDESCRICAO, 60' +
        ') '
      'DESCRICAO, c.COTACAO_PRECO PRECO from COMPRA_COTACAO c')
    SQLConnection = DM.sqlsisAdimin
    Left = 488
    Top = 120
  end
  object dsp2: TDataSetProvider
    DataSet = sql2
    Options = [poAllowCommandText]
    Left = 520
    Top = 120
  end
  object cds2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp2'
    Left = 552
    Top = 120
    object cds2ITEM: TStringField
      FieldName = 'ITEM'
      Required = True
      Size = 15
    end
    object cds2DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ReadOnly = True
      FixedChar = True
      Size = 254
    end
    object cds2PRECO: TFloatField
      FieldName = 'PRECO'
      ReadOnly = True
    end
  end
  object ds2: TDataSource
    DataSet = cds2
    Left = 592
    Top = 120
  end
  object SQLQuery2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select c.COTACAO_ITEM ITEM, UDF_LEFT(c.COTACAO_ITEMDESCRICAO, 60' +
        ') '
      'DESCRICAO, c.COTACAO_PRECO PRECO from COMPRA_COTACAO c')
    SQLConnection = DM.sqlsisAdimin
    Left = 72
    Top = 208
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = SQLQuery2
    Options = [poAllowCommandText]
    Left = 104
    Top = 208
  end
  object cds3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider2'
    Left = 136
    Top = 208
    object cds3ITEM: TStringField
      FieldName = 'ITEM'
      Required = True
      Size = 15
    end
    object cds3DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ReadOnly = True
      FixedChar = True
      Size = 254
    end
    object cds3PRECO: TFloatField
      FieldName = 'PRECO'
      ReadOnly = True
    end
  end
  object DataSource2: TDataSource
    DataSet = cds3
    Left = 168
    Top = 208
  end
  object SQLQuery3: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select c.COTACAO_ITEM ITEM, UDF_LEFT(c.COTACAO_ITEMDESCRICAO, 60' +
        ') '
      'DESCRICAO, c.COTACAO_PRECO PRECO from COMPRA_COTACAO c')
    SQLConnection = DM.sqlsisAdimin
    Left = 488
    Top = 248
  end
  object DataSetProvider3: TDataSetProvider
    DataSet = SQLQuery3
    Options = [poAllowCommandText]
    Left = 520
    Top = 248
  end
  object cds4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider3'
    Left = 552
    Top = 248
    object cds4ITEM: TStringField
      FieldName = 'ITEM'
      Required = True
      Size = 15
    end
    object cds4DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ReadOnly = True
      FixedChar = True
      Size = 254
    end
    object cds4PRECO: TFloatField
      FieldName = 'PRECO'
      ReadOnly = True
    end
  end
  object DataSource3: TDataSource
    DataSet = cds4
    Left = 584
    Top = 248
  end
  object SQLQuery4: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select c.COTACAO_ITEM ITEM, UDF_LEFT(c.COTACAO_ITEMDESCRICAO, 60' +
        ') '
      'DESCRICAO, c.COTACAO_PRECO PRECO from COMPRA_COTACAO c')
    SQLConnection = DM.sqlsisAdimin
    Left = 88
    Top = 384
  end
  object DataSetProvider4: TDataSetProvider
    DataSet = SQLQuery4
    Options = [poAllowCommandText]
    Left = 120
    Top = 384
  end
  object cds5: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider4'
    Left = 152
    Top = 384
    object cds5ITEM: TStringField
      FieldName = 'ITEM'
      Required = True
      Size = 15
    end
    object cds5DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ReadOnly = True
      FixedChar = True
      Size = 254
    end
    object cds5PRECO: TFloatField
      FieldName = 'PRECO'
      ReadOnly = True
    end
  end
  object DataSource4: TDataSource
    DataSet = cds5
    Left = 184
    Top = 384
  end
  object SQLQuery5: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select c.COTACAO_ITEM ITEM, UDF_LEFT(c.COTACAO_ITEMDESCRICAO, 60' +
        ') '
      'DESCRICAO, c.COTACAO_PRECO PRECO from COMPRA_COTACAO c')
    SQLConnection = DM.sqlsisAdimin
    Left = 464
    Top = 376
  end
  object DataSetProvider5: TDataSetProvider
    DataSet = SQLQuery5
    Options = [poAllowCommandText]
    Left = 496
    Top = 376
  end
  object cds6: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider5'
    Left = 528
    Top = 376
    object cds6ITEM: TStringField
      FieldName = 'ITEM'
      Required = True
      Size = 15
    end
    object cds6DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ReadOnly = True
      FixedChar = True
      Size = 254
    end
    object cds6PRECO: TFloatField
      FieldName = 'PRECO'
      ReadOnly = True
    end
  end
  object DataSource5: TDataSource
    DataSet = cds6
    Left = 560
    Top = 376
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
    Left = 192
    Top = 8
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLQuery1
    Options = [poAllowCommandText]
    Left = 224
    Top = 8
  end
  object cdsFornec: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pSolic'
        ParamType = ptUnknown
      end>
    ProviderName = 'DataSetProvider1'
    Left = 256
    Top = 8
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 
      'select COTACAO_ITEM ITEM, UDF_LEFT(COTACAO_ITEMDESCRICAO, 60) DE' +
      'SCRICAO, COTACAO_PRECO PRECO '#13#10'from COMPRA_COTACAO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 70
    Top = 120
  end
end
