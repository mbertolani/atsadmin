inherited fNaturezaOperacao: TfNaturezaOperacao
  Caption = 'Natureza Opera'#231#227'o'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    Height = 105
    object DBRadioGroup1: TDBRadioGroup
      Left = 1
      Top = 44
      Width = 70
      Height = 59
      Caption = 'Gera T'#237'tulo'
      DataField = 'GERATITULO'
      DataSource = DtSrc
      Items.Strings = (
        'Sim'
        'N'#227'o')
      TabOrder = 0
      Values.Strings = (
        '0'
        '1')
    end
    object DBRadioGroup2: TDBRadioGroup
      Left = 71
      Top = 44
      Width = 494
      Height = 59
      Caption = 'Tipo Movimento'
      Columns = 5
      DataField = 'TIPOMOVIMENTO'
      DataSource = DtSrc
      Items.Strings = (
        'Entrada'
        'Saida'
        'Compra'
        'Venda'
        'Retorno'
        'Dev. Compra'
        'Dev. Venda'
        'Remessa'
        'Outros')
      TabOrder = 1
      Values.Strings = (
        '0'
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9')
    end
    object DBRadioGroup3: TDBRadioGroup
      Left = 565
      Top = 44
      Width = 206
      Height = 59
      Caption = 'Movimenta Estoque'
      Columns = 2
      DataField = 'BAIXAMOVIMENTO'
      DataSource = DtSrc
      Items.Strings = (
        'Entrada'
        'Saida'
        'N'#227'o Movimenta')
      TabOrder = 2
      Values.Strings = (
        '0'
        '1'
        '9')
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 770
      Height = 43
      Align = alTop
      Caption = 'Natureza'
      TabOrder = 3
      object Label1: TLabel
        Left = 11
        Top = 18
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label2: TLabel
        Left = 260
        Top = 17
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
      end
      object DBEdit1: TDBEdit
        Left = 56
        Top = 13
        Width = 145
        Height = 21
        DataField = 'CODNATUREZA'
        DataSource = DtSrc
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 319
        Top = 12
        Width = 428
        Height = 21
        DataField = 'DESCNATUREZA'
        DataSource = DtSrc
        TabOrder = 1
      end
    end
  end
  inherited MMJPanel2: TMMJPanel
    inherited btnProcurar: TBitBtn
      Visible = False
    end
  end
  object JvDBUltimGrid1: TJvDBUltimGrid [2]
    Left = 0
    Top = 105
    Width = 772
    Height = 369
    Align = alClient
    DataSource = DtSrc
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = JvDBUltimGrid1CellClick
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'CODNATUREZA'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCNATUREZA'
        Title.Caption = 'Descri'#231#227'o'
        Width = 320
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GERARTITULOS'
        Title.Caption = 'Gera T'#237'tulo'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPOMOVIMENTOS'
        Title.Caption = 'Tipo Movimento'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIXAMOVIMENTOS'
        Title.Caption = 'Movimenta Estoque'
        Width = 150
        Visible = True
      end>
  end
  inherited DtSrc: TDataSource
    DataSet = cdsNat
    Left = 256
    Top = 128
  end
  object sdsNat: TSQLDataSet
    CommandText = 
      'SELECT r.CODNATUREZA, r.DESCNATUREZA, r.GERATITULO, r.TIPOTITULO' +
      ', r.TIPOMOVIMENTO, r.BAIXAMOVIMENTO ,'#13#10'CASE WHEN r.GERATITULO = ' +
      '0 THEN '#39'SIM'#39'  WHEN r.GERATITULO = 1 THEN '#39'NAO'#39' ELSE '#39'NAO'#39' END GE' +
      'RARTITULOS, '#13#10'CASE WHEN r.TIPOMOVIMENTO = 0 THEN '#39'ENTRADA'#39'      ' +
      '  WHEN r.TIPOMOVIMENTO = 1 THEN '#39'SAIDA'#39' '#13#10'          WHEN r.TIPOM' +
      'OVIMENTO = 2 THEN '#39'COMPRA'#39'          WHEN r.TIPOMOVIMENTO = 3 THE' +
      'N '#39'VENDA'#39#13#10'          WHEN r.TIPOMOVIMENTO = 4 THEN '#39'RETORNO'#39'   W' +
      'HEN r.TIPOMOVIMENTO = 5 THEN '#39'DEVOLUCAO COMPRA'#39#13#10' WHEN r.TIPOMOV' +
      'IMENTO = 6 THEN '#39'DEVOLUCAO VENDA'#39#13#10'          WHEN r.TIPOMOVIMENT' +
      'O = 7 THEN '#39'REMESSA'#39'     '#13#10'WHEN r.TIPOMOVIMENTO = 8 THEN '#39'OUTROS' +
      #39'       END TIPOMOVIMENTOS,'#13#10'CASE WHEN r.BAIXAMOVIMENTO = 0 THEN' +
      ' '#39'ENTRADA'#39'  WHEN r.BAIXAMOVIMENTO = 1 THEN '#39'SAIDA'#39' ELSE '#39'NAO MOV' +
      'IMENTA'#39' '#13#10'END BAIXAMOVIMENTOS '#13#10'FROM  NATUREZAOPERACAO r'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 160
    Top = 128
    object sdsNatCODNATUREZA: TSmallintField
      FieldName = 'CODNATUREZA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNatDESCNATUREZA: TStringField
      FieldName = 'DESCNATUREZA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object sdsNatGERATITULO: TSmallintField
      FieldName = 'GERATITULO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsNatTIPOTITULO: TSmallintField
      FieldName = 'TIPOTITULO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsNatTIPOMOVIMENTO: TSmallintField
      FieldName = 'TIPOMOVIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNatBAIXAMOVIMENTO: TSmallintField
      FieldName = 'BAIXAMOVIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNatGERARTITULOS: TStringField
      FieldName = 'GERARTITULOS'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object sdsNatTIPOMOVIMENTOS: TStringField
      FieldName = 'TIPOMOVIMENTOS'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 16
    end
    object sdsNatBAIXAMOVIMENTOS: TStringField
      FieldName = 'BAIXAMOVIMENTOS'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 13
    end
  end
  object dspNat: TDataSetProvider
    DataSet = sdsNat
    Left = 192
    Top = 128
  end
  object cdsNat: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNat'
    Left = 224
    Top = 128
    object cdsNatCODNATUREZA: TSmallintField
      FieldName = 'CODNATUREZA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNatDESCNATUREZA: TStringField
      FieldName = 'DESCNATUREZA'
      Required = True
      Size = 30
    end
    object cdsNatGERATITULO: TSmallintField
      FieldName = 'GERATITULO'
      Required = True
    end
    object cdsNatTIPOTITULO: TSmallintField
      FieldName = 'TIPOTITULO'
      Required = True
    end
    object cdsNatTIPOMOVIMENTO: TSmallintField
      FieldName = 'TIPOMOVIMENTO'
    end
    object cdsNatBAIXAMOVIMENTO: TSmallintField
      FieldName = 'BAIXAMOVIMENTO'
    end
    object cdsNatGERARTITULOS: TStringField
      FieldName = 'GERARTITULOS'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object cdsNatTIPOMOVIMENTOS: TStringField
      FieldName = 'TIPOMOVIMENTOS'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
      FixedChar = True
      Size = 9
    end
    object cdsNatBAIXAMOVIMENTOS: TStringField
      FieldName = 'BAIXAMOVIMENTOS'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
      FixedChar = True
      Size = 13
    end
  end
end
