object F_Boletos: TF_Boletos
  Left = 430
  Top = 221
  Width = 537
  Height = 362
  BorderIcons = [biSystemMenu]
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object MMJPanel3: TMMJPanel
    Left = 0
    Top = 59
    Width = 521
    Height = 206
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clSilver
    Background.EndColor = clSkyBlue
    Background.FillType = GradUpDown
    object lbl1: TLabel
      Left = 5
      Top = 6
      Width = 34
      Height = 13
      Caption = 'Banco:'
      Transparent = True
    end
    object lbl2: TLabel
      Left = 151
      Top = 6
      Width = 35
      Height = 13
      Caption = 'Layout:'
      Transparent = True
    end
    object lbl3: TLabel
      Left = 227
      Top = 6
      Width = 82
      Height = 13
      Caption = 'Layout Remessa:'
      Transparent = True
    end
    object lbl4: TLabel
      Left = 311
      Top = 6
      Width = 130
      Height = 13
      Caption = 'Respons'#225'vel pela Emiss'#227'o:'
      Transparent = True
    end
    object lbl6: TLabel
      Left = 5
      Top = 102
      Width = 171
      Height = 13
      Caption = 'Pasta destino do Arquivo Remessa :'
      Transparent = True
    end
    object lbl7: TLabel
      Left = 8
      Top = 59
      Width = 164
      Height = 13
      Caption = 'Pasta contento Logo dos Bancos :'
      Transparent = True
    end
    object lbl10: TLabel
      Left = 5
      Top = 146
      Width = 165
      Height = 13
      Caption = 'Pasta destino do Arquivo Retorno :'
      Transparent = True
    end
    object lbl8: TLabel
      Left = 443
      Top = 6
      Width = 63
      Height = 13
      Caption = 'Comprovante'
      Transparent = True
    end
    object Label1: TLabel
      Left = 341
      Top = 102
      Width = 82
      Height = 13
      Caption = 'Nome do Arquivo'
      Transparent = True
    end
    object cbb1: TComboBox
      Left = 5
      Top = 22
      Width = 145
      Height = 21
      BevelKind = bkFlat
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
    end
    object cbb2: TComboBox
      Left = 151
      Top = 22
      Width = 75
      Height = 21
      BevelKind = bkFlat
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 1
      Text = 'Boleto'
      Items.Strings = (
        'Boleto'
        'Carn'#234
        'Fatura')
    end
    object cbb3: TComboBox
      Left = 227
      Top = 22
      Width = 83
      Height = 21
      BevelKind = bkFlat
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
      Items.Strings = (
        'c400'
        'c240')
    end
    object cbb4: TComboBox
      Left = 311
      Top = 22
      Width = 131
      Height = 21
      BevelKind = bkFlat
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 3
      Text = 'Cliente Emite'
      Items.Strings = (
        'Banco Emite'
        'Cliente Emite')
    end
    object edt1: TEdit
      Left = 5
      Top = 115
      Width = 299
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      TabOrder = 4
      Text = 'C:\Home\Remessa\'
    end
    object btn1: TBitBtn
      Left = 307
      Top = 111
      Width = 31
      Height = 25
      Caption = '...'
      TabOrder = 5
    end
    object edt2: TEdit
      Left = 6
      Top = 72
      Width = 506
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      TabOrder = 6
    end
    object edt3: TEdit
      Left = 5
      Top = 159
      Width = 480
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      TabOrder = 7
      Text = 'C:\Home\Retorno\'
    end
    object btn5: TBitBtn
      Left = 486
      Top = 155
      Width = 29
      Height = 25
      Caption = '...'
      TabOrder = 8
    end
    object cbb5: TComboBox
      Left = 443
      Top = 22
      Width = 71
      Height = 21
      BevelKind = bkFlat
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 9
      Text = 'SIM'
      Items.Strings = (
        'SIM'
        'N'#195'O')
    end
    object Edit1: TEdit
      Left = 341
      Top = 115
      Width = 174
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      TabOrder = 10
      Text = 'Remessa'
    end
  end
  object MMJPanel1: TMMJPanel
    Left = 0
    Top = 0
    Width = 521
    Height = 59
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clSilver
    Background.EndColor = clSkyBlue
    Background.FillType = GradUpDown
    object lbl5: TLabel
      Left = 2
      Top = 2
      Width = 517
      Height = 55
      Align = alClient
      Alignment = taCenter
      Caption = 'Gerar Boletos / Remessas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Modern No. 20'
      Font.Style = [fsItalic]
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
  end
  object MMJPanel2: TMMJPanel
    Left = 0
    Top = 265
    Width = 521
    Height = 59
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 2
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = 16776176
    Background.EndColor = clSkyBlue
    Background.FillType = GradUpDown
    object btn2: TBitBtn
      Left = 96
      Top = 14
      Width = 103
      Height = 31
      Caption = 'IMPRIMIR'
      TabOrder = 0
      OnClick = btn2Click
    end
    object btn3: TBitBtn
      Left = 207
      Top = 14
      Width = 103
      Height = 31
      Caption = 'GERAR REMESSA'
      TabOrder = 1
      OnClick = btn3Click
    end
    object btn4: TBitBtn
      Left = 318
      Top = 14
      Width = 103
      Height = 31
      Caption = 'SAIR'
      TabOrder = 2
      OnClick = btn4Click
    end
  end
  object ACBrBoleto1: TACBrBoleto
    Cedente.TipoInscricao = pOutras
    Banco.TamanhoMaximoNossoNum = 10
    Banco.TipoCobranca = cobNenhum
    NumeroArquivo = 0
    ComprovanteEntrega = True
    ACBrBoletoFC = ACBrBoletoFCFortes1
    Left = 408
    Top = 8
  end
  object ACBrBoletoFCFortes1: TACBrBoletoFCFortes
    ACBrBoleto = ACBrBoleto1
    Left = 440
    Top = 8
  end
  object s_banco: TSQLDataSet
    CommandText = 
      'SELECT a.CODBANCO, a.BANCO, a.NOMEBANCO, a.CARTEIRA, a.CODIGO_CE' +
      'DENTE, a.CODIGO_EMPRESA, a.CODIGO_AGENCIA, a.DIGITO_AGENCIA, '#13#10'a' +
      '.NUMERO_CONTA, a.DIGITO_CONTA, a.CODIGO_PLANO, a.INSTRUCAO1, a.I' +
      'NSTRUCAO2, a.INSTRUCAO3, a.INSTRUCAO4, a.CEDENTE, a.NCONVENIO, '#13 +
      #10'a.ESPECIEDOC, a.ACEITE, a.CONVENIO, a.LOCALPGTO, a.N_BANCO, '#13#10'a' +
      '.DIGITOBANCO, a.VARIACAO, a.'#10'CODIGOBOLETO    '#13#10'FROM BANCO a'#13#10'whe' +
      're CODBANCO = :bc'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'bc'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 272
    Top = 121
    object s_bancoCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
      Required = True
    end
    object s_bancoBANCO: TStringField
      FieldName = 'BANCO'
      Required = True
      Size = 18
    end
    object s_bancoNOMEBANCO: TStringField
      FieldName = 'NOMEBANCO'
      Required = True
      Size = 30
    end
    object s_bancoCARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      FixedChar = True
      Size = 3
    end
    object s_bancoCODIGO_CEDENTE: TStringField
      FieldName = 'CODIGO_CEDENTE'
      Size = 10
    end
    object s_bancoCODIGO_EMPRESA: TStringField
      FieldName = 'CODIGO_EMPRESA'
      Size = 10
    end
    object s_bancoCODIGO_AGENCIA: TStringField
      FieldName = 'CODIGO_AGENCIA'
      Size = 10
    end
    object s_bancoDIGITO_AGENCIA: TStringField
      FieldName = 'DIGITO_AGENCIA'
      FixedChar = True
      Size = 1
    end
    object s_bancoNUMERO_CONTA: TStringField
      FieldName = 'NUMERO_CONTA'
      Size = 10
    end
    object s_bancoDIGITO_CONTA: TStringField
      FieldName = 'DIGITO_CONTA'
      FixedChar = True
      Size = 1
    end
    object s_bancoCODIGO_PLANO: TIntegerField
      FieldName = 'CODIGO_PLANO'
    end
    object s_bancoINSTRUCAO1: TStringField
      FieldName = 'INSTRUCAO1'
      Size = 100
    end
    object s_bancoINSTRUCAO2: TStringField
      FieldName = 'INSTRUCAO2'
      Size = 100
    end
    object s_bancoINSTRUCAO3: TStringField
      FieldName = 'INSTRUCAO3'
      Size = 100
    end
    object s_bancoINSTRUCAO4: TStringField
      FieldName = 'INSTRUCAO4'
      Size = 100
    end
    object s_bancoCEDENTE: TStringField
      FieldName = 'CEDENTE'
      Size = 100
    end
    object s_bancoNCONVENIO: TIntegerField
      FieldName = 'NCONVENIO'
    end
    object s_bancoESPECIEDOC: TStringField
      FieldName = 'ESPECIEDOC'
      Size = 5
    end
    object s_bancoACEITE: TStringField
      FieldName = 'ACEITE'
      Size = 2
    end
    object s_bancoCONVENIO: TStringField
      FieldName = 'CONVENIO'
      Size = 10
    end
    object s_bancoLOCALPGTO: TStringField
      FieldName = 'LOCALPGTO'
      Size = 100
    end
    object s_bancoN_BANCO: TStringField
      FieldName = 'N_BANCO'
      Size = 10
    end
    object s_bancoDIGITOBANCO: TIntegerField
      FieldName = 'DIGITOBANCO'
    end
    object s_bancoVARIACAO: TStringField
      FieldName = 'VARIACAO'
      Size = 3
    end
    object s_bancoCODIGOBOLETO: TStringField
      FieldName = 'CODIGOBOLETO'
    end
  end
  object s_cr: TSQLDataSet
    CommandText = 
      'select * from RECEBIMENTO '#13#10'where CODVENDA = :id '#13#10'       or COD' +
      'RECEBIMENTO =:idr'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idr'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 240
    Top = 179
    object s_crCODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
      Required = True
    end
    object s_crTITULO: TStringField
      FieldName = 'TITULO'
      Required = True
      Size = 18
    end
    object s_crEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object s_crCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object s_crDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
    end
    object s_crDATARECEBIMENTO: TDateField
      FieldName = 'DATARECEBIMENTO'
    end
    object s_crCAIXA: TSmallintField
      FieldName = 'CAIXA'
    end
    object s_crCONTADEBITO: TIntegerField
      FieldName = 'CONTADEBITO'
    end
    object s_crCONTACREDITO: TIntegerField
      FieldName = 'CONTACREDITO'
    end
    object s_crSTATUS: TStringField
      FieldName = 'STATUS'
      Required = True
      FixedChar = True
      Size = 2
    end
    object s_crVIA: TStringField
      FieldName = 'VIA'
      Required = True
      FixedChar = True
      Size = 4
    end
    object s_crFORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object s_crDATABAIXA: TDateField
      FieldName = 'DATABAIXA'
    end
    object s_crHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 150
    end
    object s_crCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
    object s_crCODALMOXARIFADO: TSmallintField
      FieldName = 'CODALMOXARIFADO'
    end
    object s_crCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
    end
    object s_crCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
    end
    object s_crN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
    end
    object s_crDATASISTEMA: TSQLTimeStampField
      FieldName = 'DATASISTEMA'
    end
    object s_crVALORRECEBIDO: TFloatField
      FieldName = 'VALORRECEBIDO'
    end
    object s_crJUROS: TFloatField
      FieldName = 'JUROS'
    end
    object s_crDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object s_crPERDA: TFloatField
      FieldName = 'PERDA'
    end
    object s_crTROCA: TFloatField
      FieldName = 'TROCA'
    end
    object s_crFUNRURAL: TFloatField
      FieldName = 'FUNRURAL'
    end
    object s_crVALOR_PRIM_VIA: TFloatField
      FieldName = 'VALOR_PRIM_VIA'
    end
    object s_crVALOR_RESTO: TFloatField
      FieldName = 'VALOR_RESTO'
    end
    object s_crVALORTITULO: TFloatField
      FieldName = 'VALORTITULO'
    end
    object s_crOUTRO_CREDITO: TFloatField
      FieldName = 'OUTRO_CREDITO'
    end
    object s_crOUTRO_DEBITO: TFloatField
      FieldName = 'OUTRO_DEBITO'
    end
    object s_crPARCELAS: TIntegerField
      FieldName = 'PARCELAS'
    end
    object s_crDUP_REC_NF: TStringField
      FieldName = 'DUP_REC_NF'
      Size = 15
    end
    object s_crNF: TIntegerField
      FieldName = 'NF'
    end
    object s_crDP: TIntegerField
      FieldName = 'DP'
    end
    object s_crBL: TIntegerField
      FieldName = 'BL'
    end
    object s_crCODORIGEM: TIntegerField
      FieldName = 'CODORIGEM'
    end
    object s_crCODIGO_DE_BARRAS: TStringField
      FieldName = 'CODIGO_DE_BARRAS'
      Size = 54
    end
    object s_crIMAGE_COD_BARRAS: TGraphicField
      FieldName = 'IMAGE_COD_BARRAS'
      BlobType = ftGraphic
    end
    object s_crDV: TStringField
      FieldName = 'DV'
      FixedChar = True
      Size = 2
    end
    object s_crNOMEARQUIVORETORNO: TStringField
      FieldName = 'NOMEARQUIVORETORNO'
      Size = 80
    end
    object s_crDATACONSOLIDA: TDateField
      FieldName = 'DATACONSOLIDA'
    end
    object s_crBANCO: TStringField
      FieldName = 'BANCO'
      Size = 60
    end
    object s_crAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 10
    end
    object s_crCONTA: TStringField
      FieldName = 'CONTA'
      Size = 10
    end
    object s_crSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object s_crSELECIONOU: TStringField
      FieldName = 'SELECIONOU'
      FixedChar = True
      Size = 1
    end
    object s_crDESCONTADO: TStringField
      FieldName = 'DESCONTADO'
      FixedChar = True
      Size = 1
    end
    object s_crSITUACAOCHEQUE: TStringField
      FieldName = 'SITUACAOCHEQUE'
      Size = 10
    end
    object s_crGERARQREM: TIntegerField
      FieldName = 'GERARQREM'
    end
    object s_crDATAGERARQREM: TDateField
      FieldName = 'DATAGERARQREM'
    end
    object s_crVALST: TFloatField
      FieldName = 'VALST'
    end
    object s_crVALOR_RESTO_SST: TFloatField
      FieldName = 'VALOR_RESTO_SST'
    end
  end
  object s_cliente: TSQLDataSet
    CommandText = 
      'select c.*, e.*  '#13#10'from CLIENTES c '#13#10'inner join ENDERECOCLIENTE ' +
      'e on e.CODCLIENTE = c.CODCLIENTE '#13#10'where c.CODCLIENTE = :id_cli ' +
      #13#10'   and e.TIPOEND = 0'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_cli'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 336
    Top = 131
    object s_clienteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object s_clienteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object s_clienteRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object s_clienteCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object s_clienteTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      Required = True
    end
    object s_clienteCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object s_clienteCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object s_clienteINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object s_clienteRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object s_clienteSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      Required = True
    end
    object s_clienteREGIAO: TSmallintField
      FieldName = 'REGIAO'
      Required = True
    end
    object s_clienteLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
    end
    object s_clienteDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Required = True
    end
    object s_clienteCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object s_clienteSTATUS: TSmallintField
      FieldName = 'STATUS'
      Required = True
    end
    object s_clienteHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 40
    end
    object s_clientePRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
    end
    object s_clientePRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
    end
    object s_clienteCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
    end
    object s_clienteBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
    end
    object s_clienteDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object s_clienteCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      Size = 15
    end
    object s_clienteOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object s_clienteTEM_IE: TStringField
      FieldName = 'TEM_IE'
      FixedChar = True
      Size = 1
    end
    object s_clienteDATARESC: TDateField
      FieldName = 'DATARESC'
    end
    object s_clienteNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      Size = 80
    end
    object s_clienteSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object s_clienteFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      Size = 30
    end
    object s_clienteGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      Size = 30
    end
    object s_clienteCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
    end
    object s_clienteEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      Size = 6
    end
    object s_clienteEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      Size = 6
    end
    object s_clienteDATAREINC: TDateField
      FieldName = 'DATAREINC'
    end
    object s_clienteGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      FixedChar = True
      Size = 1
    end
    object s_clienteGERAENV: TStringField
      FieldName = 'GERAENV'
      FixedChar = True
      Size = 1
    end
    object s_clienteGERABOL: TStringField
      FieldName = 'GERABOL'
      FixedChar = True
      Size = 1
    end
    object s_clienteEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      FixedChar = True
      Size = 1
    end
    object s_clienteDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
    end
    object s_clienteSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      Size = 4
    end
    object s_clienteSERIE: TStringField
      FieldName = 'SERIE'
      Size = 4
    end
    object s_clienteRA: TStringField
      FieldName = 'RA'
      Size = 10
    end
    object s_clienteCURSO: TStringField
      FieldName = 'CURSO'
      Size = 50
    end
    object s_clienteIP: TStringField
      FieldName = 'IP'
      Size = 60
    end
    object s_clienteN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      Size = 60
    end
    object s_clienteMAC: TStringField
      FieldName = 'MAC'
      Size = 60
    end
    object s_clienteMARCA: TStringField
      FieldName = 'MARCA'
      Size = 60
    end
    object s_clienteBANDA_UPLOAD: TStringField
      FieldName = 'BANDA_UPLOAD'
      Size = 60
    end
    object s_clienteBANDA_DOWLOAD: TStringField
      FieldName = 'BANDA_DOWLOAD'
      Size = 60
    end
    object s_clienteTORRE_CONECCAO: TStringField
      FieldName = 'TORRE_CONECCAO'
      Size = 60
    end
    object s_clienteCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
    end
    object s_clienteDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object s_clienteMENSALIDADE: TFloatField
      FieldName = 'MENSALIDADE'
    end
    object s_clienteANUIDADE: TFloatField
      FieldName = 'ANUIDADE'
    end
    object s_clientePARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object s_clientePARCELAGERADAS: TIntegerField
      FieldName = 'PARCELAGERADAS'
    end
    object s_clienteNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object s_clienteDATANASCIMENTO: TSQLTimeStampField
      FieldName = 'DATANASCIMENTO'
    end
    object s_clienteANOLETIVO: TStringField
      FieldName = 'ANOLETIVO'
      Size = 4
    end
    object s_clienteSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 2
    end
    object s_clienteRGMAE: TStringField
      FieldName = 'RGMAE'
      Size = 15
    end
    object s_clienteCPFMAE: TStringField
      FieldName = 'CPFMAE'
      Size = 14
    end
    object s_clientePAI: TStringField
      FieldName = 'PAI'
      Size = 30
    end
    object s_clienteRGPAI: TStringField
      FieldName = 'RGPAI'
      Size = 15
    end
    object s_clienteCPFPAI: TStringField
      FieldName = 'CPFPAI'
      Size = 14
    end
    object s_clienteLANCADOCLASSE: TIntegerField
      FieldName = 'LANCADOCLASSE'
    end
    object s_clienteTRANSPORTE: TStringField
      FieldName = 'TRANSPORTE'
      Size = 50
    end
    object s_clienteCIDADENASC: TStringField
      FieldName = 'CIDADENASC'
      Size = 30
    end
    object s_clienteUFNASC: TStringField
      FieldName = 'UFNASC'
      Size = 2
    end
    object s_clienteNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 15
    end
    object s_clienteCERTIDAONASCNUM: TStringField
      FieldName = 'CERTIDAONASCNUM'
      Size = 10
    end
    object s_clienteLIVRONASC: TStringField
      FieldName = 'LIVRONASC'
      Size = 10
    end
    object s_clienteFLLIVRONASC: TStringField
      FieldName = 'FLLIVRONASC'
      Size = 5
    end
    object s_clienteLOCALTRABPAI: TStringField
      FieldName = 'LOCALTRABPAI'
      Size = 30
    end
    object s_clienteLOCALTRABMAE: TStringField
      FieldName = 'LOCALTRABMAE'
      Size = 30
    end
    object s_clienteTELTRABPAI: TStringField
      FieldName = 'TELTRABPAI'
      Size = 15
    end
    object s_clienteTELTRABMAE: TStringField
      FieldName = 'TELTRABMAE'
      Size = 15
    end
    object s_clienteINFONECESSARIAS: TStringField
      FieldName = 'INFONECESSARIAS'
      Size = 30
    end
    object s_clienteCARTEIRAVACINACAO: TStringField
      FieldName = 'CARTEIRAVACINACAO'
      Size = 10
    end
    object s_clienteRAPRODESP: TStringField
      FieldName = 'RAPRODESP'
      Size = 10
    end
    object s_clienteLOCALTRABALUNO: TStringField
      FieldName = 'LOCALTRABALUNO'
      Size = 30
    end
    object s_clienteTELTRABALUNO: TStringField
      FieldName = 'TELTRABALUNO'
      Size = 15
    end
    object s_clienteRAPROD: TStringField
      FieldName = 'RAPROD'
      Size = 15
    end
    object s_clienteCERT_NAS_COMARCA: TStringField
      FieldName = 'CERT_NAS_COMARCA'
      Size = 50
    end
    object s_clienteCERT_NAS_UF: TStringField
      FieldName = 'CERT_NAS_UF'
      Size = 2
    end
    object s_clienteCERT_NAS_MUNICIPIO: TStringField
      FieldName = 'CERT_NAS_MUNICIPIO'
      Size = 50
    end
    object s_clienteCERT_NAS_DISTRITO: TStringField
      FieldName = 'CERT_NAS_DISTRITO'
      Size = 50
    end
    object s_clienteCERT_NAS_SUBDISTRITO: TStringField
      FieldName = 'CERT_NAS_SUBDISTRITO'
      Size = 50
    end
    object s_clienteDIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      Size = 50
    end
    object s_clienteDIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      Size = 50
    end
    object s_clienteDATAEMISSAORG: TDateField
      FieldName = 'DATAEMISSAORG'
    end
    object s_clienteESTADORG: TStringField
      FieldName = 'ESTADORG'
      FixedChar = True
      Size = 2
    end
    object s_clienteCOMUNICAALUNO: TStringField
      FieldName = 'COMUNICAALUNO'
      Size = 50
    end
    object s_clienteFONEMAE: TStringField
      FieldName = 'FONEMAE'
      Size = 15
    end
    object s_clienteCELULARMAE: TStringField
      FieldName = 'CELULARMAE'
      Size = 15
    end
    object s_clienteCOMUNICAMAE: TStringField
      FieldName = 'COMUNICAMAE'
      Size = 50
    end
    object s_clienteFONEPAI: TStringField
      FieldName = 'FONEPAI'
      Size = 15
    end
    object s_clienteCELULARPAI: TStringField
      FieldName = 'CELULARPAI'
      Size = 15
    end
    object s_clienteCOMUNICAPAI: TStringField
      FieldName = 'COMUNICAPAI'
      Size = 50
    end
    object s_clienteVALOR_MATRICULA: TFloatField
      FieldName = 'VALOR_MATRICULA'
    end
    object s_clienteDATATRANSF: TDateField
      FieldName = 'DATATRANSF'
    end
    object s_clienteCOR_RACA: TStringField
      FieldName = 'COR_RACA'
      Size = 25
    end
    object s_clientePERIODO: TStringField
      FieldName = 'PERIODO'
      Size = 15
    end
    object s_clienteFOTO: TStringField
      FieldName = 'FOTO'
      Size = 300
    end
    object s_clienteDATA_MATRICULA: TSQLTimeStampField
      FieldName = 'DATA_MATRICULA'
    end
    object s_clienteCODRESPONSAVEL: TIntegerField
      FieldName = 'CODRESPONSAVEL'
    end
    object s_clienteID_COB: TIntegerField
      FieldName = 'ID_COB'
    end
    object s_clienteCOD_TRANPORTADORA: TIntegerField
      FieldName = 'COD_TRANPORTADORA'
    end
    object s_clienteBLOQUEIO: TStringField
      FieldName = 'BLOQUEIO'
      FixedChar = True
      Size = 1
    end
    object s_clienteCFOP: TStringField
      FieldName = 'CFOP'
      FixedChar = True
      Size = 4
    end
    object s_clienteLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object s_clienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object s_clienteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object s_clienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object s_clienteUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object s_clienteCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object s_clienteNUMERO_1: TStringField
      FieldName = 'NUMERO_1'
      Size = 5
    end
  end
  object s_empresa: TSQLDataSet
    CommandText = 'select * from EMPRESA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 240
    Top = 123
    object s_empresaEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 80
    end
    object s_empresaRAZAO: TStringField
      FieldName = 'RAZAO'
      Required = True
      Size = 80
    end
    object s_empresaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Required = True
    end
    object s_empresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object s_empresaLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 80
    end
    object s_empresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object s_empresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object s_empresaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object s_empresaCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 9
    end
    object s_empresaDDD: TStringField
      FieldName = 'DDD'
      FixedChar = True
      Size = 2
    end
    object s_empresaFONE: TStringField
      FieldName = 'FONE'
      Size = 12
    end
    object s_empresaFONE_1: TStringField
      FieldName = 'FONE_1'
      Size = 12
    end
    object s_empresaFONE_2: TStringField
      FieldName = 'FONE_2'
      Size = 12
    end
    object s_empresaFAX: TStringField
      FieldName = 'FAX'
      Size = 12
    end
    object s_empresaE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 50
    end
    object s_empresaWEB: TStringField
      FieldName = 'WEB'
      Size = 50
    end
    object s_empresaLOGOTIPO: TGraphicField
      FieldName = 'LOGOTIPO'
      BlobType = ftGraphic
    end
    object s_empresaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object s_empresaTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object s_empresaIE_RG: TStringField
      FieldName = 'IE_RG'
      Size = 15
    end
    object s_empresaSLOGAN: TStringField
      FieldName = 'SLOGAN'
      Size = 60
    end
    object s_empresaOUTRAS_INFO: TStringField
      FieldName = 'OUTRAS_INFO'
      Size = 60
    end
    object s_empresaCODIGO_CONTA: TIntegerField
      FieldName = 'CODIGO_CONTA'
    end
    object s_empresaDIVERSOS1: TStringField
      FieldName = 'DIVERSOS1'
      Size = 50
    end
    object s_empresaDIVERSOS2: TStringField
      FieldName = 'DIVERSOS2'
      Size = 50
    end
    object s_empresaDIVERSOS3: TStringField
      FieldName = 'DIVERSOS3'
      Size = 50
    end
    object s_empresaANOLETIVO: TIntegerField
      FieldName = 'ANOLETIVO'
    end
    object s_empresaMEDIA_ESCOLA: TFloatField
      FieldName = 'MEDIA_ESCOLA'
    end
    object s_empresaPORTA: TIntegerField
      FieldName = 'PORTA'
    end
    object s_empresaSMTP: TStringField
      FieldName = 'SMTP'
      Size = 30
    end
    object s_empresaSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object s_empresaCCUSTO: TIntegerField
      FieldName = 'CCUSTO'
    end
    object s_empresaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object s_empresaCD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      Size = 10
    end
    object s_empresaCRT: TIntegerField
      FieldName = 'CRT'
    end
  end
  object SQLDataSet1: TSQLDataSet
    Params = <>
    Left = 416
    Top = 163
  end
  object p_cr: TDataSetProvider
    DataSet = s_cr
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 272
    Top = 179
  end
  object ds_cr: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idr'
        ParamType = ptInput
      end>
    ProviderName = 'p_cr'
    Left = 304
    Top = 179
    object ds_crCODRECEBIMENTO: TIntegerField
      FieldName = 'CODRECEBIMENTO'
      Required = True
    end
    object ds_crTITULO: TStringField
      FieldName = 'TITULO'
      Required = True
      Size = 18
    end
    object ds_crEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object ds_crCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object ds_crDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
    end
    object ds_crDATARECEBIMENTO: TDateField
      FieldName = 'DATARECEBIMENTO'
    end
    object ds_crCAIXA: TSmallintField
      FieldName = 'CAIXA'
    end
    object ds_crCONTADEBITO: TIntegerField
      FieldName = 'CONTADEBITO'
    end
    object ds_crCONTACREDITO: TIntegerField
      FieldName = 'CONTACREDITO'
    end
    object ds_crSTATUS: TStringField
      FieldName = 'STATUS'
      Required = True
      FixedChar = True
      Size = 2
    end
    object ds_crVIA: TStringField
      FieldName = 'VIA'
      Required = True
      FixedChar = True
      Size = 4
    end
    object ds_crFORMARECEBIMENTO: TStringField
      FieldName = 'FORMARECEBIMENTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object ds_crDATABAIXA: TDateField
      FieldName = 'DATABAIXA'
    end
    object ds_crHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 150
    end
    object ds_crCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
    object ds_crCODALMOXARIFADO: TSmallintField
      FieldName = 'CODALMOXARIFADO'
    end
    object ds_crCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
    end
    object ds_crCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
    end
    object ds_crN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
    end
    object ds_crDATASISTEMA: TSQLTimeStampField
      FieldName = 'DATASISTEMA'
    end
    object ds_crVALORRECEBIDO: TFloatField
      FieldName = 'VALORRECEBIDO'
    end
    object ds_crJUROS: TFloatField
      FieldName = 'JUROS'
    end
    object ds_crDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object ds_crPERDA: TFloatField
      FieldName = 'PERDA'
    end
    object ds_crTROCA: TFloatField
      FieldName = 'TROCA'
    end
    object ds_crFUNRURAL: TFloatField
      FieldName = 'FUNRURAL'
    end
    object ds_crVALOR_PRIM_VIA: TFloatField
      FieldName = 'VALOR_PRIM_VIA'
    end
    object ds_crVALOR_RESTO: TFloatField
      FieldName = 'VALOR_RESTO'
    end
    object ds_crVALORTITULO: TFloatField
      FieldName = 'VALORTITULO'
    end
    object ds_crOUTRO_CREDITO: TFloatField
      FieldName = 'OUTRO_CREDITO'
    end
    object ds_crOUTRO_DEBITO: TFloatField
      FieldName = 'OUTRO_DEBITO'
    end
    object ds_crPARCELAS: TIntegerField
      FieldName = 'PARCELAS'
    end
    object ds_crDUP_REC_NF: TStringField
      FieldName = 'DUP_REC_NF'
      Size = 15
    end
    object ds_crNF: TIntegerField
      FieldName = 'NF'
    end
    object ds_crDP: TIntegerField
      FieldName = 'DP'
    end
    object ds_crBL: TIntegerField
      FieldName = 'BL'
    end
    object ds_crCODORIGEM: TIntegerField
      FieldName = 'CODORIGEM'
    end
    object ds_crCODIGO_DE_BARRAS: TStringField
      FieldName = 'CODIGO_DE_BARRAS'
      Size = 54
    end
    object ds_crIMAGE_COD_BARRAS: TGraphicField
      FieldName = 'IMAGE_COD_BARRAS'
      BlobType = ftGraphic
    end
    object ds_crDV: TStringField
      FieldName = 'DV'
      FixedChar = True
      Size = 2
    end
    object ds_crNOMEARQUIVORETORNO: TStringField
      FieldName = 'NOMEARQUIVORETORNO'
      Size = 80
    end
    object ds_crDATACONSOLIDA: TDateField
      FieldName = 'DATACONSOLIDA'
    end
    object ds_crBANCO: TStringField
      FieldName = 'BANCO'
      Size = 60
    end
    object ds_crAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 10
    end
    object ds_crCONTA: TStringField
      FieldName = 'CONTA'
      Size = 10
    end
    object ds_crSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object ds_crSELECIONOU: TStringField
      FieldName = 'SELECIONOU'
      FixedChar = True
      Size = 1
    end
    object ds_crDESCONTADO: TStringField
      FieldName = 'DESCONTADO'
      FixedChar = True
      Size = 1
    end
    object ds_crSITUACAOCHEQUE: TStringField
      FieldName = 'SITUACAOCHEQUE'
      Size = 10
    end
    object ds_crGERARQREM: TIntegerField
      FieldName = 'GERARQREM'
    end
    object ds_crDATAGERARQREM: TDateField
      FieldName = 'DATAGERARQREM'
    end
    object ds_crVALST: TFloatField
      FieldName = 'VALST'
    end
    object ds_crVALOR_RESTO_SST: TFloatField
      FieldName = 'VALOR_RESTO_SST'
    end
  end
  object DataSource1: TDataSource
    DataSet = ds_cr
    Left = 336
    Top = 179
  end
end
