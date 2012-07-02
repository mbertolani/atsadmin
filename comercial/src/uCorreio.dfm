inherited fCorreio: TfCorreio
  Left = 322
  Top = 114
  Width = 778
  Height = 558
  Caption = 'Correio'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 10
    Top = 111
    Width = 52
    Height = 13
    Caption = 'EMPRESA'
    FocusControl = DBEdit1
  end
  object Label4: TLabel [1]
    Left = 10
    Top = 138
    Width = 31
    Height = 13
    Caption = 'CAIXA'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [2]
    Left = 10
    Top = 168
    Width = 97
    Height = 13
    Caption = 'DEPARTAMENTOS'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [3]
    Left = 10
    Top = 196
    Width = 78
    Height = 13
    Caption = 'SE'#199#195'O/SETOR'
    FocusControl = DBEdit6
  end
  object Label7: TLabel [4]
    Left = 10
    Top = 306
    Width = 34
    Height = 13
    Caption = 'LOCAL'
    FocusControl = DBEdit7
  end
  object Label8: TLabel [5]
    Left = 10
    Top = 386
    Width = 32
    Height = 13
    Caption = 'ATIVO'
    FocusControl = DBEdit8
  end
  object Label9: TLabel [6]
    Left = 10
    Top = 224
    Width = 84
    Height = 13
    Caption = 'DOCUMENTOSC'
    FocusControl = DBEdit9
  end
  object Label10: TLabel [7]
    Left = 10
    Top = 250
    Width = 67
    Height = 13
    Caption = 'PERIODO DE'
    FocusControl = DBEdit10
  end
  object Label11: TLabel [8]
    Left = 272
    Top = 252
    Width = 21
    Height = 13
    Caption = 'AT'#201
    FocusControl = DBEdit11
  end
  object Label12: TLabel [9]
    Left = 10
    Top = 278
    Width = 79
    Height = 13
    Caption = 'INTERVALO DE'
    FocusControl = DBEdit12
  end
  object Label13: TLabel [10]
    Left = 271
    Top = 278
    Width = 21
    Height = 13
    Caption = 'AT'#201
    FocusControl = DBEdit13
  end
  object Label14: TLabel [11]
    Left = 195
    Top = 331
    Width = 50
    Height = 13
    Caption = 'ESTANTE'
    FocusControl = DBEdit14
  end
  object Label15: TLabel [12]
    Left = 336
    Top = 331
    Width = 67
    Height = 13
    Caption = 'PRATELEIRA'
    FocusControl = DBEdit15
  end
  object Label16: TLabel [13]
    Left = 288
    Top = 358
    Width = 116
    Height = 13
    Caption = 'PRAZO DE DESCARTE'
    FocusControl = DBEdit16
  end
  object Label22: TLabel [14]
    Left = 10
    Top = 407
    Width = 22
    Height = 13
    Caption = 'OBS'
    FocusControl = DBMemo1
  end
  object Label23: TLabel [15]
    Left = 297
    Top = 136
    Width = 86
    Height = 13
    Caption = 'DATA INCLUS'#195'O'
    FocusControl = DBEdit22
  end
  object Label24: TLabel [16]
    Left = 10
    Top = 331
    Width = 44
    Height = 13
    Caption = 'COLUNA'
    FocusControl = DBEdit23
  end
  object Label25: TLabel [17]
    Left = 10
    Top = 357
    Width = 96
    Height = 13
    Caption = 'N'#186' CX DO CLIENTE'
    FocusControl = DBEdit24
  end
  object Label27: TLabel [18]
    Left = 200
    Top = 137
    Width = 54
    Height = 13
    Caption = 'TAMANHO'
    FocusControl = DBEdit26
  end
  inherited MMJPanel1: TMMJPanel
    Width = 762
  end
  inherited MMJPanel2: TMMJPanel
    Top = 469
    Width = 762
    inherited btnProcurar: TBitBtn
      OnClick = btnProcurarClick
    end
  end
  object DBEdit1: TDBEdit [21]
    Left = 121
    Top = 106
    Width = 41
    Height = 21
    DataField = 'CODFIR'
    DataSource = DtSrc
    TabOrder = 2
  end
  object DBEdit4: TDBEdit [22]
    Left = 121
    Top = 132
    Width = 65
    Height = 21
    DataField = 'NUMCAI'
    DataSource = DtSrc
    TabOrder = 3
  end
  object DBEdit5: TDBEdit [23]
    Left = 121
    Top = 160
    Width = 82
    Height = 21
    DataField = 'CODDEP'
    DataSource = DtSrc
    TabOrder = 6
  end
  object DBEdit6: TDBEdit [24]
    Left = 121
    Top = 190
    Width = 82
    Height = 21
    DataField = 'CODSEC'
    DataSource = DtSrc
    TabOrder = 7
  end
  object DBEdit7: TDBEdit [25]
    Left = 121
    Top = 298
    Width = 57
    Height = 21
    DataField = 'CODLOC'
    DataSource = DtSrc
    TabOrder = 13
  end
  object DBEdit8: TDBEdit [26]
    Left = 122
    Top = 378
    Width = 17
    Height = 21
    DataField = 'ATIVO'
    DataSource = DtSrc
    TabOrder = 19
  end
  object DBEdit9: TDBEdit [27]
    Left = 121
    Top = 219
    Width = 82
    Height = 21
    DataField = 'CODDOC'
    DataSource = DtSrc
    TabOrder = 8
  end
  object DBEdit10: TDBEdit [28]
    Left = 121
    Top = 245
    Width = 73
    Height = 21
    DataField = 'DTINID'
    DataSource = DtSrc
    TabOrder = 9
  end
  object DBEdit11: TDBEdit [29]
    Left = 304
    Top = 246
    Width = 73
    Height = 21
    DataField = 'DTFIND'
    DataSource = DtSrc
    TabOrder = 10
  end
  object DBEdit12: TDBEdit [30]
    Left = 121
    Top = 271
    Width = 73
    Height = 21
    DataField = 'DOCINI'
    DataSource = DtSrc
    TabOrder = 11
  end
  object DBEdit13: TDBEdit [31]
    Left = 304
    Top = 271
    Width = 73
    Height = 21
    DataField = 'DOCFIN'
    DataSource = DtSrc
    TabOrder = 12
  end
  object DBEdit14: TDBEdit [32]
    Left = 250
    Top = 323
    Width = 57
    Height = 21
    DataField = 'ESTANTE'
    DataSource = DtSrc
    TabOrder = 15
  end
  object DBEdit15: TDBEdit [33]
    Left = 410
    Top = 323
    Width = 57
    Height = 21
    DataField = 'PRATEL'
    DataSource = DtSrc
    TabOrder = 16
  end
  object DBEdit16: TDBEdit [34]
    Left = 412
    Top = 350
    Width = 57
    Height = 21
    DataField = 'DESCARTE'
    DataSource = DtSrc
    TabOrder = 18
  end
  object DBMemo1: TDBMemo [35]
    Left = 45
    Top = 407
    Width = 716
    Height = 44
    DataField = 'OBS'
    DataSource = DtSrc
    TabOrder = 20
  end
  object DBEdit22: TDBEdit [36]
    Left = 395
    Top = 132
    Width = 75
    Height = 21
    DataField = 'DTINC'
    DataSource = DtSrc
    TabOrder = 5
  end
  object DBEdit23: TDBEdit [37]
    Left = 121
    Top = 323
    Width = 41
    Height = 21
    DataField = 'COLUNA'
    DataSource = DtSrc
    TabOrder = 14
  end
  object DBEdit24: TDBEdit [38]
    Left = 121
    Top = 352
    Width = 57
    Height = 21
    DataField = 'NCAICLI'
    DataSource = DtSrc
    TabOrder = 17
  end
  object DBEdit26: TDBEdit [39]
    Left = 264
    Top = 132
    Width = 17
    Height = 21
    DataField = 'TAMANHO'
    DataSource = DtSrc
    TabOrder = 4
  end
  object DBEdit2: TDBEdit [40]
    Left = 168
    Top = 106
    Width = 297
    Height = 21
    DataField = 'RAZAOSOCIAL'
    DataSource = DtSrc
    TabOrder = 21
  end
  object GroupBox1: TGroupBox [41]
    Left = 8
    Top = 51
    Width = 745
    Height = 51
    Caption = 'CLIENTE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 22
    object jvNome: TJvDBSearchComboBox
      Left = 86
      Top = 17
      Width = 643
      Height = 24
      DataField = 'NOMECLIENTE'
      DataSource = dCliente
      Enabled = False
      ItemHeight = 16
      TabOrder = 1
      Text = 'jvNome'
      OnChange = jvNomeChange
    end
    object jvCod: TJvDBSearchComboBox
      Left = 9
      Top = 16
      Width = 66
      Height = 24
      DataField = 'CODCLIENTE'
      DataSource = dCliente
      Enabled = False
      ItemHeight = 16
      TabOrder = 0
      Text = 'JvDBSearchComboBox1'
      OnChange = jvCodChange
    end
  end
  inherited DtSrc: TDataSource
    DataSet = cdsCorreio
  end
  inherited PopupMenu1: TPopupMenu
    inherited Procurar1: TMenuItem
      OnClick = btnProcurarClick
    end
  end
  object dCliente: TDataSource
    DataSet = cCliente
    Left = 141
    Top = 12
  end
  object cCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pCliente'
    Left = 101
    Top = 11
    object cClienteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object cClienteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
  end
  object pCliente: TDataSetProvider
    DataSet = sCliente
    UpdateMode = upWhereKeyOnly
    Left = 60
    Top = 11
  end
  object sCliente: TSQLDataSet
    CommandText = 
      'select CODCLIENTE, NOMECLIENTE from CLIENTES '#13#10'order by NOMECLIE' +
      'NTE '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 22
    Top = 11
    object sClienteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object sClienteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
  end
  object sdsCorreio: TSQLDataSet
    CommandText = 
      'select  mov.* ,cli.razaosocial from MOVDOC mov  '#13#10'inner join CLI' +
      'ENTES cli on cli.CODCLIENTE = mov.CODFIR'#13#10#13#10'where CODOC = :pcodo' +
      'c'
    DataSource = DtSrc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcodoc'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 512
    Top = 200
    object sdsCorreioCODOC: TIntegerField
      FieldName = 'CODOC'
      Required = True
    end
    object sdsCorreioCODFIR: TSmallintField
      FieldName = 'CODFIR'
    end
    object sdsCorreioFOTO: TSmallintField
      FieldName = 'FOTO'
    end
    object sdsCorreioROLO: TSmallintField
      FieldName = 'ROLO'
    end
    object sdsCorreioNUMCAI: TFloatField
      FieldName = 'NUMCAI'
    end
    object sdsCorreioCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 6
    end
    object sdsCorreioCODSEC: TStringField
      FieldName = 'CODSEC'
      Size = 6
    end
    object sdsCorreioCODLOC: TSmallintField
      FieldName = 'CODLOC'
    end
    object sdsCorreioATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object sdsCorreioCODDOC: TStringField
      FieldName = 'CODDOC'
      Size = 6
    end
    object sdsCorreioDTINID: TDateField
      FieldName = 'DTINID'
    end
    object sdsCorreioDTFIND: TDateField
      FieldName = 'DTFIND'
    end
    object sdsCorreioDOCINI: TFloatField
      FieldName = 'DOCINI'
    end
    object sdsCorreioDOCFIN: TFloatField
      FieldName = 'DOCFIN'
    end
    object sdsCorreioESTANTE: TSmallintField
      FieldName = 'ESTANTE'
    end
    object sdsCorreioPRATEL: TSmallintField
      FieldName = 'PRATEL'
    end
    object sdsCorreioDESCARTE: TFloatField
      FieldName = 'DESCARTE'
    end
    object sdsCorreioDTRET: TDateField
      FieldName = 'DTRET'
    end
    object sdsCorreioNOMERET: TStringField
      FieldName = 'NOMERET'
      Size = 40
    end
    object sdsCorreioNDOCRET: TStringField
      FieldName = 'NDOCRET'
      Size = 10
    end
    object sdsCorreioDTPREV: TDateField
      FieldName = 'DTPREV'
    end
    object sdsCorreioOBSRET: TStringField
      FieldName = 'OBSRET'
      Size = 60
    end
    object sdsCorreioOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object sdsCorreioDTINC: TDateField
      FieldName = 'DTINC'
    end
    object sdsCorreioCOLUNA: TSmallintField
      FieldName = 'COLUNA'
    end
    object sdsCorreioNCAICLI: TFloatField
      FieldName = 'NCAICLI'
    end
    object sdsCorreioOBS2: TStringField
      FieldName = 'OBS2'
      Size = 40
    end
    object sdsCorreioTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 1
    end
    object sdsCorreioA: TStringField
      FieldName = 'A'
      Size = 10
    end
    object sdsCorreioNUMDOC: TStringField
      FieldName = 'NUMDOC'
    end
    object sdsCorreioDATA: TStringField
      FieldName = 'DATA'
      Size = 8
    end
    object sdsCorreioQTDADE: TFloatField
      FieldName = 'QTDADE'
    end
    object sdsCorreioCODIDIO: TSmallintField
      FieldName = 'CODIDIO'
    end
    object sdsCorreioDESCR: TStringField
      FieldName = 'DESCR'
      Size = 150
    end
    object sdsCorreioFASE: TStringField
      FieldName = 'FASE'
      Size = 150
    end
    object sdsCorreioUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 10
    end
    object sdsCorreioDTUSU: TDateField
      FieldName = 'DTUSU'
    end
    object sdsCorreioHORAUSU: TStringField
      FieldName = 'HORAUSU'
      Size = 5
    end
    object sdsCorreioREGCAI: TFloatField
      FieldName = 'REGCAI'
    end
    object sdsCorreioJADESC: TStringField
      FieldName = 'JADESC'
      Size = 1
    end
    object sdsCorreioRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
  end
  object dspCorreio: TDataSetProvider
    DataSet = sdsCorreio
    Left = 552
    Top = 200
  end
  object cdsCorreio: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pcodoc'
        ParamType = ptInput
      end>
    ProviderName = 'dspCorreio'
    Left = 600
    Top = 200
    object cdsCorreioCODOC: TIntegerField
      FieldName = 'CODOC'
      Required = True
    end
    object cdsCorreioCODFIR: TSmallintField
      FieldName = 'CODFIR'
    end
    object cdsCorreioFOTO: TSmallintField
      FieldName = 'FOTO'
    end
    object cdsCorreioROLO: TSmallintField
      FieldName = 'ROLO'
    end
    object cdsCorreioNUMCAI: TFloatField
      FieldName = 'NUMCAI'
    end
    object cdsCorreioCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 6
    end
    object cdsCorreioCODSEC: TStringField
      FieldName = 'CODSEC'
      Size = 6
    end
    object cdsCorreioCODLOC: TSmallintField
      FieldName = 'CODLOC'
    end
    object cdsCorreioATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object cdsCorreioCODDOC: TStringField
      FieldName = 'CODDOC'
      Size = 6
    end
    object cdsCorreioDTINID: TDateField
      FieldName = 'DTINID'
    end
    object cdsCorreioDTFIND: TDateField
      FieldName = 'DTFIND'
    end
    object cdsCorreioDOCINI: TFloatField
      FieldName = 'DOCINI'
    end
    object cdsCorreioDOCFIN: TFloatField
      FieldName = 'DOCFIN'
    end
    object cdsCorreioESTANTE: TSmallintField
      FieldName = 'ESTANTE'
    end
    object cdsCorreioPRATEL: TSmallintField
      FieldName = 'PRATEL'
    end
    object cdsCorreioDESCARTE: TFloatField
      FieldName = 'DESCARTE'
      DisplayFormat = '##/####'
    end
    object cdsCorreioDTRET: TDateField
      FieldName = 'DTRET'
    end
    object cdsCorreioNOMERET: TStringField
      FieldName = 'NOMERET'
      Size = 40
    end
    object cdsCorreioNDOCRET: TStringField
      FieldName = 'NDOCRET'
      Size = 10
    end
    object cdsCorreioDTPREV: TDateField
      FieldName = 'DTPREV'
    end
    object cdsCorreioOBSRET: TStringField
      FieldName = 'OBSRET'
      Size = 60
    end
    object cdsCorreioOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object cdsCorreioDTINC: TDateField
      FieldName = 'DTINC'
    end
    object cdsCorreioCOLUNA: TSmallintField
      FieldName = 'COLUNA'
    end
    object cdsCorreioNCAICLI: TFloatField
      FieldName = 'NCAICLI'
    end
    object cdsCorreioOBS2: TStringField
      FieldName = 'OBS2'
      Size = 40
    end
    object cdsCorreioTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 1
    end
    object cdsCorreioA: TStringField
      FieldName = 'A'
      Size = 10
    end
    object cdsCorreioNUMDOC: TStringField
      FieldName = 'NUMDOC'
    end
    object cdsCorreioDATA: TStringField
      FieldName = 'DATA'
      Size = 8
    end
    object cdsCorreioQTDADE: TFloatField
      FieldName = 'QTDADE'
    end
    object cdsCorreioCODIDIO: TSmallintField
      FieldName = 'CODIDIO'
    end
    object cdsCorreioDESCR: TStringField
      FieldName = 'DESCR'
      Size = 150
    end
    object cdsCorreioFASE: TStringField
      FieldName = 'FASE'
      Size = 150
    end
    object cdsCorreioUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 10
    end
    object cdsCorreioDTUSU: TDateField
      FieldName = 'DTUSU'
    end
    object cdsCorreioHORAUSU: TStringField
      FieldName = 'HORAUSU'
      Size = 5
    end
    object cdsCorreioREGCAI: TFloatField
      FieldName = 'REGCAI'
    end
    object cdsCorreioJADESC: TStringField
      FieldName = 'JADESC'
      Size = 1
    end
    object cdsCorreioRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
  end
end
