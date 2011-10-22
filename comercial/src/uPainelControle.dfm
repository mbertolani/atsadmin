object fPainelControle: TfPainelControle
  Left = 192
  Top = 107
  Width = 966
  Height = 574
  Caption = 'Painel de Controle'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 479
    Height = 273
    Hint = 'Vendas no Ano'
    Align = alCustom
    Caption = 'Vendas'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object DBChart1: TDBChart
      Left = 2
      Top = 15
      Width = 475
      Height = 256
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Text.Strings = (
        'TDBChart')
      Title.Visible = False
      Align = alClient
      PopupMenu = PopupMenu1
      TabOrder = 0
      OnDblClick = DBChart1DblClick
      object Series1: TBarSeries
        Marks.ArrowLength = 20
        Marks.Style = smsLegend
        Marks.Transparent = True
        Marks.Visible = False
        DataSource = cdsVenda
        SeriesColor = clBlue
        ShowInLegend = False
        Title = 'Vendas'
        XLabelsSource = 'MES'
        BarStyle = bsRectGradient
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        XValues.ValueSource = 'UDF_MONTH'
        YValues.DateTime = False
        YValues.Name = 'Bar'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
        YValues.ValueSource = 'VENDA'
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = -1
    Top = 276
    Width = 479
    Height = 269
    Hint = 'Compras no Ano'
    Caption = 'Compras'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    object DBChart2: TDBChart
      Left = 2
      Top = 15
      Width = 475
      Height = 252
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Text.Strings = (
        'TDBChart')
      Title.Visible = False
      Align = alClient
      PopupMenu = PopupMenu3
      TabOrder = 0
      object BarSeries1: TBarSeries
        Marks.ArrowLength = 20
        Marks.Style = smsLegend
        Marks.Transparent = True
        Marks.Visible = False
        DataSource = cdsCompras
        SeriesColor = clGreen
        ShowInLegend = False
        Title = 'Compras'
        XLabelsSource = 'MES'
        BarStyle = bsRectGradient
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        XValues.ValueSource = 'UDF_MONTH'
        YValues.DateTime = False
        YValues.Name = 'Bar'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
        YValues.ValueSource = 'COMPRA'
      end
    end
  end
  object GroupBox3: TGroupBox
    Left = 479
    Top = 0
    Width = 461
    Height = 273
    Hint = 'Pedidos em Aberto x Finalizados'
    Caption = 'Execu'#231#227'o de Vendas'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    object DBChart3: TDBChart
      Left = 2
      Top = 15
      Width = 457
      Height = 256
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Text.Strings = (
        'TDBChart')
      Title.Visible = False
      Legend.Visible = False
      Align = alClient
      PopupMenu = PopupMenu2
      TabOrder = 0
      object BarSeries2: TBarSeries
        Marks.ArrowLength = 20
        Marks.Style = smsLegend
        Marks.Visible = False
        DataSource = cdsPedidoVenda
        SeriesColor = clBlue
        ShowInLegend = False
        Title = 'Vendas'
        XLabelsSource = 'MESANO'
        BarStyle = bsRectGradient
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        XValues.ValueSource = 'MESANOV'
        YValues.DateTime = False
        YValues.Name = 'Bar'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
        YValues.ValueSource = 'VALORVENDA'
      end
      object Series2: TBarSeries
        Marks.ArrowLength = 20
        Marks.Visible = False
        DataSource = cdsPedidoVenda
        SeriesColor = clAqua
        Title = 'Pedidos'
        XLabelsSource = 'MESANO'
        BarStyle = bsRectGradient
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        XValues.ValueSource = 'MESANOV'
        YValues.DateTime = False
        YValues.Name = 'Bar'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
        YValues.ValueSource = 'VALORPEDIDO'
      end
    end
  end
  object GroupBox4: TGroupBox
    Left = 479
    Top = 275
    Width = 461
    Height = 271
    Hint = 'Pedidos em Aberto x Finalizados'
    Caption = 'Execu'#231#227'o de Compras'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    object DBChart4: TDBChart
      Left = 2
      Top = 15
      Width = 457
      Height = 254
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Text.Strings = (
        'TDBChart')
      Title.Visible = False
      Legend.Visible = False
      Align = alClient
      PopupMenu = PopupMenu4
      TabOrder = 0
      object BarSeries3: TBarSeries
        Marks.ArrowLength = 20
        Marks.Style = smsLegend
        Marks.Visible = False
        DataSource = cdsPedidoCompra
        SeriesColor = clGreen
        ShowInLegend = False
        Title = 'Compras'
        XLabelsSource = 'MESANO'
        BarStyle = bsRectGradient
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        XValues.ValueSource = 'MESANOV'
        YValues.DateTime = False
        YValues.Name = 'Bar'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
        YValues.ValueSource = 'VALORVENDA'
      end
      object BarSeries4: TBarSeries
        Marks.ArrowLength = 20
        Marks.Visible = False
        DataSource = cdsPedidoCompra
        SeriesColor = 8454143
        Title = 'Pedidos'
        XLabelsSource = 'MESANO'
        BarStyle = bsRectGradient
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        XValues.ValueSource = 'MESANOV'
        YValues.DateTime = False
        YValues.Name = 'Bar'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
        YValues.ValueSource = 'VALORPEDIDO'
      end
    end
  end
  object sdsVenda: TSQLDataSet
    CommandText = 
      'SELECT UDF_MONTH(DATAVENDA) , UDF_SMONTHNAME(DATAVENDA) MES, SUM' +
      '(VALOR) VENDA'#13#10'   FROM VENDA '#13#10'WHERE DATAVENDA BETWEEN :dataIni ' +
      'AND :dataFim '#13#10'GROUP BY  UDF_MONTH(DATAVENDA), UDF_SMONTHNAME(DA' +
      'TAVENDA)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'dataIni'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dataFim'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 304
    Top = 72
  end
  object dspVenda: TDataSetProvider
    DataSet = sdsVenda
    Left = 336
    Top = 72
  end
  object cdsVenda: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'dataIni'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dataFim'
        ParamType = ptInput
      end>
    ProviderName = 'dspVenda'
    Left = 368
    Top = 72
    object cdsVendaVENDA: TFloatField
      FieldName = 'VENDA'
      ReadOnly = True
    end
    object cdsVendaMES: TStringField
      FieldName = 'MES'
      ReadOnly = True
      FixedChar = True
      Size = 5
    end
    object cdsVendaUDF_MONTH: TSmallintField
      FieldName = 'UDF_MONTH'
      ReadOnly = True
    end
  end
  object sdsCompras: TSQLDataSet
    CommandText = 
      'SELECT UDF_MONTH(DATACOMPRA) , UDF_SMONTHNAME(DATACOMPRA) MES, S' +
      'UM(VALOR) COMPRA'#13#10'   FROM COMPRA '#13#10'WHERE DATACOMPRA BETWEEN :dat' +
      'aIni AND :dataFim'#13#10'GROUP BY  UDF_MONTH(DATACOMPRA), UDF_SMONTHNA' +
      'ME(DATACOMPRA)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'dataIni'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dataFim'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 120
    Top = 344
  end
  object dspCompras: TDataSetProvider
    DataSet = sdsCompras
    Left = 152
    Top = 344
  end
  object cdsCompras: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'dataIni'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dataFim'
        ParamType = ptInput
      end>
    ProviderName = 'dspCompras'
    Left = 184
    Top = 344
    object StringField1: TStringField
      FieldName = 'MES'
      ReadOnly = True
      FixedChar = True
      Size = 5
    end
    object SmallintField1: TSmallintField
      FieldName = 'UDF_MONTH'
      ReadOnly = True
    end
    object cdsComprasCOMPRA: TFloatField
      FieldName = 'COMPRA'
      ReadOnly = True
    end
  end
  object sdsPedidoVenda: TSQLDataSet
    CommandText = 'select * from pedido_x_venda (:dataIni,:dataFim, '#39'V'#39')'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'dataIni'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dataFim'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 656
    Top = 96
  end
  object dspPedidoVenda: TDataSetProvider
    DataSet = sdsPedidoVenda
    Left = 688
    Top = 96
  end
  object cdsPedidoVenda: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'dataIni'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dataFim'
        ParamType = ptInput
      end>
    ProviderName = 'dspPedidoVenda'
    Left = 720
    Top = 96
    object cdsPedidoVendaMESANO: TStringField
      FieldName = 'MESANO'
      FixedChar = True
      Size = 7
    end
    object cdsPedidoVendaVALORVENDA: TFloatField
      FieldName = 'VALORVENDA'
    end
    object cdsPedidoVendaVALORPEDIDO: TFloatField
      FieldName = 'VALORPEDIDO'
    end
    object cdsPedidoVendaMESANOV: TIntegerField
      FieldName = 'MESANOV'
    end
  end
  object sdsPedidoCompra: TSQLDataSet
    CommandText = 'select * from pedido_x_venda (:dataIni,:dataFim, '#39'C'#39')'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'dataIni'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dataFim'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 632
    Top = 352
  end
  object dspPedidoCompra: TDataSetProvider
    DataSet = sdsPedidoCompra
    Left = 664
    Top = 352
  end
  object cdsPedidoCompra: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'dataIni'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dataFim'
        ParamType = ptInput
      end>
    ProviderName = 'dspPedidoCompra'
    Left = 696
    Top = 352
    object StringField2: TStringField
      FieldName = 'MESANO'
      FixedChar = True
      Size = 7
    end
    object FloatField1: TFloatField
      FieldName = 'VALORVENDA'
    end
    object FloatField2: TFloatField
      FieldName = 'VALORPEDIDO'
    end
    object IntegerField1: TIntegerField
      FieldName = 'MESANOV'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 410
    Top = 55
    object MudarPerododesteGrfico1: TMenuItem
      Caption = 'Mudar Per'#237'odo deste Gr'#225'fico'
      OnClick = MudarPerododesteGrfico1Click
    end
    object MudarPerododeTodososGrficos1: TMenuItem
      Caption = 'Mudar Per'#237'odo de Todos os Gr'#225'ficos'
      OnClick = MudarPerododeTodososGrficos1Click
    end
    object AtualizarGrficos1: TMenuItem
      Caption = 'Atualizar Gr'#225'ficos'
      OnClick = AtualizarGrficos1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 554
    Top = 55
    object MenuItem1: TMenuItem
      Caption = 'Mudar Per'#237'odo deste Gr'#225'fico'
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Caption = 'Mudar Per'#237'odo de Todos os Gr'#225'ficos'
      OnClick = MudarPerododeTodososGrficos1Click
    end
    object MenuItem3: TMenuItem
      Caption = 'Atualizar Gr'#225'ficos'
      OnClick = AtualizarGrficos1Click
    end
  end
  object PopupMenu3: TPopupMenu
    Left = 314
    Top = 343
    object MenuItem4: TMenuItem
      Caption = 'Mudar Per'#237'odo deste Gr'#225'fico'
      OnClick = MenuItem4Click
    end
    object MenuItem5: TMenuItem
      Caption = 'Mudar Per'#237'odo de Todos os Gr'#225'ficos'
      OnClick = MudarPerododeTodososGrficos1Click
    end
    object MenuItem6: TMenuItem
      Caption = 'Atualizar Gr'#225'ficos'
      OnClick = AtualizarGrficos1Click
    end
  end
  object PopupMenu4: TPopupMenu
    Left = 594
    Top = 375
    object MenuItem7: TMenuItem
      Caption = 'Mudar Per'#237'odo deste Gr'#225'fico'
      OnClick = MenuItem7Click
    end
    object MenuItem8: TMenuItem
      Caption = 'Mudar Per'#237'odo de Todos os Gr'#225'ficos'
      OnClick = MudarPerododeTodososGrficos1Click
    end
    object MenuItem9: TMenuItem
      Caption = 'Atualizar Gr'#225'ficos'
      OnClick = AtualizarGrficos1Click
    end
  end
end
