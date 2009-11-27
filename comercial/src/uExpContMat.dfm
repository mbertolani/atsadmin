object fExpContMat: TfExpContMat
  Left = 188
  Top = 151
  Width = 345
  Height = 344
  Caption = 'Export'#231#227'o para o ContMatic'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 186
    Top = 80
    Width = 54
    Height = 16
    Caption = 'Data Fim'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 69
    Top = 80
    Width = 63
    Height = 16
    Caption = 'Data Inicio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Button1: TButton
    Left = 80
    Top = 128
    Width = 41
    Height = 41
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object JvProgressBar1: TJvProgressBar
    Left = 15
    Top = 174
    Width = 274
    Height = 17
    TabOrder = 1
  end
  object JvDateEdit1: TJvDateEdit
    Left = 68
    Top = 97
    Width = 89
    Height = 21
    TabOrder = 2
  end
  object JvDateEdit2: TJvDateEdit
    Left = 183
    Top = 98
    Width = 89
    Height = 21
    TabOrder = 3
  end
  object Edit1: TEdit
    Left = 68
    Top = 47
    Width = 136
    Height = 21
    TabOrder = 4
    Text = 'C:\Home\Atsadmin\'
  end
  object dxButton1: TdxButton
    Left = 210
    Top = 47
    Width = 59
    Height = 22
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Version = '1.0.2e'
    OnClick = dxButton1Click
    Caption = 'Localizar'
    TabOrder = 5
  end
  object SaveDialog1: TSaveDialog
    Filter = '*.txt|*.txt'
    InitialDir = 'C:\Home\Atsadmin'
    Left = 194
    Top = 133
  end
  object gbCobranca1: TgbCobranca
    NumeroArquivo = 0
    LayoutArquivo = laCNAB400
    TipoMovimento = tmRetorno
    Left = 226
    Top = 134
  end
  object OpenDialog1: TOpenDialog
    Left = 260
    Top = 133
  end
  object VCLReport1: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 16
    Top = 88
  end
  object XPMenu1: TXPMenu
    DimLevel = 30
    GrayLevel = 10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Color = clBtnFace
    DrawMenuBar = False
    IconBackColor = clBtnFace
    MenuBarColor = clBtnFace
    SelectColor = clHighlight
    SelectBorderColor = clHighlight
    SelectFontColor = clMenuText
    DisabledColor = clInactiveCaption
    SeparatorColor = clBtnFace
    CheckedColor = clHighlight
    IconWidth = 24
    DrawSelect = True
    UseSystemColors = True
    UseDimColor = False
    OverrideOwnerDraw = False
    Gradient = False
    FlatMenu = False
    AutoDetect = True
    Active = True
    Left = 8
    Top = 120
  end
  object cdsItensNF: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'dspItensNF'
    Left = 80
    Top = 240
    object cdsItensNFCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object cdsItensNFQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object cdsItensNFPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object cdsItensNFDESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      Size = 300
    end
    object cdsItensNFCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object cdsItensNFUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      FixedChar = True
      Size = 2
    end
    object cdsItensNFCST: TStringField
      FieldName = 'CST'
      Size = 5
    end
    object cdsItensNFICMS: TFloatField
      FieldName = 'ICMS'
    end
    object cdsItensNFVLR_BASE: TFloatField
      FieldName = 'VLR_BASE'
      ReadOnly = True
    end
  end
  object dspItensNF: TDataSetProvider
    DataSet = sdsItensNF
    Left = 48
    Top = 240
  end
  object sdsItensNF: TSQLDataSet
    CommandText = 
      'select md.CODPRODUTO,'#13#10'          md.QUANTIDADE,'#13#10'          md.PR' +
      'ECO,'#13#10'          cast(md.DESCPRODUTO as varchar(120) )as DESCPROD' +
      'UTO,'#13#10'          pr.CODPRO,'#13#10'          pr.UNIDADEMEDIDA,'#13#10'       ' +
      '   md.CST,'#13#10'          md.ICMS,'#13#10'          md.VALOR_ICMS,'#13#10'      ' +
      '    md.VLR_BASE,'#13#10'          md.ICMS_SUBST,'#13#10'          md.ICMS_SU' +
      'BSTD'#13#10'from VENDA vd '#13#10'inner join MOVIMENTODETALHE md on'#13#10'md.CODM' +
      'OVIMENTO = vd.CODMOVIMENTO '#13#10'inner join NOTAFISCAL nf on'#13#10'nf.COD' +
      'VENDA = vd.CODVENDA'#13#10'inner join PRODUTOS pr on '#13#10'pr.CODPRODUTO =' +
      ' md.CODPRODUTO'#13#10'where vd.CODVENDA = :id and nf.NATUREZA = 15'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 16
    Top = 240
    object sdsItensNFCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object sdsItensNFQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object sdsItensNFPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object sdsItensNFDESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      Size = 120
    end
    object sdsItensNFCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object sdsItensNFUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      FixedChar = True
      Size = 2
    end
    object sdsItensNFCST: TStringField
      FieldName = 'CST'
      Size = 5
    end
    object sdsItensNFICMS: TFloatField
      FieldName = 'ICMS'
    end
    object sdsItensNFVLR_BASE: TFloatField
      FieldName = 'VLR_BASE'
      ReadOnly = True
    end
  end
  object sMenorData: TSQLDataSet
    CommandText = 'select MIN(DTAEMISSAO) as MENORDATA from NOTAFISCAL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 134
    Top = 200
    object sMenorDataMENORDATA: TDateField
      FieldName = 'MENORDATA'
      ReadOnly = True
    end
  end
  object sMaiorData: TSQLDataSet
    CommandText = 'select MAX(DTAEMISSAO) as MAIORDATA from NOTAFISCAL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 166
    Top = 200
    object sMaiorDataMAIORDATA: TDateField
      FieldName = 'MAIORDATA'
      ReadOnly = True
    end
  end
  object sEmpresa: TSQLDataSet
    CommandText = 'select * from EMPRESA where ccusto = :pcusto'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcusto'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 198
    Top = 200
    object sEmpresaEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Required = True
      Size = 80
    end
    object sEmpresaRAZAO: TStringField
      FieldName = 'RAZAO'
      Required = True
      Size = 80
    end
    object sEmpresaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Required = True
    end
    object sEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object sEmpresaLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 80
    end
    object sEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object sEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object sEmpresaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object sEmpresaCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 9
    end
    object sEmpresaDDD: TStringField
      FieldName = 'DDD'
      FixedChar = True
      Size = 2
    end
    object sEmpresaFONE: TStringField
      FieldName = 'FONE'
      Size = 12
    end
    object sEmpresaFONE_1: TStringField
      FieldName = 'FONE_1'
      Size = 12
    end
    object sEmpresaFONE_2: TStringField
      FieldName = 'FONE_2'
      Size = 12
    end
    object sEmpresaFAX: TStringField
      FieldName = 'FAX'
      Size = 12
    end
    object sEmpresaE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 50
    end
    object sEmpresaWEB: TStringField
      FieldName = 'WEB'
      Size = 50
    end
    object sEmpresaLOGOTIPO: TGraphicField
      FieldName = 'LOGOTIPO'
      BlobType = ftGraphic
    end
    object sEmpresaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object sEmpresaTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sEmpresaIE_RG: TStringField
      FieldName = 'IE_RG'
      Size = 15
    end
    object sEmpresaSLOGAN: TStringField
      FieldName = 'SLOGAN'
      Size = 60
    end
    object sEmpresaOUTRAS_INFO: TStringField
      FieldName = 'OUTRAS_INFO'
      Size = 60
    end
    object sEmpresaCODIGO_CONTA: TIntegerField
      FieldName = 'CODIGO_CONTA'
    end
    object sEmpresaDIVERSOS1: TStringField
      FieldName = 'DIVERSOS1'
      Size = 50
    end
    object sEmpresaDIVERSOS2: TStringField
      FieldName = 'DIVERSOS2'
      Size = 50
    end
    object sEmpresaDIVERSOS3: TStringField
      FieldName = 'DIVERSOS3'
      Size = 50
    end
    object sEmpresaANOLETIVO: TIntegerField
      FieldName = 'ANOLETIVO'
    end
    object sEmpresaMEDIA_ESCOLA: TFloatField
      FieldName = 'MEDIA_ESCOLA'
    end
    object sEmpresaPORTA: TIntegerField
      FieldName = 'PORTA'
    end
    object sEmpresaSMTP: TStringField
      FieldName = 'SMTP'
      Size = 30
    end
    object sEmpresaSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
  end
  object sCFOP: TSQLDataSet
    CommandText = 
      'select CFCOD, '#13#10'cast(CFNOME as varchar (60) )as CFNOME'#13#10'from CFO' +
      'P '#13#10'where CFCOD = :id'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 230
    Top = 200
    object sCFOPCFCOD: TStringField
      FieldName = 'CFCOD'
      Required = True
      Size = 30
    end
    object sCFOPCFNOME: TStringField
      FieldName = 'CFNOME'
      Size = 60
    end
  end
  object sCliente: TSQLDataSet
    CommandText = 
      'select c.CODCLIENTE,'#13#10'           c.NOMECLIENTE,'#13#10'           c.CO' +
      'NTATO,'#13#10'           c.INSCESTADUAL,'#13#10'           cast(c.RAZAOSOCIA' +
      'L as varchar (60) )as RAZAOSOCIAL,'#13#10'           cast(c.CNPJ as va' +
      'rchar (60) )as CNPJ,'#13#10'           cast(e.LOGRADOURO as varchar (6' +
      '0) ) as LOGRADOURO,'#13#10'           cast(e.BAIRRO as varchar (60) ) ' +
      'as BAIRRO, '#13#10'           cast(e.COMPLEMENTO as varchar (60) ) as ' +
      'COMPLEMENTO, '#13#10'           cast(e.CIDADE as varchar (60) ) as CID' +
      'ADE, '#13#10'           e.UF, '#13#10'           e.CEP ,'#13#10'           e.NUMER' +
      'O'#13#10'from CLIENTES c '#13#10'inner join ENDERECOCLIENTE e on'#13#10' e.CODCLIE' +
      'NTE = c.CODCLIENTE '#13#10'where c.CODCLIENTE = :id '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 262
    Top = 200
    object sClienteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object sClienteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object sClienteCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object sClienteINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 24
    end
    object sClienteRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ReadOnly = True
      Required = True
      Size = 60
    end
    object sClienteCNPJ: TStringField
      FieldName = 'CNPJ'
      ReadOnly = True
      Size = 60
    end
    object sClienteLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      ReadOnly = True
      Size = 60
    end
    object sClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ReadOnly = True
      Size = 60
    end
    object sClienteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ReadOnly = True
      Size = 60
    end
    object sClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      ReadOnly = True
      Size = 60
    end
    object sClienteUF: TStringField
      FieldName = 'UF'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object sClienteCEP: TStringField
      FieldName = 'CEP'
      ReadOnly = True
      Size = 10
    end
    object sClienteNUMERO: TStringField
      FieldName = 'NUMERO'
      ReadOnly = True
      Size = 5
    end
  end
  object s_2: TSQLDataSet
    CommandText = 
      'select CODIGO, CONTA, NOME from PLANO where plnCtaRoot(CONTA) = ' +
      ':PCONTADESPESA AND CONSOLIDA = '#39'S'#39
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PCONTADESPESA'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 47
    Top = 8
    object s_2CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object s_2CONTA: TStringField
      FieldName = 'CONTA'
      Required = True
      Size = 15
    end
    object s_2NOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 40
    end
  end
  object sds_param: TSQLDataSet
    CommandText = 'select * from PARAMETRO'
    MaxBlobSize = -1
    Params = <>
    Left = 184
    Top = 7
    object StringField5: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object StringField6: TStringField
      FieldName = 'PARAMETRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object StringField8: TStringField
      FieldName = 'CONFIGURADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_paramDADOS: TStringField
      FieldName = 'DADOS'
      Size = 40
    end
    object sds_paramD1: TStringField
      FieldName = 'D1'
      Size = 30
    end
    object sds_paramD2: TStringField
      FieldName = 'D2'
      Size = 30
    end
    object sds_paramD3: TStringField
      FieldName = 'D3'
      Size = 30
    end
    object sds_paramD4: TStringField
      FieldName = 'D4'
      Size = 30
    end
    object sds_paramD5: TStringField
      FieldName = 'D5'
      Size = 30
    end
    object sds_paramD6: TStringField
      FieldName = 'D6'
      Size = 30
    end
    object sds_paramD7: TStringField
      FieldName = 'D7'
      Size = 30
    end
    object sds_paramD8: TStringField
      FieldName = 'D8'
      Size = 30
    end
    object sds_paramD9: TStringField
      FieldName = 'D9'
      Size = 30
    end
    object sds_paramINSTRUCOES: TStringField
      FieldName = 'INSTRUCOES'
      Size = 200
    end
  end
  object sds_Movimento: TSQLDataSet
    CommandText = 
      'select mov.*'#13#10'        , cli.NOMECLIENTE'#13#10'        , cli.OBS'#13#10'    ' +
      '    , cli.CNPJ'#13#10'        , vei.PLACA'#13#10'        , vei.MARCA_MODELO'#13 +
      #10'        , usu.NOMEUSUARIO'#13#10'        , forn.NOMEFORNECEDOR'#13#10'     ' +
      '   , nat.DESCNATUREZA'#13#10'        , alm.NOME AS ALMOXARIFADO'#13#10'     ' +
      '   , nat.TIPOTITULO'#13#10'        , nat.BAIXAMOVIMENTO '#13#10'from MOVIMEN' +
      'TO mov '#13#10'left outer join CLIENTES cli on cli.CODCLIENTE = mov.CO' +
      'DCLIENTE '#13#10'left outer join VEICULO vei on vei.COD_CLIENTE = mov.' +
      'CODCLIENTE '#13#10'left outer join USUARIO usu on usu.CODUSUARIO = mov' +
      '.CODVENDEDOR '#13#10'left outer join FORNECEDOR forn on forn.CODFORNEC' +
      'EDOR =  mov.CODFORNECEDOR '#13#10'inner join NATUREZAOPERACAO nat on  ' +
      'nat.CODNATUREZA = mov.CODNATUREZA '#13#10'left outer join PLANO alm on' +
      ' alm.CODIGO =  mov.CODALMOXARIFADO where mov.CODMOVIMENTO = :pCO' +
      'DMOV'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODMOV'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 128
    Top = 239
    object sds_MovimentoCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sds_MovimentoDATAMOVIMENTO: TDateField
      FieldName = 'DATAMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_MovimentoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_MovimentoCODNATUREZA: TSmallintField
      FieldName = 'CODNATUREZA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_MovimentoSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_MovimentoCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_MovimentoNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object sds_MovimentoDESCNATUREZA: TStringField
      FieldName = 'DESCNATUREZA'
      ProviderFlags = []
      Size = 30
    end
    object sds_MovimentoALMOXARIFADO: TStringField
      FieldName = 'ALMOXARIFADO'
      ProviderFlags = []
      Size = 30
    end
    object sds_MovimentoCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_MovimentoCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_MovimentoNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object sds_MovimentoCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sds_MovimentoTIPOTITULO: TSmallintField
      FieldName = 'TIPOTITULO'
      ProviderFlags = []
      ReadOnly = True
    end
    object sds_MovimentoDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_MovimentoNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      ProviderFlags = []
      Size = 30
    end
    object sds_MovimentoOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = []
      Size = 200
    end
    object sds_MovimentoPLACA: TStringField
      FieldName = 'PLACA'
      ProviderFlags = []
      Size = 10
    end
    object sds_MovimentoMARCA_MODELO: TStringField
      FieldName = 'MARCA_MODELO'
      ProviderFlags = []
      Size = 60
    end
    object sds_MovimentoCOD_VEICULO: TIntegerField
      FieldName = 'COD_VEICULO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_MovimentoBAIXAMOVIMENTO: TSmallintField
      FieldName = 'BAIXAMOVIMENTO'
      ProviderFlags = []
    end
    object sds_MovimentoCONTROLE: TStringField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_MovimentoCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = []
      Size = 18
    end
  end
  object dsp_Movimento: TDataSetProvider
    DataSet = sds_Movimento
    UpdateMode = upWhereKeyOnly
    Left = 159
    Top = 239
  end
  object cds_param: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_param'
    Left = 247
    Top = 8
    object StringField9: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object StringField10: TStringField
      FieldName = 'PARAMETRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object cds_paramDADOS: TStringField
      FieldName = 'DADOS'
      Size = 40
    end
    object cds_paramD1: TStringField
      FieldName = 'D1'
      Size = 30
    end
    object cds_paramD2: TStringField
      FieldName = 'D2'
      Size = 30
    end
    object cds_paramD3: TStringField
      FieldName = 'D3'
      Size = 30
    end
    object cds_paramD4: TStringField
      FieldName = 'D4'
      Size = 30
    end
    object cds_paramD5: TStringField
      FieldName = 'D5'
      Size = 30
    end
    object cds_paramD6: TStringField
      FieldName = 'D6'
      Size = 30
    end
    object cds_paramD7: TStringField
      FieldName = 'D7'
      Size = 30
    end
    object cds_paramD8: TStringField
      FieldName = 'D8'
      Size = 30
    end
    object cds_paramD9: TStringField
      FieldName = 'D9'
      Size = 30
    end
    object cds_paramINSTRUCOES: TStringField
      FieldName = 'INSTRUCOES'
      Size = 200
    end
    object cds_paramCONFIGURADO: TStringField
      FieldName = 'CONFIGURADO'
      FixedChar = True
      Size = 1
    end
  end
  object dsp_param: TDataSetProvider
    DataSet = sds_param
    UpdateMode = upWhereKeyOnly
    Left = 215
    Top = 7
  end
  object d_2: TDataSetProvider
    DataSet = s_2
    Left = 79
    Top = 9
  end
  object cds_ccusto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PCONTADESPESA'
        ParamType = ptInput
      end>
    ProviderName = 'd_2'
    Left = 111
    Top = 8
    object cds_ccustoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cds_ccustoCONTA: TStringField
      FieldName = 'CONTA'
      Required = True
      Size = 15
    end
    object cds_ccustoNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 40
    end
  end
  object sdsNF: TSQLDataSet
    CommandText = 
      'select  '#13#10'           nf.CFOP,       nf.DTAEMISSAO,      nf.DTASA' +
      'IDA,      nf.CORPONF1,  nf.CORPONF2,   nf.CODCLIENTE,       nf.N' +
      'UMNF,   nf.CODVENDA,   nf.BASE_ICMS,  nf.VALOR_ICMS,  nf.BASE_IC' +
      'MS_SUBST,   '#13#10'           nf.VALOR_ICMS_SUBST,    nf.VALOR_PRODUT' +
      'O,   nf.VALOR_FRETE,    nf.VALOR_SEGURO,    nf.OUTRAS_DESP,     ' +
      'nf.VALOR_IPI,     nf.VALOR_TOTAL_NOTA,    nf.FRETE,     nf.CNPJ_' +
      'CPF,            '#13#10'           cast(nf.NOMETRANSP as varchar (60) ' +
      ')as NOMETRANSP,  nf.INSCRICAOESTADUAL,    cast(nf.END_TRANSP as ' +
      'varchar (60) )as END_TRANSP,'#13#10'           cast(nf.CIDADE_TRANSP a' +
      's varchar (60) )as CIDADE_TRANSP,  nf.UF_TRANSP,    nf.PLACATRAN' +
      'SP,      nf.UF_VEICULO_TRANSP,    nf.QUANTIDADE,  nf.ESPECIE,   ' +
      'nf.MARCA,  '#13#10'           nf.NUMERO,           nf.PESOLIQUIDO,    ' +
      '  nf.PESOBRUTO,   cl.RAZAOSOCIAL,    cl.CNPJ , nf.HORASAIDA, nf.' +
      'NOTASERIE, endecli.UF, v.VALOR, v.ENTRADA, v.N_PARCELA'#13#10'from NOT' +
      'AFISCAL nf '#13#10'inner join CLIENTES cl on cl.CODCLIENTE = nf.CODCLI' +
      'ENTE'#13#10'inner join enderecocliente endecli on endecli.CODCLIENTE =' +
      ' cl.CODCLIENTE'#13#10'inner join VENDA v on v.CODVENDA = nf.CODVENDA'#13#10 +
      'where DTAEMISSAO between :dta1 and :dta2 and endecli.TIPOEND = 0' +
      #13#10'order by NOTASERIE'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'dta1'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'dta2'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 16
    Top = 200
    object sdsNFFRETE: TStringField
      FieldName = 'FRETE'
      FixedChar = True
      Size = 1
    end
    object sdsNFCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object sdsNFNOMETRANSP: TStringField
      FieldName = 'NOMETRANSP'
      Size = 50
    end
    object sdsNFINSCRICAOESTADUAL: TStringField
      FieldName = 'INSCRICAOESTADUAL'
    end
    object sdsNFEND_TRANSP: TStringField
      FieldName = 'END_TRANSP'
      Size = 60
    end
    object sdsNFCIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      Size = 50
    end
    object sdsNFUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      FixedChar = True
      Size = 2
    end
    object sdsNFPLACATRANSP: TStringField
      FieldName = 'PLACATRANSP'
      Size = 8
    end
    object sdsNFUF_VEICULO_TRANSP: TStringField
      FieldName = 'UF_VEICULO_TRANSP'
      FixedChar = True
      Size = 2
    end
    object sdsNFQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object sdsNFESPECIE: TStringField
      FieldName = 'ESPECIE'
    end
    object sdsNFMARCA: TStringField
      FieldName = 'MARCA'
      Size = 10
    end
    object sdsNFNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object sdsNFPESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      Precision = 9
      Size = 2
    end
    object sdsNFPESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      Precision = 9
      Size = 2
    end
    object sdsNFRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object sdsNFCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object sdsNFCFOP: TStringField
      FieldName = 'CFOP'
      Size = 30
    end
    object sdsNFCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object sdsNFNUMNF: TIntegerField
      FieldName = 'NUMNF'
      Required = True
    end
    object sdsNFCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
    object sdsNFBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object sdsNFVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object sdsNFBASE_ICMS_SUBST: TFloatField
      FieldName = 'BASE_ICMS_SUBST'
    end
    object sdsNFVALOR_ICMS_SUBST: TFloatField
      FieldName = 'VALOR_ICMS_SUBST'
    end
    object sdsNFVALOR_PRODUTO: TFloatField
      FieldName = 'VALOR_PRODUTO'
    end
    object sdsNFVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
    end
    object sdsNFVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
    end
    object sdsNFOUTRAS_DESP: TFloatField
      FieldName = 'OUTRAS_DESP'
    end
    object sdsNFVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object sdsNFVALOR_TOTAL_NOTA: TFloatField
      FieldName = 'VALOR_TOTAL_NOTA'
    end
    object sdsNFDTAEMISSAO: TDateField
      FieldName = 'DTAEMISSAO'
    end
    object sdsNFDTASAIDA: TDateField
      FieldName = 'DTASAIDA'
    end
    object sdsNFCORPONF1: TStringField
      FieldName = 'CORPONF1'
      Size = 75
    end
    object sdsNFCORPONF2: TStringField
      FieldName = 'CORPONF2'
      Size = 75
    end
    object sdsNFHORASAIDA: TTimeField
      FieldName = 'HORASAIDA'
      ReadOnly = True
    end
    object sdsNFNOTASERIE: TStringField
      FieldName = 'NOTASERIE'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object sdsNFUF: TStringField
      FieldName = 'UF'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object sdsNFVALOR: TFloatField
      FieldName = 'VALOR'
      ReadOnly = True
    end
    object sdsNFENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ReadOnly = True
    end
    object sdsNFN_PARCELA: TSmallintField
      FieldName = 'N_PARCELA'
      ReadOnly = True
    end
  end
  object dspNF: TDataSetProvider
    DataSet = sdsNF
    Left = 48
    Top = 200
  end
  object cdsNF: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'dta1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dta2'
        ParamType = ptInput
      end>
    ProviderName = 'dspNF'
    Left = 80
    Top = 200
    object cdsNFFRETE: TStringField
      FieldName = 'FRETE'
      FixedChar = True
      Size = 1
    end
    object cdsNFCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsNFNOMETRANSP: TStringField
      FieldName = 'NOMETRANSP'
      Size = 50
    end
    object cdsNFINSCRICAOESTADUAL: TStringField
      FieldName = 'INSCRICAOESTADUAL'
    end
    object cdsNFEND_TRANSP: TStringField
      FieldName = 'END_TRANSP'
      Size = 80
    end
    object cdsNFCIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      Size = 50
    end
    object cdsNFUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      FixedChar = True
      Size = 2
    end
    object cdsNFPLACATRANSP: TStringField
      FieldName = 'PLACATRANSP'
      Size = 8
    end
    object cdsNFUF_VEICULO_TRANSP: TStringField
      FieldName = 'UF_VEICULO_TRANSP'
      FixedChar = True
      Size = 2
    end
    object cdsNFQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object cdsNFESPECIE: TStringField
      FieldName = 'ESPECIE'
    end
    object cdsNFMARCA: TStringField
      FieldName = 'MARCA'
      Size = 10
    end
    object cdsNFNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object cdsNFPESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      Precision = 9
      Size = 2
    end
    object cdsNFPESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      Precision = 9
      Size = 2
    end
    object cdsNFRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object cdsNFCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsNFCFOP: TStringField
      FieldName = 'CFOP'
      Size = 30
    end
    object cdsNFCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsNFNUMNF: TIntegerField
      FieldName = 'NUMNF'
      Required = True
    end
    object cdsNFCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
    object cdsNFBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object cdsNFVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object cdsNFBASE_ICMS_SUBST: TFloatField
      FieldName = 'BASE_ICMS_SUBST'
    end
    object cdsNFVALOR_ICMS_SUBST: TFloatField
      FieldName = 'VALOR_ICMS_SUBST'
    end
    object cdsNFVALOR_PRODUTO: TFloatField
      FieldName = 'VALOR_PRODUTO'
    end
    object cdsNFVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
    end
    object cdsNFVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
    end
    object cdsNFOUTRAS_DESP: TFloatField
      FieldName = 'OUTRAS_DESP'
    end
    object cdsNFVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object cdsNFVALOR_TOTAL_NOTA: TFloatField
      FieldName = 'VALOR_TOTAL_NOTA'
    end
    object cdsNFDTAEMISSAO: TDateField
      FieldName = 'DTAEMISSAO'
    end
    object cdsNFDTASAIDA: TDateField
      FieldName = 'DTASAIDA'
    end
    object cdsNFCORPONF1: TStringField
      FieldName = 'CORPONF1'
      Size = 75
    end
    object cdsNFCORPONF2: TStringField
      FieldName = 'CORPONF2'
      Size = 75
    end
    object cdsNFHORASAIDA: TTimeField
      FieldName = 'HORASAIDA'
      ReadOnly = True
    end
    object cdsNFNOTASERIE: TStringField
      FieldName = 'NOTASERIE'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object cdsNFUF: TStringField
      FieldName = 'UF'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object cdsNFVALOR: TFloatField
      FieldName = 'VALOR'
      ReadOnly = True
    end
    object cdsNFENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ReadOnly = True
    end
    object cdsNFN_PARCELA: TSmallintField
      FieldName = 'N_PARCELA'
      ReadOnly = True
    end
  end
  object cds_Movimento: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODMOV'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_Movimento'
    Left = 191
    Top = 239
    object cds_MovimentoCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_MovimentoDATAMOVIMENTO: TDateField
      FieldName = 'DATAMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      EditMask = '!99/99/00;1;_'
    end
    object cds_MovimentoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cds_MovimentoCODNATUREZA: TSmallintField
      FieldName = 'CODNATUREZA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_MovimentoSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_MovimentoCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_MovimentoNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object cds_MovimentoDESCNATUREZA: TStringField
      FieldName = 'DESCNATUREZA'
      ProviderFlags = []
      Size = 30
    end
    object cds_MovimentoALMOXARIFADO: TStringField
      FieldName = 'ALMOXARIFADO'
      ProviderFlags = []
      Size = 30
    end
    object cds_MovimentoCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cds_MovimentoCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_MovimentoNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object cds_MovimentoCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cds_MovimentoTIPOTITULO: TSmallintField
      FieldName = 'TIPOTITULO'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_MovimentoDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_MovimentoNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      ProviderFlags = []
      Size = 30
    end
    object cds_MovimentoOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = []
      Size = 200
    end
    object cds_MovimentoPLACA: TStringField
      FieldName = 'PLACA'
      ProviderFlags = []
      Size = 10
    end
    object cds_MovimentoMARCA_MODELO: TStringField
      FieldName = 'MARCA_MODELO'
      ProviderFlags = []
      Size = 60
    end
    object cds_MovimentoCOD_VEICULO: TIntegerField
      FieldName = 'COD_VEICULO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_MovimentoBAIXAMOVIMENTO: TSmallintField
      FieldName = 'BAIXAMOVIMENTO'
      ProviderFlags = []
    end
    object cds_MovimentoCONTROLE: TStringField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_MovimentoCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = []
      Size = 18
    end
  end
end
