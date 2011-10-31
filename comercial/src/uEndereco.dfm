inherited fEndereco: TfEndereco
  Height = 327
  Caption = 'Cadastro de Endere'#231'o'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    object RadioGroup2: TRadioGroup
      Left = 1
      Top = 1
      Width = 770
      Height = 49
      Align = alClient
      Caption = 'Tipo Endere'#231'o'
      Columns = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Principal'
        'Cobran'#231'a'
        'Entrega'
        'Outros')
      ParentFont = False
      TabOrder = 0
      OnClick = RadioGroup2Click
    end
  end
  inherited MMJPanel2: TMMJPanel
    Top = 249
    inherited btnProcurar: TBitBtn
      Visible = False
    end
    inherited btnSair: TBitBtn
      Caption = 'F9-Retornar'
    end
  end
  object GroupBox4: TGroupBox [2]
    Left = 0
    Top = 51
    Width = 772
    Height = 198
    Align = alClient
    Caption = 'Endere'#231'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label2: TLabel
      Left = 10
      Top = 41
      Width = 79
      Height = 16
      Caption = 'Logradouro .:'
    end
    object Label3: TLabel
      Left = 629
      Top = 39
      Width = 54
      Height = 16
      Caption = 'N'#250'mero.:'
    end
    object Label4: TLabel
      Left = 10
      Top = 80
      Width = 42
      Height = 16
      Caption = 'Bairro.:'
    end
    object Label5: TLabel
      Left = 438
      Top = 82
      Width = 90
      Height = 16
      Caption = 'Complemento.:'
    end
    object Label6: TLabel
      Left = 10
      Top = 124
      Width = 50
      Height = 16
      Caption = 'Cidade.:'
    end
    object Label7: TLabel
      Left = 402
      Top = 124
      Width = 24
      Height = 16
      Caption = 'UF.:'
    end
    object Label8: TLabel
      Left = 467
      Top = 124
      Width = 31
      Height = 16
      Caption = 'Cep.:'
    end
    object Label9: TLabel
      Left = 597
      Top = 124
      Width = 68
      Height = 16
      Caption = 'C'#243'd. IBGE.:'
    end
    object Label1: TLabel
      Left = 10
      Top = 164
      Width = 36
      Height = 16
      Caption = 'DDD.:'
    end
    object Label10: TLabel
      Left = 98
      Top = 164
      Width = 60
      Height = 16
      Caption = 'Telefone.:'
    end
    object Label11: TLabel
      Left = 370
      Top = 164
      Width = 40
      Height = 16
      Caption = 'Email.:'
    end
    object BitBtn1: TBitBtn
      Left = 371
      Top = 120
      Width = 27
      Height = 25
      Caption = '...'
      TabOrder = 4
      OnClick = BitBtn1Click
    end
    object DBEdit1: TDBEdit
      Left = 93
      Top = 36
      Width = 528
      Height = 24
      DataField = 'LOGRADOURO'
      DataSource = DtSrc
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 687
      Top = 36
      Width = 75
      Height = 24
      DataField = 'NUMERO'
      DataSource = DtSrc
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 57
      Top = 76
      Width = 370
      Height = 24
      DataField = 'BAIRRO'
      DataSource = DtSrc
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 533
      Top = 76
      Width = 230
      Height = 24
      DataField = 'COMPLEMENTO'
      DataSource = DtSrc
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 64
      Top = 120
      Width = 299
      Height = 24
      DataField = 'CIDADE'
      DataSource = DtSrc
      TabOrder = 6
    end
    object DBEdit6: TDBEdit
      Left = 430
      Top = 120
      Width = 32
      Height = 24
      DataField = 'UF'
      DataSource = DtSrc
      TabOrder = 7
    end
    object DBEdit7: TDBEdit
      Left = 502
      Top = 120
      Width = 90
      Height = 24
      DataField = 'CEP'
      DataSource = DtSrc
      TabOrder = 5
    end
    object DBEdit8: TDBEdit
      Left = 667
      Top = 120
      Width = 95
      Height = 24
      DataField = 'CD_IBGE'
      DataSource = DtSrc
      TabOrder = 8
    end
    object DBEdit9: TDBEdit
      Left = 51
      Top = 160
      Width = 40
      Height = 24
      DataField = 'DDD'
      DataSource = DtSrc
      TabOrder = 9
    end
    object DBEdit10: TDBEdit
      Left = 160
      Top = 160
      Width = 202
      Height = 24
      DataField = 'TELEFONE'
      DataSource = DtSrc
      TabOrder = 10
    end
    object DBEdit11: TDBEdit
      Left = 416
      Top = 160
      Width = 346
      Height = 24
      DataField = 'E_MAIL'
      DataSource = DtSrc
      TabOrder = 11
    end
  end
  inherited DtSrc: TDataSource
    DataSet = cds_CliEnd
  end
  object sds_CliEnd: TSQLDataSet
    CommandText = 
      'select *  from ENDERECOCLIENTE where CODCLIENTE = :pCli and TIPO' +
      'END = :tpEnd'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCli'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'tpEnd'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 487
    Top = 7
    object sds_CliEndCODENDERECO: TIntegerField
      FieldName = 'CODENDERECO'
      Required = True
    end
    object sds_CliEndCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object sds_CliEndLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object sds_CliEndBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sds_CliEndCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
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
    object sds_CliEndCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sds_CliEndTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 11
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
      Size = 200
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
    object sds_CliEndNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 5
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
  object dsp_CliEnd: TDataSetProvider
    DataSet = sds_CliEnd
    UpdateMode = upWhereKeyOnly
    Left = 519
    Top = 7
  end
  object cds_CliEnd: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCli'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'tpEnd'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_CliEnd'
    Left = 551
    Top = 6
    object cds_CliEndCODENDERECO: TIntegerField
      FieldName = 'CODENDERECO'
      Required = True
    end
    object cds_CliEndCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object cds_CliEndLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object cds_CliEndBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cds_CliEndCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
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
    object cds_CliEndCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cds_CliEndTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 11
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
      Size = 200
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
    object cds_CliEndNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 5
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
  object procIBGE: TSQLClientDataSet
    CommandText = 
      'select  NM_LOCALIDADE, CD_UF, CD_IBGE, NM_MUNICIPIO from TB_IBGE' +
      ' where NM_LOCALIDADE LIKE :NOME'#13#10'order by NM_LOCALIDADE'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    DBConnection = DM.sqlsisAdimin
    Left = 368
    Top = 160
    object procIBGENM_LOCALIDADE2: TStringField
      DisplayLabel = 'Cidade/Vila'
      FieldName = 'NM_LOCALIDADE'
      Required = True
      Size = 40
    end
    object procIBGECD_UF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CD_UF'
      FixedChar = True
      Size = 2
    end
    object procIBGENM_MUNICIPIO: TStringField
      DisplayLabel = 'Nome Munic'#237'pio'
      FieldName = 'NM_MUNICIPIO'
      Size = 40
    end
    object procIBGECD_IBGE: TStringField
      DisplayLabel = 'C'#243'digo IBGE'
      FieldName = 'CD_IBGE'
      Required = True
      Size = 10
    end
  end
end
