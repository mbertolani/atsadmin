inherited fEstado: TfEstado
  Width = 1134
  Height = 542
  Caption = 'Classifica'#231#227'o Fiscal por Estado'
  Font.Height = -13
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label3: TLabel [0]
    Left = 9
    Top = 55
    Width = 36
    Height = 16
    Caption = 'CFOP'
  end
  object Label4: TLabel [1]
    Left = 93
    Top = 55
    Width = 18
    Height = 16
    Caption = 'UF'
  end
  object Label8: TLabel [2]
    Left = 205
    Top = 55
    Width = 61
    Height = 16
    Caption = 'Aliq. ICMS'
  end
  object Label6: TLabel [3]
    Left = 286
    Top = 55
    Width = 74
    Height = 16
    Caption = 'Red.B. C'#225'lc.'
  end
  object Label7: TLabel [4]
    Left = 674
    Top = 55
    Width = 15
    Height = 16
    Caption = 'IPI'
  end
  object Label10: TLabel [5]
    Left = 371
    Top = 55
    Width = 29
    Height = 16
    Caption = 'MVA'
  end
  object Label11: TLabel [6]
    Left = 444
    Top = 55
    Width = 75
    Height = 16
    Caption = 'Icms Origem'
  end
  object Label12: TLabel [7]
    Left = 526
    Top = 55
    Width = 77
    Height = 16
    Caption = 'Icms Destino'
  end
  object Label13: TLabel [8]
    Left = 143
    Top = 55
    Width = 27
    Height = 16
    Caption = 'CST'
  end
  object Label5: TLabel [9]
    Left = 1031
    Top = 55
    Width = 78
    Height = 16
    Caption = 'Tipo Pessoa'
  end
  object Label9: TLabel [10]
    Left = 804
    Top = 55
    Width = 21
    Height = 16
    Caption = 'PIS'
  end
  object Label14: TLabel [11]
    Left = 964
    Top = 55
    Width = 49
    Height = 16
    Caption = 'COFINS'
  end
  object Label15: TLabel [12]
    Left = 612
    Top = 55
    Width = 45
    Height = 16
    Caption = 'CST IPI'
  end
  object Label16: TLabel [13]
    Left = 735
    Top = 55
    Width = 51
    Height = 16
    Caption = 'CST PIS'
  end
  object Label17: TLabel [14]
    Left = 875
    Top = 55
    Width = 79
    Height = 16
    Caption = 'CST COFINS'
  end
  inherited MMJPanel1: TMMJPanel
    Top = 461
    Width = 1126
    TabOrder = 16
    inherited btnIncluir: TBitBtn [0]
      Left = 412
    end
    inherited btnGravar: TBitBtn [1]
      Left = 412
    end
    inherited btnCancelar: TBitBtn
      Left = 525
    end
    inherited btnExcluir: TBitBtn
      Left = 525
    end
    inherited btnProcurar: TBitBtn
      Left = 298
      Caption = 'CFOP'
      OnClick = btnProcurarClick
    end
    inherited btnSair: TBitBtn
      Left = 638
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 1126
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Cooper Blk BT'
    ParentFont = False
    TabOrder = 17
    inherited Label1: TLabel
      Top = -74
    end
    inherited Label2: TLabel
      Top = -75
    end
    object DBText2: TDBText
      Left = 12
      Top = 9
      Width = 661
      Height = 41
      DataField = 'CFNOME'
      DataSource = DtSrc
      PopupMenu = PopupMenu1
      Transparent = True
    end
  end
  object DBEdit1: TDBEdit [17]
    Left = 8
    Top = 71
    Width = 81
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'CFOP'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnKeyPress = FormKeyPress
  end
  object DBEdit2: TDBEdit [18]
    Left = 94
    Top = 71
    Width = 38
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'UF'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object DBEdit3: TDBEdit [19]
    Left = 203
    Top = 71
    Width = 76
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'ICMS'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnKeyPress = FormKeyPress
  end
  object DBGrid1: TDBGrid [20]
    Left = 3
    Top = 179
    Width = 1118
    Height = 278
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 18
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CFOP'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CFNOME'
        Title.Caption = 'CFOP - Nome'
        Width = 224
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CST'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REDUCAO'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CSTIPI'
        Title.Caption = 'CST IPI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IPI'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS_SUBSTRIB'
        Title.Caption = 'MVA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS_SUBSTRIB_IC'
        Title.Caption = 'ICMS Origem'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS_SUBSTRIB_IND'
        Title.Caption = 'ICMS Destino'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CSTPIS'
        Title.Caption = 'CST PIS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PIS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CSTCOFINS'
        Title.Caption = 'CST COFINS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COFINS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PESSOA'
        Title.Caption = 'Pessoa'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DADOSADC1'
        Title.Caption = 'Dados Adicionais 1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DADOSADC2'
        Title.Caption = 'Dados Adicionais 2'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DADOSADC3'
        Title.Caption = 'Dados Adicionais 3'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DADOSADC4'
        Title.Caption = 'Dados Adicionais 4'
        Visible = True
      end>
  end
  object DBEdit4: TDBEdit [21]
    Left = 284
    Top = 71
    Width = 79
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'REDUCAO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnKeyPress = FormKeyPress
  end
  object DBEdit5: TDBEdit [22]
    Left = 671
    Top = 71
    Width = 56
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'IPI'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnKeyPress = FormKeyPress
  end
  object DBEdit6: TDBEdit [23]
    Left = 369
    Top = 71
    Width = 69
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'ICMS_SUBSTRIB'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnKeyPress = FormKeyPress
  end
  object DBEdit7: TDBEdit [24]
    Left = 442
    Top = 71
    Width = 77
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'ICMS_SUBSTRIB_IC'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnKeyPress = FormKeyPress
  end
  object DBEdit8: TDBEdit [25]
    Left = 524
    Top = 71
    Width = 79
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'ICMS_SUBSTRIB_IND'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnKeyPress = FormKeyPress
  end
  object DBEdit9: TDBEdit [26]
    Left = 137
    Top = 71
    Width = 61
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'CST'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  object ComboBox1: TComboBox [27]
    Left = 1028
    Top = 71
    Width = 93
    Height = 24
    AutoComplete = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 14
    OnChange = ComboBox1Change
    OnKeyPress = FormKeyPress
    Items.Strings = (
      'F'#237'sica'
      'Jur'#237'dica')
  end
  object DBEdit10: TDBEdit [28]
    Left = 803
    Top = 71
    Width = 64
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'PIS'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnKeyPress = FormKeyPress
  end
  object DBEdit11: TDBEdit [29]
    Left = 962
    Top = 71
    Width = 63
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'COFINS'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    OnKeyPress = FormKeyPress
  end
  object DBEdit12: TDBEdit [30]
    Left = 608
    Top = 71
    Width = 57
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'CSTIPI'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnKeyPress = FormKeyPress
  end
  object DBEdit13: TDBEdit [31]
    Left = 733
    Top = 71
    Width = 66
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'CSTPIS'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnKeyPress = FormKeyPress
  end
  object DBEdit14: TDBEdit [32]
    Left = 873
    Top = 71
    Width = 84
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'CSTCOFINS'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnKeyPress = FormKeyPress
  end
  object GroupBox1: TGroupBox [33]
    Left = 8
    Top = 98
    Width = 1113
    Height = 76
    Caption = 'Dados Adicionais'
    TabOrder = 15
    object DBEdit15: TDBEdit
      Left = 8
      Top = 18
      Width = 545
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'DADOSADC1'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = FormKeyPress
    end
    object DBEdit16: TDBEdit
      Left = 560
      Top = 18
      Width = 545
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'DADOSADC2'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = FormKeyPress
    end
    object DBEdit17: TDBEdit
      Left = 8
      Top = 46
      Width = 545
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'DADOSADC3'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyPress = FormKeyPress
    end
    object DBEdit18: TDBEdit
      Left = 560
      Top = 46
      Width = 545
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'DADOSADC4'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnKeyPress = FormKeyPress
    end
  end
  inherited DtSrc: TDataSource
    DataSet = cds_estado
    Left = 408
  end
  object sds: TSQLDataSet
    CommandText = 
      'select esta.CODESTADO, esta.CFOP'#13#10'        , esta.UF'#13#10'        , e' +
      'sta.ICMS'#13#10'        , esta.REDUCAO'#13#10'        , cfo.CFNOME'#13#10'        ' +
      ', esta.IPI '#13#10'        , esta.CSTIPI'#13#10'        , esta.ICMS_SUBSTRIB' +
      ', esta.ICMS_SUBSTRIB_IC'#13#10'        , esta.ICMS_SUBSTRIB_IND, esta.' +
      'CST'#13#10'        , esta.PESSOA'#13#10'        , esta.PIS'#13#10'        , esta.C' +
      'OFINS'#13#10'        , esta.CSTPIS'#13#10'        , esta.CSTCOFINS'#13#10'        ' +
      ', esta.DADOSADC1'#13#10'        , esta.DADOSADC2'#13#10'        , esta.DADOS' +
      'ADC3'#13#10'        , esta.DADOSADC4'#13#10'FROM ESTADO_ICMS esta '#13#10'left out' +
      'er join CFOP cfo on cfo.CFCOD = esta.CFOP '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 288
    Top = 8
    object sdsUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 3
    end
    object sdsICMS: TFloatField
      FieldName = 'ICMS'
    end
    object sdsREDUCAO: TFloatField
      FieldName = 'REDUCAO'
    end
    object sdsCFNOME: TStringField
      FieldName = 'CFNOME'
      ProviderFlags = []
      Size = 250
    end
    object sdsIPI: TFloatField
      FieldName = 'IPI'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCFOP: TStringField
      DisplayWidth = 30
      FieldName = 'CFOP'
      Required = True
      FixedChar = True
      Size = 30
    end
    object sdsICMS_SUBSTRIB: TFloatField
      FieldName = 'ICMS_SUBSTRIB'
    end
    object sdsICMS_SUBSTRIB_IC: TFloatField
      FieldName = 'ICMS_SUBSTRIB_IC'
    end
    object sdsICMS_SUBSTRIB_IND: TFloatField
      FieldName = 'ICMS_SUBSTRIB_IND'
    end
    object sdsCST: TStringField
      FieldName = 'CST'
      FixedChar = True
      Size = 3
    end
    object sdsCODESTADO: TIntegerField
      FieldName = 'CODESTADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsPESSOA: TStringField
      FieldName = 'PESSOA'
      Size = 8
    end
    object sdsPIS: TFloatField
      FieldName = 'PIS'
    end
    object sdsCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object sdsCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Size = 2
    end
    object sdsCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Size = 2
    end
    object sdsCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      Size = 2
    end
    object sdsDADOSADC1: TStringField
      FieldName = 'DADOSADC1'
      Size = 200
    end
    object sdsDADOSADC2: TStringField
      FieldName = 'DADOSADC2'
      Size = 200
    end
    object sdsDADOSADC3: TStringField
      FieldName = 'DADOSADC3'
      Size = 200
    end
    object sdsDADOSADC4: TStringField
      FieldName = 'DADOSADC4'
      Size = 200
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Left = 328
    Top = 8
  end
  object cds_estado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    OnPostError = cds_estadoPostError
    OnReconcileError = cds_estadoReconcileError
    Left = 368
    Top = 8
    object cds_estadoCFOP: TStringField
      FieldName = 'CFOP'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cds_estadoUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 3
    end
    object cds_estadoICMS: TFloatField
      FieldName = 'ICMS'
    end
    object cds_estadoREDUCAO: TFloatField
      FieldName = 'REDUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_estadoCFNOME: TStringField
      FieldName = 'CFNOME'
      ProviderFlags = []
      Size = 250
    end
    object cds_estadoIPI: TFloatField
      FieldName = 'IPI'
      ProviderFlags = [pfInUpdate]
    end
    object cds_estadoICMS_SUBSTRIB: TFloatField
      FieldName = 'ICMS_SUBSTRIB'
    end
    object cds_estadoICMS_SUBSTRIB_IC: TFloatField
      FieldName = 'ICMS_SUBSTRIB_IC'
    end
    object cds_estadoICMS_SUBSTRIB_IND: TFloatField
      FieldName = 'ICMS_SUBSTRIB_IND'
    end
    object cds_estadoCST: TStringField
      FieldName = 'CST'
      FixedChar = True
      Size = 3
    end
    object cds_estadoCODESTADO: TIntegerField
      FieldName = 'CODESTADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_estadoPESSOA: TStringField
      FieldName = 'PESSOA'
      Size = 8
    end
    object cds_estadoPIS: TFloatField
      FieldName = 'PIS'
    end
    object cds_estadoCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object cds_estadoCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Size = 2
    end
    object cds_estadoCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Size = 2
    end
    object cds_estadoCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      Size = 2
    end
    object cds_estadoDADOSADC1: TStringField
      FieldName = 'DADOSADC1'
      Size = 200
    end
    object cds_estadoDADOSADC2: TStringField
      FieldName = 'DADOSADC2'
      Size = 200
    end
    object cds_estadoDADOSADC3: TStringField
      FieldName = 'DADOSADC3'
      Size = 200
    end
    object cds_estadoDADOSADC4: TStringField
      FieldName = 'DADOSADC4'
      Size = 200
    end
  end
end
