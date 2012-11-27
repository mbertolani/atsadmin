inherited FCadDoc: TFCadDoc
  Left = 292
  Top = 131
  Caption = 'Cadastro Tipo Documentos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 40
    Top = 56
    Width = 46
    Height = 13
    Caption = 'CODDOC'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 128
    Top = 56
    Width = 37
    Height = 13
    Caption = 'DESCR'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [2]
    Left = 40
    Top = 104
    Width = 52
    Height = 13
    Caption = 'ANODESC'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 184
    Top = 104
    Width = 47
    Height = 13
    Caption = 'METODO'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 40
    Top = 152
    Width = 22
    Height = 13
    Caption = 'LEI1'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [5]
    Left = 40
    Top = 200
    Width = 22
    Height = 13
    Caption = 'LEI2'
    FocusControl = DBEdit6
  end
  object Label7: TLabel [6]
    Left = 40
    Top = 240
    Width = 62
    Height = 13
    Caption = 'SEQUENCIA'
    FocusControl = DBEdit7
  end
  object Label8: TLabel [7]
    Left = 40
    Top = 280
    Width = 22
    Height = 13
    Caption = 'OBS'
    FocusControl = DBEdit8
  end
  object Label9: TLabel [8]
    Left = 40
    Top = 320
    Width = 41
    Height = 13
    Caption = 'MICROF'
    FocusControl = DBEdit9
  end
  object Label10: TLabel [9]
    Left = 98
    Top = 322
    Width = 36
    Height = 13
    Caption = 'DIGITA'
    FocusControl = DBEdit10
  end
  object Label11: TLabel [10]
    Left = 170
    Top = 322
    Width = 37
    Height = 13
    Caption = 'PRAZO'
    FocusControl = DBEdit11
  end
  object Label12: TLabel [11]
    Left = 456
    Top = 324
    Width = 59
    Height = 13
    Caption = 'FORDESTR'
    FocusControl = DBEdit12
  end
  object Label13: TLabel [12]
    Left = 36
    Top = 367
    Width = 36
    Height = 13
    Caption = 'FISCAL'
    FocusControl = DBEdit13
  end
  object Label14: TLabel [13]
    Left = 40
    Top = 416
    Width = 37
    Height = 13
    Caption = 'ANEXO'
    FocusControl = DBMemo1
  end
  object Label15: TLabel [14]
    Left = 304
    Top = 424
    Width = 40
    Height = 13
    Caption = 'CODSIS'
    FocusControl = DBEdit14
  end
  inherited MMJPanel2: TMMJPanel
    inherited btnProcurar: TBitBtn
      OnClick = btnProcurarClick
    end
  end
  object DBEdit1: TDBEdit [17]
    Left = 40
    Top = 72
    Width = 82
    Height = 21
    DataField = 'CODDOC'
    DataSource = DtSrc
    TabOrder = 2
  end
  object DBEdit2: TDBEdit [18]
    Left = 128
    Top = 72
    Width = 524
    Height = 21
    DataField = 'DESCR'
    DataSource = DtSrc
    TabOrder = 3
  end
  object DBEdit3: TDBEdit [19]
    Left = 40
    Top = 120
    Width = 134
    Height = 21
    DataField = 'ANODESC'
    DataSource = DtSrc
    TabOrder = 4
  end
  object DBEdit4: TDBEdit [20]
    Left = 184
    Top = 120
    Width = 394
    Height = 21
    DataField = 'METODO'
    DataSource = DtSrc
    TabOrder = 5
  end
  object DBEdit5: TDBEdit [21]
    Left = 40
    Top = 168
    Width = 524
    Height = 21
    DataField = 'LEI1'
    DataSource = DtSrc
    TabOrder = 6
  end
  object DBEdit6: TDBEdit [22]
    Left = 40
    Top = 216
    Width = 524
    Height = 21
    DataField = 'LEI2'
    DataSource = DtSrc
    TabOrder = 7
  end
  object DBEdit7: TDBEdit [23]
    Left = 40
    Top = 256
    Width = 524
    Height = 21
    DataField = 'SEQUENCIA'
    DataSource = DtSrc
    TabOrder = 8
  end
  object DBEdit8: TDBEdit [24]
    Left = 40
    Top = 296
    Width = 524
    Height = 21
    DataField = 'OBS'
    DataSource = DtSrc
    TabOrder = 9
  end
  object DBEdit9: TDBEdit [25]
    Left = 40
    Top = 336
    Width = 17
    Height = 21
    DataField = 'MICROF'
    DataSource = DtSrc
    TabOrder = 10
  end
  object DBEdit10: TDBEdit [26]
    Left = 98
    Top = 338
    Width = 17
    Height = 21
    DataField = 'DIGITA'
    DataSource = DtSrc
    TabOrder = 11
  end
  object DBEdit11: TDBEdit [27]
    Left = 170
    Top = 338
    Width = 264
    Height = 21
    DataField = 'PRAZO'
    DataSource = DtSrc
    TabOrder = 12
  end
  object DBEdit12: TDBEdit [28]
    Left = 456
    Top = 340
    Width = 264
    Height = 21
    DataField = 'FORDESTR'
    DataSource = DtSrc
    TabOrder = 13
  end
  object DBEdit13: TDBEdit [29]
    Left = 36
    Top = 383
    Width = 524
    Height = 21
    DataField = 'FISCAL'
    DataSource = DtSrc
    TabOrder = 14
  end
  object DBMemo1: TDBMemo [30]
    Left = 40
    Top = 432
    Width = 233
    Height = 24
    DataField = 'ANEXO'
    DataSource = DtSrc
    TabOrder = 15
  end
  object DBEdit14: TDBEdit [31]
    Left = 304
    Top = 440
    Width = 30
    Height = 21
    DataField = 'CODSIS'
    DataSource = DtSrc
    TabOrder = 16
  end
  inherited DtSrc: TDataSource
    DataSet = cdsC
    Left = 576
    Top = 16
  end
  object sqlC: TSQLDataSet
    CommandText = 
      'select ID, CODDOC, DESCR, ANODESC, METODO, LEI1, LEI2, OBS, SEQU' +
      'ENCIA, MICROF, DIGITA, PRAZO, FORDESTR, FISCAL, ANEXO, CODSIS fr' +
      'om CADDOC where id = :pid'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 440
    Top = 16
    object sqlCID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sqlCCODDOC: TStringField
      FieldName = 'CODDOC'
      Size = 6
    end
    object sqlCDESCR: TStringField
      FieldName = 'DESCR'
      Size = 40
    end
    object sqlCANODESC: TFloatField
      FieldName = 'ANODESC'
    end
    object sqlCMETODO: TStringField
      FieldName = 'METODO'
      Size = 30
    end
    object sqlCLEI1: TStringField
      FieldName = 'LEI1'
      Size = 40
    end
    object sqlCLEI2: TStringField
      FieldName = 'LEI2'
      Size = 40
    end
    object sqlCOBS: TStringField
      FieldName = 'OBS'
      Size = 40
    end
    object sqlCSEQUENCIA: TStringField
      FieldName = 'SEQUENCIA'
      Size = 40
    end
    object sqlCMICROF: TStringField
      FieldName = 'MICROF'
      Size = 1
    end
    object sqlCDIGITA: TStringField
      FieldName = 'DIGITA'
      Size = 1
    end
    object sqlCPRAZO: TStringField
      FieldName = 'PRAZO'
    end
    object sqlCFORDESTR: TStringField
      FieldName = 'FORDESTR'
    end
    object sqlCFISCAL: TStringField
      FieldName = 'FISCAL'
      Size = 40
    end
    object sqlCANEXO: TMemoField
      FieldName = 'ANEXO'
      BlobType = ftMemo
    end
    object sqlCCODSIS: TStringField
      FieldName = 'CODSIS'
      Size = 2
    end
  end
  object dspC: TDataSetProvider
    DataSet = sqlC
    Left = 480
    Top = 16
  end
  object cdsC: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    ProviderName = 'dspC'
    Left = 520
    Top = 16
    object cdsCID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCCODDOC: TStringField
      FieldName = 'CODDOC'
      Size = 6
    end
    object cdsCDESCR: TStringField
      FieldName = 'DESCR'
      Size = 40
    end
    object cdsCANODESC: TFloatField
      FieldName = 'ANODESC'
    end
    object cdsCMETODO: TStringField
      FieldName = 'METODO'
      Size = 30
    end
    object cdsCLEI1: TStringField
      FieldName = 'LEI1'
      Size = 40
    end
    object cdsCLEI2: TStringField
      FieldName = 'LEI2'
      Size = 40
    end
    object cdsCSEQUENCIA: TStringField
      FieldName = 'SEQUENCIA'
      Size = 40
    end
    object cdsCOBS: TStringField
      FieldName = 'OBS'
      Size = 40
    end
    object cdsCMICROF: TStringField
      FieldName = 'MICROF'
      Size = 1
    end
    object cdsCDIGITA: TStringField
      FieldName = 'DIGITA'
      Size = 1
    end
    object cdsCPRAZO: TStringField
      FieldName = 'PRAZO'
    end
    object cdsCFORDESTR: TStringField
      FieldName = 'FORDESTR'
    end
    object cdsCFISCAL: TStringField
      FieldName = 'FISCAL'
      Size = 40
    end
    object cdsCANEXO: TMemoField
      FieldName = 'ANEXO'
      BlobType = ftMemo
    end
    object cdsCCODSIS: TStringField
      FieldName = 'CODSIS'
      Size = 2
    end
  end
end
