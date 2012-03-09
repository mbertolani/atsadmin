object fNfePisCofins: TfNfePisCofins
  Left = 46
  Top = 124
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
      Text = 'ACBrSpedPISCofins.txt'
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
    Path = 'C:\Arquivos de programas\Borland\Delphi7\Bin\'
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
end
