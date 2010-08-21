inherited fClassificacaoFIscalProduto: TfClassificacaoFIscalProduto
  Left = 196
  Top = 130
  Width = 778
  Height = 548
  Caption = 'Classifica'#231#227'o Fiscal dos Produto'
  OldCreateOrder = True
  OnCreate = nil
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 3
    Top = 64
    Width = 88
    Height = 13
    Caption = 'Codigo do Produto'
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
    Caption = 'UF'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 203
    Top = 64
    Width = 23
    Height = 13
    Caption = 'MVA'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 306
    Top = 64
    Width = 58
    Height = 13
    Caption = 'Icms Origem'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [5]
    Left = 411
    Top = 64
    Width = 61
    Height = 13
    Caption = 'Icms Destino'
    FocusControl = DBEdit6
  end
  object Label7: TLabel [6]
    Left = 515
    Top = 64
    Width = 22
    Height = 13
    Caption = 'Icms'
    FocusControl = DBEdit7
  end
  object Label8: TLabel [7]
    Left = 599
    Top = 64
    Width = 49
    Height = 13
    Caption = 'Base Icms'
    FocusControl = DBEdit8
  end
  object Label10: TLabel [8]
    Left = 686
    Top = 64
    Width = 21
    Height = 13
    Caption = 'CST'
    FocusControl = DBEdit8
  end
  inherited MMJPanel1: TMMJPanel
    Width = 762
    Font.Charset = ANSI_CHARSET
    Font.Height = -29
    ParentFont = False
    TabOrder = 10
    object Label9: TLabel
      Left = 9
      Top = 7
      Width = 112
      Height = 36
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
    Top = 459
    Width = 762
    TabOrder = 0
    inherited btnProcurar: TBitBtn
      Visible = False
    end
  end
  object DBEdit1: TDBEdit [11]
    Left = 3
    Top = 80
    Width = 89
    Height = 21
    DataField = 'CODPRO'
    DataSource = DtSrc
    ReadOnly = True
    TabOrder = 9
  end
  object DBEdit2: TDBEdit [12]
    Left = 99
    Top = 80
    Width = 57
    Height = 21
    DataField = 'CFOP'
    DataSource = DtSrc
    TabOrder = 1
  end
  object DBEdit3: TDBEdit [13]
    Left = 163
    Top = 80
    Width = 30
    Height = 21
    DataField = 'UF'
    DataSource = DtSrc
    TabOrder = 2
  end
  object DBEdit4: TDBEdit [14]
    Left = 203
    Top = 80
    Width = 95
    Height = 21
    DataField = 'ICMS_SUBST'
    DataSource = DtSrc
    TabOrder = 3
  end
  object DBEdit5: TDBEdit [15]
    Left = 307
    Top = 80
    Width = 95
    Height = 21
    DataField = 'ICMS_SUBST_IC'
    DataSource = DtSrc
    TabOrder = 4
  end
  object DBEdit6: TDBEdit [16]
    Left = 411
    Top = 80
    Width = 95
    Height = 21
    DataField = 'ICMS_SUBST_IND'
    DataSource = DtSrc
    TabOrder = 5
  end
  object DBEdit7: TDBEdit [17]
    Left = 515
    Top = 80
    Width = 78
    Height = 21
    DataField = 'ICMS'
    DataSource = DtSrc
    TabOrder = 6
  end
  object DBEdit8: TDBEdit [18]
    Left = 599
    Top = 80
    Width = 78
    Height = 21
    DataField = 'ICMS_BASE'
    DataSource = DtSrc
    TabOrder = 7
  end
  object DBGrid1: TDBGrid [19]
    Left = 3
    Top = 112
    Width = 758
    Height = 345
    DataSource = DtSrc
    TabOrder = 11
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
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS_SUBST'
        Title.Caption = 'IVA'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS_SUBST_IC'
        Title.Caption = 'Icms Origem'
        Width = 146
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS_SUBST_IND'
        Title.Caption = 'Icms Destino'
        Width = 149
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
        FieldName = 'CST'
        Visible = True
      end>
  end
  object DBEdit9: TDBEdit [20]
    Left = 683
    Top = 80
    Width = 78
    Height = 21
    DataField = 'CST'
    DataSource = DtSrc
    TabOrder = 8
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
  end
  object dspClassFisc: TDataSetProvider
    DataSet = sdsClassFisc
    Left = 480
    Top = 8
  end
end
