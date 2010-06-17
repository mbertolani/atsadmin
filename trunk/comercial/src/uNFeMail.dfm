object fNFeMail: TfNFeMail
  Left = 194
  Top = 103
  Width = 402
  Height = 231
  Caption = 'Envio de E-mail NFe'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object MMJPanel1: TMMJPanel
    Left = 0
    Top = 0
    Width = 394
    Height = 204
    Align = alClient
    TabOrder = 0
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clTeal
    Background.EndColor = clSilver
    Background.FillType = GradUpDown
    object Label7: TLabel
      Left = 22
      Top = 14
      Width = 119
      Height = 16
      Caption = 'Centro de Custo :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 20
      Top = 57
      Width = 103
      Height = 16
      Caption = 'C'#243'digo Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 20
      Top = 96
      Width = 49
      Height = 16
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 204
      Top = 96
      Width = 92
      Height = 16
      Caption = 'Cliente Email'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 203
      Top = 14
      Width = 101
      Height = 16
      Caption = 'Assunto Email'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 204
      Top = 57
      Width = 83
      Height = 16
      Caption = 'Email/Login'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object BtnSeleciona: TJvBitBtn
      Left = 45
      Top = 144
      Width = 90
      Height = 33
      Caption = 'Seleciona NFe'
      TabOrder = 0
      OnClick = BtnSelecionaClick
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object btnSair: TJvBitBtn
      Left = 273
      Top = 144
      Width = 90
      Height = 33
      Caption = 'Sair'
      TabOrder = 1
      OnClick = btnSairClick
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object Edit1: TEdit
      Left = 16
      Top = 72
      Width = 177
      Height = 21
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 16
      Top = 112
      Width = 177
      Height = 21
      TabOrder = 3
    end
    object Edit3: TEdit
      Left = 200
      Top = 112
      Width = 177
      Height = 21
      TabOrder = 4
    end
    object Edit5: TEdit
      Left = 201
      Top = 72
      Width = 177
      Height = 21
      TabOrder = 5
    end
    object EdtAssunto: TEdit
      Left = 199
      Top = 32
      Width = 179
      Height = 21
      TabOrder = 6
      Text = 'NF-e'
    end
  end
  object btnEnviar: TJvBitBtn
    Left = 159
    Top = 144
    Width = 89
    Height = 33
    Caption = 'Enviar E-Mail'
    Enabled = False
    TabOrder = 1
    OnClick = btnEnviarClick
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
  end
  object ComboBox1: TComboBox
    Left = 18
    Top = 32
    Width = 175
    Height = 21
    ItemHeight = 13
    TabOrder = 2
  end
  object XMLDocument1: TXMLDocument
    Left = 369
    DOMVendorDesc = 'MSXML'
  end
  object sEmail: TSQLDataSet
    CommandText = 
      'select c.CODCLIENTE,'#13#10'           c.NOMECLIENTE,'#13#10'           cast' +
      '(c.RAZAOSOCIAL as varchar (60) )as RAZAOSOCIAL,'#13#10'           e.E_' +
      'MAIL'#13#10'from CLIENTES c '#13#10'inner join ENDERECOCLIENTE e on'#13#10' e.CODC' +
      'LIENTE = c.CODCLIENTE '#13#10'where UDF_DIGITS(c.CNPJ) = :raz and e.TI' +
      'POEND = 0'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'raz'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 336
    object sEmailCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object sEmailNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object sEmailRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ReadOnly = True
      Required = True
      Size = 60
    end
    object sEmailE_MAIL: TStringField
      FieldName = 'E_MAIL'
      ReadOnly = True
      Size = 30
    end
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
    Left = 367
    Top = 32
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
    Left = 303
    Top = 32
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
  object d_2: TDataSetProvider
    DataSet = s_2
    Left = 335
    Top = 32
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
    Left = 303
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
    object sEmpresaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object sEmpresaCCUSTO: TIntegerField
      FieldName = 'CCUSTO'
    end
    object sEmpresaCD_IBGE: TStringField
      FieldName = 'CD_IBGE'
      Size = 10
    end
  end
  object gbCobranca1: TgbCobranca
    NumeroArquivo = 0
    LayoutArquivo = laCNAB400
    TipoMovimento = tmRetorno
    Left = 368
    Top = 64
  end
  object OpenDialog1: TOpenDialog
    Left = 336
    Top = 64
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
    Left = 304
    Top = 64
  end
end
