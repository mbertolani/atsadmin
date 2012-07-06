inherited fListaVenda: TfListaVenda
  Left = 247
  Top = 175
  Width = 711
  Height = 582
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    Top = 490
    Width = 695
  end
  inherited MMJPanel2: TMMJPanel
    Width = 695
    inherited Label1: TLabel
      Left = 152
      Width = 406
      Caption = 'Listas de Pre'#231'os de Venda'
    end
    inherited Label2: TLabel
      Left = 156
      Width = 406
      Caption = 'Listas de Pre'#231'os de Venda'
    end
  end
  object gbLista: TGroupBox [2]
    Left = 5
    Top = 62
    Width = 680
    Height = 424
    Caption = 'Lista de Venda'
    TabOrder = 2
    object lblCodcli: TLabel
      Left = 126
      Top = 18
      Width = 43
      Height = 13
      Caption = 'C'#243'd. CLi.'
    end
    object lblCliente: TLabel
      Left = 183
      Top = 18
      Width = 32
      Height = 13
      Caption = 'Cliente'
    end
    object Label3: TLabel
      Left = 12
      Top = 18
      Width = 53
      Height = 13
      Caption = 'Nome Lista'
    end
    object Label4: TLabel
      Left = 375
      Top = 18
      Width = 53
      Height = 13
      Caption = 'Data Inicial'
    end
    object Label5: TLabel
      Left = 481
      Top = 18
      Width = 48
      Height = 13
      Caption = 'Data Final'
    end
    object Label6: TLabel
      Left = 582
      Top = 18
      Width = 41
      Height = 13
      Caption = 'Validade'
    end
    object dbCli: TDBEdit
      Left = 122
      Top = 32
      Width = 55
      Height = 21
      DataField = 'CODCLIENTE'
      DataSource = DtSrc
      TabOrder = 1
      OnExit = dbCliExit
    end
    object dbNomeLista: TDBEdit
      Left = 8
      Top = 32
      Width = 113
      Height = 21
      DataField = 'NOMELISTA'
      DataSource = DtSrc
      TabOrder = 0
    end
    object btnClienteProcura: TBitBtn
      Left = 327
      Top = 18
      Width = 35
      Height = 33
      Enabled = False
      PopupMenu = PopupMenu1
      TabOrder = 2
      TabStop = False
      OnClick = btnClienteProcuraClick
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000C40E0000C40E00000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0BDBEBEBFBFBFBEBFBFBFBFBFBDBFBFC0BFBEBCBDBEC1C0BDBDBD
        BEBFC0BEBEBEBEBEBEBEBEBEBEBEBFBFBCBDBDC0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0BEC0C0A59494AD9696BEACACD6CCCCE4E0DEE7E5E5
        4F4EEA5354ED7171EDEEEEEDEEEBEAEAE6E6E5E0E0E4DCDCB3AEAEBFC0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BFBFC1C5C5A69A9AA28383BAA4A4D3
        C3C3E9E0DEFCF6EA4D4CEF2221F27271F2FFFFF2F3EFEEEFEAEAECE7E7E0D4D4
        A9A4A4C1C3C3BFBFBFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BFBFBFC2C3C3B6B7
        B7997A7AB8A2A2C9B8B8D9CDCEF6EFDF7E7BE51B1AE79393E8FFFEE7EAE4E5E8
        E0E0E8DFDFC8B8B8B4B4B4C1C1C1BFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0BFBFC0C0C0C1C6C69B8080B7A0A0C5B3B3CFC1C1EADED1A69FDB1517DEC2BE
        DFF6EEDEE1D8DADFD5D5DFD1D1B2A3A3BCBFBFBFBFBFC0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0BFBFBFC3C5C5AAA0A0A88C8CCABABACCBBBCDACCC5
        C7BBCB161BCDFFF1CED8CACBD5C8C8D9CCCCC4AEAE9B9999C4C6C6BFBFBFC0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BFBFBFBEC0C09D8383C9
        B6B6CFC2C3D5C6C3D8CBC63338C8FFFAC9CEC1C6D4C8C7D2C0C0A49292C0C5C5
        C0C0C0C0BFBFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BEBE
        BEC2C4C4B0AFAFA68888D4C6C6D8CECDDCCEC8938FCAF1DFCAD5CACDDACDCDA8
        9393B4B4B4C1C1C1BFC0C0C0BFBFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0BFBFBFC2C6C6B0A7A7B49899DDCFCEF3E9DCA19FD9FFFF
        DCE3D6D9B09898ADA9A9C1C3C3C0BFBFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BFBFBFC5C6C4ACA7A4BAA199
        8077B91017C48379B8B49F8EB1B1AFC4C4C3BFC0C0BFBFBFC0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C1C3BFBBAF
        B2B89EB5CCA5C7ECC2E6FFDCFCFFCBEAFFB4D4F1B6C7DAB3B6BABFBCBABEBFBF
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BEBF
        BFC5C1BAACABAA95BBEBA8CCF4B7D6F9BCD5F6BFDAF8C4DCF9C7E0FDC6E0FFB8
        D3EE9FA4A7CFCAC4BFBFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0BFBFC0C4C2BFAEB2BA87B8F7A0C5F1ABCCF4B2D2F8B6D7FAB9D7FABCD8
        FDBDD9FCBCD9FDC1DEFFBDE4FF92979FC4C1C0BEBEBEC0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0BFC0C0C8C1B783A7D18EBCF09FC4F0A8CBF5AECFF9
        B2D3F9B5D5FCB7D7FCB7D6FDB6D6FBB5D5FBB7DAFFA5C2E1BCB8B3BFBFC0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BFBFC0C6C4C0ABAFB37DAFEC95BDEE9E
        C5F3A3C9F7A8CEFAAACFFBADD0FCAFD6FFAFD6FFAED6FFAFD4FFACD1FEA1CBF6
        A7AEB9C4C2BFBFBFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BFC0C0C6C3BE969F
        AF84C2FD95C4F99AC3F49FC7F9A1CAFAA5D2FFA3DBFF9DCDF59CC7EF9BC4EC9E
        CFF9A1D4FFA0DDFF9EB9CFC7C0BDBFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C1C6C67A29297B48568DC6F499CCFF99C3F79CCCFF8FC4F4867990782E
        3274262C6A202A652B3C65395168608379788ECDCDC9BFBFBFC0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0BFC6C6802E2E86120693322890B6E095D4FF8FD1FF
        8E48459823108B2B29852A277B2427701D25671721500005310000D3DCDCBFBF
        BFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BEBEC3CFCF8F5855902922AC5548AA
        56489F8B989E848EB04E39A95A4E9D4F499649458C4242833E438140495E1726
        52242DD1DBD9BFBFBFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BFBFBFC6CBCBA8A4
        A68F291FC3847CC27D72C97A68C87C69C18076BE7E71B3726EAE6E6AA668679B
        6266A271775A1320928685C8CBCBBFBFBFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0BFBEBEC6D3D597625DBF756BD8ABA4D49F94D39F94CF9A92CB988EC38F
        8BBF8C89B78684BC9395AD77805C2E33CAD2D0BFBFBFC0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0BFBEBEC0CDCE9E625DD6A098E8C8C2E5C6BF
        E3C4BDDFC0BADBBCB9D9BBBAD9BABAC09396662E33C4CFCDC2C4C3BFBFBFC0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BFBFBFC0C1C1C2D3D6A1
        7571B0766DCE9B93D5A8A1D6AAA5CEA19EC49391996666805B5CC0C8C7C4C5C5
        BEBEBEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0BFBFC0C0C0C0C7C9B4B1B2B09D9AAE918DB29592AB8F8EA79493B1ACACC3
        C9C8C1C4C4BFBFBFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
    end
    object dbDataInicial: TJvDBDatePickerEdit
      Left = 372
      Top = 32
      Width = 95
      Height = 21
      AllowNoDate = True
      DataField = 'DATAINICIAL'
      DataSource = DtSrc
      Enabled = False
      TabOrder = 3
    end
    object dbDataFinal: TJvDBDatePickerEdit
      Left = 477
      Top = 32
      Width = 95
      Height = 21
      AllowNoDate = True
      DataField = 'DATAFINAL'
      DataSource = DtSrc
      Enabled = False
      TabOrder = 4
    end
    object dbValidade: TJvDBDatePickerEdit
      Left = 579
      Top = 32
      Width = 95
      Height = 21
      AllowNoDate = True
      DataField = 'VALIDADE'
      DataSource = DtSrc
      Enabled = False
      TabOrder = 5
      OnExit = dbValidadeExit
    end
    object edCliente: TEdit
      Left = 181
      Top = 32
      Width = 141
      Height = 21
      ReadOnly = True
      TabOrder = 6
    end
    object btnTodosProd: TButton
      Left = 16
      Top = 64
      Width = 153
      Height = 25
      Caption = 'Adicionar Todos Produtos'
      TabOrder = 7
      OnClick = btnTodosProdClick
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 90
      Width = 665
      Height = 326
      Caption = 'Itens Lista'
      TabOrder = 8
      object Label7: TLabel
        Left = 8
        Top = 232
        Width = 37
        Height = 13
        Caption = 'Produto'
      end
      object Label8: TLabel
        Left = 336
        Top = 280
        Width = 72
        Height = 13
        Caption = 'Desconto Max.'
      end
      object Label9: TLabel
        Left = 416
        Top = 280
        Width = 69
        Height = 13
        Caption = 'Desconto Min.'
      end
      object Label10: TLabel
        Left = 508
        Top = 280
        Width = 64
        Height = 13
        Caption = 'Margem Max.'
      end
      object Label11: TLabel
        Left = 584
        Top = 280
        Width = 61
        Height = 13
        Caption = 'Margem Min.'
      end
      object Label12: TLabel
        Left = 200
        Top = 280
        Width = 62
        Height = 13
        Caption = 'Pre'#231'o Venda'
      end
      object Label13: TLabel
        Left = 13
        Top = 280
        Width = 67
        Height = 13
        Caption = 'Pre'#231'o Compra'
      end
      object Label14: TLabel
        Left = 99
        Top = 280
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
        Top = 264
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
        Top = 264
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
        Top = 265
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
        Top = 296
        Width = 114
        Height = 21
        DataField = 'PRECOVENDA'
        DataSource = dtsrcDet
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 9
        Top = 296
        Width = 80
        Height = 21
        DataField = 'PRECOCOMPRA'
        DataSource = dtsrcDet
        ReadOnly = True
        TabOrder = 6
      end
      object DBEdit2: TDBEdit
        Left = 336
        Top = 297
        Width = 75
        Height = 21
        DataField = 'DESCONTOMAX'
        DataSource = dtsrcDet
        TabOrder = 7
      end
      object DBEdit3: TDBEdit
        Left = 416
        Top = 297
        Width = 75
        Height = 21
        DataField = 'DESCONTOMIN'
        DataSource = dtsrcDet
        TabOrder = 8
      end
      object DBEdit4: TDBEdit
        Left = 506
        Top = 297
        Width = 70
        Height = 21
        DataField = 'MARGEMMAX'
        DataSource = dtsrcDet
        TabOrder = 9
      end
      object DBEdit5: TDBEdit
        Left = 582
        Top = 297
        Width = 70
        Height = 21
        DataField = 'MARGEMMIN'
        DataSource = dtsrcDet
        TabOrder = 10
      end
      object DBEdit8: TDBEdit
        Left = 95
        Top = 296
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
    object sdsListaVendaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
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
    object cdsListaVendaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
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
