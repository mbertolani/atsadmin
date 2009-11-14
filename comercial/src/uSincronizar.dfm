object fSincronizar: TfSincronizar
  Left = 451
  Top = 196
  Width = 387
  Height = 326
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object FlatGauge1: TFlatGauge
    Left = 72
    Top = 216
    Width = 241
    Height = 25
    AdvColorBorder = 0
    ColorBorder = 8623776
    Progress = 0
  end
  object BitBtn1: TBitBtn
    Left = 104
    Top = 64
    Width = 169
    Height = 49
    Caption = 'Exportar Produtos'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 104
    Top = 120
    Width = 169
    Height = 49
    Caption = 'Exportar Clientes'
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object sProdudo: TSQLDataSet
    CommandText = 'select * from PRODUTOS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 7
    Top = 6
    object sProdudoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sProdudoFAMILIA: TStringField
      FieldName = 'FAMILIA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sProdudoCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sProdudoMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sProdudoUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sProdudoDATAULTIMACOMPRA: TDateField
      FieldName = 'DATAULTIMACOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object sProdudoESTOQUEMAXIMO: TFloatField
      FieldName = 'ESTOQUEMAXIMO'
      ProviderFlags = [pfInUpdate]
    end
    object sProdudoESTOQUEATUAL: TFloatField
      FieldName = 'ESTOQUEATUAL'
      ProviderFlags = [pfInUpdate]
    end
    object sProdudoESTOQUEREPOSICAO: TFloatField
      FieldName = 'ESTOQUEREPOSICAO'
      ProviderFlags = [pfInUpdate]
    end
    object sProdudoESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
      ProviderFlags = [pfInUpdate]
    end
    object sProdudoVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
      ProviderFlags = [pfInUpdate]
    end
    object sProdudoVALORUNITARIOANTERIOR: TFloatField
      FieldName = 'VALORUNITARIOANTERIOR'
      ProviderFlags = [pfInUpdate]
    end
    object sProdudoICMS: TFloatField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sProdudoCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object sProdudoIPI: TFloatField
      FieldName = 'IPI'
      ProviderFlags = [pfInUpdate]
    end
    object sProdudoCLASSIFIC_FISCAL: TStringField
      FieldName = 'CLASSIFIC_FISCAL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sProdudoCST: TStringField
      FieldName = 'CST'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sProdudoBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sProdudoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 300
    end
    object sProdudoPRECOMEDIO: TBCDField
      FieldName = 'PRECOMEDIO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
    object sProdudoCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sProdudoMARGEM_LUCRO: TFloatField
      FieldName = 'MARGEM_LUCRO'
      ProviderFlags = [pfInUpdate]
    end
    object sProdudoCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      ProviderFlags = [pfInUpdate]
    end
    object sProdudoVALOR_PRAZO: TFloatField
      FieldName = 'VALOR_PRAZO'
      ProviderFlags = [pfInUpdate]
    end
    object sProdudoTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sProdudoCONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sProdudoCONTA_RECEITA: TStringField
      FieldName = 'CONTA_RECEITA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sProdudoCONTA_ESTOQUE: TStringField
      FieldName = 'CONTA_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sProdudoRATEIO: TStringField
      FieldName = 'RATEIO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sProdudoCODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sProdudoQTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
      ProviderFlags = [pfInUpdate]
    end
    object sProdudoPESO_QTDE: TFloatField
      FieldName = 'PESO_QTDE'
      ProviderFlags = [pfInUpdate]
    end
    object sProdudoDATACADASTRO: TSQLTimeStampField
      FieldName = 'DATACADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object sProdudoMARGEM: TFloatField
      FieldName = 'MARGEM'
      ProviderFlags = [pfInUpdate]
    end
    object sProdudoPRO_COD: TStringField
      FieldName = 'PRO_COD'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sProdudoDATAGRAV: TDateField
      FieldName = 'DATAGRAV'
      ProviderFlags = [pfInUpdate]
    end
    object sProdudoCODFORN: TStringField
      FieldName = 'CODFORN'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sProdudoFOTOPRODUTO: TStringField
      FieldName = 'FOTOPRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sProdudoLOTES: TStringField
      FieldName = 'LOTES'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sProdudoUSA: TStringField
      FieldName = 'USA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sProdudoLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sProdudoTIPOPRECOVENDA: TStringField
      FieldName = 'TIPOPRECOVENDA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sProdudoVALORMINIMO: TFloatField
      FieldName = 'VALORMINIMO'
      ProviderFlags = [pfInUpdate]
    end
    object sProdudoVALORCOMISSAO: TFloatField
      FieldName = 'VALORCOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sProdudoGERADESCONTO: TStringField
      FieldName = 'GERADESCONTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sProdudoIMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object seProdutos: TSQLDataSet
    CommandText = 'select * from PRODUTOS '#13#10'where CODPRODUTO = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlExporta
    Left = 39
    Top = 6
    object seProdutosCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object seProdutosFAMILIA: TStringField
      FieldName = 'FAMILIA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object seProdutosCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object seProdutosMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object seProdutosUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object seProdutosDATAULTIMACOMPRA: TDateField
      FieldName = 'DATAULTIMACOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object seProdutosESTOQUEMAXIMO: TFloatField
      FieldName = 'ESTOQUEMAXIMO'
      ProviderFlags = [pfInUpdate]
    end
    object seProdutosESTOQUEATUAL: TFloatField
      FieldName = 'ESTOQUEATUAL'
      ProviderFlags = [pfInUpdate]
    end
    object seProdutosESTOQUEREPOSICAO: TFloatField
      FieldName = 'ESTOQUEREPOSICAO'
      ProviderFlags = [pfInUpdate]
    end
    object seProdutosESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
      ProviderFlags = [pfInUpdate]
    end
    object seProdutosVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
      ProviderFlags = [pfInUpdate]
    end
    object seProdutosVALORUNITARIOANTERIOR: TFloatField
      FieldName = 'VALORUNITARIOANTERIOR'
      ProviderFlags = [pfInUpdate]
    end
    object seProdutosICMS: TFloatField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object seProdutosCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object seProdutosIPI: TFloatField
      FieldName = 'IPI'
      ProviderFlags = [pfInUpdate]
    end
    object seProdutosCLASSIFIC_FISCAL: TStringField
      FieldName = 'CLASSIFIC_FISCAL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object seProdutosCST: TStringField
      FieldName = 'CST'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object seProdutosBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object seProdutosPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 300
    end
    object seProdutosPRECOMEDIO: TBCDField
      FieldName = 'PRECOMEDIO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
    object seProdutosCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object seProdutosMARGEM_LUCRO: TFloatField
      FieldName = 'MARGEM_LUCRO'
      ProviderFlags = [pfInUpdate]
    end
    object seProdutosCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      ProviderFlags = [pfInUpdate]
    end
    object seProdutosVALOR_PRAZO: TFloatField
      FieldName = 'VALOR_PRAZO'
      ProviderFlags = [pfInUpdate]
    end
    object seProdutosTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object seProdutosCONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object seProdutosCONTA_RECEITA: TStringField
      FieldName = 'CONTA_RECEITA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object seProdutosCONTA_ESTOQUE: TStringField
      FieldName = 'CONTA_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object seProdutosRATEIO: TStringField
      FieldName = 'RATEIO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object seProdutosCODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object seProdutosQTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
      ProviderFlags = [pfInUpdate]
    end
    object seProdutosPESO_QTDE: TFloatField
      FieldName = 'PESO_QTDE'
      ProviderFlags = [pfInUpdate]
    end
    object seProdutosDATACADASTRO: TSQLTimeStampField
      FieldName = 'DATACADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object seProdutosMARGEM: TFloatField
      FieldName = 'MARGEM'
      ProviderFlags = [pfInUpdate]
    end
    object seProdutosPRO_COD: TStringField
      FieldName = 'PRO_COD'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object seProdutosDATAGRAV: TDateField
      FieldName = 'DATAGRAV'
      ProviderFlags = [pfInUpdate]
    end
    object seProdutosCODFORN: TStringField
      FieldName = 'CODFORN'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object seProdutosFOTOPRODUTO: TStringField
      FieldName = 'FOTOPRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object seProdutosLOTES: TStringField
      FieldName = 'LOTES'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object seProdutosUSA: TStringField
      FieldName = 'USA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object seProdutosLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object seProdutosTIPOPRECOVENDA: TStringField
      FieldName = 'TIPOPRECOVENDA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object seProdutosVALORMINIMO: TFloatField
      FieldName = 'VALORMINIMO'
      ProviderFlags = [pfInUpdate]
    end
    object seProdutosVALORCOMISSAO: TFloatField
      FieldName = 'VALORCOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object seProdutosGERADESCONTO: TStringField
      FieldName = 'GERADESCONTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object seProdutosIMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object sCliente: TSQLDataSet
    CommandText = 'select * from CLIENTES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 287
    Top = 14
    object sClienteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sClienteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sClienteRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sClienteCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sClienteTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      ProviderFlags = [pfInUpdate]
    end
    object sClienteCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sClienteCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object sClienteINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 24
    end
    object sClienteRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sClienteSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sClienteREGIAO: TSmallintField
      FieldName = 'REGIAO'
      ProviderFlags = [pfInUpdate]
    end
    object sClienteLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object sClienteDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object sClienteCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sClienteSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
    end
    object sClienteHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sClientePRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sClientePRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sClienteCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
      ProviderFlags = [pfInUpdate]
    end
    object sClienteBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sClienteDATANASC: TDateField
      FieldName = 'DATANASC'
      ProviderFlags = [pfInUpdate]
    end
    object sClienteCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sClienteOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sClienteTEM_IE: TStringField
      FieldName = 'TEM_IE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sClienteDATARESC: TDateField
      FieldName = 'DATARESC'
      ProviderFlags = [pfInUpdate]
    end
    object sClienteNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sClienteSEXO: TStringField
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sClienteFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sClienteGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sClienteCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
      ProviderFlags = [pfInUpdate]
    end
    object sClienteEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object sClienteEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object sClienteDATAREINC: TDateField
      FieldName = 'DATAREINC'
      ProviderFlags = [pfInUpdate]
    end
    object sClienteGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sClienteGERAENV: TStringField
      FieldName = 'GERAENV'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sClienteGERABOL: TStringField
      FieldName = 'GERABOL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sClienteEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sClienteDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
      ProviderFlags = [pfInUpdate]
    end
    object sClienteSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object sClienteSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object sClienteRA: TStringField
      FieldName = 'RA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sClienteCURSO: TStringField
      FieldName = 'CURSO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sClienteIP: TStringField
      FieldName = 'IP'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sClienteN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sClienteMAC: TStringField
      FieldName = 'MAC'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sClienteMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sClienteBANDA_UPLOAD: TStringField
      FieldName = 'BANDA_UPLOAD'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sClienteBANDA_DOWLOAD: TStringField
      FieldName = 'BANDA_DOWLOAD'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sClienteTORRE_CONECCAO: TStringField
      FieldName = 'TORRE_CONECCAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sClienteCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sClienteDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sClienteMENSALIDADE: TFloatField
      FieldName = 'MENSALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sClienteANUIDADE: TFloatField
      FieldName = 'ANUIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sClientePARCELA: TIntegerField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object sClientePARCELAGERADAS: TIntegerField
      FieldName = 'PARCELAGERADAS'
      ProviderFlags = [pfInUpdate]
    end
    object sClienteNUMERO: TIntegerField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object sClienteDATANASCIMENTO: TSQLTimeStampField
      FieldName = 'DATANASCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sClienteANOLETIVO: TStringField
      FieldName = 'ANOLETIVO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object sClienteSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sClienteRGMAE: TStringField
      FieldName = 'RGMAE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sClienteCPFMAE: TStringField
      FieldName = 'CPFMAE'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sClientePAI: TStringField
      FieldName = 'PAI'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sClienteRGPAI: TStringField
      FieldName = 'RGPAI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sClienteCPFPAI: TStringField
      FieldName = 'CPFPAI'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sClienteLANCADOCLASSE: TIntegerField
      FieldName = 'LANCADOCLASSE'
      ProviderFlags = [pfInUpdate]
    end
    object sClienteTRANSPORTE: TStringField
      FieldName = 'TRANSPORTE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sClienteCIDADENASC: TStringField
      FieldName = 'CIDADENASC'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sClienteUFNASC: TStringField
      FieldName = 'UFNASC'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sClienteNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sClienteCERTIDAONASCNUM: TStringField
      FieldName = 'CERTIDAONASCNUM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sClienteLIVRONASC: TStringField
      FieldName = 'LIVRONASC'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sClienteFLLIVRONASC: TStringField
      FieldName = 'FLLIVRONASC'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sClienteLOCALTRABPAI: TStringField
      FieldName = 'LOCALTRABPAI'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sClienteLOCALTRABMAE: TStringField
      FieldName = 'LOCALTRABMAE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sClienteTELTRABPAI: TStringField
      FieldName = 'TELTRABPAI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sClienteTELTRABMAE: TStringField
      FieldName = 'TELTRABMAE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sClienteINFONECESSARIAS: TStringField
      FieldName = 'INFONECESSARIAS'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sClienteCARTEIRAVACINACAO: TStringField
      FieldName = 'CARTEIRAVACINACAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sClienteRAPRODESP: TStringField
      FieldName = 'RAPRODESP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sClienteLOCALTRABALUNO: TStringField
      FieldName = 'LOCALTRABALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sClienteTELTRABALUNO: TStringField
      FieldName = 'TELTRABALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sClienteRAPROD: TStringField
      FieldName = 'RAPROD'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sClienteCERT_NAS_COMARCA: TStringField
      FieldName = 'CERT_NAS_COMARCA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sClienteCERT_NAS_UF: TStringField
      FieldName = 'CERT_NAS_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sClienteCERT_NAS_MUNICIPIO: TStringField
      FieldName = 'CERT_NAS_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sClienteCERT_NAS_DISTRITO: TStringField
      FieldName = 'CERT_NAS_DISTRITO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sClienteCERT_NAS_SUBDISTRITO: TStringField
      FieldName = 'CERT_NAS_SUBDISTRITO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sClienteDIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sClienteDIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sClienteDATAEMISSAORG: TDateField
      FieldName = 'DATAEMISSAORG'
      ProviderFlags = [pfInUpdate]
    end
    object sClienteESTADORG: TStringField
      FieldName = 'ESTADORG'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sClienteCOMUNICAALUNO: TStringField
      FieldName = 'COMUNICAALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sClienteFONEMAE: TStringField
      FieldName = 'FONEMAE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sClienteCELULARMAE: TStringField
      FieldName = 'CELULARMAE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sClienteCOMUNICAMAE: TStringField
      FieldName = 'COMUNICAMAE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sClienteFONEPAI: TStringField
      FieldName = 'FONEPAI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sClienteCELULARPAI: TStringField
      FieldName = 'CELULARPAI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sClienteCOMUNICAPAI: TStringField
      FieldName = 'COMUNICAPAI'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sClienteVALOR_MATRICULA: TFloatField
      FieldName = 'VALOR_MATRICULA'
      ProviderFlags = [pfInUpdate]
    end
    object sClienteDATATRANSF: TDateField
      FieldName = 'DATATRANSF'
      ProviderFlags = [pfInUpdate]
    end
    object sClienteCOR_RACA: TStringField
      FieldName = 'COR_RACA'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object sClientePERIODO: TStringField
      FieldName = 'PERIODO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sClienteFOTO: TStringField
      FieldName = 'FOTO'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
    object sClienteDATA_MATRICULA: TSQLTimeStampField
      FieldName = 'DATA_MATRICULA'
      ProviderFlags = [pfInUpdate]
    end
    object sClienteCODRESPONSAVEL: TIntegerField
      FieldName = 'CODRESPONSAVEL'
      ProviderFlags = [pfInUpdate]
    end
    object sClienteID_COB: TIntegerField
      FieldName = 'ID_COB'
      ProviderFlags = [pfInUpdate]
    end
    object sClienteCOD_TRANPORTADORA: TIntegerField
      FieldName = 'COD_TRANPORTADORA'
      ProviderFlags = [pfInUpdate]
    end
    object sClienteBLOQUEIO: TStringField
      FieldName = 'BLOQUEIO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sClienteCODCLI: TStringField
      FieldName = 'CODCLI'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
  end
  object pProdutos: TDataSetProvider
    DataSet = sProdudo
    Left = 7
    Top = 35
  end
  object peProdutos: TDataSetProvider
    DataSet = seProdutos
    UpdateMode = upWhereKeyOnly
    Left = 39
    Top = 35
  end
  object pCliente: TDataSetProvider
    DataSet = sCliente
    UpdateMode = upWhereKeyOnly
    Left = 287
    Top = 43
  end
  object cProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pProdutos'
    Left = 8
    Top = 64
    object cProdutosCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cProdutosFAMILIA: TStringField
      FieldName = 'FAMILIA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cProdutosCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cProdutosMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cProdutosUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cProdutosDATAULTIMACOMPRA: TDateField
      FieldName = 'DATAULTIMACOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object cProdutosESTOQUEMAXIMO: TFloatField
      FieldName = 'ESTOQUEMAXIMO'
      ProviderFlags = [pfInUpdate]
    end
    object cProdutosESTOQUEATUAL: TFloatField
      FieldName = 'ESTOQUEATUAL'
      ProviderFlags = [pfInUpdate]
    end
    object cProdutosESTOQUEREPOSICAO: TFloatField
      FieldName = 'ESTOQUEREPOSICAO'
      ProviderFlags = [pfInUpdate]
    end
    object cProdutosESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
      ProviderFlags = [pfInUpdate]
    end
    object cProdutosVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
      ProviderFlags = [pfInUpdate]
    end
    object cProdutosVALORUNITARIOANTERIOR: TFloatField
      FieldName = 'VALORUNITARIOANTERIOR'
      ProviderFlags = [pfInUpdate]
    end
    object cProdutosICMS: TFloatField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cProdutosCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object cProdutosIPI: TFloatField
      FieldName = 'IPI'
      ProviderFlags = [pfInUpdate]
    end
    object cProdutosCLASSIFIC_FISCAL: TStringField
      FieldName = 'CLASSIFIC_FISCAL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cProdutosCST: TStringField
      FieldName = 'CST'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cProdutosBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cProdutosPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 300
    end
    object cProdutosPRECOMEDIO: TBCDField
      FieldName = 'PRECOMEDIO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
    object cProdutosCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cProdutosMARGEM_LUCRO: TFloatField
      FieldName = 'MARGEM_LUCRO'
      ProviderFlags = [pfInUpdate]
    end
    object cProdutosCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      ProviderFlags = [pfInUpdate]
    end
    object cProdutosVALOR_PRAZO: TFloatField
      FieldName = 'VALOR_PRAZO'
      ProviderFlags = [pfInUpdate]
    end
    object cProdutosTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cProdutosCONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cProdutosCONTA_RECEITA: TStringField
      FieldName = 'CONTA_RECEITA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cProdutosCONTA_ESTOQUE: TStringField
      FieldName = 'CONTA_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cProdutosRATEIO: TStringField
      FieldName = 'RATEIO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cProdutosCODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cProdutosQTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
      ProviderFlags = [pfInUpdate]
    end
    object cProdutosPESO_QTDE: TFloatField
      FieldName = 'PESO_QTDE'
      ProviderFlags = [pfInUpdate]
    end
    object cProdutosDATACADASTRO: TSQLTimeStampField
      FieldName = 'DATACADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object cProdutosMARGEM: TFloatField
      FieldName = 'MARGEM'
      ProviderFlags = [pfInUpdate]
    end
    object cProdutosPRO_COD: TStringField
      FieldName = 'PRO_COD'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cProdutosDATAGRAV: TDateField
      FieldName = 'DATAGRAV'
      ProviderFlags = [pfInUpdate]
    end
    object cProdutosCODFORN: TStringField
      FieldName = 'CODFORN'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cProdutosFOTOPRODUTO: TStringField
      FieldName = 'FOTOPRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cProdutosLOTES: TStringField
      FieldName = 'LOTES'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cProdutosUSA: TStringField
      FieldName = 'USA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cProdutosLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cProdutosTIPOPRECOVENDA: TStringField
      FieldName = 'TIPOPRECOVENDA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cProdutosVALORMINIMO: TFloatField
      FieldName = 'VALORMINIMO'
      ProviderFlags = [pfInUpdate]
    end
    object cProdutosVALORCOMISSAO: TFloatField
      FieldName = 'VALORCOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cProdutosGERADESCONTO: TStringField
      FieldName = 'GERADESCONTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cProdutosIMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object ceProdutos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'peProdutos'
    Left = 39
    Top = 64
    object ceProdutosCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ceProdutosFAMILIA: TStringField
      FieldName = 'FAMILIA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object ceProdutosCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object ceProdutosMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object ceProdutosUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object ceProdutosDATAULTIMACOMPRA: TDateField
      FieldName = 'DATAULTIMACOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object ceProdutosESTOQUEMAXIMO: TFloatField
      FieldName = 'ESTOQUEMAXIMO'
      ProviderFlags = [pfInUpdate]
    end
    object ceProdutosESTOQUEATUAL: TFloatField
      FieldName = 'ESTOQUEATUAL'
      ProviderFlags = [pfInUpdate]
    end
    object ceProdutosESTOQUEREPOSICAO: TFloatField
      FieldName = 'ESTOQUEREPOSICAO'
      ProviderFlags = [pfInUpdate]
    end
    object ceProdutosESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
      ProviderFlags = [pfInUpdate]
    end
    object ceProdutosVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
      ProviderFlags = [pfInUpdate]
    end
    object ceProdutosVALORUNITARIOANTERIOR: TFloatField
      FieldName = 'VALORUNITARIOANTERIOR'
      ProviderFlags = [pfInUpdate]
    end
    object ceProdutosICMS: TFloatField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object ceProdutosCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object ceProdutosIPI: TFloatField
      FieldName = 'IPI'
      ProviderFlags = [pfInUpdate]
    end
    object ceProdutosCLASSIFIC_FISCAL: TStringField
      FieldName = 'CLASSIFIC_FISCAL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object ceProdutosCST: TStringField
      FieldName = 'CST'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object ceProdutosBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object ceProdutosPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 300
    end
    object ceProdutosPRECOMEDIO: TBCDField
      FieldName = 'PRECOMEDIO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
    object ceProdutosCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object ceProdutosMARGEM_LUCRO: TFloatField
      FieldName = 'MARGEM_LUCRO'
      ProviderFlags = [pfInUpdate]
    end
    object ceProdutosCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      ProviderFlags = [pfInUpdate]
    end
    object ceProdutosVALOR_PRAZO: TFloatField
      FieldName = 'VALOR_PRAZO'
      ProviderFlags = [pfInUpdate]
    end
    object ceProdutosTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object ceProdutosCONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object ceProdutosCONTA_RECEITA: TStringField
      FieldName = 'CONTA_RECEITA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object ceProdutosCONTA_ESTOQUE: TStringField
      FieldName = 'CONTA_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object ceProdutosRATEIO: TStringField
      FieldName = 'RATEIO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object ceProdutosCODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object ceProdutosQTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
      ProviderFlags = [pfInUpdate]
    end
    object ceProdutosPESO_QTDE: TFloatField
      FieldName = 'PESO_QTDE'
      ProviderFlags = [pfInUpdate]
    end
    object ceProdutosDATACADASTRO: TSQLTimeStampField
      FieldName = 'DATACADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object ceProdutosMARGEM: TFloatField
      FieldName = 'MARGEM'
      ProviderFlags = [pfInUpdate]
    end
    object ceProdutosPRO_COD: TStringField
      FieldName = 'PRO_COD'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object ceProdutosDATAGRAV: TDateField
      FieldName = 'DATAGRAV'
      ProviderFlags = [pfInUpdate]
    end
    object ceProdutosCODFORN: TStringField
      FieldName = 'CODFORN'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ceProdutosFOTOPRODUTO: TStringField
      FieldName = 'FOTOPRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object ceProdutosLOTES: TStringField
      FieldName = 'LOTES'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object ceProdutosUSA: TStringField
      FieldName = 'USA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object ceProdutosLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ceProdutosTIPOPRECOVENDA: TStringField
      FieldName = 'TIPOPRECOVENDA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object ceProdutosVALORMINIMO: TFloatField
      FieldName = 'VALORMINIMO'
      ProviderFlags = [pfInUpdate]
    end
    object ceProdutosVALORCOMISSAO: TFloatField
      FieldName = 'VALORCOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object ceProdutosGERADESCONTO: TStringField
      FieldName = 'GERADESCONTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object ceProdutosIMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object cCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pCliente'
    Left = 287
    Top = 72
    object cClienteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cClienteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cClienteRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cClienteCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cClienteTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      ProviderFlags = [pfInUpdate]
    end
    object cClienteCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cClienteCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object cClienteINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 24
    end
    object cClienteRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cClienteSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cClienteREGIAO: TSmallintField
      FieldName = 'REGIAO'
      ProviderFlags = [pfInUpdate]
    end
    object cClienteLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object cClienteDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object cClienteCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object cClienteSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
    end
    object cClienteHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cClientePRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cClientePRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object cClienteCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
      ProviderFlags = [pfInUpdate]
    end
    object cClienteBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cClienteDATANASC: TDateField
      FieldName = 'DATANASC'
      ProviderFlags = [pfInUpdate]
    end
    object cClienteCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cClienteOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cClienteTEM_IE: TStringField
      FieldName = 'TEM_IE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cClienteDATARESC: TDateField
      FieldName = 'DATARESC'
      ProviderFlags = [pfInUpdate]
    end
    object cClienteNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cClienteSEXO: TStringField
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cClienteFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cClienteGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cClienteCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
      ProviderFlags = [pfInUpdate]
    end
    object cClienteEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object cClienteEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object cClienteDATAREINC: TDateField
      FieldName = 'DATAREINC'
      ProviderFlags = [pfInUpdate]
    end
    object cClienteGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cClienteGERAENV: TStringField
      FieldName = 'GERAENV'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cClienteGERABOL: TStringField
      FieldName = 'GERABOL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cClienteEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cClienteDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
      ProviderFlags = [pfInUpdate]
    end
    object cClienteSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cClienteSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cClienteRA: TStringField
      FieldName = 'RA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cClienteCURSO: TStringField
      FieldName = 'CURSO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cClienteIP: TStringField
      FieldName = 'IP'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cClienteN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cClienteMAC: TStringField
      FieldName = 'MAC'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cClienteMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cClienteBANDA_UPLOAD: TStringField
      FieldName = 'BANDA_UPLOAD'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cClienteBANDA_DOWLOAD: TStringField
      FieldName = 'BANDA_DOWLOAD'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cClienteTORRE_CONECCAO: TStringField
      FieldName = 'TORRE_CONECCAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cClienteCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cClienteDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object cClienteMENSALIDADE: TFloatField
      FieldName = 'MENSALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cClienteANUIDADE: TFloatField
      FieldName = 'ANUIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cClientePARCELA: TIntegerField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object cClientePARCELAGERADAS: TIntegerField
      FieldName = 'PARCELAGERADAS'
      ProviderFlags = [pfInUpdate]
    end
    object cClienteNUMERO: TIntegerField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object cClienteDATANASCIMENTO: TSQLTimeStampField
      FieldName = 'DATANASCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cClienteANOLETIVO: TStringField
      FieldName = 'ANOLETIVO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cClienteSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cClienteRGMAE: TStringField
      FieldName = 'RGMAE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cClienteCPFMAE: TStringField
      FieldName = 'CPFMAE'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cClientePAI: TStringField
      FieldName = 'PAI'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cClienteRGPAI: TStringField
      FieldName = 'RGPAI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cClienteCPFPAI: TStringField
      FieldName = 'CPFPAI'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cClienteLANCADOCLASSE: TIntegerField
      FieldName = 'LANCADOCLASSE'
      ProviderFlags = [pfInUpdate]
    end
    object cClienteTRANSPORTE: TStringField
      FieldName = 'TRANSPORTE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cClienteCIDADENASC: TStringField
      FieldName = 'CIDADENASC'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cClienteUFNASC: TStringField
      FieldName = 'UFNASC'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cClienteNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cClienteCERTIDAONASCNUM: TStringField
      FieldName = 'CERTIDAONASCNUM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cClienteLIVRONASC: TStringField
      FieldName = 'LIVRONASC'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cClienteFLLIVRONASC: TStringField
      FieldName = 'FLLIVRONASC'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cClienteLOCALTRABPAI: TStringField
      FieldName = 'LOCALTRABPAI'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cClienteLOCALTRABMAE: TStringField
      FieldName = 'LOCALTRABMAE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cClienteTELTRABPAI: TStringField
      FieldName = 'TELTRABPAI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cClienteTELTRABMAE: TStringField
      FieldName = 'TELTRABMAE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cClienteINFONECESSARIAS: TStringField
      FieldName = 'INFONECESSARIAS'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cClienteCARTEIRAVACINACAO: TStringField
      FieldName = 'CARTEIRAVACINACAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cClienteRAPRODESP: TStringField
      FieldName = 'RAPRODESP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cClienteLOCALTRABALUNO: TStringField
      FieldName = 'LOCALTRABALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cClienteTELTRABALUNO: TStringField
      FieldName = 'TELTRABALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cClienteRAPROD: TStringField
      FieldName = 'RAPROD'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cClienteCERT_NAS_COMARCA: TStringField
      FieldName = 'CERT_NAS_COMARCA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cClienteCERT_NAS_UF: TStringField
      FieldName = 'CERT_NAS_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cClienteCERT_NAS_MUNICIPIO: TStringField
      FieldName = 'CERT_NAS_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cClienteCERT_NAS_DISTRITO: TStringField
      FieldName = 'CERT_NAS_DISTRITO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cClienteCERT_NAS_SUBDISTRITO: TStringField
      FieldName = 'CERT_NAS_SUBDISTRITO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cClienteDIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cClienteDIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cClienteDATAEMISSAORG: TDateField
      FieldName = 'DATAEMISSAORG'
      ProviderFlags = [pfInUpdate]
    end
    object cClienteESTADORG: TStringField
      FieldName = 'ESTADORG'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cClienteCOMUNICAALUNO: TStringField
      FieldName = 'COMUNICAALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cClienteFONEMAE: TStringField
      FieldName = 'FONEMAE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cClienteCELULARMAE: TStringField
      FieldName = 'CELULARMAE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cClienteCOMUNICAMAE: TStringField
      FieldName = 'COMUNICAMAE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cClienteFONEPAI: TStringField
      FieldName = 'FONEPAI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cClienteCELULARPAI: TStringField
      FieldName = 'CELULARPAI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cClienteCOMUNICAPAI: TStringField
      FieldName = 'COMUNICAPAI'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cClienteVALOR_MATRICULA: TFloatField
      FieldName = 'VALOR_MATRICULA'
      ProviderFlags = [pfInUpdate]
    end
    object cClienteDATATRANSF: TDateField
      FieldName = 'DATATRANSF'
      ProviderFlags = [pfInUpdate]
    end
    object cClienteCOR_RACA: TStringField
      FieldName = 'COR_RACA'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object cClientePERIODO: TStringField
      FieldName = 'PERIODO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cClienteFOTO: TStringField
      FieldName = 'FOTO'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
    object cClienteDATA_MATRICULA: TSQLTimeStampField
      FieldName = 'DATA_MATRICULA'
      ProviderFlags = [pfInUpdate]
    end
    object cClienteCODRESPONSAVEL: TIntegerField
      FieldName = 'CODRESPONSAVEL'
      ProviderFlags = [pfInUpdate]
    end
    object cClienteID_COB: TIntegerField
      FieldName = 'ID_COB'
      ProviderFlags = [pfInUpdate]
    end
    object cClienteCOD_TRANPORTADORA: TIntegerField
      FieldName = 'COD_TRANPORTADORA'
      ProviderFlags = [pfInUpdate]
    end
    object cClienteBLOQUEIO: TStringField
      FieldName = 'BLOQUEIO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cClienteCODCLI: TStringField
      FieldName = 'CODCLI'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
  end
  object seCliente: TSQLDataSet
    CommandText = 'select * from CLIENTES '#13#10'where CODCLIENTE = :cli'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cli'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlExporta
    Left = 319
    Top = 14
    object seClienteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object seClienteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object seClienteRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object seClienteCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object seClienteTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      ProviderFlags = [pfInUpdate]
    end
    object seClienteCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object seClienteCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object seClienteINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 24
    end
    object seClienteRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object seClienteSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object seClienteREGIAO: TSmallintField
      FieldName = 'REGIAO'
      ProviderFlags = [pfInUpdate]
    end
    object seClienteLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object seClienteDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object seClienteCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object seClienteSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
    end
    object seClienteHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object seClientePRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object seClientePRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object seClienteCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
      ProviderFlags = [pfInUpdate]
    end
    object seClienteBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object seClienteDATANASC: TDateField
      FieldName = 'DATANASC'
      ProviderFlags = [pfInUpdate]
    end
    object seClienteCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object seClienteOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object seClienteTEM_IE: TStringField
      FieldName = 'TEM_IE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object seClienteDATARESC: TDateField
      FieldName = 'DATARESC'
      ProviderFlags = [pfInUpdate]
    end
    object seClienteNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object seClienteSEXO: TStringField
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object seClienteFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object seClienteGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object seClienteCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
      ProviderFlags = [pfInUpdate]
    end
    object seClienteEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object seClienteEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object seClienteDATAREINC: TDateField
      FieldName = 'DATAREINC'
      ProviderFlags = [pfInUpdate]
    end
    object seClienteGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object seClienteGERAENV: TStringField
      FieldName = 'GERAENV'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object seClienteGERABOL: TStringField
      FieldName = 'GERABOL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object seClienteEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object seClienteDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
      ProviderFlags = [pfInUpdate]
    end
    object seClienteSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object seClienteSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object seClienteRA: TStringField
      FieldName = 'RA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object seClienteCURSO: TStringField
      FieldName = 'CURSO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object seClienteIP: TStringField
      FieldName = 'IP'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object seClienteN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object seClienteMAC: TStringField
      FieldName = 'MAC'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object seClienteMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object seClienteBANDA_UPLOAD: TStringField
      FieldName = 'BANDA_UPLOAD'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object seClienteBANDA_DOWLOAD: TStringField
      FieldName = 'BANDA_DOWLOAD'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object seClienteTORRE_CONECCAO: TStringField
      FieldName = 'TORRE_CONECCAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object seClienteCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object seClienteDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object seClienteMENSALIDADE: TFloatField
      FieldName = 'MENSALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object seClienteANUIDADE: TFloatField
      FieldName = 'ANUIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object seClientePARCELA: TIntegerField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object seClientePARCELAGERADAS: TIntegerField
      FieldName = 'PARCELAGERADAS'
      ProviderFlags = [pfInUpdate]
    end
    object seClienteNUMERO: TIntegerField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object seClienteDATANASCIMENTO: TSQLTimeStampField
      FieldName = 'DATANASCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object seClienteANOLETIVO: TStringField
      FieldName = 'ANOLETIVO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object seClienteSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object seClienteRGMAE: TStringField
      FieldName = 'RGMAE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object seClienteCPFMAE: TStringField
      FieldName = 'CPFMAE'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object seClientePAI: TStringField
      FieldName = 'PAI'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object seClienteRGPAI: TStringField
      FieldName = 'RGPAI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object seClienteCPFPAI: TStringField
      FieldName = 'CPFPAI'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object seClienteLANCADOCLASSE: TIntegerField
      FieldName = 'LANCADOCLASSE'
      ProviderFlags = [pfInUpdate]
    end
    object seClienteTRANSPORTE: TStringField
      FieldName = 'TRANSPORTE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object seClienteCIDADENASC: TStringField
      FieldName = 'CIDADENASC'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object seClienteUFNASC: TStringField
      FieldName = 'UFNASC'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object seClienteNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object seClienteCERTIDAONASCNUM: TStringField
      FieldName = 'CERTIDAONASCNUM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object seClienteLIVRONASC: TStringField
      FieldName = 'LIVRONASC'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object seClienteFLLIVRONASC: TStringField
      FieldName = 'FLLIVRONASC'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object seClienteLOCALTRABPAI: TStringField
      FieldName = 'LOCALTRABPAI'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object seClienteLOCALTRABMAE: TStringField
      FieldName = 'LOCALTRABMAE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object seClienteTELTRABPAI: TStringField
      FieldName = 'TELTRABPAI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object seClienteTELTRABMAE: TStringField
      FieldName = 'TELTRABMAE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object seClienteINFONECESSARIAS: TStringField
      FieldName = 'INFONECESSARIAS'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object seClienteCARTEIRAVACINACAO: TStringField
      FieldName = 'CARTEIRAVACINACAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object seClienteRAPRODESP: TStringField
      FieldName = 'RAPRODESP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object seClienteLOCALTRABALUNO: TStringField
      FieldName = 'LOCALTRABALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object seClienteTELTRABALUNO: TStringField
      FieldName = 'TELTRABALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object seClienteRAPROD: TStringField
      FieldName = 'RAPROD'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object seClienteCERT_NAS_COMARCA: TStringField
      FieldName = 'CERT_NAS_COMARCA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object seClienteCERT_NAS_UF: TStringField
      FieldName = 'CERT_NAS_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object seClienteCERT_NAS_MUNICIPIO: TStringField
      FieldName = 'CERT_NAS_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object seClienteCERT_NAS_DISTRITO: TStringField
      FieldName = 'CERT_NAS_DISTRITO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object seClienteCERT_NAS_SUBDISTRITO: TStringField
      FieldName = 'CERT_NAS_SUBDISTRITO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object seClienteDIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object seClienteDIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object seClienteDATAEMISSAORG: TDateField
      FieldName = 'DATAEMISSAORG'
      ProviderFlags = [pfInUpdate]
    end
    object seClienteESTADORG: TStringField
      FieldName = 'ESTADORG'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object seClienteCOMUNICAALUNO: TStringField
      FieldName = 'COMUNICAALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object seClienteFONEMAE: TStringField
      FieldName = 'FONEMAE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object seClienteCELULARMAE: TStringField
      FieldName = 'CELULARMAE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object seClienteCOMUNICAMAE: TStringField
      FieldName = 'COMUNICAMAE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object seClienteFONEPAI: TStringField
      FieldName = 'FONEPAI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object seClienteCELULARPAI: TStringField
      FieldName = 'CELULARPAI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object seClienteCOMUNICAPAI: TStringField
      FieldName = 'COMUNICAPAI'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object seClienteVALOR_MATRICULA: TFloatField
      FieldName = 'VALOR_MATRICULA'
      ProviderFlags = [pfInUpdate]
    end
    object seClienteDATATRANSF: TDateField
      FieldName = 'DATATRANSF'
      ProviderFlags = [pfInUpdate]
    end
    object seClienteCOR_RACA: TStringField
      FieldName = 'COR_RACA'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object seClientePERIODO: TStringField
      FieldName = 'PERIODO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object seClienteFOTO: TStringField
      FieldName = 'FOTO'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
    object seClienteDATA_MATRICULA: TSQLTimeStampField
      FieldName = 'DATA_MATRICULA'
      ProviderFlags = [pfInUpdate]
    end
    object seClienteCODRESPONSAVEL: TIntegerField
      FieldName = 'CODRESPONSAVEL'
      ProviderFlags = [pfInUpdate]
    end
    object seClienteID_COB: TIntegerField
      FieldName = 'ID_COB'
      ProviderFlags = [pfInUpdate]
    end
    object seClienteCOD_TRANPORTADORA: TIntegerField
      FieldName = 'COD_TRANPORTADORA'
      ProviderFlags = [pfInUpdate]
    end
    object seClienteBLOQUEIO: TStringField
      FieldName = 'BLOQUEIO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object seClienteCODCLI: TStringField
      FieldName = 'CODCLI'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
  end
  object peCliente: TDataSetProvider
    DataSet = seCliente
    UpdateMode = upWhereKeyOnly
    Left = 319
    Top = 43
  end
  object ceCliente: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'cli'
        ParamType = ptInput
      end>
    ProviderName = 'peCliente'
    Left = 320
    Top = 72
    object ceClienteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ceClienteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ceClienteRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ceClienteCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object ceClienteTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      ProviderFlags = [pfInUpdate]
    end
    object ceClienteCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object ceClienteCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object ceClienteINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 24
    end
    object ceClienteRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object ceClienteSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object ceClienteREGIAO: TSmallintField
      FieldName = 'REGIAO'
      ProviderFlags = [pfInUpdate]
    end
    object ceClienteLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object ceClienteDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object ceClienteCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object ceClienteSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
    end
    object ceClienteHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object ceClientePRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object ceClientePRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object ceClienteCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
      ProviderFlags = [pfInUpdate]
    end
    object ceClienteBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object ceClienteDATANASC: TDateField
      FieldName = 'DATANASC'
      ProviderFlags = [pfInUpdate]
    end
    object ceClienteCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object ceClienteOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object ceClienteTEM_IE: TStringField
      FieldName = 'TEM_IE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object ceClienteDATARESC: TDateField
      FieldName = 'DATARESC'
      ProviderFlags = [pfInUpdate]
    end
    object ceClienteNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object ceClienteSEXO: TStringField
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object ceClienteFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object ceClienteGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object ceClienteCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
      ProviderFlags = [pfInUpdate]
    end
    object ceClienteEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object ceClienteEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object ceClienteDATAREINC: TDateField
      FieldName = 'DATAREINC'
      ProviderFlags = [pfInUpdate]
    end
    object ceClienteGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object ceClienteGERAENV: TStringField
      FieldName = 'GERAENV'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object ceClienteGERABOL: TStringField
      FieldName = 'GERABOL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object ceClienteEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object ceClienteDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
      ProviderFlags = [pfInUpdate]
    end
    object ceClienteSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object ceClienteSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object ceClienteRA: TStringField
      FieldName = 'RA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object ceClienteCURSO: TStringField
      FieldName = 'CURSO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ceClienteIP: TStringField
      FieldName = 'IP'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ceClienteN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ceClienteMAC: TStringField
      FieldName = 'MAC'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ceClienteMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ceClienteBANDA_UPLOAD: TStringField
      FieldName = 'BANDA_UPLOAD'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ceClienteBANDA_DOWLOAD: TStringField
      FieldName = 'BANDA_DOWLOAD'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ceClienteTORRE_CONECCAO: TStringField
      FieldName = 'TORRE_CONECCAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ceClienteCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object ceClienteDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object ceClienteMENSALIDADE: TFloatField
      FieldName = 'MENSALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object ceClienteANUIDADE: TFloatField
      FieldName = 'ANUIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object ceClientePARCELA: TIntegerField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object ceClientePARCELAGERADAS: TIntegerField
      FieldName = 'PARCELAGERADAS'
      ProviderFlags = [pfInUpdate]
    end
    object ceClienteNUMERO: TIntegerField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object ceClienteDATANASCIMENTO: TSQLTimeStampField
      FieldName = 'DATANASCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object ceClienteANOLETIVO: TStringField
      FieldName = 'ANOLETIVO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object ceClienteSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object ceClienteRGMAE: TStringField
      FieldName = 'RGMAE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object ceClienteCPFMAE: TStringField
      FieldName = 'CPFMAE'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object ceClientePAI: TStringField
      FieldName = 'PAI'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object ceClienteRGPAI: TStringField
      FieldName = 'RGPAI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object ceClienteCPFPAI: TStringField
      FieldName = 'CPFPAI'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object ceClienteLANCADOCLASSE: TIntegerField
      FieldName = 'LANCADOCLASSE'
      ProviderFlags = [pfInUpdate]
    end
    object ceClienteTRANSPORTE: TStringField
      FieldName = 'TRANSPORTE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ceClienteCIDADENASC: TStringField
      FieldName = 'CIDADENASC'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object ceClienteUFNASC: TStringField
      FieldName = 'UFNASC'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object ceClienteNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object ceClienteCERTIDAONASCNUM: TStringField
      FieldName = 'CERTIDAONASCNUM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object ceClienteLIVRONASC: TStringField
      FieldName = 'LIVRONASC'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object ceClienteFLLIVRONASC: TStringField
      FieldName = 'FLLIVRONASC'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object ceClienteLOCALTRABPAI: TStringField
      FieldName = 'LOCALTRABPAI'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object ceClienteLOCALTRABMAE: TStringField
      FieldName = 'LOCALTRABMAE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object ceClienteTELTRABPAI: TStringField
      FieldName = 'TELTRABPAI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object ceClienteTELTRABMAE: TStringField
      FieldName = 'TELTRABMAE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object ceClienteINFONECESSARIAS: TStringField
      FieldName = 'INFONECESSARIAS'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object ceClienteCARTEIRAVACINACAO: TStringField
      FieldName = 'CARTEIRAVACINACAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object ceClienteRAPRODESP: TStringField
      FieldName = 'RAPRODESP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object ceClienteLOCALTRABALUNO: TStringField
      FieldName = 'LOCALTRABALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object ceClienteTELTRABALUNO: TStringField
      FieldName = 'TELTRABALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object ceClienteRAPROD: TStringField
      FieldName = 'RAPROD'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object ceClienteCERT_NAS_COMARCA: TStringField
      FieldName = 'CERT_NAS_COMARCA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ceClienteCERT_NAS_UF: TStringField
      FieldName = 'CERT_NAS_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object ceClienteCERT_NAS_MUNICIPIO: TStringField
      FieldName = 'CERT_NAS_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ceClienteCERT_NAS_DISTRITO: TStringField
      FieldName = 'CERT_NAS_DISTRITO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ceClienteCERT_NAS_SUBDISTRITO: TStringField
      FieldName = 'CERT_NAS_SUBDISTRITO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ceClienteDIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ceClienteDIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ceClienteDATAEMISSAORG: TDateField
      FieldName = 'DATAEMISSAORG'
      ProviderFlags = [pfInUpdate]
    end
    object ceClienteESTADORG: TStringField
      FieldName = 'ESTADORG'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object ceClienteCOMUNICAALUNO: TStringField
      FieldName = 'COMUNICAALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ceClienteFONEMAE: TStringField
      FieldName = 'FONEMAE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object ceClienteCELULARMAE: TStringField
      FieldName = 'CELULARMAE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object ceClienteCOMUNICAMAE: TStringField
      FieldName = 'COMUNICAMAE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ceClienteFONEPAI: TStringField
      FieldName = 'FONEPAI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object ceClienteCELULARPAI: TStringField
      FieldName = 'CELULARPAI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object ceClienteCOMUNICAPAI: TStringField
      FieldName = 'COMUNICAPAI'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ceClienteVALOR_MATRICULA: TFloatField
      FieldName = 'VALOR_MATRICULA'
      ProviderFlags = [pfInUpdate]
    end
    object ceClienteDATATRANSF: TDateField
      FieldName = 'DATATRANSF'
      ProviderFlags = [pfInUpdate]
    end
    object ceClienteCOR_RACA: TStringField
      FieldName = 'COR_RACA'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object ceClientePERIODO: TStringField
      FieldName = 'PERIODO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object ceClienteFOTO: TStringField
      FieldName = 'FOTO'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
    object ceClienteDATA_MATRICULA: TSQLTimeStampField
      FieldName = 'DATA_MATRICULA'
      ProviderFlags = [pfInUpdate]
    end
    object ceClienteCODRESPONSAVEL: TIntegerField
      FieldName = 'CODRESPONSAVEL'
      ProviderFlags = [pfInUpdate]
    end
    object ceClienteID_COB: TIntegerField
      FieldName = 'ID_COB'
      ProviderFlags = [pfInUpdate]
    end
    object ceClienteCOD_TRANPORTADORA: TIntegerField
      FieldName = 'COD_TRANPORTADORA'
      ProviderFlags = [pfInUpdate]
    end
    object ceClienteBLOQUEIO: TStringField
      FieldName = 'BLOQUEIO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object ceClienteCODCLI: TStringField
      FieldName = 'CODCLI'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
  end
end
