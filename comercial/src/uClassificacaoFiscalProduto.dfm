inherited fClassificacaoFIscalProduto: TfClassificacaoFIscalProduto
  Left = 196
  Top = 132
  Width = 1013
  Height = 587
  Caption = 'Classifica'#231#227'o Fiscal dos Produto'
  OldCreateOrder = True
  OnCreate = nil
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 3
    Top = 64
    Width = 77
    Height = 13
    Caption = 'Cod. do Produto'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 99
    Top = 64
    Width = 28
    Height = 13
    Caption = 'CFOP'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [2]
    Left = 163
    Top = 64
    Width = 14
    Height = 13
    Hint = 'Estado'
    Caption = 'UF'
    FocusControl = DBEdit3
    ParentShowHint = False
    ShowHint = True
  end
  object Label4: TLabel [3]
    Left = 200
    Top = 64
    Width = 23
    Height = 13
    Hint = 'Margem De Valor Agregado(ST)'
    Caption = 'MVA'
    FocusControl = DBEdit4
    ParentShowHint = False
    ShowHint = True
  end
  object Label5: TLabel [4]
    Left = 272
    Top = 64
    Width = 58
    Height = 13
    Caption = 'Icms Origem'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [5]
    Left = 347
    Top = 64
    Width = 61
    Height = 13
    Caption = 'Icms Destino'
    FocusControl = DBEdit6
  end
  object Label7: TLabel [6]
    Left = 424
    Top = 64
    Width = 22
    Height = 13
    Caption = 'Icms'
    FocusControl = DBEdit7
  end
  object Label8: TLabel [7]
    Left = 487
    Top = 64
    Width = 75
    Height = 13
    Caption = 'Red. Base Icms'
    FocusControl = DBEdit8
  end
  object Label10: TLabel [8]
    Left = 573
    Top = 64
    Width = 21
    Height = 13
    Hint = 'Codigo Situa'#231#227'o Tribut'#225'ria'
    Caption = 'CST'
    FocusControl = DBEdit9
    ParentShowHint = False
    ShowHint = True
  end
  object Label11: TLabel [9]
    Left = 773
    Top = 64
    Width = 13
    Height = 13
    Hint = 'Imposto sobre Produto Industrializado'
    Caption = 'IPI'
    FocusControl = DBEdit10
    ParentShowHint = False
    ShowHint = True
  end
  object Label12: TLabel [10]
    Left = 638
    Top = 64
    Width = 37
    Height = 13
    Hint = 'Codigo Situa'#231#227'o Tribut'#225'ria'
    Caption = 'CSOSN'
    FocusControl = DBEdit11
    ParentShowHint = False
    ShowHint = True
  end
  object Label13: TLabel [11]
    Left = 704
    Top = 64
    Width = 37
    Height = 13
    Hint = 'Imposto sobre Produto Industrializado'
    Caption = 'CST IPI'
    FocusControl = DBEdit12
    ParentShowHint = False
    ShowHint = True
  end
  object Label14: TLabel [12]
    Left = 73
    Top = 106
    Width = 39
    Height = 13
    Hint = 'Imposto sobre Produto Industrializado'
    Caption = 'COFINS'
    FocusControl = DBEdit13
    ParentShowHint = False
    ShowHint = True
  end
  object Label15: TLabel [13]
    Left = 4
    Top = 106
    Width = 63
    Height = 13
    Hint = 'Imposto sobre Produto Industrializado'
    Caption = 'CST COFINS'
    FocusControl = DBEdit14
    ParentShowHint = False
    ShowHint = True
  end
  object Label16: TLabel [14]
    Left = 210
    Top = 106
    Width = 17
    Height = 13
    Hint = 'Imposto sobre Produto Industrializado'
    Caption = 'PIS'
    FocusControl = DBEdit15
    ParentShowHint = False
    ShowHint = True
  end
  object Label17: TLabel [15]
    Left = 140
    Top = 106
    Width = 41
    Height = 13
    Hint = 'Imposto sobre Produto Industrializado'
    Caption = 'CST PIS'
    FocusControl = DBEdit16
    ParentShowHint = False
    ShowHint = True
  end
  inherited MMJPanel1: TMMJPanel
    Width = 997
    Font.Charset = ANSI_CHARSET
    Font.Height = -29
    ParentFont = False
    TabOrder = 17
    object Label9: TLabel
      Left = 9
      Top = 7
      Width = 81
      Height = 34
      Anchors = [akLeft, akRight]
      Caption = 'Label9'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Cooper Blk BT'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      PopupMenu = PopupMenu1
      Transparent = True
    end
  end
  inherited MMJPanel2: TMMJPanel
    Top = 498
    Width = 997
    TabOrder = 16
    inherited btnProcurar: TBitBtn
      Visible = False
    end
  end
  object DBEdit1: TDBEdit [18]
    Left = 3
    Top = 80
    Width = 83
    Height = 21
    DataField = 'CODPRO'
    DataSource = DtSrc
    ReadOnly = True
    TabOrder = 0
  end
  object DBEdit2: TDBEdit [19]
    Left = 99
    Top = 80
    Width = 57
    Height = 21
    DataField = 'CFOP'
    DataSource = DtSrc
    TabOrder = 1
  end
  object DBEdit3: TDBEdit [20]
    Left = 163
    Top = 80
    Width = 30
    Height = 21
    DataField = 'UF'
    DataSource = DtSrc
    TabOrder = 2
  end
  object DBEdit4: TDBEdit [21]
    Left = 200
    Top = 80
    Width = 65
    Height = 21
    DataField = 'ICMS_SUBST'
    DataSource = DtSrc
    TabOrder = 3
  end
  object DBEdit5: TDBEdit [22]
    Left = 271
    Top = 80
    Width = 70
    Height = 21
    DataField = 'ICMS_SUBST_IC'
    DataSource = DtSrc
    TabOrder = 4
  end
  object DBEdit6: TDBEdit [23]
    Left = 347
    Top = 80
    Width = 70
    Height = 21
    DataField = 'ICMS_SUBST_IND'
    DataSource = DtSrc
    TabOrder = 5
  end
  object DBEdit7: TDBEdit [24]
    Left = 422
    Top = 80
    Width = 60
    Height = 21
    DataField = 'ICMS'
    DataSource = DtSrc
    TabOrder = 6
  end
  object DBEdit8: TDBEdit [25]
    Left = 487
    Top = 80
    Width = 78
    Height = 21
    DataField = 'ICMS_BASE'
    DataSource = DtSrc
    TabOrder = 7
  end
  object DBGrid1: TDBGrid [26]
    Left = 3
    Top = 152
    Width = 990
    Height = 345
    DataSource = DtSrc
    TabOrder = 18
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnKeyDown = DBGrid1KeyDown
    OnKeyPress = DBGrid1KeyPress
    OnKeyUp = DBGrid1KeyUp
    Columns = <
      item
        Expanded = False
        FieldName = 'CODPRO'
        Title.Caption = 'Cod. Produto'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CFOP'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CST'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CSOSN'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS_SUBST'
        Title.Caption = 'IVA'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS_SUBST_IC'
        Title.Caption = 'Icms Origem'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS_SUBST_IND'
        Title.Caption = 'Icms Destino'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS'
        Title.Caption = 'Icms'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS_BASE'
        Title.Caption = 'Base Icms'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CST IPI'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IPI'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CST COFINS'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COFINS'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CST PIS'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PIS'
        Width = 70
        Visible = True
      end>
  end
  object DBEdit9: TDBEdit [27]
    Left = 571
    Top = 80
    Width = 60
    Height = 21
    DataField = 'CST'
    DataSource = DtSrc
    TabOrder = 8
  end
  object DBEdit10: TDBEdit [28]
    Left = 773
    Top = 80
    Width = 60
    Height = 21
    DataField = 'IPI'
    DataSource = DtSrc
    TabOrder = 11
  end
  object DBEdit11: TDBEdit [29]
    Left = 636
    Top = 80
    Width = 60
    Height = 21
    DataField = 'CSOSN'
    DataSource = DtSrc
    TabOrder = 9
  end
  object DBEdit12: TDBEdit [30]
    Left = 704
    Top = 80
    Width = 65
    Height = 21
    DataField = 'CSTIPI'
    DataSource = DtSrc
    TabOrder = 10
  end
  object DBEdit13: TDBEdit [31]
    Left = 73
    Top = 122
    Width = 60
    Height = 21
    DataField = 'COFINS'
    DataSource = DtSrc
    TabOrder = 13
  end
  object DBEdit14: TDBEdit [32]
    Left = 4
    Top = 122
    Width = 65
    Height = 21
    DataField = 'CSTCOFINS'
    DataSource = DtSrc
    TabOrder = 12
  end
  object DBEdit15: TDBEdit [33]
    Left = 210
    Top = 122
    Width = 60
    Height = 21
    DataField = 'PIS'
    DataSource = DtSrc
    TabOrder = 15
  end
  object DBEdit16: TDBEdit [34]
    Left = 140
    Top = 122
    Width = 65
    Height = 21
    DataField = 'CSTPIS'
    DataSource = DtSrc
    TabOrder = 14
  end
  inherited DtSrc: TDataSource
    DataSet = cdsClassFisc
  end
  object sdsClassFisc: TSQLDataSet
    CommandText = 
      'select cfp.*, p.codpro from CLASSIFICACAOFISCALPRODUTO cfp'#13#10'inne' +
      'r join PRODUTOS p on p.codproduto = cfp.COD_PROD where cfp.cod_p' +
      'rod = :pcodpro'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcodpro'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 440
    Top = 8
    object sdsClassFiscCOD_PROD: TIntegerField
      FieldName = 'COD_PROD'
      Required = True
    end
    object sdsClassFiscCFOP: TStringField
      FieldName = 'CFOP'
      Required = True
      Size = 30
    end
    object sdsClassFiscUF: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object sdsClassFiscICMS_SUBST: TFloatField
      FieldName = 'ICMS_SUBST'
    end
    object sdsClassFiscICMS_SUBST_IC: TFloatField
      FieldName = 'ICMS_SUBST_IC'
    end
    object sdsClassFiscICMS_SUBST_IND: TFloatField
      FieldName = 'ICMS_SUBST_IND'
    end
    object sdsClassFiscICMS: TFloatField
      FieldName = 'ICMS'
    end
    object sdsClassFiscICMS_BASE: TFloatField
      FieldName = 'ICMS_BASE'
    end
    object sdsClassFiscCODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = [pfInWhere]
      Size = 15
    end
    object sdsClassFiscCST: TStringField
      FieldName = 'CST'
      FixedChar = True
      Size = 3
    end
    object sdsClassFiscIPI: TFloatField
      FieldName = 'IPI'
    end
    object sdsClassFiscCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 3
    end
    object sdsClassFiscCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Size = 2
    end
    object sdsClassFiscCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Size = 2
    end
    object sdsClassFiscCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      Size = 2
    end
    object sdsClassFiscPIS: TFloatField
      FieldName = 'PIS'
    end
    object sdsClassFiscCOFINS: TFloatField
      FieldName = 'COFINS'
    end
  end
  object cdsClassFisc: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pcodpro'
        ParamType = ptInput
      end>
    ProviderName = 'dspClassFisc'
    Left = 512
    Top = 8
    object cdsClassFiscCOD_PROD: TIntegerField
      FieldName = 'COD_PROD'
      Required = True
    end
    object cdsClassFiscCFOP: TStringField
      FieldName = 'CFOP'
      Required = True
      Size = 30
    end
    object cdsClassFiscUF: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsClassFiscICMS_SUBST: TFloatField
      FieldName = 'ICMS_SUBST'
    end
    object cdsClassFiscICMS_SUBST_IC: TFloatField
      FieldName = 'ICMS_SUBST_IC'
    end
    object cdsClassFiscICMS_SUBST_IND: TFloatField
      FieldName = 'ICMS_SUBST_IND'
    end
    object cdsClassFiscICMS: TFloatField
      FieldName = 'ICMS'
    end
    object cdsClassFiscICMS_BASE: TFloatField
      FieldName = 'ICMS_BASE'
    end
    object cdsClassFiscCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object cdsClassFiscCST: TStringField
      FieldName = 'CST'
      FixedChar = True
      Size = 3
    end
    object cdsClassFiscIPI: TFloatField
      FieldName = 'IPI'
    end
    object cdsClassFiscCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 3
    end
    object cdsClassFiscCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Size = 2
    end
    object cdsClassFiscCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Size = 2
    end
    object cdsClassFiscCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      Size = 2
    end
    object cdsClassFiscPIS: TFloatField
      FieldName = 'PIS'
    end
    object cdsClassFiscCOFINS: TFloatField
      FieldName = 'COFINS'
    end
  end
  object dspClassFisc: TDataSetProvider
    DataSet = sdsClassFisc
    Left = 480
    Top = 8
  end
end
