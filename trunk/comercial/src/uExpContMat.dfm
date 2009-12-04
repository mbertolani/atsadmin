object fExpContMat: TfExpContMat
  Left = 188
  Top = 151
<<<<<<< .mine
  Width = 624
  Height = 552
  BorderIcons = [biSystemMenu]
=======
  Width = 263
  Height = 253
>>>>>>> .r36
  Caption = 'Export'#231#227'o para o ContMatic'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
<<<<<<< .mine
  object MMJPanel1: TMMJPanel
    Left = 0
    Top = 0
    Width = 616
    Height = 108
    Align = alTop
=======
  object Label2: TLabel
    Left = 138
    Top = 72
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
    Left = 21
    Top = 72
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
    Left = 83
    Top = 131
    Width = 73
    Height = 25
    Caption = 'Gerar Arquivo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
>>>>>>> .r36
    TabOrder = 0
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clTeal
    Background.EndColor = clSilver
    Background.FillType = GradUpDown
    object Label1: TLabel
      Left = 13
      Top = 58
      Width = 51
      Height = 13
      Caption = 'Data Inicio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 172
      Top = 57
      Width = 42
      Height = 13
      Caption = 'Data Fim'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 14
      Top = 15
      Width = 159
      Height = 13
      Caption = 'Local onde sera gerado o arquivo'
      Transparent = True
    end
    object Label4: TLabel
      Left = 334
      Top = 62
      Width = 58
      Height = 16
      Caption = 'Processo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object dxButton1: TdxButton
      Left = 202
      Top = 31
      Width = 59
      Height = 22
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = dxButton1Click
      Caption = 'Localizar'
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 12
      Top = 31
      Width = 190
      Height = 21
      TabOrder = 1
      Text = 'C:\Home\Atsadmin\'
    end
    object JvDateEdit1: TJvDateEdit
      Left = 12
      Top = 75
      Width = 89
      Height = 21
      TabOrder = 2
    end
    object JvDateEdit2: TJvDateEdit
      Left = 170
      Top = 75
      Width = 89
      Height = 21
      TabOrder = 3
    end
    object JvProgressBar1: TJvProgressBar
      Left = 333
      Top = 79
      Width = 274
      Height = 17
      TabOrder = 4
    end
    object BitBtn1: TBitBtn
      Left = 334
      Top = 9
      Width = 106
      Height = 23
      Caption = 'Pesquisa'
      TabOrder = 5
      OnClick = BitBtn1Click
    end
    object BitBtn3: TBitBtn
      Left = 497
      Top = 8
      Width = 106
      Height = 23
      Caption = 'Selecionar Todos'
      TabOrder = 6
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 497
      Top = 32
      Width = 106
      Height = 23
      Caption = 'Desmarcar Todos'
      TabOrder = 7
      OnClick = BitBtn4Click
    end
    object Button1: TBitBtn
      Left = 334
      Top = 33
      Width = 106
      Height = 23
      Caption = 'Gerar Arquivo'
      Enabled = False
      TabOrder = 8
      OnClick = Button1Click
    end
  end
<<<<<<< .mine
  object MMJPanel2: TMMJPanel
    Left = 0
    Top = 108
    Width = 616
    Height = 410
    Align = alClient
=======
  object JvProgressBar1: TJvProgressBar
    Left = 15
    Top = 174
    Width = 210
    Height = 17
>>>>>>> .r36
    TabOrder = 1
<<<<<<< .mine
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clTeal
    Background.EndColor = clSilver
    Background.FillType = GradUpDown
    object JvDBGrid1: TJvDBGrid
      Left = 1
      Top = 1
      Width = 614
      Height = 408
      Align = alClient
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = JvDBGrid1CellClick
      OnColEnter = JvDBGrid1ColEnter
      OnDrawColumnCell = JvDBGrid1DrawColumnCell
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
          FieldName = 'SELECIONOU'
          Title.Caption = 'SEL.'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOTASERIE'
          Title.Caption = 'Nota F.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTAEMISSAO'
          Title.Caption = 'Emiss'#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CFOP'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODCLIENTE'
          Title.Caption = 'C'#243'digo'
          Width = 39
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RAZAOSOCIAL'
          Title.Caption = 'Raz'#227'o Social'
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CNPJ_CPF'
          Title.Caption = 'CNPJ / CPF'
          Width = 122
          Visible = True
        end>
    end
=======
  end
  object JvDateEdit1: TJvDateEdit
    Left = 20
    Top = 89
    Width = 89
    Height = 21
    TabOrder = 2
  end
  object JvDateEdit2: TJvDateEdit
    Left = 135
    Top = 90
    Width = 89
    Height = 21
    TabOrder = 3
  end
  object Edit1: TEdit
    Left = 20
    Top = 39
    Width = 136
    Height = 21
    TabOrder = 4
    Text = 'C:\Home\Atsadmin\'
  end
  object dxButton1: TdxButton
    Left = 162
    Top = 39
    Width = 59
    Height = 22
    About = 'Design eXperience. '#169' 2002 M. Hoffmann'
    Version = '1.0.2e'
    OnClick = dxButton1Click
    Caption = 'Localizar'
    TabOrder = 5
>>>>>>> .r36
  end
  object SaveDialog1: TSaveDialog
    InitialDir = 'C:\Home\Atsadmin'
<<<<<<< .mine
    Left = 154
    Top = 301
=======
    Left = 210
    Top = 37
>>>>>>> .r36
  end
  object gbCobranca1: TgbCobranca
    NumeroArquivo = 0
    LayoutArquivo = laCNAB400
    TipoMovimento = tmRetorno
<<<<<<< .mine
    Left = 186
    Top = 302
=======
    Left = 210
    Top = 70
>>>>>>> .r36
  end
  object OpenDialog1: TOpenDialog
<<<<<<< .mine
    Left = 220
    Top = 301
=======
    Left = 220
    Top = 101
>>>>>>> .r36
  end
  object VCLReport1: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
<<<<<<< .mine
    Left = 304
    Top = 304
=======
    Left = 8
>>>>>>> .r36
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
    Left = 272
    Top = 304
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
    Left = 64
    Top = 184
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
    Left = 32
    Top = 184
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
    Top = 184
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
    Left = 166
    Top = 144
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
    Left = 198
    Top = 184
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
    Left = 206
    Top = 144
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
<<<<<<< .mine
    Left = 151
    Top = 368
=======
    Left = 47
>>>>>>> .r36
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
<<<<<<< .mine
    Left = 288
    Top = 367
=======
    Left = 152
    Top = 65535
>>>>>>> .r36
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
    Left = 104
    Top = 183
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
    Left = 135
    Top = 183
  end
  object cds_param: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_param'
<<<<<<< .mine
    Left = 351
    Top = 368
=======
    Left = 215
>>>>>>> .r36
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
<<<<<<< .mine
    Left = 319
    Top = 367
=======
    Left = 183
    Top = 65535
>>>>>>> .r36
  end
  object d_2: TDataSetProvider
    DataSet = s_2
<<<<<<< .mine
    Left = 183
    Top = 369
=======
    Left = 79
    Top = 1
>>>>>>> .r36
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
<<<<<<< .mine
    Left = 215
    Top = 368
=======
    Left = 111
>>>>>>> .r36
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
      'NOTASERIE, endecli.UF, v.VALOR, v.ENTRADA, v.N_PARCELA, nf.SELEC' +
      'IONOU '#13#10'from NOTAFISCAL nf '#13#10'inner join CLIENTES cl on cl.CODCLI' +
      'ENTE = nf.CODCLIENTE'#13#10'inner join enderecocliente endecli on ende' +
      'cli.CODCLIENTE = cl.CODCLIENTE'#13#10'inner join VENDA v on v.CODVENDA' +
      ' = nf.CODVENDA'#13#10'where DTAEMISSAO between :dta1 and :dta2 and end' +
      'ecli.TIPOEND = 0'#13#10'order by NOTASERIE'
    MaxBlobSize = -1
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
    SQLConnection = DM.sqlsisAdimin
    Top = 152
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
    object sdsNFSELECIONOU: TStringField
      FieldName = 'SELECIONOU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object dspNF: TDataSetProvider
    DataSet = sdsNF
    Left = 32
    Top = 152
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
    Left = 64
    Top = 152
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
    object cdsNFSELECIONOU: TStringField
      FieldName = 'SELECIONOU'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
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
    Left = 167
    Top = 183
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
<<<<<<< .mine
  object DataSource1: TDataSource
    DataSet = cdsNF
    Left = 320
    Top = 248
  end
  object ImageList1: TImageList
    Left = 474
    Top = 304
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848284008482840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008482
      84003CBA00003CBA000084828400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002C07
      AD00342176000000000000000000000000000000000000000000000000000000
      0000C2C2EC002104860000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003CBA
      00003CBA00003CBA00003CBA0000848284000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002400
      C3003204C800787B8F0000000000000000000000000000000000000000003A1F
      A0001E00A5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848284003CBA
      00003CBA00003CBA00003CBA00003CBA00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007565
      CB002400BE00271286009499A8000000000000000000000000008168DB002A08
      AD00A39ADE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000848284003CBA00003CBA
      000000F055003CBA00003CBA00003CBA00008482840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002600B70038219900BDC3C40000000000370CAF002A06AD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003CBA00003CBA000000F0
      55000000000000F055003CBA00003CBA00008482840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006349C7002500B2003C3387007257D6003107AE00B1A4E2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000F055003CBA00000000
      0000000000000000000000F055003CBA00003CBA000084828400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002200DB002901D40099A2B200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000F055000000
      000000000000000000000000000000F055003CBA00003CBA0000848284000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007E66DF002902D3002C00DF00352E7400909597000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003CBA00003CBA00003CBA00008482
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000002D0CAA002D04B10000000000000000003710AD00310F9E006162
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000F055003CBA00003CBA00003CBA
      0000848284000000000000000000000000000000000000000000000000000000
      00007C67DF002603B5007566C2000000000000000000000000005234B8002F14
      A100464A79000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000F055003CBA00003CBA
      00003CBA00000000000000000000000000000000000000000000000000002C0A
      AF002D04BF00C4C1F3000000000000000000000000000000000000000000B19C
      F7001B0097000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000F055003CBA
      00003CBA00008482840000000000000000000000000000000000846BE3002D00
      D1003D24AA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000F0
      55003CBA000084828400000000000000000000000000000000003D21B900917F
      DE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000F055003CBA000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000F3FFFFFF00000000
      E1FFE7F300000000E0FFE3E700000000C0FFE1C700000000807FF89F00000000
      887FF81F000000009C3FFE3F00000000DE1FFC1F00000000FF0FF98F00000000
      FF07F1C700000000FF87E3E700000000FFC3C7FF00000000FFE3CFFF00000000
      FFF3FFFF00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object ImageList2: TImageList
    Left = 544
    Top = 392
    Bitmap = {
      494C010105000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6F6
      F600F7F7F700EDEDED00EDEDED00EDEDED00EDEDED00EFEDEC00F7F7F700FBFB
      FB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003644
      76002B4DB200A3562200A3562200A3562200A3562200A3562200A35622008464
      6300EEEEEE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002A7B
      D9002A7BD900A3562200C58E6E00C58E6E00C58E6E00C58E6E00AD797200C58E
      6E00846463000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002A7B
      D90036447600A3562200C7A29700C7A29700C7A29700C58E6E00C58E6E00C58E
      6E00A3562200EEEEEE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E9E9E900E7E7E700E7E7
      E700E9E9E900E7E7E700A3562200C58E6E00E0B99000A3562200F39C9A00C58E
      6E00C58E6E00EEEEEE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002B4DB200364476002B4DB200A356
      2200A3562200A3562200A3562200C58E6E00EDCD9D00C58E6E00C58E6E00AD79
      7200A35622000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000364476002A7BD9002A7BD900B272
      4F00B2724F00B2724F00A3562200B2724F00E0B99000B2724F00C58E6E00B272
      4F00A35622000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000626384002A7BD90036447600C58E
      6E00C58E6E00C58E6E00A3562200B2724F0036447600364476009E595900A356
      2200BBBAB9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003866BB00626384003866BB00B272
      4F00B2724F00B2724F009874700017226A0021409F0017226A0008090A002B2D
      2E00404243000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000264F5C0021409F002B4DB2002B4DB20017226A000809
      0A0008090A00EDEDED0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000364476003E58CC003866BB003E58CC002B4DB2002B2D
      2E0008090A00C7C5C40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002E5F83002A7BD9002A7BD9002A7BD9003866BB002B2D
      2E002B2D2E00C7C5C40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000364476002A7BD9002B4DB200264F5C00404243004042
      4300404243000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000505356002B2D2E004042430065656500656565005053
      56002B2D2E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000050535600AD9E9700A0A0A000817E7D004042
      4300E1E0E0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000817E7D008C888600CBC9C8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000048734200487342004873
      42004873420048734200487342004873420048734200487342003C6D91006263
      840054839F00F4F4F40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000005B7000005B7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005460370054AB570054AB570054AB
      570054AB570054AB570054AB570054AB570054AB5700487342003FA6F4003FA6
      F4003C6D9100F3F3F3000000000000000000000000000005B7000005B7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000005B7000005B700000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000F6FFF2000000000000000000000000000000
      0000000000000000000000000000000000004873420062BE6D0054AB570054AB
      5700A4CFA200A4CFA200A4CFA200A4CFA200A4CFA200487342003C6D91003FA6
      F4003C6D9100EBEBEB000000000000000000000000000005B7000005B7000005
      B700000000000000000000000000000000000000000000000000000000000000
      00000005B7000005B70000000000000000000000000099A8AC0000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000178F2A0018742500C6C9C70000000000000000000000
      00000000000000000000000000000000000054AB570054AB570054AB5700C7D6
      B90048734200487342004873420048734200487342004873420054839F003C6D
      910054839F00EBEBEB000000000000000000000000000005B7000005B6000005
      B7000005B7000000000000000000000000000000000000000000000000000005
      B7000005B7000000000000000000000000000000000099A8AC0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D8E9EC00FFFFFF0000000000000000000000000000000000000000000000
      000000000000358F4E00009607000087050058A56B0000000000000000000000
      00000000000000000000000000000000000054AB570054AB5700A4CFA2004873
      4200C7D6B900C7D6B90062BE6D0062BE6D0048734200EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00E9E9E900F4F4F400F9F9F90000000000000000000006D7000005
      BA000005B7000005B700000000000000000000000000000000000005B7000005
      B700000000000000000000000000000000000000000099A8AC0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D8E9EC00FFFFFF0000000000000000000000000000000000000000000000
      000088B79D001483330000840100008C0700078A230000000000000000000000
      00000000000000000000000000000000000054AB570054AB570062BE6D0062BE
      6D00C7D6B900C7D6B90062BE6D0062BE6D004873420048734200487342004873
      4200487342003C6D91002E5F830054839F000000000000000000000000000000
      00000005B7000005B7000005B600000000000005B6000005B7000005B7000000
      0000000000000000000000000000000000000000000099A8AC0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D8E9EC00FFFFFF00000000000000000000000000000000000000000088B7
      9D0014833300008401000000000045AD58000074070077AF8400000000000000
      0000000000000000000000000000000000004873420054AB570062BE6D0054AB
      5700C7D6B900FAF7ED0062BE6D0062BE6D004873420054AB570054AB570054AB
      5700487342003FA6F4003FA6F4002E5F83000000000000000000000000000000
      0000000000000005B6000006C7000006C7000006CE000005B400000000000000
      0000000000000000000000000000000000000000000099A8AC0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D8E9EC00FFFFFF0000000000000000000000000000000000000000002163
      320014712C00000000000000000000000000238B2C002B713C00000000000000
      000000000000000000000000000000000000000000004873420054AB57008A99
      7F00ACBACF00ACBACF0062BE6D0062BE6D004873420096B97500A4CFA200A4CF
      A200487342002E5F83003FA6F4002E5F83000000000000000000000000000000
      000000000000000000000006C1000005C1000006DA0000000000000000000000
      0000000000000000000000000000000000000000000099A8AC0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D8E9EC00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000088060040A756000000
      0000000000000000000000000000000000000000000000000000264F5C002793
      D5002A7BD9002F89BA0054839F00487342000000000098B09500487342004873
      42004873420054839F002E5F830054839F000000000000000000000000000000
      0000000000000005B6000006D7000006CE000006DA000006E900000000000000
      0000000000000000000000000000000000000000000099A8AC0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D8E9EC00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000148F2F001C7E32008FCD
      9F000000000000000000000000000000000000000000000000002A7BD9002E91
      F2002E91F2002E91F2002A7BD900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000006E5000006DA000006D30000000000000000000006E5000006EF000000
      0000000000000000000000000000000000000000000099A8AC0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D8E9EC00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000148F2F001C7E
      32008FCD9F0000000000000000000000000000000000000000003FA6F4003FA6
      F4003FA6F4003FA6F4003FA6F4006D8FB2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000006
      F8000006DA000006EF00000000000000000000000000000000000006F8000006
      F600000000000000000000000000000000000000000099A8AC0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D8E9EC00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000148F
      2F001C7E32008FCD9F000000000000000000000000002F89BA004FB6F7004FB6
      F7004FB6F7004FB6F7004FB6F7004898C300F6F6F60000000000000000000000
      00000000000000000000000000000000000000000000000000000006F6000006
      F6000006F8000000000000000000000000000000000000000000000000000006
      F6000006F6000000000000000000000000000000000099A8AC0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D8E9EC00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000148F2F001C7E32008FCD9F0000000000000000002793D5004FB6F7004FB6
      F7004FB6F7004FB6F7004FB6F70069A2BE00EFEFEF0000000000000000000000
      000000000000000000000000000000000000000000000006F6000006F6000006
      F600000000000000000000000000000000000000000000000000000000000000
      0000000000000006F60000000000000000000000000099A8AC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D8E9EC00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000166E2C0019802F0000000000000000002F7DA7003E9DDE003E9D
      DE003E9DDE002D99C7002D99C70069A2BE000000000000000000000000000000
      0000000000000000000000000000000000000006F6000006F6000006F6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099A8AC0099A8AC0099A8
      AC0099A8AC0099A8AC0099A8AC0099A8AC0099A8AC0099A8AC0099A8AC0099A8
      AC0099A8AC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000C8A26000000000000000000000000003E9DDE0093BA
      CF0078CCEE006DB3D5002F89BA00EAF2F5000000000000000000000000000000
      0000000000000000000000000000000000000006F6000006F600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000D7B2200000000000000000054839F006DB3
      D5009AC8DD0069A2BE00C2D8E400000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000E00F000000000000E007000000000000
      E007000000000000E00300000000000080030000000000000007000000000000
      000700000000000000070000000000000007000000000000FC03000000000000
      FC03000000000000FC03000000000000FC07000000000000FC07000000000000
      FE07000000000000FF1F000000000000FFFFFFFFFFFF8003FFFCFFFFFFFF0003
      9FF9C003FEFF00038FF38003FC7F000387E78003F87F0000C3CF8003F07F0000
      F11F8003E23F0000F83F8003E73F8000FC7F8003FF9FC080F83F8003FF8FC1FF
      F19F8003FFC7C0FFE3CF8003FFE3807FC7E78003FFF1807F8FFB8003FFF980FF
      1FFF8007FFFDC0FF3FFFFFFFFFFEC1FF00000000000000000000000000000000
      000000000000}
  end
=======
  object sMenorData: TSQLDataSet
    CommandText = 
      'select MIN(DTAEMISSAO) as MENORDATA '#13#10'from NOTAFISCAL nf '#13#10'inner' +
      ' join CLIENTES cl on cl.CODCLIENTE = nf.CODCLIENTE'#13#10'inner join e' +
      'nderecocliente endecli on endecli.CODCLIENTE = cl.CODCLIENTE'#13#10'wh' +
      'ere (nf.DTAEMISSAO between :dta1 and :dta2)'#13#10'          and ((nf.' +
      'SERIE = :pserie) or (:pserie = '#39'todasasseriesdenotaf'#39'))'#13#10'       ' +
      '   and (endecli.UF = '#39'SP'#39')'#13#10'          and (endecli.TIPOEND = 0)'
    MaxBlobSize = -1
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
      end
      item
        DataType = ftString
        Name = 'pserie'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pserie'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 96
    Top = 144
    object sMenorDataMENORDATA: TDateField
      FieldName = 'MENORDATA'
      ReadOnly = True
    end
  end
  object sMaiorData: TSQLDataSet
    CommandText = 
      'select MAX(DTAEMISSAO) as MAIORDATA '#13#10'from NOTAFISCAL nf '#13#10'inner' +
      ' join CLIENTES cl on cl.CODCLIENTE = nf.CODCLIENTE'#13#10'inner join e' +
      'nderecocliente endecli on endecli.CODCLIENTE = cl.CODCLIENTE'#13#10'wh' +
      'ere (nf.DTAEMISSAO between :dta1 and :dta2)'#13#10'          and ((nf.' +
      'SERIE = :pserie) or (:pserie = '#39'todasasseriesdenotaf'#39'))'#13#10'       ' +
      '   and (endecli.UF = '#39'SP'#39')'#13#10'          and (endecli.TIPOEND = 0)'
    MaxBlobSize = -1
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
      end
      item
        DataType = ftString
        Name = 'pserie'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pserie'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 128
    Top = 144
    object sMaiorDataMAIORDATA: TDateField
      FieldName = 'MAIORDATA'
      ReadOnly = True
    end
  end
>>>>>>> .r36
end
