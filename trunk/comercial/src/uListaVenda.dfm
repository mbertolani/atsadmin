inherited fListaVenda: TfListaVenda
  Left = 247
  Top = 175
  Width = 711
  Height = 561
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    Top = 473
    Width = 703
    inherited btnProcurar: TBitBtn
      OnClick = btnProcurarClick
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 703
    inherited Label1: TLabel
      Left = 152
      Width = 411
      Caption = 'Listas de Pre'#231'os de Venda'
    end
    inherited Label2: TLabel
      Left = 156
      Width = 411
      Caption = 'Listas de Pre'#231'os de Venda'
    end
  end
  object gbLista: TGroupBox [2]
    Left = 5
    Top = 62
    Width = 680
    Height = 403
    Caption = 'Lista de Venda'
    TabOrder = 2
    object Label3: TLabel
      Left = 12
      Top = 18
      Width = 53
      Height = 13
      Caption = 'Nome Lista'
    end
    object Label4: TLabel
      Left = 215
      Top = 18
      Width = 53
      Height = 13
      Caption = 'Data Inicial'
    end
    object Label5: TLabel
      Left = 321
      Top = 18
      Width = 48
      Height = 13
      Caption = 'Data Final'
    end
    object Label6: TLabel
      Left = 422
      Top = 18
      Width = 41
      Height = 13
      Caption = 'Validade'
    end
    object dbNomeLista: TDBEdit
      Left = 8
      Top = 32
      Width = 185
      Height = 21
      DataField = 'NOMELISTA'
      DataSource = DtSrc
      TabOrder = 0
    end
    object dbDataInicial: TJvDBDatePickerEdit
      Left = 212
      Top = 32
      Width = 95
      Height = 21
      AllowNoDate = True
      DataField = 'DATAINICIAL'
      DataSource = DtSrc
      Enabled = False
      TabOrder = 1
    end
    object dbDataFinal: TJvDBDatePickerEdit
      Left = 317
      Top = 32
      Width = 95
      Height = 21
      AllowNoDate = True
      DataField = 'DATAFINAL'
      DataSource = DtSrc
      Enabled = False
      TabOrder = 2
    end
    object dbValidade: TJvDBDatePickerEdit
      Left = 419
      Top = 32
      Width = 95
      Height = 21
      AllowNoDate = True
      DataField = 'VALIDADE'
      DataSource = DtSrc
      Enabled = False
      TabOrder = 3
      OnExit = dbValidadeExit
    end
    object btnTodosProd: TButton
      Left = 520
      Top = 26
      Width = 153
      Height = 25
      Caption = 'Adicionar Todos Produtos'
      TabOrder = 4
      OnClick = btnTodosProdClick
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 58
      Width = 665
      Height = 335
      Caption = 'Itens Lista'
      TabOrder = 5
      object Label7: TLabel
        Left = 8
        Top = 232
        Width = 37
        Height = 13
        Caption = 'Produto'
      end
      object Label8: TLabel
        Left = 336
        Top = 285
        Width = 72
        Height = 13
        Caption = 'Desconto Max.'
      end
      object Label9: TLabel
        Left = 416
        Top = 285
        Width = 69
        Height = 13
        Caption = 'Desconto Min.'
      end
      object Label10: TLabel
        Left = 508
        Top = 285
        Width = 64
        Height = 13
        Caption = 'Margem Max.'
      end
      object Label11: TLabel
        Left = 584
        Top = 285
        Width = 61
        Height = 13
        Caption = 'Margem Min.'
      end
      object Label12: TLabel
        Left = 200
        Top = 285
        Width = 62
        Height = 13
        Caption = 'Pre'#231'o Venda'
      end
      object Label13: TLabel
        Left = 13
        Top = 285
        Width = 67
        Height = 13
        Caption = 'Pre'#231'o Compra'
      end
      object Label14: TLabel
        Left = 99
        Top = 285
        Width = 83
        Height = 13
        Caption = 'Margem p/Venda'
      end
      object dbgDetalhe: TDBGrid
        Left = 4
        Top = 18
        Width = 656
        Height = 210
        DataSource = dtsrcDet
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'PRODUTO'
            Title.Caption = 'Produto'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALTPRECO'
            Title.Caption = 'Altera'#231#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCONTO'
            Title.Caption = 'Desconto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCONTOMAX'
            Title.Caption = 'Desconto Maximo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCONTOMIN'
            Title.Caption = 'Desconto Minimo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MARGEM'
            Title.Caption = 'Usa Margem'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MARGEMMAX'
            Title.Caption = 'Margem Maxima'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MARGEMMIN'
            Title.Caption = 'Margem Minima'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQUE'
            Title.Caption = 'Quantidade Estoque'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECOCOMPRA'
            Title.Caption = 'Pre'#231'o Compra'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECOVENDA'
            Title.Caption = 'Pre'#231'o Venda'
            Visible = True
          end>
      end
      object DBEdit1: TDBEdit
        Left = 7
        Top = 244
        Width = 650
        Height = 21
        DataField = 'PRODUTO'
        DataSource = dtsrcDet
        TabOrder = 1
      end
      object chkMargem: TDBCheckBox
        Left = 509
        Top = 269
        Width = 97
        Height = 17
        Caption = 'Usa Margem'
        DataField = 'MARGEM'
        DataSource = dtsrcDet
        TabOrder = 2
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = chkMargemClick
      end
      object chkDesconto: TDBCheckBox
        Left = 349
        Top = 269
        Width = 97
        Height = 17
        Caption = 'Usa Desconto'
        DataField = 'DESCONTO'
        DataSource = dtsrcDet
        TabOrder = 3
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = chkDescontoClick
      end
      object chkPermite: TDBCheckBox
        Left = 13
        Top = 269
        Width = 154
        Height = 17
        Caption = 'Permite Altera'#231#227'o na Venda'
        DataField = 'ALTPRECO'
        DataSource = dtsrcDet
        TabOrder = 4
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBEdit6: TDBEdit
        Left = 196
        Top = 301
        Width = 114
        Height = 21
        DataField = 'PRECOVENDA'
        DataSource = dtsrcDet
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 9
        Top = 301
        Width = 80
        Height = 21
        DataField = 'PRECOCOMPRA'
        DataSource = dtsrcDet
        ReadOnly = True
        TabOrder = 6
      end
      object DBEdit2: TDBEdit
        Left = 336
        Top = 302
        Width = 75
        Height = 21
        DataField = 'DESCONTOMAX'
        DataSource = dtsrcDet
        TabOrder = 7
      end
      object DBEdit3: TDBEdit
        Left = 416
        Top = 302
        Width = 75
        Height = 21
        DataField = 'DESCONTOMIN'
        DataSource = dtsrcDet
        TabOrder = 8
      end
      object DBEdit4: TDBEdit
        Left = 506
        Top = 302
        Width = 70
        Height = 21
        DataField = 'MARGEMMAX'
        DataSource = dtsrcDet
        TabOrder = 9
      end
      object DBEdit5: TDBEdit
        Left = 582
        Top = 302
        Width = 70
        Height = 21
        DataField = 'MARGEMMIN'
        DataSource = dtsrcDet
        TabOrder = 10
      end
      object DBEdit8: TDBEdit
        Left = 95
        Top = 301
        Width = 89
        Height = 21
        DataSource = dtsrcDet
        ReadOnly = True
        TabOrder = 11
      end
    end
  end
  inherited DtSrc: TDataSource
    DataSet = cdsListaVenda
  end
  object cdsLista_det: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODLISTA'
        ParamType = ptInput
      end>
    ProviderName = 'dspLista_det'
    OnNewRecord = cdsLista_detNewRecord
    Left = 109
    Top = 278
    object cdsLista_detCODLISTADET: TIntegerField
      FieldName = 'CODLISTADET'
      Required = True
    end
    object cdsLista_detCODLISTA: TIntegerField
      FieldName = 'CODLISTA'
      Required = True
    end
    object cdsLista_detCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object cdsLista_detALTPRECO: TStringField
      FieldName = 'ALTPRECO'
      FixedChar = True
      Size = 1
    end
    object cdsLista_detDESCONTO: TStringField
      FieldName = 'DESCONTO'
      FixedChar = True
      Size = 1
    end
    object cdsLista_detDESCONTOMAX: TFloatField
      FieldName = 'DESCONTOMAX'
    end
    object cdsLista_detDESCONTOMIN: TFloatField
      FieldName = 'DESCONTOMIN'
    end
    object cdsLista_detMARGEM: TStringField
      FieldName = 'MARGEM'
      FixedChar = True
      Size = 1
    end
    object cdsLista_detMARGEMMAX: TFloatField
      FieldName = 'MARGEMMAX'
    end
    object cdsLista_detMARGEMMIN: TFloatField
      FieldName = 'MARGEMMIN'
    end
    object cdsLista_detESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object cdsLista_detPRECOCOMPRA: TFloatField
      FieldName = 'PRECOCOMPRA'
    end
    object cdsLista_detPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object cdsLista_detPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 300
    end
  end
  object dspLista_det: TDataSetProvider
    DataSet = sdsLista_det
    Left = 77
    Top = 278
  end
  object sdsLista_det: TSQLDataSet
    CommandText = 
      'SELECT *'#13#10'FROM LISTAPRECO_VENDADET  l'#13#10'where l.CODLISTA = :CODLI' +
      'STA'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODLISTA'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 45
    Top = 278
    object sdsLista_detCODLISTADET: TIntegerField
      FieldName = 'CODLISTADET'
      Required = True
    end
    object sdsLista_detCODLISTA: TIntegerField
      FieldName = 'CODLISTA'
    end
    object sdsLista_detCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object sdsLista_detALTPRECO: TStringField
      FieldName = 'ALTPRECO'
      FixedChar = True
      Size = 1
    end
    object sdsLista_detDESCONTO: TStringField
      FieldName = 'DESCONTO'
      FixedChar = True
      Size = 1
    end
    object sdsLista_detDESCONTOMAX: TFloatField
      FieldName = 'DESCONTOMAX'
    end
    object sdsLista_detDESCONTOMIN: TFloatField
      FieldName = 'DESCONTOMIN'
    end
    object sdsLista_detMARGEM: TStringField
      FieldName = 'MARGEM'
      FixedChar = True
      Size = 1
    end
    object sdsLista_detMARGEMMAX: TFloatField
      FieldName = 'MARGEMMAX'
    end
    object sdsLista_detMARGEMMIN: TFloatField
      FieldName = 'MARGEMMIN'
    end
    object sdsLista_detESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object sdsLista_detPRECOCOMPRA: TFloatField
      FieldName = 'PRECOCOMPRA'
    end
    object sdsLista_detPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object sdsLista_detPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 300
    end
  end
  object dtsrcDet: TDataSource
    DataSet = cdsLista_det
    OnStateChange = DtSrcStateChange
    OnDataChange = dtsrcDetDataChange
    Left = 96
    Top = 232
  end
  object sdsListaVenda: TSQLDataSet
    CommandText = 'SELECT *'#13#10'FROM LISTAPRECO_VENDA l'#13#10'where l.CODLISTA = :CODLISTA'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODLISTA'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 389
    Top = 14
    object sdsListaVendaCODLISTA: TIntegerField
      FieldName = 'CODLISTA'
    end
    object sdsListaVendaNOMELISTA: TStringField
      FieldName = 'NOMELISTA'
      Size = 60
    end
    object sdsListaVendaVALIDADE: TDateField
      FieldName = 'VALIDADE'
    end
    object sdsListaVendaDATAINICIAL: TDateField
      FieldName = 'DATAINICIAL'
    end
    object sdsListaVendaDATAFINAL: TDateField
      FieldName = 'DATAFINAL'
    end
  end
  object dspListaVenda: TDataSetProvider
    DataSet = sdsListaVenda
    Left = 421
    Top = 14
  end
  object cdsListaVenda: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODLISTA'
        ParamType = ptInput
      end>
    ProviderName = 'dspListaVenda'
    OnNewRecord = cdsListaVendaNewRecord
    Left = 453
    Top = 14
    object cdsListaVendaCODLISTA: TIntegerField
      FieldName = 'CODLISTA'
    end
    object cdsListaVendaNOMELISTA: TStringField
      FieldName = 'NOMELISTA'
      Size = 60
    end
    object cdsListaVendaVALIDADE: TDateField
      FieldName = 'VALIDADE'
    end
    object cdsListaVendaDATAINICIAL: TDateField
      FieldName = 'DATAINICIAL'
    end
    object cdsListaVendaDATAFINAL: TDateField
      FieldName = 'DATAFINAL'
    end
  end
  object scds_produto_proc: TSQLDataSet
    CommandText = 
      'select CODPRODUTO, CODPRO, PRODUTO, VALORUNITARIOATUAL, VALOR_PR' +
      'AZO, VALORMINIMO, ESTOQUEATUAL FROM PRODUTOS where usa is null'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 206
    Top = 130
    object scds_produto_procCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object scds_produto_procCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object scds_produto_procPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object scds_produto_procVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
    end
    object scds_produto_procVALOR_PRAZO: TFloatField
      FieldName = 'VALOR_PRAZO'
    end
    object scds_produto_procVALORMINIMO: TFloatField
      FieldName = 'VALORMINIMO'
    end
    object scds_produto_procESTOQUEATUAL: TFloatField
      FieldName = 'ESTOQUEATUAL'
    end
  end
end
