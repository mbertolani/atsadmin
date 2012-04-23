inherited fCadClientes2: TfCadClientes2
  Left = 264
  Top = 97
  Width = 735
  Height = 576
  Caption = 'Cadastro de Clientes / Colaboradores'
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    Top = 484
    Width = 719
  end
  inherited MMJPanel2: TMMJPanel
    Width = 719
    Height = 484
    Align = alClient
    inherited Label1: TLabel
      Top = -74
      Width = 27
      Caption = '...'
    end
    inherited Label2: TLabel
      Top = -73
      Width = 27
      Caption = '...'
    end
    object grp1: TGroupBox
      Left = 0
      Top = 87
      Width = 718
      Height = 49
      Caption = 'Documentos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object lblCnpj: TLabel
        Left = 31
        Top = 21
        Width = 26
        Height = 16
        Alignment = taRightJustify
        Caption = 'CPF'
      end
      object lblIE: TLabel
        Left = 273
        Top = 21
        Width = 26
        Height = 16
        Alignment = taRightJustify
        Caption = 'R.G.'
      end
      object lblOrgaoEmissor: TLabel
        Left = 486
        Top = 21
        Width = 90
        Height = 16
        Caption = 'Org'#227'o Emissor'
      end
      object dbedtCNPJ: TDBEdit
        Left = 71
        Top = 18
        Width = 161
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'CNPJ'
        DataSource = DtSrc
        TabOrder = 0
        OnKeyPress = FormKeyPress
      end
      object dbedtINSCESTADUAL: TDBEdit
        Left = 305
        Top = 18
        Width = 154
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'INSCESTADUAL'
        DataSource = DtSrc
        TabOrder = 1
        OnKeyPress = FormKeyPress
      end
      object dbedtRG: TDBEdit
        Left = 585
        Top = 18
        Width = 116
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'RG'
        DataSource = DtSrc
        TabOrder = 2
        OnKeyPress = FormKeyPress
      end
    end
    object grp2: TGroupBox
      Left = -1
      Top = 138
      Width = 719
      Height = 105
      Caption = 'Outras Informa'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object lbl2: TLabel
        Left = 9
        Top = 20
        Width = 123
        Height = 16
        Caption = 'Data de Nascimento'
      end
      object lbl1: TLabel
        Left = 142
        Top = 20
        Width = 92
        Height = 16
        Caption = 'Cargo / Fun'#231#227'o'
      end
      object lbl15: TLabel
        Left = 517
        Top = 79
        Width = 104
        Height = 16
        Caption = 'Valor da Cortesia'
      end
      object lbl16: TLabel
        Left = 232
        Top = 80
        Width = 95
        Height = 16
        Caption = 'Valor Consumo '
      end
      object lbl17: TLabel
        Left = 577
        Top = 40
        Width = 44
        Height = 16
        Caption = 'C'#243'digo'
      end
      object dbedtDATANASC: TDBEdit
        Left = 9
        Top = 37
        Width = 128
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'DATANASC'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 0
        OnKeyPress = FormKeyPress
      end
      object dbcbbCARGOFUNCAO: TDBComboBox
        Left = 142
        Top = 37
        Width = 215
        Height = 24
        BevelKind = bkFlat
        DataField = 'CARGOFUNCAO'
        DataSource = DtSrc
        ItemHeight = 16
        TabOrder = 1
      end
      object chk1: TCheckBox
        Left = 11
        Top = 80
        Width = 212
        Height = 17
        Caption = 'Bloqueado para Consumo ?'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object chk2: TCheckBox
        Left = 420
        Top = 80
        Width = 90
        Height = 17
        Caption = 'Cortesia ?'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object JvDBCalcEdit3: TJvDBCalcEdit
        Left = 630
        Top = 74
        Width = 74
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        ShowButton = False
        TabOrder = 4
        DecimalPlacesAlwaysShown = False
        DataField = 'VALOR_CORTESIA'
        DataSource = DtSrc
      end
      object JvDBCalcEdit1: TJvDBCalcEdit
        Left = 332
        Top = 75
        Width = 75
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        ShowButton = False
        TabOrder = 5
        DecimalPlacesAlwaysShown = False
        DataField = 'VALOR_CONSUMO'
        DataSource = DtSrc
      end
      object chk3: TCheckBox
        Left = 370
        Top = 40
        Width = 200
        Height = 17
        Caption = 'Fornec. de M'#227'o de Obra ?'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object dbedtRG1: TDBEdit
        Left = 630
        Top = 34
        Width = 74
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'CODFORNECEDOR'
        DataSource = DtSrc
        TabOrder = 7
        OnKeyPress = FormKeyPress
      end
    end
    object grp3: TGroupBox
      Left = 0
      Top = 245
      Width = 718
      Height = 235
      Align = alCustom
      Caption = 'Endere'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object lbl3: TLabel
        Left = 10
        Top = 19
        Width = 79
        Height = 16
        Caption = 'Logradouro .:'
      end
      object lbl4: TLabel
        Left = 585
        Top = 12
        Width = 54
        Height = 16
        Caption = 'N'#250'mero.:'
      end
      object lbl5: TLabel
        Left = 10
        Top = 65
        Width = 42
        Height = 16
        Caption = 'Bairro.:'
      end
      object lbl6: TLabel
        Left = 377
        Top = 63
        Width = 90
        Height = 16
        Caption = 'Complemento.:'
      end
      object lbl7: TLabel
        Left = 10
        Top = 111
        Width = 50
        Height = 16
        Caption = 'Cidade.:'
      end
      object lbl8: TLabel
        Left = 402
        Top = 111
        Width = 24
        Height = 16
        Caption = 'UF.:'
      end
      object lbl9: TLabel
        Left = 448
        Top = 111
        Width = 31
        Height = 16
        Caption = 'Cep.:'
      end
      object lbl10: TLabel
        Left = 579
        Top = 111
        Width = 68
        Height = 16
        Caption = 'C'#243'd. IBGE.:'
      end
      object lbl11: TLabel
        Left = 11
        Top = 167
        Width = 37
        Height = 16
        Caption = 'Fone :'
      end
      object lbl12: TLabel
        Left = 10
        Top = 207
        Width = 40
        Height = 16
        Caption = 'Email.:'
      end
      object lbl13: TLabel
        Left = 238
        Top = 167
        Width = 34
        Height = 16
        Caption = 'Fone:'
      end
      object lbl14: TLabel
        Left = 489
        Top = 167
        Width = 37
        Height = 16
        Caption = 'Fone :'
      end
      object btn1: TBitBtn
        Left = 369
        Top = 129
        Width = 27
        Height = 25
        Caption = '...'
        TabOrder = 15
      end
      object dbedtLOGRADOURO: TDBEdit
        Left = 10
        Top = 36
        Width = 566
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'LOGRADOURO'
        TabOrder = 0
        OnKeyPress = FormKeyPress
      end
      object dbedtNUMERO: TDBEdit
        Left = 585
        Top = 36
        Width = 114
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'NUMERO'
        TabOrder = 1
        OnKeyPress = FormKeyPress
      end
      object dbedtBAIRRO: TDBEdit
        Left = 9
        Top = 82
        Width = 360
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'BAIRRO'
        TabOrder = 2
        OnKeyPress = FormKeyPress
      end
      object dbedtCOMPLEMENTO: TDBEdit
        Left = 377
        Top = 82
        Width = 322
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'COMPLEMENTO'
        TabOrder = 3
        OnKeyPress = FormKeyPress
      end
      object dbedtCIDADE: TDBEdit
        Left = 8
        Top = 130
        Width = 360
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'CIDADE'
        TabOrder = 4
        OnKeyPress = FormKeyPress
      end
      object dbedtUF: TDBEdit
        Left = 403
        Top = 130
        Width = 32
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'UF'
        TabOrder = 5
        OnKeyPress = FormKeyPress
      end
      object dbedtCEP: TDBEdit
        Left = 448
        Top = 130
        Width = 123
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'CEP'
        TabOrder = 6
        OnKeyPress = FormKeyPress
      end
      object dbedtCD_IBGE: TDBEdit
        Left = 579
        Top = 130
        Width = 119
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'CD_IBGE'
        TabOrder = 7
        OnKeyPress = FormKeyPress
      end
      object dbedtDDD: TDBEdit
        Left = 57
        Top = 167
        Width = 37
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'DDD'
        TabOrder = 8
        OnKeyPress = FormKeyPress
      end
      object dbedtTELEFONE: TDBEdit
        Left = 96
        Top = 167
        Width = 111
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'TELEFONE'
        TabOrder = 9
        OnKeyPress = FormKeyPress
      end
      object dbedtE_MAIL: TDBEdit
        Left = 56
        Top = 204
        Width = 642
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'E_MAIL'
        TabOrder = 14
        OnKeyPress = FormKeyPress
      end
      object dbedtDDD1: TDBEdit
        Left = 278
        Top = 167
        Width = 36
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'DDD1'
        TabOrder = 10
        OnKeyPress = FormKeyPress
      end
      object dbedtTELEFONE1: TDBEdit
        Left = 323
        Top = 167
        Width = 112
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'TELEFONE1'
        TabOrder = 11
        OnKeyPress = FormKeyPress
      end
      object dbedtDDD2: TDBEdit
        Left = 534
        Top = 167
        Width = 36
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'DDD2'
        TabOrder = 12
        OnKeyPress = FormKeyPress
      end
      object dbedtTELEFONE2: TDBEdit
        Left = 580
        Top = 167
        Width = 118
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'TELEFONE2'
        TabOrder = 13
        OnKeyPress = FormKeyPress
      end
    end
    object grpNome: TGroupBox
      Left = 1
      Top = 1
      Width = 717
      Height = 81
      Align = alTop
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object lblNome: TLabel
        Left = 175
        Top = 22
        Width = 37
        Height = 16
        Caption = 'Nome'
      end
      object lblRazao: TLabel
        Left = 167
        Top = 54
        Width = 47
        Height = 16
        Caption = 'Apelido'
      end
      object dbedtRAZAOSOCIAL: TDBEdit
        Left = 305
        Top = 19
        Width = 407
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'RAZAOSOCIAL'
        DataSource = DtSrc
        TabOrder = 0
        OnKeyPress = FormKeyPress
      end
      object dbedtNOMECLIENTE: TDBEdit
        Left = 217
        Top = 51
        Width = 495
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'NOMECLIENTE'
        DataSource = DtSrc
        TabOrder = 1
        OnKeyPress = FormKeyPress
      end
      object dbedtRAZAOSOCIAL1: TDBEdit
        Left = 217
        Top = 19
        Width = 84
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'COD_CLI'
        DataSource = DtSrc
        TabOrder = 2
        OnKeyPress = FormKeyPress
      end
      object rgTipo: TRadioGroup
        Left = 5
        Top = 16
        Width = 81
        Height = 58
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemIndex = 0
        Items.Strings = (
          'Fisica'
          'Juridica')
        ParentFont = False
        TabOrder = 3
      end
      object rgSitCad: TRadioGroup
        Left = 87
        Top = 16
        Width = 78
        Height = 58
        ItemIndex = 0
        Items.Strings = (
          'Ativo'
          'Inativo')
        TabOrder = 4
      end
    end
  end
  inherited DtSrc: TDataSource
    DataSet = cds_cli
  end
  object sds_cli: TSQLDataSet
    CommandText = 
      'select cli.*'#13#10'        , banc.BANCO'#13#10'        , usu.NOMEUSUARIO '#13#10 +
      'from CLIENTES cli '#13#10'left outer join BANCO banc on banc.CODBANCO=' +
      'cli.CODBANCO '#13#10'left outer join USUARIO usu on usu.CODUSUARIO = c' +
      'li.CODUSUARIO '#13#10'where CODCLIENTE=:pCODCLIENTE'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODCLIENTE'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 352
    Top = 8
    object sds_cliCODICLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '00000'
    end
    object sds_cliNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object sds_cliRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object sds_cliCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_cliTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_cliCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sds_cliCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object sds_cliINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 24
    end
    object sds_cliRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sds_cliSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_cliREGIAO: TSmallintField
      FieldName = 'REGIAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_cliLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_cliCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_cliSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_cliHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_cliPRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliPRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliDATANASC: TDateField
      FieldName = 'DATANASC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_cliOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sds_cliBANCO: TStringField
      FieldName = 'BANCO'
      ProviderFlags = []
      Size = 18
    end
    object sds_cliNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      ProviderFlags = []
      Size = 30
    end
    object sds_cliTEM_IE: TStringField
      FieldName = 'TEM_IE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_cliDATARESC: TDateField
      FieldName = 'DATARESC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_cliSEXO: TStringField
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_cliFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_cliGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_cliCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object sds_cliEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object sds_cliDATAREINC: TDateField
      FieldName = 'DATAREINC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_cliGERAENV: TStringField
      FieldName = 'GERAENV'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_cliGERABOL: TStringField
      FieldName = 'GERABOL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_cliEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_cliDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object sds_cliSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object sds_cliRA: TStringField
      FieldName = 'RA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_cliCURSO: TStringField
      FieldName = 'CURSO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_cliIP: TStringField
      FieldName = 'IP'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_cliN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_cliMAC: TStringField
      FieldName = 'MAC'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_cliMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_cliBANDA_UPLOAD: TStringField
      FieldName = 'BANDA_UPLOAD'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_cliBANDA_DOWLOAD: TStringField
      FieldName = 'BANDA_DOWLOAD'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_cliTORRE_CONECCAO: TStringField
      FieldName = 'TORRE_CONECCAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_cliCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliMENSALIDADE: TFloatField
      FieldName = 'MENSALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliPAI: TStringField
      FieldName = 'PAI'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_cliLOCALTRABALUNO: TStringField
      FieldName = 'LOCALTRABALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_cliDIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_cliDIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_cliTELTRABALUNO: TStringField
      FieldName = 'TELTRABALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_cliDATA_MATRICULA: TSQLTimeStampField
      FieldName = 'DATA_MATRICULA'
    end
    object sds_cliSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 2
    end
    object sds_cliCOD_TRANPORTADORA: TIntegerField
      FieldName = 'COD_TRANPORTADORA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliCODRESPONSAVEL: TIntegerField
      FieldName = 'CODRESPONSAVEL'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliCFOP: TStringField
      FieldName = 'CFOP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 4
    end
    object sds_cliCOD_CLI: TStringField
      FieldName = 'COD_CLI'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_cliBLOQUEADO: TStringField
      FieldName = 'BLOQUEADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_cliCORTESIA: TStringField
      FieldName = 'CORTESIA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_cliVALOR_CONSUMO: TFloatField
      FieldName = 'VALOR_CONSUMO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliVALOR_CORTESIA: TFloatField
      FieldName = 'VALOR_CORTESIA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliE_FORNECEDOR: TStringField
      FieldName = 'E_FORNECEDOR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_cliCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliCARGOFUNCAO: TStringField
      FieldName = 'CARGOFUNCAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object dsp_cli: TDataSetProvider
    DataSet = sds_cli
    UpdateMode = upWhereKeyOnly
    Left = 384
    Top = 8
  end
  object cds_cli: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODCLIENTE'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_cli'
    Left = 416
    Top = 8
    object cds_cliCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      DisplayFormat = '0000000'
    end
    object cds_cliNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object cds_cliRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object cds_cliCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_cliTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_cliCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cds_cliCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object cds_cliINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 24
    end
    object cds_cliRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cds_cliSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_cliREGIAO: TSmallintField
      FieldName = 'REGIAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_cliLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_cliDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_cliCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_cliSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_cliHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_cliPRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliPRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliDATANASC: TDateField
      FieldName = 'DATANASC'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/0000;1;_'
    end
    object cds_cliCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_cliOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cds_cliBANCO: TStringField
      FieldName = 'BANCO'
      ProviderFlags = []
      Size = 18
    end
    object cds_cliNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      ProviderFlags = []
      Size = 30
    end
    object cds_cliTEM_IE: TStringField
      FieldName = 'TEM_IE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_cliDATARESC: TDateField
      FieldName = 'DATARESC'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/0000;1;_'
    end
    object cds_cliNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_cliSEXO: TStringField
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_cliFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_cliGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_cliCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object cds_cliEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object cds_cliDATAREINC: TDateField
      FieldName = 'DATAREINC'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/0000;1;_'
    end
    object cds_cliGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_cliGERAENV: TStringField
      FieldName = 'GERAENV'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_cliGERABOL: TStringField
      FieldName = 'GERABOL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_cliEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_cliDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/0000;1;_'
    end
    object cds_cliSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cds_cliSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cds_cliRA: TStringField
      FieldName = 'RA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_cliCURSO: TStringField
      FieldName = 'CURSO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_cliIP: TStringField
      FieldName = 'IP'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_cliN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_cliMAC: TStringField
      FieldName = 'MAC'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_cliMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_cliBANDA_UPLOAD: TStringField
      FieldName = 'BANDA_UPLOAD'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_cliBANDA_DOWLOAD: TStringField
      FieldName = 'BANDA_DOWLOAD'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_cliTORRE_CONECCAO: TStringField
      FieldName = 'TORRE_CONECCAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_cliCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliMENSALIDADE: TFloatField
      FieldName = 'MENSALIDADE'
    end
    object cds_cliPAI: TStringField
      FieldName = 'PAI'
      Size = 30
    end
    object cds_cliLOCALTRABALUNO: TStringField
      FieldName = 'LOCALTRABALUNO'
      Size = 30
    end
    object cds_cliDIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_cliDIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_cliTELTRABALUNO: TStringField
      FieldName = 'TELTRABALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_cliDATA_MATRICULA: TSQLTimeStampField
      FieldName = 'DATA_MATRICULA'
      EditMask = '!99/99/0000;1;_'
    end
    object cds_cliSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 2
    end
    object cds_cliCOD_TRANPORTADORA: TIntegerField
      FieldName = 'COD_TRANPORTADORA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliCODRESPONSAVEL: TIntegerField
      FieldName = 'CODRESPONSAVEL'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliCFOP: TStringField
      FieldName = 'CFOP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 4
    end
    object cds_cliCOD_CLI: TStringField
      FieldName = 'COD_CLI'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_cliBLOQUEADO: TStringField
      FieldName = 'BLOQUEADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_cliCORTESIA: TStringField
      FieldName = 'CORTESIA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_cliVALOR_CONSUMO: TFloatField
      FieldName = 'VALOR_CONSUMO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliVALOR_CORTESIA: TFloatField
      FieldName = 'VALOR_CORTESIA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliE_FORNECEDOR: TStringField
      FieldName = 'E_FORNECEDOR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_cliCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliCARGOFUNCAO: TStringField
      FieldName = 'CARGOFUNCAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object dsDtsrc_e: TDataSource
    DataSet = cds_CliEnd
    Left = 512
    Top = 272
  end
  object cds_CliEnd: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCli'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_CliEnd'
    Left = 471
    Top = 270
    object cds_CliEndLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object cds_CliEndNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object cds_CliEndBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cds_CliEndCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cds_CliEndUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cds_CliEndCODENDERECO: TIntegerField
      FieldName = 'CODENDERECO'
      Required = True
    end
    object cds_CliEndCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object cds_CliEndCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object cds_CliEndCEP: TStringField
      FieldName = 'CEP'
      EditMask = '00000\-999;1;_'
      Size = 10
    end
    object cds_CliEndTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 9
    end
    object cds_CliEndTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 9
    end
    object cds_CliEndTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 9
    end
    object cds_CliEndFAX: TStringField
      FieldName = 'FAX'
      Size = 9
    end
    object cds_CliEndE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 100
    end
    object cds_CliEndRAMAL: TStringField
      FieldName = 'RAMAL'
      Size = 5
    end
    object cds_CliEndTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
      Required = True
    end
    object cds_CliEndDADOSADICIONAIS: TStringField
      FieldName = 'DADOSADICIONAIS'
      Size = 200
    end
    object cds_CliEndDDD: TStringField
      FieldName = 'DDD'
      Size = 3
    end
    object cds_CliEndDDD1: TStringField
      FieldName = 'DDD1'
      Size = 3
    end
    object cds_CliEndDDD2: TStringField
      FieldName = 'DDD2'
      Size = 3
    end
    object cds_CliEndDDD3: TStringField
      FieldName = 'DDD3'
      Size = 3
    end
    object cds_CliEndCD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      Size = 10
    end
    object cds_CliEndPAIS: TStringField
      FieldName = 'PAIS'
      Size = 60
    end
  end
  object dsp_CliEnd: TDataSetProvider
    DataSet = sds_CliEnd
    UpdateMode = upWhereKeyOnly
    Left = 439
    Top = 271
  end
  object sds_CliEnd: TSQLDataSet
    CommandText = 'select * from ENDERECOCLIENTE where CODCLIENTE = :pCli'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCli'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 407
    Top = 271
    object sds_CliEndLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object sds_CliEndNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object sds_CliEndBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sds_CliEndCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sds_CliEndUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object sds_CliEndCODENDERECO: TIntegerField
      FieldName = 'CODENDERECO'
      Required = True
    end
    object sds_CliEndCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object sds_CliEndCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object sds_CliEndCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sds_CliEndTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 9
    end
    object sds_CliEndTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 9
    end
    object sds_CliEndTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 9
    end
    object sds_CliEndFAX: TStringField
      FieldName = 'FAX'
      Size = 9
    end
    object sds_CliEndE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 100
    end
    object sds_CliEndRAMAL: TStringField
      FieldName = 'RAMAL'
      Size = 5
    end
    object sds_CliEndTIPOEND: TSmallintField
      FieldName = 'TIPOEND'
      Required = True
    end
    object sds_CliEndDADOSADICIONAIS: TStringField
      FieldName = 'DADOSADICIONAIS'
      Size = 200
    end
    object sds_CliEndDDD: TStringField
      FieldName = 'DDD'
      Size = 3
    end
    object sds_CliEndDDD1: TStringField
      FieldName = 'DDD1'
      Size = 3
    end
    object sds_CliEndDDD2: TStringField
      FieldName = 'DDD2'
      Size = 3
    end
    object sds_CliEndDDD3: TStringField
      FieldName = 'DDD3'
      Size = 3
    end
    object sds_CliEndCD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      Size = 10
    end
    object sds_CliEndPAIS: TStringField
      FieldName = 'PAIS'
      Size = 60
    end
  end
end
