inherited fEstado: TfEstado
  Width = 1006
  Height = 484
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
    Left = 108
    Top = 55
    Width = 18
    Height = 16
    Caption = 'UF'
  end
  object Label8: TLabel [2]
    Left = 155
    Top = 55
    Width = 61
    Height = 16
    Caption = 'Aliq. ICMS'
  end
  object Label6: TLabel [3]
    Left = 221
    Top = 55
    Width = 74
    Height = 16
    Caption = 'Red.B. C'#225'lc.'
  end
  object Label7: TLabel [4]
    Left = 312
    Top = 55
    Width = 15
    Height = 16
    Caption = 'IPI'
  end
  object Label10: TLabel [5]
    Left = 374
    Top = 55
    Width = 29
    Height = 16
    Caption = 'MVA'
  end
  object Label11: TLabel [6]
    Left = 446
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
    Left = 614
    Top = 55
    Width = 27
    Height = 16
    Caption = 'CST'
  end
  object Label5: TLabel [9]
    Left = 849
    Top = 55
    Width = 78
    Height = 16
    Caption = 'Tipo Pessoa'
  end
  object Label9: TLabel [10]
    Left = 686
    Top = 55
    Width = 21
    Height = 16
    Caption = 'PIS'
  end
  object Label14: TLabel [11]
    Left = 763
    Top = 55
    Width = 49
    Height = 16
    Caption = 'COFINS'
  end
  inherited MMJPanel1: TMMJPanel
    Top = 403
    Width = 998
    TabOrder = 10
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
    Width = 998
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Cooper Blk BT'
    ParentFont = False
    TabOrder = 11
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
  object DBEdit1: TDBEdit [14]
    Left = 8
    Top = 71
    Width = 97
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
  object DBEdit2: TDBEdit [15]
    Left = 107
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
  object DBEdit3: TDBEdit [16]
    Left = 153
    Top = 71
    Width = 64
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
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  object DBGrid1: TDBGrid [17]
    Left = 3
    Top = 112
    Width = 990
    Height = 278
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 12
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
        Width = 350
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
        FieldName = 'IPI'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS_SUBSTRIB'
        Title.Caption = 'Substitui'#231#227'o Tribut'#225'ria'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS_SUBSTRIB_IC'
        Title.Caption = 'Perc. Subst. Trib.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS_SUBSTRIB_IND'
        Title.Caption = 'ICMS Substitui'#231#227'o Tribut'#225'ria'
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
        FieldName = 'PIS'
        Title.Caption = 'Pessoa'
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
      end>
  end
  object DBEdit4: TDBEdit [18]
    Left = 221
    Top = 71
    Width = 84
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
    TabOrder = 3
    OnKeyPress = FormKeyPress
  end
  object DBEdit5: TDBEdit [19]
    Left = 308
    Top = 71
    Width = 57
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
    TabOrder = 4
    OnKeyPress = FormKeyPress
  end
  object DBEdit6: TDBEdit [20]
    Left = 372
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
  object DBEdit7: TDBEdit [21]
    Left = 444
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
  object DBEdit8: TDBEdit [22]
    Left = 524
    Top = 71
    Width = 77
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
  object DBEdit9: TDBEdit [23]
    Left = 608
    Top = 71
    Width = 69
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
    TabOrder = 8
    OnKeyPress = FormKeyPress
  end
  object ComboBox1: TComboBox [24]
    Left = 846
    Top = 71
    Width = 113
    Height = 24
    AutoComplete = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 9
    OnChange = ComboBox1Change
    OnKeyPress = FormKeyPress
    Items.Strings = (
      'F'#237'sica'
      'Jur'#237'dica')
  end
  object DBEdit10: TDBEdit [25]
    Left = 685
    Top = 71
    Width = 69
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
    TabOrder = 13
    OnKeyPress = FormKeyPress
  end
  object DBEdit11: TDBEdit [26]
    Left = 761
    Top = 71
    Width = 77
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
    TabOrder = 14
    OnKeyPress = FormKeyPress
  end
  inherited DtSrc: TDataSource
    DataSet = cds_estado
    Left = 408
  end
  object sds: TSQLDataSet
    CommandText = 
      'select esta.CODESTADO, esta.CFOP'#13#10'        , esta.UF'#13#10'        , e' +
      'sta.ICMS'#13#10'        , esta.REDUCAO'#13#10'        , cfo.CFNOME'#13#10'        ' +
      ', esta.IPI , esta.ICMS_SUBSTRIB, esta.ICMS_SUBSTRIB_IC'#13#10'        ' +
      ', esta.ICMS_SUBSTRIB_IND, esta.CST'#13#10'        , esta.PESSOA'#13#10'     ' +
      '   , esta.PIS'#13#10'        , esta.COFINS'#13#10'FROM ESTADO_ICMS esta '#13#10'le' +
      'ft outer join CFOP cfo on cfo.CFCOD = esta.CFOP '
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
  end
end
