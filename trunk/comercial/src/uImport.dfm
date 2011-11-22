object fImport: TfImport
  Left = 190
  Top = 116
  Width = 898
  Height = 584
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 890
    Height = 223
    Align = alTop
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Sequencial'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'C'#243'digo'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descri'#231#227'o do Produto'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qutde'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UN'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Estoque'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'R$ Venda'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Marca'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Grupo'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SubGrupo'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Local Estoque'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODALMOXARIFADO'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO_COMPRA'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_PRAZO'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOTES'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECOMEDIO'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PESO_QTDE'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_COMISSAO'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RATEIO'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTA_DESPESA'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IPI'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NCM'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ORIGEM'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUEMAXIMO'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUEREPOSICAO'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUEMINIMO'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MARGEM_LUCRO'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATACADASTRO'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRO_COD'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAGRAV'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPOPRECOVENDA'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORMINIMO'
        Width = 150
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 516
    Width = 890
    Height = 41
    Align = alBottom
    TabOrder = 1
    object FlatGauge1: TFlatGauge
      Left = 376
      Top = 9
      Width = 145
      Height = 25
      AdvColorBorder = 0
      ColorBorder = 8623776
      Progress = 25
    end
    object BitBtn1: TBitBtn
      Left = 104
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Ler Arquivo'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 195
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Importar'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 223
    Width = 890
    Height = 293
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    Lines.Strings = (
      
        'Sequencial,C'#243'digo,Descri'#231#227'o do Produto,Qutde,UN,Estoque,R$ Venda' +
        ',Marca,Grupo,SubGrupo,Local Estoque,CODALMOXARIFADO,PRECO_COMPRA' +
        ',VALOR_PRAZO,TIPO,LOTES,PRECOMEDIO,PESO_QTDE,COD_COMISSAO,RATEIO' +
        ',CONTA_DESPESA,IPI,NCM,ORIGEM,ESTOQUEMAXIMO,ESTOQUEREPOSICAO,EST' +
        'OQUEMINIMO,MARGEM_LUCRO,DATACADASTRO,PRO_COD,DATAGRAV,TIPOPRECOV' +
        'ENDA,VALORMINIMO')
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 2
  end
  object JvCsvDataSet1: TJvCsvDataSet
    FileName = 'PhoneList.csv'
    Changed = False
    CsvFieldDef = 
      'Sequencial,C'#243'digo,Descri'#231#227'o do Produto,Qutde,UN,Estoque,R$ Venda' +
      ',Marca,Grupo,SubGrupo,Local Estoque,CODALMOXARIFADO,PRECO_COMPRA' +
      ',VALOR_PRAZO,TIPO,LOTES,PRECOMEDIO,PESO_QTDE,COD_COMISSAO,RATEIO' +
      ',CONTA_DESPESA,IPI,NCM,ORIGEM,ESTOQUEMAXIMO,ESTOQUEREPOSICAO,EST' +
      'OQUEMINIMO,MARGEM_LUCRO,DATACADASTRO,PRO_COD,DATAGRAV,TIPOPRECOV' +
      'ENDA,VALORMINIMO'
    CsvUniqueKeys = False
    ExtendedHeaderInfo = False
    CaseInsensitive = False
    AutoBackupCount = 0
    StoreDefs = True
    Left = 368
    Top = 184
    object JvCsvDataSet1Sequencial: TStringField
      FieldName = 'Sequencial'
      Size = 80
    end
    object JvCsvDataSet1Cdigo: TStringField
      FieldName = 'C'#243'digo'
      Size = 80
    end
    object JvCsvDataSet1DescriodoProduto: TStringField
      FieldName = 'Descri'#231#227'o do Produto'
      Size = 80
    end
    object JvCsvDataSet1Qutde: TStringField
      FieldName = 'Qutde'
      Size = 80
    end
    object JvCsvDataSet1UN: TStringField
      FieldName = 'UN'
      Size = 80
    end
    object JvCsvDataSet1Estoque: TStringField
      FieldName = 'Estoque'
      Size = 80
    end
    object JvCsvDataSet1RVenda: TStringField
      FieldName = 'R$ Venda'
      Size = 80
    end
    object JvCsvDataSet1Marca: TStringField
      FieldName = 'Marca'
      Size = 80
    end
    object JvCsvDataSet1Grupo: TStringField
      FieldName = 'Grupo'
      Size = 80
    end
    object JvCsvDataSet1SubGrupo: TStringField
      FieldName = 'SubGrupo'
      Size = 80
    end
    object JvCsvDataSet1LocalEstoque: TStringField
      FieldName = 'Local Estoque'
      Size = 80
    end
    object JvCsvDataSet1CODALMOXARIFADO: TStringField
      FieldName = 'CODALMOXARIFADO'
      Size = 80
    end
    object JvCsvDataSet1PRECO_COMPRA: TStringField
      FieldName = 'PRECO_COMPRA'
      Size = 80
    end
    object JvCsvDataSet1VALOR_PRAZO: TStringField
      FieldName = 'VALOR_PRAZO'
      Size = 80
    end
    object JvCsvDataSet1TIPO: TStringField
      FieldName = 'TIPO'
      Size = 80
    end
    object JvCsvDataSet1LOTES: TStringField
      FieldName = 'LOTES'
      Size = 80
    end
    object JvCsvDataSet1PRECOMEDIO: TStringField
      FieldName = 'PRECOMEDIO'
      Size = 80
    end
    object JvCsvDataSet1PESO_QTDE: TStringField
      FieldName = 'PESO_QTDE'
      Size = 80
    end
    object JvCsvDataSet1COD_COMISSAO: TStringField
      FieldName = 'COD_COMISSAO'
      Size = 80
    end
    object JvCsvDataSet1RATEIO: TStringField
      FieldName = 'RATEIO'
      Size = 80
    end
    object JvCsvDataSet1CONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      Size = 80
    end
    object JvCsvDataSet1IPI: TStringField
      FieldName = 'IPI'
      Size = 80
    end
    object JvCsvDataSet1NCM: TStringField
      FieldName = 'NCM'
      Size = 80
    end
    object JvCsvDataSet1ORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 80
    end
    object JvCsvDataSet1ESTOQUEMAXIMO: TStringField
      FieldName = 'ESTOQUEMAXIMO'
      Size = 80
    end
    object JvCsvDataSet1ESTOQUEREPOSICAO: TStringField
      FieldName = 'ESTOQUEREPOSICAO'
      Size = 80
    end
    object JvCsvDataSet1ESTOQUEMINIMO: TStringField
      FieldName = 'ESTOQUEMINIMO'
      Size = 80
    end
    object JvCsvDataSet1MARGEM_LUCRO: TStringField
      FieldName = 'MARGEM_LUCRO'
      Size = 80
    end
    object JvCsvDataSet1DATACADASTRO: TStringField
      FieldName = 'DATACADASTRO'
      Size = 80
    end
    object JvCsvDataSet1PRO_COD: TStringField
      FieldName = 'PRO_COD'
      Size = 80
    end
    object JvCsvDataSet1DATAGRAV: TStringField
      FieldName = 'DATAGRAV'
      Size = 80
    end
    object JvCsvDataSet1TIPOPRECOVENDA: TStringField
      FieldName = 'TIPOPRECOVENDA'
      Size = 80
    end
    object JvCsvDataSet1VALORMINIMO: TStringField
      FieldName = 'VALORMINIMO'
      Size = 80
    end
  end
  object DataSource1: TDataSource
    DataSet = JvCsvDataSet1
    Left = 296
    Top = 184
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'csv'
    Filter = 'CSV files (*.csv)|*.csv|all files (*.*)|*.*'
    Left = 200
    Top = 216
  end
  object s_produtos: TSQLDataSet
    CommandText = 'select * from PRODUTOS '#13#10'where CODPRO = :cod'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'cod'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 152
    Top = 120
    object s_produtosCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object s_produtosFAMILIA: TStringField
      FieldName = 'FAMILIA'
      Size = 30
    end
    object s_produtosCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 30
    end
    object s_produtosMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object s_produtosUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      FixedChar = True
      Size = 2
    end
    object s_produtosDATAULTIMACOMPRA: TDateField
      FieldName = 'DATAULTIMACOMPRA'
    end
    object s_produtosESTOQUEMAXIMO: TFloatField
      FieldName = 'ESTOQUEMAXIMO'
    end
    object s_produtosESTOQUEATUAL: TFloatField
      FieldName = 'ESTOQUEATUAL'
    end
    object s_produtosESTOQUEREPOSICAO: TFloatField
      FieldName = 'ESTOQUEREPOSICAO'
    end
    object s_produtosESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
    end
    object s_produtosVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
    end
    object s_produtosVALORUNITARIOANTERIOR: TFloatField
      FieldName = 'VALORUNITARIOANTERIOR'
    end
    object s_produtosICMS: TFloatField
      FieldName = 'ICMS'
    end
    object s_produtosCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
    end
    object s_produtosIPI: TFloatField
      FieldName = 'IPI'
    end
    object s_produtosCLASSIFIC_FISCAL: TStringField
      FieldName = 'CLASSIFIC_FISCAL'
      Size = 30
    end
    object s_produtosCST: TStringField
      FieldName = 'CST'
      Size = 30
    end
    object s_produtosBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object s_produtosPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object s_produtosPRECOMEDIO: TBCDField
      FieldName = 'PRECOMEDIO'
      Precision = 9
      Size = 2
    end
    object s_produtosCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
    end
    object s_produtosMARGEM_LUCRO: TFloatField
      FieldName = 'MARGEM_LUCRO'
    end
    object s_produtosCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
    end
    object s_produtosVALOR_PRAZO: TFloatField
      FieldName = 'VALOR_PRAZO'
    end
    object s_produtosTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object s_produtosCONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      Size = 15
    end
    object s_produtosCONTA_RECEITA: TStringField
      FieldName = 'CONTA_RECEITA'
      Size = 15
    end
    object s_produtosCONTA_ESTOQUE: TStringField
      FieldName = 'CONTA_ESTOQUE'
      Size = 15
    end
    object s_produtosRATEIO: TStringField
      FieldName = 'RATEIO'
      FixedChar = True
      Size = 1
    end
    object s_produtosCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object s_produtosQTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
    end
    object s_produtosPESO_QTDE: TFloatField
      FieldName = 'PESO_QTDE'
    end
    object s_produtosDATACADASTRO: TSQLTimeStampField
      FieldName = 'DATACADASTRO'
    end
    object s_produtosMARGEM: TFloatField
      FieldName = 'MARGEM'
    end
    object s_produtosPRO_COD: TStringField
      FieldName = 'PRO_COD'
      Size = 15
    end
    object s_produtosDATAGRAV: TDateField
      FieldName = 'DATAGRAV'
    end
    object s_produtosCODFORN: TStringField
      FieldName = 'CODFORN'
      Size = 60
    end
    object s_produtosFOTOPRODUTO: TStringField
      FieldName = 'FOTOPRODUTO'
      Size = 80
    end
    object s_produtosLOTES: TStringField
      FieldName = 'LOTES'
      FixedChar = True
      Size = 1
    end
    object s_produtosUSA: TStringField
      FieldName = 'USA'
      Size = 3
    end
    object s_produtosLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 50
    end
    object s_produtosTIPOPRECOVENDA: TStringField
      FieldName = 'TIPOPRECOVENDA'
      FixedChar = True
      Size = 1
    end
    object s_produtosVALORMINOMO: TFloatField
      FieldName = 'VALORMINOMO'
    end
    object s_produtosVALORMINIMO: TFloatField
      FieldName = 'VALORMINIMO'
    end
    object s_produtosVALORCOMISSAO: TFloatField
      FieldName = 'VALORCOMISSAO'
    end
    object s_produtosGERADESCONTO: TStringField
      FieldName = 'GERADESCONTO'
      FixedChar = True
      Size = 1
    end
    object s_produtosIMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      FixedChar = True
      Size = 1
    end
    object s_produtosORIGEM: TIntegerField
      FieldName = 'ORIGEM'
    end
    object s_produtosNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object s_produtosIMPRESSORA_1: TStringField
      FieldName = 'IMPRESSORA_1'
      Size = 10
    end
    object s_produtosIMPRESSORA_2: TStringField
      FieldName = 'IMPRESSORA_2'
      Size = 10
    end
    object s_produtosIMPRESSORA_3: TStringField
      FieldName = 'IMPRESSORA_3'
      Size = 10
    end
    object s_produtosLEAD_TIME: TSmallintField
      FieldName = 'LEAD_TIME'
    end
    object s_produtosTAM_LOTE: TIntegerField
      FieldName = 'TAM_LOTE'
    end
  end
  object p_produtos: TDataSetProvider
    DataSet = s_produtos
    Left = 192
    Top = 120
  end
  object c_produtos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'p_produtos'
    Left = 232
    Top = 120
  end
end
