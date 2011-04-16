inherited fCompraRecebimento: TfCompraRecebimento
  Caption = 'Recebimento Materiais'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    Height = 49
    object Label1: TLabel
      Left = 173
      Top = 3
      Width = 25
      Height = 13
      Caption = 'N'#250'm.'
      Transparent = True
    end
    object Label2: TLabel
      Left = 272
      Top = 4
      Width = 24
      Height = 13
      Caption = 'Forn.'
      Transparent = True
    end
    object rgStatus: TRadioGroup
      Left = 6
      Top = 5
      Width = 161
      Height = 41
      Caption = 'Pedido'
      Columns = 2
      Items.Strings = (
        'Aberto'
        'Finalizado')
      TabOrder = 0
    end
    object edPedido: TEdit
      Left = 172
      Top = 18
      Width = 91
      Height = 21
      TabOrder = 1
    end
    object edFornec: TEdit
      Left = 269
      Top = 18
      Width = 73
      Height = 21
      TabOrder = 2
      OnExit = edFornecExit
    end
    object edFornecNome: TEdit
      Left = 377
      Top = 17
      Width = 385
      Height = 21
      Color = clBtnShadow
      Enabled = False
      TabOrder = 3
    end
    object btnClienteProcura: TBitBtn
      Left = 342
      Top = 2
      Width = 35
      Height = 38
      TabOrder = 4
      TabStop = False
      Glyph.Data = {
        36080000424D3608000000000000360400002800000020000000200000000100
        0800000000000004000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00090909001212
        12001F1F1F002C2C2C003939390045454500525252005F5F5F006C6C6C007878
        780085858500929292009F9F9F00ABABAB00B8B8B800C5C5C500D2D2D200DEDE
        DE00EBEBEB00F8F8F800F0FBFF00A4A0A000C0DCC000F0CAA60000003E000000
        5D0000007C0000009B000000BA000000D9000000F0002424FF004848FF006C6C
        FF009090FF00B4B4FF0000143E00001E5D0000287C0000329B00003CBA000046
        D9000055F000246DFF004885FF006C9DFF0090B5FF00B4CDFF00002A3E00003F
        5D0000547C0000699B00007EBA000093D90000AAF00024B6FF0048C2FF006CCE
        FF0090DAFF00B4E6FF00003E3E00005D5D00007C7C00009B9B0000BABA0000D9
        D90000F0F00024FFFF0048FFFF006CFFFF0090FFFF00B4FFFF00003E2A00005D
        3F00007C5400009B690000BA7E0000D9930000F0AA0024FFB60048FFC2006CFF
        CE0090FFDA00B4FFE600003E1400005D1E00007C2800009B320000BA3C0000D9
        460000F0550024FF6D0048FF85006CFF9D0090FFB500B4FFCD00003E0000005D
        0000007C0000009B000000BA000000D9000000F0000024FF240048FF48006CFF
        6C0090FF9000B4FFB400143E00001E5D0000287C0000329B00003CBA000046D9
        000055F000006DFF240085FF48009DFF6C00B5FF9000CDFFB4002A3E00003F5D
        0000547C0000699B00007EBA000093D90000AAF00000B6FF2400C2FF4800CEFF
        6C00DAFF9000E6FFB4003E3E00005D5D00007C7C00009B9B0000BABA0000D9D9
        0000F0F00000FFFF2400FFFF4800FFFF6C00FFFF9000FFFFB4003E2A00005D3F
        00007C5400009B690000BA7E0000D9930000F0AA0000FFB62400FFC24800FFCE
        6C00FFDA9000FFE6B4003E1400005D1E00007C2800009B320000BA3C0000D946
        0000F0550000FF6D2400FF854800FF9D6C00FFB59000FFCDB4003E0000005D00
        00007C0000009B000000BA000000D9000000F0000000FF242400FF484800FF6C
        6C00FF909000FFB4B4003E0014005D001E007C0028009B003200BA003C00D900
        4600F0005500FF246D00FF488500FF6C9D00FF90B500FFB4CD003E002A005D00
        3F007C0054009B006900BA007E00D9009300F000AA00FF24B600FF48C200FF6C
        CE00FF90DA00FFB4E6003E003E005D005D007C007C009B009B00BA00BA00D900
        D900F000F000FF24FF00FF48FF00FF6CFF00FF90FF00FFB4FF002A003E003F00
        5D0054007C0069009B007E00BA009300D900AA00F000B624FF00C248FF00CE6C
        FF00DA90FF00E6B4FF0014003E001E005D0028007C0032009B003C00BA004600
        D9005500F0006D24FF008548FF009D6CFF00B590FF00CDB4FF00070707070704
        0404070404040707070707070707444407444407070707070707070707070704
        0404070404040707070707070707444407444407070707070707070707070704
        0404070404040707070707070707444407444407070707070707070707070704
        0404070404040707070707070707444407444407070707070707070707070704
        0404070404040700000707070707444407444407070707070707070707070704
        0404070404040700000707070707444407444407070707070707070707070704
        0404070404040700000707070707444407444407070707070707070707070704
        040407040404070000070707072F2F2F2F2F2F2F070707070707070707070704
        040407040404070000070707072F2F2F2F2F2F2F070707070707070707460708
        040408040404070000070707462F2F2F2F2F2F2F460707070707070746460804
        040404040404080046070746462F2F2F2F2F2F2F464607070707070707070804
        040404040404084646080746080C0C0C0C0C0C0C084607070707070704040804
        040404040404080708070700000C0C0C040C0C0C000007070707070704040804
        04040404040408040407070C0C040C0C0C0C0C040C0C07070707070704040704
        04040404040408040407070C0C040C0C040C0C040C0C07070707070704040804
        04040504040407040407070C0C040C0C0C0C0C040C0C07070707070704040404
        04080508040408040407070C0C040C0C000C0C040C0C07070707070708040404
        04070507040404040407070C0C040C0C000C0C040C0C07070707070707040404
        040F050F040404040807070C0C040C0007000C040C0C07070707070707040404
        040F050F040404040707070C0C0C0C080F08000C0C0C07070707070707040404
        040F050F040404040707070C0C0C000F0C0F000C0C0C07070707070707040404
        040F050F04040408070707080C0C000F0C0F000C0C0807070707070707070404
        070F0F0F0404080707070707080C000C000C0000080707070707070707070707
        0707000707070707070707070707070046000707070707070707070707070707
        0700460007070707070707070708004646460008070707070707070707070707
        0846464608070707070707070700004646460000070707070707070707070707
        0046464600070707070707070707000046000007070707070707070707070707
        0000000000070707070707070707000000000007070707070707070707070707
        0800000008070707070707070707070000000707070707070707070707070707
        0708000807070707070707070707070808080707070707070707070707070707
        0707070707070707070707070707070707070707070707070707070707070707
        0707070707070707070707070707070707070707070707070707}
    end
  end
  object GroupBox1: TGroupBox [2]
    Left = 0
    Top = 49
    Width = 772
    Height = 425
    Align = alClient
    Caption = 'Pedido'
    TabOrder = 2
    object JvDBGrid1: TJvDBGrid
      Left = 2
      Top = 15
      Width = 768
      Height = 408
      Align = alClient
      DataSource = DtSrc
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      PostOnEnterKey = True
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'CODDETALHE'
          ReadOnly = True
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODMOVIMENTO'
          ReadOnly = True
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_ENTREGA'
          ReadOnly = True
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODPRO'
          ReadOnly = True
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRODUTO'
          ReadOnly = True
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RECEBIDO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTIDADE'
          ReadOnly = True
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECO'
          ReadOnly = True
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALTOTAL'
          ReadOnly = True
          Visible = True
        end>
    end
  end
  inherited DtSrc: TDataSource
    DataSet = cdsPedido
  end
  object dspPedido: TDataSetProvider
    DataSet = sqlPedido
    Left = 304
    Top = 83
  end
  object cdsPedido: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pFornec'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspPedido'
    AfterPost = cdsPedidoAfterPost
    Left = 336
    Top = 83
    object cdsPedidoCODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedidoCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = []
      Required = True
    end
    object cdsPedidoDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
      ProviderFlags = []
    end
    object cdsPedidoCODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = []
      Size = 15
    end
    object cdsPedidoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = []
      Size = 300
    end
    object cdsPedidoQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = []
    end
    object cdsPedidoPRECO: TFloatField
      FieldName = 'PRECO'
      ProviderFlags = []
    end
    object cdsPedidoVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
      ProviderFlags = []
    end
    object cdsPedidoRECEBIDO: TBCDField
      FieldName = 'RECEBIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
  end
  object sqlPedido: TSQLDataSet
    CommandText = 
      'select md.CODDETALHE, md.CODMOVIMENTO, m.DATA_ENTREGA, p.CODPRO,' +
      ' p.PRODUTO'#13#10', md.QUANTIDADE, md.PRECO, md.VALTOTAL , md.RECEBIDO' +
      #13#10' from MOVIMENTODETALHE md'#13#10'inner join MOVIMENTO m on  m.CODMOV' +
      'IMENTO  = md.CODMOVIMENTO'#13#10'inner join PRODUTOS   p on  md.CODPRO' +
      'DUTO    = p.CODPRODUTO'#13#10'where m.CODNATUREZA   = 5'#13#10'    and m.STA' +
      'TUS                = 1'#13#10'    and m.CODFORNECEDOR = :pFornec'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pFornec'
        ParamType = ptUnknown
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 272
    Top = 81
    object sqlPedidoCODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlPedidoCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = []
    end
    object sqlPedidoDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
      ProviderFlags = []
    end
    object sqlPedidoCODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = []
      Size = 15
    end
    object sqlPedidoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = []
      Size = 300
    end
    object sqlPedidoQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = []
    end
    object sqlPedidoPRECO: TFloatField
      FieldName = 'PRECO'
      ProviderFlags = []
    end
    object sqlPedidoVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
      ProviderFlags = []
    end
    object sqlPedidoRECEBIDO: TBCDField
      FieldName = 'RECEBIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 9
      Size = 2
    end
  end
end
