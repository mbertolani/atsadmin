object fNfePisCofins: TfNfePisCofins
  Left = 236
  Top = 65
  Width = 719
  Height = 614
  Caption = 'fNfePisCofins'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    711
    587)
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 136
    Width = 63
    Height = 13
    Caption = 'Lista de erros'
    Color = clBtnFace
    ParentColor = False
  end
  object Label3: TLabel
    Left = 8
    Top = 272
    Width = 74
    Height = 13
    Caption = 'Arquivo Gerado'
    Color = clBtnFace
    ParentColor = False
  end
  object Label7: TLabel
    Left = 24
    Top = 507
    Width = 62
    Height = 13
    Caption = 'Buffer Linhas'
    Color = clBtnFace
    ParentColor = False
  end
  object Label8: TLabel
    Left = 128
    Top = 507
    Width = 59
    Height = 13
    Caption = 'Buffer Notas'
    Color = clBtnFace
    ParentColor = False
  end
  object btnTXT: TButton
    Left = 360
    Top = 504
    Width = 217
    Height = 49
    Caption = 'Gerar arquivo SPED PIS/COFIS'
    TabOrder = 0
    OnClick = btnTXTClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 711
    Height = 113
    Align = alTop
    BevelOuter = bvNone
    BorderStyle = bsSingle
    TabOrder = 1
    DesignSize = (
      707
      109)
    object Label1: TLabel
      Left = 22
      Top = 14
      Width = 82
      Height = 13
      Caption = 'Nome do Arquivo'
      Color = clBtnFace
      ParentColor = False
    end
    object Label5: TLabel
      Left = 0
      Top = 0
      Width = 707
      Height = 16
      Align = alTop
      Alignment = taCenter
      Caption = '1 - Informe o Nome do Arquivo e m'#233'todo de Gera'#231#227'o'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label6: TLabel
      Left = 613
      Top = 14
      Width = 69
      Height = 13
      Caption = 'Num.Notas (C)'
      Color = clBtnFace
      ParentColor = False
    end
    object Label11: TLabel
      Left = 512
      Top = 48
      Width = 87
      Height = 13
      Caption = 'Finalidade Arquivo'
    end
    object edtFile: TEdit
      Left = 22
      Top = 28
      Width = 252
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      Text = 'arquivo.txt'
      OnChange = edtFileChange
      OnExit = edtFileExit
    end
    object cbConcomitante: TCheckBox
      Left = 298
      Top = 30
      Width = 134
      Height = 19
      Hint = 
        'Grava os Registros a medida que s'#227'o alimentados'#13#10'Economizando me' +
        'm'#243'ria. '#13#10#218'til para evitar erros em arquivos Enormes'
      Anchors = [akTop, akRight]
      Caption = 'Gerar Concomitante'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = cbConcomitanteClick
    end
    object edNotas: TEdit
      Left = 613
      Top = 28
      Width = 80
      Height = 21
      TabOrder = 2
      Text = '10'
    end
    object GroupBox2: TGroupBox
      Left = 24
      Top = 58
      Width = 476
      Height = 45
      Caption = 'Per'#237'odo'
      TabOrder = 3
      object Label4: TLabel
        Left = 24
        Top = 16
        Width = 20
        Height = 13
        Caption = 'M'#234's'
      end
      object Label9: TLabel
        Left = 235
        Top = 18
        Width = 6
        Height = 13
        Caption = 'a'
      end
      object Label10: TLabel
        Left = 352
        Top = 19
        Width = 6
        Height = 13
        Caption = 'a'
      end
      object cbMes: TComboBox
        Left = 53
        Top = 15
        Width = 176
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        OnChange = cbMesChange
        Items.Strings = (
          'Janeiro'
          'Fevereiro'
          'Mar'#231'o'
          'Abril'
          'Maio'
          'Junho'
          'Julho'
          'Agosto'
          'Setembro'
          'Outubro'
          'Novembro'
          'Dezembro')
      end
      object dt_ini: TJvDatePickerEdit
        Left = 234
        Top = 16
        Width = 107
        Height = 21
        AllowNoDate = True
        Checked = True
        TabOrder = 1
      end
      object dt_fim: TJvDatePickerEdit
        Left = 366
        Top = 16
        Width = 101
        Height = 21
        AllowNoDate = True
        Checked = True
        TabOrder = 2
      end
    end
    object cbTipo: TComboBox
      Left = 512
      Top = 64
      Width = 177
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 4
      Text = '0 - Original'
      OnChange = cbTipoChange
      Items.Strings = (
        '0 - Original'
        '1 - Retificadora')
    end
  end
  object memoError: TMemo
    Left = 8
    Top = 153
    Width = 697
    Height = 112
    Anchors = [akLeft, akTop, akRight]
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object memoTXT: TMemo
    Left = 8
    Top = 288
    Width = 697
    Height = 201
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 3
    WantReturns = False
    WordWrap = False
  end
  object edBufLinhas: TEdit
    Left = 16
    Top = 521
    Width = 80
    Height = 21
    TabOrder = 4
    Text = '1000'
  end
  object edBufNotas: TEdit
    Left = 128
    Top = 521
    Width = 80
    Height = 21
    Enabled = False
    TabOrder = 5
    Text = '1000'
  end
  object ProgressBar1: TJvProgressBar
    Left = 120
    Top = 120
    Width = 401
    Height = 16
    TabOrder = 6
  end
  object btnError: TButton
    Left = 235
    Top = 511
    Width = 100
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Gerar TXT Error'
    TabOrder = 7
    OnClick = btnErrorClick
  end
  object ACBrSPEDPisCofins1: TACBrSPEDPisCofins
    Path = 'c:\home\'
    Arquivo = 'arquivo'
    Delimitador = '|'
    TrimString = True
    CurMascara = '#0.00'
    Left = 552
    Top = 80
  end
  object sdsEmpresa: TSQLDataSet
    CommandText = 'SELECT * FROM EMPRESA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 544
    Top = 120
  end
  object dspEmpresa: TDataSetProvider
    DataSet = sdsEmpresa
    Left = 576
    Top = 120
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresa'
    Left = 608
    Top = 120
    object cdsEmpresaEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 80
    end
    object cdsEmpresaRAZAO: TStringField
      FieldName = 'RAZAO'
      Required = True
      Size = 80
    end
    object cdsEmpresaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Required = True
    end
    object cdsEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object cdsEmpresaLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 80
    end
    object cdsEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object cdsEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object cdsEmpresaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsEmpresaCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 9
    end
    object cdsEmpresaDDD: TStringField
      FieldName = 'DDD'
      FixedChar = True
      Size = 2
    end
    object cdsEmpresaFONE: TStringField
      FieldName = 'FONE'
      Size = 12
    end
    object cdsEmpresaFONE_1: TStringField
      FieldName = 'FONE_1'
      Size = 12
    end
    object cdsEmpresaFONE_2: TStringField
      FieldName = 'FONE_2'
      Size = 12
    end
    object cdsEmpresaFAX: TStringField
      FieldName = 'FAX'
      Size = 12
    end
    object cdsEmpresaE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 50
    end
    object cdsEmpresaWEB: TStringField
      FieldName = 'WEB'
      Size = 50
    end
    object cdsEmpresaLOGOTIPO: TGraphicField
      FieldName = 'LOGOTIPO'
      BlobType = ftGraphic
    end
    object cdsEmpresaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsEmpresaTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsEmpresaIE_RG: TStringField
      FieldName = 'IE_RG'
      Size = 15
    end
    object cdsEmpresaSLOGAN: TStringField
      FieldName = 'SLOGAN'
      Size = 60
    end
    object cdsEmpresaOUTRAS_INFO: TStringField
      FieldName = 'OUTRAS_INFO'
      Size = 60
    end
    object cdsEmpresaCODIGO_CONTA: TIntegerField
      FieldName = 'CODIGO_CONTA'
    end
    object cdsEmpresaDIVERSOS1: TStringField
      FieldName = 'DIVERSOS1'
      Size = 50
    end
    object cdsEmpresaDIVERSOS2: TStringField
      FieldName = 'DIVERSOS2'
      Size = 50
    end
    object cdsEmpresaDIVERSOS3: TStringField
      FieldName = 'DIVERSOS3'
      Size = 50
    end
    object cdsEmpresaANOLETIVO: TIntegerField
      FieldName = 'ANOLETIVO'
    end
    object cdsEmpresaMEDIA_ESCOLA: TFloatField
      FieldName = 'MEDIA_ESCOLA'
    end
    object cdsEmpresaPORTA: TIntegerField
      FieldName = 'PORTA'
    end
    object cdsEmpresaSMTP: TStringField
      FieldName = 'SMTP'
      Size = 30
    end
    object cdsEmpresaSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object cdsEmpresaCCUSTO: TIntegerField
      FieldName = 'CCUSTO'
    end
    object cdsEmpresaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object cdsEmpresaCD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      Size = 10
    end
    object cdsEmpresaCRT: TIntegerField
      FieldName = 'CRT'
    end
    object cdsEmpresaTREGIME: TIntegerField
      FieldName = 'TREGIME'
    end
    object cdsEmpresaIM: TStringField
      FieldName = 'IM'
      Size = 15
    end
    object cdsEmpresaCONTADOR: TStringField
      FieldName = 'CONTADOR'
      Size = 100
    end
    object cdsEmpresaCONTADOR_CRC: TStringField
      FieldName = 'CONTADOR_CRC'
      FixedChar = True
    end
    object cdsEmpresaCONTADOR_CNPJ: TStringField
      FieldName = 'CONTADOR_CNPJ'
      FixedChar = True
      Size = 14
    end
    object cdsEmpresaCONTADOR_CPF: TStringField
      FieldName = 'CONTADOR_CPF'
      FixedChar = True
      Size = 11
    end
    object cdsEmpresaCONTADOR_CEP: TStringField
      FieldName = 'CONTADOR_CEP'
      FixedChar = True
      Size = 10
    end
    object cdsEmpresaCONTADOR_END: TStringField
      FieldName = 'CONTADOR_END'
      Size = 150
    end
    object cdsEmpresaCONTADOR_NUMEND: TStringField
      FieldName = 'CONTADOR_NUMEND'
      FixedChar = True
      Size = 7
    end
    object cdsEmpresaCONTADOR_COMPL: TStringField
      FieldName = 'CONTADOR_COMPL'
      Size = 80
    end
    object cdsEmpresaCONTADOR_BAIRRO: TStringField
      FieldName = 'CONTADOR_BAIRRO'
      Size = 100
    end
    object cdsEmpresaCONTADOR_FONE: TStringField
      FieldName = 'CONTADOR_FONE'
      Size = 14
    end
    object cdsEmpresaCONTADOR_FAX: TStringField
      FieldName = 'CONTADOR_FAX'
      Size = 14
    end
    object cdsEmpresaCONTADOR_EMAIL: TStringField
      FieldName = 'CONTADOR_EMAIL'
      Size = 100
    end
    object cdsEmpresaCONTADOR_COD_MUN: TStringField
      FieldName = 'CONTADOR_COD_MUN'
      FixedChar = True
      Size = 10
    end
    object cdsEmpresaINDICADORNATUREZAPJ: TSmallintField
      FieldName = 'INDICADORNATUREZAPJ'
    end
    object cdsEmpresaINDICADORATIVIDADE: TSmallintField
      FieldName = 'INDICADORATIVIDADE'
    end
    object cdsEmpresaCODINDINCTRIBUTARIA: TSmallintField
      FieldName = 'CODINDINCTRIBUTARIA'
    end
    object cdsEmpresaINDAPROCRED: TSmallintField
      FieldName = 'INDAPROCRED'
    end
    object cdsEmpresaCODINDTIPOCON: TSmallintField
      FieldName = 'CODINDTIPOCON'
    end
    object cdsEmpresaCODINDCRITESCRIT: TSmallintField
      FieldName = 'CODINDCRITESCRIT'
    end
    object cdsEmpresaINDCODINCIDENCIA: TSmallintField
      FieldName = 'INDCODINCIDENCIA'
    end
    object cdsEmpresaINDCTA: TSmallintField
      FieldName = 'INDCTA'
    end
    object cdsEmpresaINDESCRITURACAO: TSmallintField
      FieldName = 'INDESCRITURACAO'
    end
    object cdsEmpresaBASECALCULOCREDITO: TSmallintField
      FieldName = 'BASECALCULOCREDITO'
    end
    object cdsEmpresaINDAJ: TSmallintField
      FieldName = 'INDAJ'
    end
    object cdsEmpresaCODAJ: TSmallintField
      FieldName = 'CODAJ'
    end
    object cdsEmpresaINDNATREC: TSmallintField
      FieldName = 'INDNATREC'
    end
    object cdsEmpresaNATCREDDESC: TSmallintField
      FieldName = 'NATCREDDESC'
    end
    object cdsEmpresaCODCRED: TSmallintField
      FieldName = 'CODCRED'
    end
    object cdsEmpresaINDTIPCOOP: TSmallintField
      FieldName = 'INDTIPCOOP'
    end
    object cdsEmpresaINDCREDORI: TSmallintField
      FieldName = 'INDCREDORI'
    end
    object cdsEmpresaINDREC: TSmallintField
      FieldName = 'INDREC'
    end
    object cdsEmpresaINDDESCCRED: TSmallintField
      FieldName = 'INDDESCCRED'
    end
    object cdsEmpresaCODCONT: TSmallintField
      FieldName = 'CODCONT'
    end
    object cdsEmpresaINDNATRETFONTE: TSmallintField
      FieldName = 'INDNATRETFONTE'
    end
    object cdsEmpresaINDORIGEMDIVERSAS: TSmallintField
      FieldName = 'INDORIGEMDIVERSAS'
    end
    object cdsEmpresaINDNATDEDUCAO: TSmallintField
      FieldName = 'INDNATDEDUCAO'
    end
    object cdsEmpresaINDTPOPERACAORECEITA: TSmallintField
      FieldName = 'INDTPOPERACAORECEITA'
    end
  end
  object sdsNFVenda: TSQLDataSet
    CommandText = 
      'SELECT NF.*, C.*, EC.* FROM NOTAFISCAL NF, CLIENTES C, ENDERECOC' +
      'LIENTE EC'#13#10'WHERE NF.CODCLIENTE = C.CODCLIENTE'#13#10'      AND C.CODCL' +
      'IENTE   = EC.CODCLIENTE'#13#10'      AND NF.DTAEMISSAO BETWEEN :DTA1 A' +
      'ND :DTA2'#13#10'      AND C.CODCLIENTE > 0'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DTA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA2'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 328
    Top = 136
    object sdsNFVendaNOTASERIE: TStringField
      FieldName = 'NOTASERIE'
      Required = True
      Size = 10
    end
    object sdsNFVendaNUMNF: TIntegerField
      FieldName = 'NUMNF'
      Required = True
    end
    object sdsNFVendaNATUREZA: TSmallintField
      FieldName = 'NATUREZA'
      Required = True
    end
    object sdsNFVendaQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object sdsNFVendaMARCA: TStringField
      FieldName = 'MARCA'
      Size = 10
    end
    object sdsNFVendaPESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      Precision = 9
      Size = 2
    end
    object sdsNFVendaPESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      Precision = 9
      Size = 2
    end
    object sdsNFVendaESPECIE: TStringField
      FieldName = 'ESPECIE'
    end
    object sdsNFVendaDTAEMISSAO: TDateField
      FieldName = 'DTAEMISSAO'
    end
    object sdsNFVendaDTASAIDA: TDateField
      FieldName = 'DTASAIDA'
    end
    object sdsNFVendaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object sdsNFVendaCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
    object sdsNFVendaCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
    end
    object sdsNFVendaNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object sdsNFVendaNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object sdsNFVendaHORASAIDA: TTimeField
      FieldName = 'HORASAIDA'
    end
    object sdsNFVendaDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
    end
    object sdsNFVendaBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object sdsNFVendaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object sdsNFVendaBASE_ICMS_SUBST: TFloatField
      FieldName = 'BASE_ICMS_SUBST'
    end
    object sdsNFVendaVALOR_ICMS_SUBST: TFloatField
      FieldName = 'VALOR_ICMS_SUBST'
    end
    object sdsNFVendaVALOR_PRODUTO: TFloatField
      FieldName = 'VALOR_PRODUTO'
    end
    object sdsNFVendaVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
    end
    object sdsNFVendaVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
    end
    object sdsNFVendaOUTRAS_DESP: TFloatField
      FieldName = 'OUTRAS_DESP'
    end
    object sdsNFVendaVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object sdsNFVendaVALOR_TOTAL_NOTA: TFloatField
      FieldName = 'VALOR_TOTAL_NOTA'
    end
    object sdsNFVendaCORPONF1: TStringField
      FieldName = 'CORPONF1'
      Size = 200
    end
    object sdsNFVendaCORPONF2: TStringField
      FieldName = 'CORPONF2'
      Size = 200
    end
    object sdsNFVendaCORPONF3: TStringField
      FieldName = 'CORPONF3'
      Size = 200
    end
    object sdsNFVendaCORPONF4: TStringField
      FieldName = 'CORPONF4'
      Size = 200
    end
    object sdsNFVendaCORPONF5: TStringField
      FieldName = 'CORPONF5'
      Size = 75
    end
    object sdsNFVendaCORPONF6: TStringField
      FieldName = 'CORPONF6'
      Size = 75
    end
    object sdsNFVendaCFOP: TStringField
      FieldName = 'CFOP'
      Size = 30
    end
    object sdsNFVendaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object sdsNFVendaFATURA: TStringField
      FieldName = 'FATURA'
      Size = 300
    end
    object sdsNFVendaICMS: TFloatField
      FieldName = 'ICMS'
    end
    object sdsNFVendaREDUZICMS: TFloatField
      FieldName = 'REDUZICMS'
    end
    object sdsNFVendaNOMETRANSP: TStringField
      FieldName = 'NOMETRANSP'
      Size = 50
    end
    object sdsNFVendaPLACATRANSP: TStringField
      FieldName = 'PLACATRANSP'
      Size = 8
    end
    object sdsNFVendaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object sdsNFVendaEND_TRANSP: TStringField
      FieldName = 'END_TRANSP'
      Size = 80
    end
    object sdsNFVendaCIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      Size = 50
    end
    object sdsNFVendaUF_VEICULO_TRANSP: TStringField
      FieldName = 'UF_VEICULO_TRANSP'
      FixedChar = True
      Size = 2
    end
    object sdsNFVendaUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      FixedChar = True
      Size = 2
    end
    object sdsNFVendaFRETE: TStringField
      FieldName = 'FRETE'
      FixedChar = True
      Size = 1
    end
    object sdsNFVendaINSCRICAOESTADUAL: TStringField
      FieldName = 'INSCRICAOESTADUAL'
    end
    object sdsNFVendaSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object sdsNFVendaVLRTOTALEXP: TFloatField
      FieldName = 'VLRTOTALEXP'
    end
    object sdsNFVendaIMPRESSA: TStringField
      FieldName = 'IMPRESSA'
      FixedChar = True
      Size = 1
    end
    object sdsNFVendaSERIE: TStringField
      FieldName = 'SERIE'
    end
    object sdsNFVendaID_GUIA: TIntegerField
      FieldName = 'ID_GUIA'
    end
    object sdsNFVendaSELECIONOU: TStringField
      FieldName = 'SELECIONOU'
      FixedChar = True
      Size = 1
    end
    object sdsNFVendaPROTOCOLOENV: TStringField
      FieldName = 'PROTOCOLOENV'
    end
    object sdsNFVendaNUMRECIBO: TStringField
      FieldName = 'NUMRECIBO'
    end
    object sdsNFVendaPROTOCOLOCANC: TStringField
      FieldName = 'PROTOCOLOCANC'
    end
    object sdsNFVendaPESOREMESSA: TBCDField
      FieldName = 'PESOREMESSA'
      Precision = 9
      Size = 2
    end
    object sdsNFVendaNOTAMAE: TIntegerField
      FieldName = 'NOTAMAE'
    end
    object sdsNFVendaVALOR_PIS: TFloatField
      FieldName = 'VALOR_PIS'
    end
    object sdsNFVendaVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
    end
    object sdsNFVendaVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
    end
    object sdsNFVendaCCUSTO: TIntegerField
      FieldName = 'CCUSTO'
    end
    object sdsNFVendaIDCOMPLEMENTAR: TStringField
      FieldName = 'IDCOMPLEMENTAR'
      Size = 44
    end
    object sdsNFVendaXMLNFE: TGraphicField
      FieldName = 'XMLNFE'
      BlobType = ftGraphic
    end
    object sdsNFVendaII: TFloatField
      FieldName = 'II'
    end
    object sdsNFVendaBCII: TFloatField
      FieldName = 'BCII'
    end
    object sdsNFVendaNOMEXML: TStringField
      FieldName = 'NOMEXML'
      Size = 60
    end
    object sdsNFVendaCODCLIENTE_1: TIntegerField
      FieldName = 'CODCLIENTE_1'
      Required = True
    end
    object sdsNFVendaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object sdsNFVendaRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object sdsNFVendaCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object sdsNFVendaTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object sdsNFVendaCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object sdsNFVendaCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object sdsNFVendaINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object sdsNFVendaRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object sdsNFVendaSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      Required = True
    end
    object sdsNFVendaREGIAO: TSmallintField
      FieldName = 'REGIAO'
      Required = True
    end
    object sdsNFVendaLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
    end
    object sdsNFVendaDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
    object sdsNFVendaCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object sdsNFVendaSTATUS_1: TSmallintField
      FieldName = 'STATUS_1'
      Required = True
    end
    object sdsNFVendaHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 40
    end
    object sdsNFVendaPRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
    end
    object sdsNFVendaPRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
    end
    object sdsNFVendaCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
    end
    object sdsNFVendaBASE_ICMS_1: TSmallintField
      FieldName = 'BASE_ICMS_1'
    end
    object sdsNFVendaDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object sdsNFVendaCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      Size = 15
    end
    object sdsNFVendaOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object sdsNFVendaTEM_IE: TStringField
      FieldName = 'TEM_IE'
      FixedChar = True
      Size = 1
    end
    object sdsNFVendaDATARESC: TDateField
      FieldName = 'DATARESC'
    end
    object sdsNFVendaNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      Size = 80
    end
    object sdsNFVendaSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object sdsNFVendaFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      Size = 30
    end
    object sdsNFVendaGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      Size = 30
    end
    object sdsNFVendaCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
    end
    object sdsNFVendaEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      Size = 6
    end
    object sdsNFVendaEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      Size = 6
    end
    object sdsNFVendaDATAREINC: TDateField
      FieldName = 'DATAREINC'
    end
    object sdsNFVendaGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      FixedChar = True
      Size = 1
    end
    object sdsNFVendaGERAENV: TStringField
      FieldName = 'GERAENV'
      FixedChar = True
      Size = 1
    end
    object sdsNFVendaGERABOL: TStringField
      FieldName = 'GERABOL'
      FixedChar = True
      Size = 1
    end
    object sdsNFVendaEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      FixedChar = True
      Size = 1
    end
    object sdsNFVendaDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
    end
    object sdsNFVendaSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      Size = 4
    end
    object sdsNFVendaSERIE_1: TStringField
      FieldName = 'SERIE_1'
      Size = 4
    end
    object sdsNFVendaRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object sdsNFVendaCURSO: TStringField
      FieldName = 'CURSO'
      Size = 50
    end
    object sdsNFVendaIP: TStringField
      FieldName = 'IP'
      Size = 60
    end
    object sdsNFVendaN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      Size = 60
    end
    object sdsNFVendaMAC: TStringField
      FieldName = 'MAC'
      Size = 60
    end
    object sdsNFVendaMARCA_1: TStringField
      FieldName = 'MARCA_1'
      Size = 60
    end
    object sdsNFVendaBANDA_UPLOAD: TStringField
      FieldName = 'BANDA_UPLOAD'
      Size = 60
    end
    object sdsNFVendaBANDA_DOWLOAD: TStringField
      FieldName = 'BANDA_DOWLOAD'
      Size = 60
    end
    object sdsNFVendaTORRE_CONECCAO: TStringField
      FieldName = 'TORRE_CONECCAO'
      Size = 60
    end
    object sdsNFVendaCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
    end
    object sdsNFVendaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object sdsNFVendaMENSALIDADE: TFloatField
      FieldName = 'MENSALIDADE'
    end
    object sdsNFVendaANUIDADE: TFloatField
      FieldName = 'ANUIDADE'
    end
    object sdsNFVendaPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object sdsNFVendaPARCELAGERADAS: TIntegerField
      FieldName = 'PARCELAGERADAS'
    end
    object sdsNFVendaNUMERO_1: TIntegerField
      FieldName = 'NUMERO_1'
    end
    object sdsNFVendaDATANASCIMENTO: TSQLTimeStampField
      FieldName = 'DATANASCIMENTO'
    end
    object sdsNFVendaANOLETIVO: TStringField
      FieldName = 'ANOLETIVO'
      Size = 4
    end
    object sdsNFVendaSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 2
    end
    object sdsNFVendaRGMAE: TStringField
      FieldName = 'RGMAE'
      Size = 15
    end
    object sdsNFVendaCPFMAE: TStringField
      FieldName = 'CPFMAE'
      Size = 14
    end
    object sdsNFVendaPAI: TStringField
      FieldName = 'PAI'
      Size = 30
    end
    object sdsNFVendaRGPAI: TStringField
      FieldName = 'RGPAI'
      Size = 15
    end
    object sdsNFVendaCPFPAI: TStringField
      FieldName = 'CPFPAI'
      Size = 14
    end
    object sdsNFVendaLANCADOCLASSE: TIntegerField
      FieldName = 'LANCADOCLASSE'
    end
    object sdsNFVendaTRANSPORTE: TStringField
      FieldName = 'TRANSPORTE'
      Size = 50
    end
    object sdsNFVendaCIDADENASC: TStringField
      FieldName = 'CIDADENASC'
      Size = 30
    end
    object sdsNFVendaUFNASC: TStringField
      FieldName = 'UFNASC'
      Size = 2
    end
    object sdsNFVendaNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 15
    end
    object sdsNFVendaCERTIDAONASCNUM: TStringField
      FieldName = 'CERTIDAONASCNUM'
      Size = 10
    end
    object sdsNFVendaLIVRONASC: TStringField
      FieldName = 'LIVRONASC'
      Size = 10
    end
    object sdsNFVendaFLLIVRONASC: TStringField
      FieldName = 'FLLIVRONASC'
      Size = 5
    end
    object sdsNFVendaLOCALTRABPAI: TStringField
      FieldName = 'LOCALTRABPAI'
      Size = 30
    end
    object sdsNFVendaLOCALTRABMAE: TStringField
      FieldName = 'LOCALTRABMAE'
      Size = 30
    end
    object sdsNFVendaTELTRABPAI: TStringField
      FieldName = 'TELTRABPAI'
      Size = 15
    end
    object sdsNFVendaTELTRABMAE: TStringField
      FieldName = 'TELTRABMAE'
      Size = 15
    end
    object sdsNFVendaINFONECESSARIAS: TStringField
      FieldName = 'INFONECESSARIAS'
      Size = 30
    end
    object sdsNFVendaCARTEIRAVACINACAO: TStringField
      FieldName = 'CARTEIRAVACINACAO'
      Size = 10
    end
    object sdsNFVendaRAPRODESP: TStringField
      FieldName = 'RAPRODESP'
      Size = 10
    end
    object sdsNFVendaLOCALTRABALUNO: TStringField
      FieldName = 'LOCALTRABALUNO'
      Size = 30
    end
    object sdsNFVendaTELTRABALUNO: TStringField
      FieldName = 'TELTRABALUNO'
      Size = 15
    end
    object sdsNFVendaRAPROD: TStringField
      FieldName = 'RAPROD'
      Size = 15
    end
    object sdsNFVendaCERT_NAS_COMARCA: TStringField
      FieldName = 'CERT_NAS_COMARCA'
      Size = 50
    end
    object sdsNFVendaCERT_NAS_UF: TStringField
      FieldName = 'CERT_NAS_UF'
      Size = 2
    end
    object sdsNFVendaCERT_NAS_MUNICIPIO: TStringField
      FieldName = 'CERT_NAS_MUNICIPIO'
      Size = 50
    end
    object sdsNFVendaCERT_NAS_DISTRITO: TStringField
      FieldName = 'CERT_NAS_DISTRITO'
      Size = 50
    end
    object sdsNFVendaCERT_NAS_SUBDISTRITO: TStringField
      FieldName = 'CERT_NAS_SUBDISTRITO'
      Size = 50
    end
    object sdsNFVendaDIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      Size = 50
    end
    object sdsNFVendaDIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      Size = 50
    end
    object sdsNFVendaDATAEMISSAORG: TDateField
      FieldName = 'DATAEMISSAORG'
    end
    object sdsNFVendaESTADORG: TStringField
      FieldName = 'ESTADORG'
      FixedChar = True
      Size = 2
    end
    object sdsNFVendaCOMUNICAALUNO: TStringField
      FieldName = 'COMUNICAALUNO'
      Size = 50
    end
    object sdsNFVendaFONEMAE: TStringField
      FieldName = 'FONEMAE'
      Size = 15
    end
    object sdsNFVendaCELULARMAE: TStringField
      FieldName = 'CELULARMAE'
      Size = 15
    end
    object sdsNFVendaCOMUNICAMAE: TStringField
      FieldName = 'COMUNICAMAE'
      Size = 50
    end
    object sdsNFVendaFONEPAI: TStringField
      FieldName = 'FONEPAI'
      Size = 15
    end
    object sdsNFVendaCELULARPAI: TStringField
      FieldName = 'CELULARPAI'
      Size = 15
    end
    object sdsNFVendaCOMUNICAPAI: TStringField
      FieldName = 'COMUNICAPAI'
      Size = 50
    end
    object sdsNFVendaVALOR_MATRICULA: TFloatField
      FieldName = 'VALOR_MATRICULA'
    end
    object sdsNFVendaDATATRANSF: TDateField
      FieldName = 'DATATRANSF'
    end
    object sdsNFVendaCOR_RACA: TStringField
      FieldName = 'COR_RACA'
      Size = 25
    end
    object sdsNFVendaPERIODO: TStringField
      FieldName = 'PERIODO'
      Size = 15
    end
    object sdsNFVendaFOTO: TStringField
      FieldName = 'FOTO'
      Size = 300
    end
    object sdsNFVendaDATA_MATRICULA: TSQLTimeStampField
      FieldName = 'DATA_MATRICULA'
    end
    object sdsNFVendaCODRESPONSAVEL: TIntegerField
      FieldName = 'CODRESPONSAVEL'
    end
    object sdsNFVendaID_COB: TIntegerField
      FieldName = 'ID_COB'
    end
    object sdsNFVendaCOD_TRANPORTADORA: TIntegerField
      FieldName = 'COD_TRANPORTADORA'
    end
    object sdsNFVendaBLOQUEIO: TStringField
      FieldName = 'BLOQUEIO'
      FixedChar = True
      Size = 1
    end
    object sdsNFVendaCODCLI: TStringField
      FieldName = 'CODCLI'
      Size = 10
    end
    object sdsNFVendaCFOP_1: TStringField
      FieldName = 'CFOP_1'
      FixedChar = True
      Size = 4
    end
    object sdsNFVendaCOD_CLI: TStringField
      FieldName = 'COD_CLI'
      Size = 10
    end
    object sdsNFVendaCODENDERECO: TIntegerField
      FieldName = 'CODENDERECO'
      Required = True
    end
    object sdsNFVendaCODCLIENTE_2: TIntegerField
      FieldName = 'CODCLIENTE_2'
      Required = True
    end
    object sdsNFVendaLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object sdsNFVendaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sdsNFVendaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object sdsNFVendaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sdsNFVendaUF_1: TStringField
      FieldName = 'UF_1'
      FixedChar = True
      Size = 2
    end
    object sdsNFVendaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sdsNFVendaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 9
    end
    object sdsNFVendaTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 9
    end
    object sdsNFVendaTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 9
    end
    object sdsNFVendaFAX: TStringField
      FieldName = 'FAX'
      Size = 9
    end
    object sdsNFVendaE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 100
    end
    object sdsNFVendaRAMAL: TStringField
      FieldName = 'RAMAL'
      Size = 5
    end
    object sdsNFVendaTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
      Required = True
    end
    object sdsNFVendaDADOSADICIONAIS: TStringField
      FieldName = 'DADOSADICIONAIS'
      Size = 200
    end
    object sdsNFVendaDDD: TStringField
      FieldName = 'DDD'
      Size = 3
    end
    object sdsNFVendaDDD1: TStringField
      FieldName = 'DDD1'
      Size = 3
    end
    object sdsNFVendaDDD2: TStringField
      FieldName = 'DDD2'
      Size = 3
    end
    object sdsNFVendaDDD3: TStringField
      FieldName = 'DDD3'
      Size = 3
    end
    object sdsNFVendaNUMERO_2: TStringField
      FieldName = 'NUMERO_2'
      Size = 5
    end
    object sdsNFVendaCD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      Size = 10
    end
    object sdsNFVendaPAIS: TStringField
      FieldName = 'PAIS'
      Size = 60
    end
  end
  object dspNFVenda: TDataSetProvider
    DataSet = sdsNFVenda
    Left = 360
    Top = 136
  end
  object cdsNFVenda: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DTA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA2'
        ParamType = ptInput
      end>
    ProviderName = 'dspNFVenda'
    Left = 392
    Top = 136
    object cdsNFVendaNOTASERIE: TStringField
      FieldName = 'NOTASERIE'
      Required = True
      Size = 10
    end
    object cdsNFVendaNUMNF: TIntegerField
      FieldName = 'NUMNF'
      Required = True
    end
    object cdsNFVendaNATUREZA: TSmallintField
      FieldName = 'NATUREZA'
      Required = True
    end
    object cdsNFVendaQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object cdsNFVendaMARCA: TStringField
      FieldName = 'MARCA'
      Size = 10
    end
    object cdsNFVendaPESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      Precision = 9
      Size = 2
    end
    object cdsNFVendaPESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      Precision = 9
      Size = 2
    end
    object cdsNFVendaESPECIE: TStringField
      FieldName = 'ESPECIE'
    end
    object cdsNFVendaDTAEMISSAO: TDateField
      FieldName = 'DTAEMISSAO'
    end
    object cdsNFVendaDTASAIDA: TDateField
      FieldName = 'DTASAIDA'
    end
    object cdsNFVendaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsNFVendaCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
    object cdsNFVendaCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
    end
    object cdsNFVendaNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object cdsNFVendaNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object cdsNFVendaHORASAIDA: TTimeField
      FieldName = 'HORASAIDA'
    end
    object cdsNFVendaDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
    end
    object cdsNFVendaBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object cdsNFVendaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object cdsNFVendaBASE_ICMS_SUBST: TFloatField
      FieldName = 'BASE_ICMS_SUBST'
    end
    object cdsNFVendaVALOR_ICMS_SUBST: TFloatField
      FieldName = 'VALOR_ICMS_SUBST'
    end
    object cdsNFVendaVALOR_PRODUTO: TFloatField
      FieldName = 'VALOR_PRODUTO'
    end
    object cdsNFVendaVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
    end
    object cdsNFVendaVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
    end
    object cdsNFVendaOUTRAS_DESP: TFloatField
      FieldName = 'OUTRAS_DESP'
    end
    object cdsNFVendaVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object cdsNFVendaVALOR_TOTAL_NOTA: TFloatField
      FieldName = 'VALOR_TOTAL_NOTA'
    end
    object cdsNFVendaCORPONF1: TStringField
      FieldName = 'CORPONF1'
      Size = 200
    end
    object cdsNFVendaCORPONF2: TStringField
      FieldName = 'CORPONF2'
      Size = 200
    end
    object cdsNFVendaCORPONF3: TStringField
      FieldName = 'CORPONF3'
      Size = 200
    end
    object cdsNFVendaCORPONF4: TStringField
      FieldName = 'CORPONF4'
      Size = 200
    end
    object cdsNFVendaCORPONF5: TStringField
      FieldName = 'CORPONF5'
      Size = 75
    end
    object cdsNFVendaCORPONF6: TStringField
      FieldName = 'CORPONF6'
      Size = 75
    end
    object cdsNFVendaCFOP: TStringField
      FieldName = 'CFOP'
      Size = 30
    end
    object cdsNFVendaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsNFVendaFATURA: TStringField
      FieldName = 'FATURA'
      Size = 300
    end
    object cdsNFVendaICMS: TFloatField
      FieldName = 'ICMS'
    end
    object cdsNFVendaREDUZICMS: TFloatField
      FieldName = 'REDUZICMS'
    end
    object cdsNFVendaNOMETRANSP: TStringField
      FieldName = 'NOMETRANSP'
      Size = 50
    end
    object cdsNFVendaPLACATRANSP: TStringField
      FieldName = 'PLACATRANSP'
      Size = 8
    end
    object cdsNFVendaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsNFVendaEND_TRANSP: TStringField
      FieldName = 'END_TRANSP'
      Size = 80
    end
    object cdsNFVendaCIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      Size = 50
    end
    object cdsNFVendaUF_VEICULO_TRANSP: TStringField
      FieldName = 'UF_VEICULO_TRANSP'
      FixedChar = True
      Size = 2
    end
    object cdsNFVendaUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      FixedChar = True
      Size = 2
    end
    object cdsNFVendaFRETE: TStringField
      FieldName = 'FRETE'
      FixedChar = True
      Size = 1
    end
    object cdsNFVendaINSCRICAOESTADUAL: TStringField
      FieldName = 'INSCRICAOESTADUAL'
    end
    object cdsNFVendaSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsNFVendaVLRTOTALEXP: TFloatField
      FieldName = 'VLRTOTALEXP'
    end
    object cdsNFVendaIMPRESSA: TStringField
      FieldName = 'IMPRESSA'
      FixedChar = True
      Size = 1
    end
    object cdsNFVendaSERIE: TStringField
      FieldName = 'SERIE'
    end
    object cdsNFVendaID_GUIA: TIntegerField
      FieldName = 'ID_GUIA'
    end
    object cdsNFVendaSELECIONOU: TStringField
      FieldName = 'SELECIONOU'
      FixedChar = True
      Size = 1
    end
    object cdsNFVendaPROTOCOLOENV: TStringField
      FieldName = 'PROTOCOLOENV'
    end
    object cdsNFVendaNUMRECIBO: TStringField
      FieldName = 'NUMRECIBO'
    end
    object cdsNFVendaPROTOCOLOCANC: TStringField
      FieldName = 'PROTOCOLOCANC'
    end
    object cdsNFVendaPESOREMESSA: TBCDField
      FieldName = 'PESOREMESSA'
      Precision = 9
      Size = 2
    end
    object cdsNFVendaNOTAMAE: TIntegerField
      FieldName = 'NOTAMAE'
    end
    object cdsNFVendaVALOR_PIS: TFloatField
      FieldName = 'VALOR_PIS'
    end
    object cdsNFVendaVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
    end
    object cdsNFVendaVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
    end
    object cdsNFVendaCCUSTO: TIntegerField
      FieldName = 'CCUSTO'
    end
    object cdsNFVendaIDCOMPLEMENTAR: TStringField
      FieldName = 'IDCOMPLEMENTAR'
      Size = 44
    end
    object cdsNFVendaXMLNFE: TGraphicField
      FieldName = 'XMLNFE'
      BlobType = ftGraphic
    end
    object cdsNFVendaII: TFloatField
      FieldName = 'II'
    end
    object cdsNFVendaBCII: TFloatField
      FieldName = 'BCII'
    end
    object cdsNFVendaNOMEXML: TStringField
      FieldName = 'NOMEXML'
      Size = 60
    end
    object cdsNFVendaCODCLIENTE_1: TIntegerField
      FieldName = 'CODCLIENTE_1'
      Required = True
    end
    object cdsNFVendaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object cdsNFVendaRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object cdsNFVendaCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object cdsNFVendaTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object cdsNFVendaCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object cdsNFVendaCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsNFVendaINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object cdsNFVendaRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object cdsNFVendaSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      Required = True
    end
    object cdsNFVendaREGIAO: TSmallintField
      FieldName = 'REGIAO'
      Required = True
    end
    object cdsNFVendaLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
    end
    object cdsNFVendaDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
    object cdsNFVendaCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object cdsNFVendaSTATUS_1: TSmallintField
      FieldName = 'STATUS_1'
      Required = True
    end
    object cdsNFVendaHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 40
    end
    object cdsNFVendaPRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
    end
    object cdsNFVendaPRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
    end
    object cdsNFVendaCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
    end
    object cdsNFVendaBASE_ICMS_1: TSmallintField
      FieldName = 'BASE_ICMS_1'
    end
    object cdsNFVendaDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object cdsNFVendaCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      Size = 15
    end
    object cdsNFVendaOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object cdsNFVendaTEM_IE: TStringField
      FieldName = 'TEM_IE'
      FixedChar = True
      Size = 1
    end
    object cdsNFVendaDATARESC: TDateField
      FieldName = 'DATARESC'
    end
    object cdsNFVendaNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      Size = 80
    end
    object cdsNFVendaSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object cdsNFVendaFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      Size = 30
    end
    object cdsNFVendaGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      Size = 30
    end
    object cdsNFVendaCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
    end
    object cdsNFVendaEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      Size = 6
    end
    object cdsNFVendaEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      Size = 6
    end
    object cdsNFVendaDATAREINC: TDateField
      FieldName = 'DATAREINC'
    end
    object cdsNFVendaGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      FixedChar = True
      Size = 1
    end
    object cdsNFVendaGERAENV: TStringField
      FieldName = 'GERAENV'
      FixedChar = True
      Size = 1
    end
    object cdsNFVendaGERABOL: TStringField
      FieldName = 'GERABOL'
      FixedChar = True
      Size = 1
    end
    object cdsNFVendaEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      FixedChar = True
      Size = 1
    end
    object cdsNFVendaDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
    end
    object cdsNFVendaSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      Size = 4
    end
    object cdsNFVendaSERIE_1: TStringField
      FieldName = 'SERIE_1'
      Size = 4
    end
    object cdsNFVendaRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object cdsNFVendaCURSO: TStringField
      FieldName = 'CURSO'
      Size = 50
    end
    object cdsNFVendaIP: TStringField
      FieldName = 'IP'
      Size = 60
    end
    object cdsNFVendaN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      Size = 60
    end
    object cdsNFVendaMAC: TStringField
      FieldName = 'MAC'
      Size = 60
    end
    object cdsNFVendaMARCA_1: TStringField
      FieldName = 'MARCA_1'
      Size = 60
    end
    object cdsNFVendaBANDA_UPLOAD: TStringField
      FieldName = 'BANDA_UPLOAD'
      Size = 60
    end
    object cdsNFVendaBANDA_DOWLOAD: TStringField
      FieldName = 'BANDA_DOWLOAD'
      Size = 60
    end
    object cdsNFVendaTORRE_CONECCAO: TStringField
      FieldName = 'TORRE_CONECCAO'
      Size = 60
    end
    object cdsNFVendaCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
    end
    object cdsNFVendaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object cdsNFVendaMENSALIDADE: TFloatField
      FieldName = 'MENSALIDADE'
    end
    object cdsNFVendaANUIDADE: TFloatField
      FieldName = 'ANUIDADE'
    end
    object cdsNFVendaPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object cdsNFVendaPARCELAGERADAS: TIntegerField
      FieldName = 'PARCELAGERADAS'
    end
    object cdsNFVendaNUMERO_1: TIntegerField
      FieldName = 'NUMERO_1'
    end
    object cdsNFVendaDATANASCIMENTO: TSQLTimeStampField
      FieldName = 'DATANASCIMENTO'
    end
    object cdsNFVendaANOLETIVO: TStringField
      FieldName = 'ANOLETIVO'
      Size = 4
    end
    object cdsNFVendaSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 2
    end
    object cdsNFVendaRGMAE: TStringField
      FieldName = 'RGMAE'
      Size = 15
    end
    object cdsNFVendaCPFMAE: TStringField
      FieldName = 'CPFMAE'
      Size = 14
    end
    object cdsNFVendaPAI: TStringField
      FieldName = 'PAI'
      Size = 30
    end
    object cdsNFVendaRGPAI: TStringField
      FieldName = 'RGPAI'
      Size = 15
    end
    object cdsNFVendaCPFPAI: TStringField
      FieldName = 'CPFPAI'
      Size = 14
    end
    object cdsNFVendaLANCADOCLASSE: TIntegerField
      FieldName = 'LANCADOCLASSE'
    end
    object cdsNFVendaTRANSPORTE: TStringField
      FieldName = 'TRANSPORTE'
      Size = 50
    end
    object cdsNFVendaCIDADENASC: TStringField
      FieldName = 'CIDADENASC'
      Size = 30
    end
    object cdsNFVendaUFNASC: TStringField
      FieldName = 'UFNASC'
      Size = 2
    end
    object cdsNFVendaNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 15
    end
    object cdsNFVendaCERTIDAONASCNUM: TStringField
      FieldName = 'CERTIDAONASCNUM'
      Size = 10
    end
    object cdsNFVendaLIVRONASC: TStringField
      FieldName = 'LIVRONASC'
      Size = 10
    end
    object cdsNFVendaFLLIVRONASC: TStringField
      FieldName = 'FLLIVRONASC'
      Size = 5
    end
    object cdsNFVendaLOCALTRABPAI: TStringField
      FieldName = 'LOCALTRABPAI'
      Size = 30
    end
    object cdsNFVendaLOCALTRABMAE: TStringField
      FieldName = 'LOCALTRABMAE'
      Size = 30
    end
    object cdsNFVendaTELTRABPAI: TStringField
      FieldName = 'TELTRABPAI'
      Size = 15
    end
    object cdsNFVendaTELTRABMAE: TStringField
      FieldName = 'TELTRABMAE'
      Size = 15
    end
    object cdsNFVendaINFONECESSARIAS: TStringField
      FieldName = 'INFONECESSARIAS'
      Size = 30
    end
    object cdsNFVendaCARTEIRAVACINACAO: TStringField
      FieldName = 'CARTEIRAVACINACAO'
      Size = 10
    end
    object cdsNFVendaRAPRODESP: TStringField
      FieldName = 'RAPRODESP'
      Size = 10
    end
    object cdsNFVendaLOCALTRABALUNO: TStringField
      FieldName = 'LOCALTRABALUNO'
      Size = 30
    end
    object cdsNFVendaTELTRABALUNO: TStringField
      FieldName = 'TELTRABALUNO'
      Size = 15
    end
    object cdsNFVendaRAPROD: TStringField
      FieldName = 'RAPROD'
      Size = 15
    end
    object cdsNFVendaCERT_NAS_COMARCA: TStringField
      FieldName = 'CERT_NAS_COMARCA'
      Size = 50
    end
    object cdsNFVendaCERT_NAS_UF: TStringField
      FieldName = 'CERT_NAS_UF'
      Size = 2
    end
    object cdsNFVendaCERT_NAS_MUNICIPIO: TStringField
      FieldName = 'CERT_NAS_MUNICIPIO'
      Size = 50
    end
    object cdsNFVendaCERT_NAS_DISTRITO: TStringField
      FieldName = 'CERT_NAS_DISTRITO'
      Size = 50
    end
    object cdsNFVendaCERT_NAS_SUBDISTRITO: TStringField
      FieldName = 'CERT_NAS_SUBDISTRITO'
      Size = 50
    end
    object cdsNFVendaDIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      Size = 50
    end
    object cdsNFVendaDIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      Size = 50
    end
    object cdsNFVendaDATAEMISSAORG: TDateField
      FieldName = 'DATAEMISSAORG'
    end
    object cdsNFVendaESTADORG: TStringField
      FieldName = 'ESTADORG'
      FixedChar = True
      Size = 2
    end
    object cdsNFVendaCOMUNICAALUNO: TStringField
      FieldName = 'COMUNICAALUNO'
      Size = 50
    end
    object cdsNFVendaFONEMAE: TStringField
      FieldName = 'FONEMAE'
      Size = 15
    end
    object cdsNFVendaCELULARMAE: TStringField
      FieldName = 'CELULARMAE'
      Size = 15
    end
    object cdsNFVendaCOMUNICAMAE: TStringField
      FieldName = 'COMUNICAMAE'
      Size = 50
    end
    object cdsNFVendaFONEPAI: TStringField
      FieldName = 'FONEPAI'
      Size = 15
    end
    object cdsNFVendaCELULARPAI: TStringField
      FieldName = 'CELULARPAI'
      Size = 15
    end
    object cdsNFVendaCOMUNICAPAI: TStringField
      FieldName = 'COMUNICAPAI'
      Size = 50
    end
    object cdsNFVendaVALOR_MATRICULA: TFloatField
      FieldName = 'VALOR_MATRICULA'
    end
    object cdsNFVendaDATATRANSF: TDateField
      FieldName = 'DATATRANSF'
    end
    object cdsNFVendaCOR_RACA: TStringField
      FieldName = 'COR_RACA'
      Size = 25
    end
    object cdsNFVendaPERIODO: TStringField
      FieldName = 'PERIODO'
      Size = 15
    end
    object cdsNFVendaFOTO: TStringField
      FieldName = 'FOTO'
      Size = 300
    end
    object cdsNFVendaDATA_MATRICULA: TSQLTimeStampField
      FieldName = 'DATA_MATRICULA'
    end
    object cdsNFVendaCODRESPONSAVEL: TIntegerField
      FieldName = 'CODRESPONSAVEL'
    end
    object cdsNFVendaID_COB: TIntegerField
      FieldName = 'ID_COB'
    end
    object cdsNFVendaCOD_TRANPORTADORA: TIntegerField
      FieldName = 'COD_TRANPORTADORA'
    end
    object cdsNFVendaBLOQUEIO: TStringField
      FieldName = 'BLOQUEIO'
      FixedChar = True
      Size = 1
    end
    object cdsNFVendaCODCLI: TStringField
      FieldName = 'CODCLI'
      Size = 10
    end
    object cdsNFVendaCFOP_1: TStringField
      FieldName = 'CFOP_1'
      FixedChar = True
      Size = 4
    end
    object cdsNFVendaCOD_CLI: TStringField
      FieldName = 'COD_CLI'
      Size = 10
    end
    object cdsNFVendaCODENDERECO: TIntegerField
      FieldName = 'CODENDERECO'
      Required = True
    end
    object cdsNFVendaCODCLIENTE_2: TIntegerField
      FieldName = 'CODCLIENTE_2'
      Required = True
    end
    object cdsNFVendaLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object cdsNFVendaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsNFVendaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object cdsNFVendaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsNFVendaUF_1: TStringField
      FieldName = 'UF_1'
      FixedChar = True
      Size = 2
    end
    object cdsNFVendaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsNFVendaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 9
    end
    object cdsNFVendaTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 9
    end
    object cdsNFVendaTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 9
    end
    object cdsNFVendaFAX: TStringField
      FieldName = 'FAX'
      Size = 9
    end
    object cdsNFVendaE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 100
    end
    object cdsNFVendaRAMAL: TStringField
      FieldName = 'RAMAL'
      Size = 5
    end
    object cdsNFVendaTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
      Required = True
    end
    object cdsNFVendaDADOSADICIONAIS: TStringField
      FieldName = 'DADOSADICIONAIS'
      Size = 200
    end
    object cdsNFVendaDDD: TStringField
      FieldName = 'DDD'
      Size = 3
    end
    object cdsNFVendaDDD1: TStringField
      FieldName = 'DDD1'
      Size = 3
    end
    object cdsNFVendaDDD2: TStringField
      FieldName = 'DDD2'
      Size = 3
    end
    object cdsNFVendaDDD3: TStringField
      FieldName = 'DDD3'
      Size = 3
    end
    object cdsNFVendaNUMERO_2: TStringField
      FieldName = 'NUMERO_2'
      Size = 5
    end
    object cdsNFVendaCD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      Size = 10
    end
    object cdsNFVendaPAIS: TStringField
      FieldName = 'PAIS'
      Size = 60
    end
  end
  object sdsItens: TSQLDataSet
    CommandText = 
      'SELECT MOV.*, DET.* , PRO.CODPRO, PRO.NCM'#13#10'   FROM MOVIMENTO MOV' +
      ', MOVIMENTODETALHE DET, PRODUTOS PRO'#13#10'WHERE MOV.CODMOVIMENTO = D' +
      'ET.CODMOVIMENTO'#13#10'      AND PRO.CODPRODUTO     = DET.CODPRODUTO'#13#10 +
      '      AND MOV.CODMOVIMENTO = :PMOV'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PMOV'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 328
    Top = 168
  end
  object dspItens: TDataSetProvider
    DataSet = sdsItens
    Left = 360
    Top = 168
  end
  object cdsItens: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PMOV'
        ParamType = ptInput
      end>
    ProviderName = 'dspItens'
    Left = 393
    Top = 168
    object cdsItensCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      Required = True
    end
    object cdsItensDATAMOVIMENTO: TDateField
      FieldName = 'DATAMOVIMENTO'
      Required = True
    end
    object cdsItensCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object cdsItensCODNATUREZA: TSmallintField
      FieldName = 'CODNATUREZA'
      Required = True
    end
    object cdsItensSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object cdsItensCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object cdsItensCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
    end
    object cdsItensCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
    end
    object cdsItensCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object cdsItensDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
    end
    object cdsItensCOD_VEICULO: TIntegerField
      FieldName = 'COD_VEICULO'
    end
    object cdsItensCONTROLE: TStringField
      FieldName = 'CONTROLE'
      Size = 30
    end
    object cdsItensOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object cdsItensTOTALMOVIMENTO: TFloatField
      FieldName = 'TOTALMOVIMENTO'
    end
    object cdsItensCODMOVRATEIO: TIntegerField
      FieldName = 'CODMOVRATEIO'
    end
    object cdsItensVALORRATEIO: TFloatField
      FieldName = 'VALORRATEIO'
    end
    object cdsItensRATEIO: TFloatField
      FieldName = 'RATEIO'
    end
    object cdsItensCONFERIDO: TStringField
      FieldName = 'CONFERIDO'
      FixedChar = True
      Size = 1
    end
    object cdsItensNFCOBRANCA: TIntegerField
      FieldName = 'NFCOBRANCA'
    end
    object cdsItensORDEMATEND: TIntegerField
      FieldName = 'ORDEMATEND'
    end
    object cdsItensNFREVENDA: TIntegerField
      FieldName = 'NFREVENDA'
    end
    object cdsItensCODORIGEM: TIntegerField
      FieldName = 'CODORIGEM'
    end
    object cdsItensKM: TStringField
      FieldName = 'KM'
      Size = 30
    end
    object cdsItensNFE: TStringField
      FieldName = 'NFE'
      Size = 10
    end
    object cdsItensPRAZO_ENT: TIntegerField
      FieldName = 'PRAZO_ENT'
    end
    object cdsItensVAL_PROP: TDateField
      FieldName = 'VAL_PROP'
    end
    object cdsItensFORMA_PAG: TStringField
      FieldName = 'FORMA_PAG'
      Size = 40
    end
    object cdsItensVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
    end
    object cdsItensDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
    end
    object cdsItensPRAZO_PAGAMENTO: TStringField
      FieldName = 'PRAZO_PAGAMENTO'
      Size = 30
    end
    object cdsItensUSER_APROVA: TStringField
      FieldName = 'USER_APROVA'
    end
    object cdsItensCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
    end
    object cdsItensTPFRETE: TStringField
      FieldName = 'TPFRETE'
      FixedChar = True
      Size = 1
    end
    object cdsItensCODPEDIDO: TIntegerField
      FieldName = 'CODPEDIDO'
    end
    object cdsItensCODCOTACAO: TIntegerField
      FieldName = 'CODCOTACAO'
    end
    object cdsItensUSUARIOLOGADO: TStringField
      FieldName = 'USUARIOLOGADO'
      Size = 30
    end
    object cdsItensTIPO_PEDIDO: TStringField
      FieldName = 'TIPO_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object cdsItensCODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
      Required = True
    end
    object cdsItensCODMOVIMENTO_1: TIntegerField
      FieldName = 'CODMOVIMENTO_1'
      Required = True
    end
    object cdsItensCODALMOXARIFADO_1: TSmallintField
      FieldName = 'CODALMOXARIFADO_1'
    end
    object cdsItensCONTROLE_1: TSmallintField
      FieldName = 'CONTROLE_1'
    end
    object cdsItensCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object cdsItensQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object cdsItensPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object cdsItensICMS: TFloatField
      FieldName = 'ICMS'
    end
    object cdsItensUN: TStringField
      FieldName = 'UN'
      FixedChar = True
      Size = 2
    end
    object cdsItensQTDE_ALT: TFloatField
      FieldName = 'QTDE_ALT'
    end
    object cdsItensBAIXA: TStringField
      FieldName = 'BAIXA'
      FixedChar = True
      Size = 1
    end
    object cdsItensVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
    end
    object cdsItensCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
    end
    object cdsItensLOTE: TStringField
      FieldName = 'LOTE'
      Size = 60
    end
    object cdsItensDTAFAB: TDateField
      FieldName = 'DTAFAB'
    end
    object cdsItensDTAVCTO: TDateField
      FieldName = 'DTAVCTO'
    end
    object cdsItensPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object cdsItensVLRESTOQUE: TFloatField
      FieldName = 'VLRESTOQUE'
    end
    object cdsItensQTDEESTOQUE: TFloatField
      FieldName = 'QTDEESTOQUE'
    end
    object cdsItensNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Size = 15
    end
    object cdsItensDESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      Size = 300
    end
    object cdsItensPRECOULTIMACOMPRA: TFloatField
      FieldName = 'PRECOULTIMACOMPRA'
    end
    object cdsItensCST: TStringField
      FieldName = 'CST'
      Size = 5
    end
    object cdsItensVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object cdsItensVLR_BASE: TFloatField
      FieldName = 'VLR_BASE'
    end
    object cdsItensPERIODOINI: TSQLTimeStampField
      FieldName = 'PERIODOINI'
    end
    object cdsItensPERIODOFIM: TSQLTimeStampField
      FieldName = 'PERIODOFIM'
    end
    object cdsItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsItensCODIGO1: TIntegerField
      FieldName = 'CODIGO1'
    end
    object cdsItensCODAUTORIZACAO: TIntegerField
      FieldName = 'CODAUTORIZACAO'
    end
    object cdsItensSTATUS_1: TStringField
      FieldName = 'STATUS_1'
      FixedChar = True
      Size = 1
    end
    object cdsItensPAGOUCOMISSAO: TStringField
      FieldName = 'PAGOUCOMISSAO'
      FixedChar = True
      Size = 1
    end
    object cdsItensCODMOVRATEIO_1: TIntegerField
      FieldName = 'CODMOVRATEIO_1'
    end
    object cdsItensVALORRATEIO_1: TFloatField
      FieldName = 'VALORRATEIO_1'
    end
    object cdsItensPAGO: TStringField
      FieldName = 'PAGO'
      FixedChar = True
      Size = 3
    end
    object cdsItensRATEIO_1: TFloatField
      FieldName = 'RATEIO_1'
    end
    object cdsItensPORCENTAGENDESC: TFloatField
      FieldName = 'PORCENTAGENDESC'
    end
    object cdsItensICMS_SUBST: TFloatField
      FieldName = 'ICMS_SUBST'
    end
    object cdsItensICMS_SUBSTD: TFloatField
      FieldName = 'ICMS_SUBSTD'
    end
    object cdsItensVLR_BASEICMS: TFloatField
      FieldName = 'VLR_BASEICMS'
    end
    object cdsItensPIPI: TFloatField
      FieldName = 'PIPI'
    end
    object cdsItensVIPI: TFloatField
      FieldName = 'VIPI'
    end
    object cdsItensCFOP: TStringField
      FieldName = 'CFOP'
      FixedChar = True
      Size = 4
    end
    object cdsItensFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object cdsItensBCFRETE: TFloatField
      FieldName = 'BCFRETE'
    end
    object cdsItensSTFRETE: TStringField
      FieldName = 'STFRETE'
      FixedChar = True
      Size = 4
    end
    object cdsItensBCSTFRETE: TFloatField
      FieldName = 'BCSTFRETE'
    end
    object cdsItensICMSFRETE: TFloatField
      FieldName = 'ICMSFRETE'
    end
    object cdsItensCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 3
    end
    object cdsItensVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
    end
    object cdsItensRECEBIDO: TFloatField
      FieldName = 'RECEBIDO'
    end
    object cdsItensVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
    end
    object cdsItensVALOR_OUTROS: TFloatField
      FieldName = 'VALOR_OUTROS'
    end
    object cdsItensOBS_1: TStringField
      FieldName = 'OBS_1'
      Size = 300
    end
    object cdsItensCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
    end
    object cdsItensCODSOLICITACAO: TIntegerField
      FieldName = 'CODSOLICITACAO'
    end
    object cdsItensVALOR_PIS: TFloatField
      FieldName = 'VALOR_PIS'
    end
    object cdsItensVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
    end
    object cdsItensII: TFloatField
      FieldName = 'II'
    end
    object cdsItensBCII: TFloatField
      FieldName = 'BCII'
    end
    object cdsItensIMPRESSO: TStringField
      FieldName = 'IMPRESSO'
      FixedChar = True
      Size = 3
    end
    object cdsItensCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object cdsItensNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
  end
  object sdsUnimed: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PMOV'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'SELECT DISTINCT DET.UN'
      '   FROM VENDA, MOVIMENTODETALHE DET '
      'WHERE CODMOVIMENTO = :PMOV')
    SQLConnection = DM.sqlsisAdimin
    Left = 328
    Top = 208
  end
end
