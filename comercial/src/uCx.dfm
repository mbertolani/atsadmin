object fCx: TfCx
  Left = 459
  Top = 172
  Width = 326
  Height = 417
  BorderIcons = [biSystemMenu]
  Caption = 'Caixas Vazias'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 8
    Width = 55
    Height = 13
    Caption = 'Caixa Vazia'
    FocusControl = DBEdit1
  end
  object DBEdit1: TDBEdit
    Left = 56
    Top = 24
    Width = 134
    Height = 21
    DataField = 'ID'
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 0
  end
  object btnver: TBitBtn
    Left = 200
    Top = 20
    Width = 105
    Height = 29
    Caption = 'Ver Cx Vazias - F8'
    PopupMenu = PopupMenu1
    TabOrder = 1
    OnClick = btnverClick
  end
  object DBGrid1: TDBGrid
    Left = 55
    Top = 51
    Width = 137
    Height = 302
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object BitBtn1: TBitBtn
    Left = 203
    Top = 312
    Width = 99
    Height = 41
    Caption = 'Voltar- F9'
    PopupMenu = PopupMenu1
    TabOrder = 3
    OnClick = BitBtn1Click
    Glyph.Data = {
      360C0000424D360C000000000000360000002800000020000000200000000100
      180000000000000C0000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA23F08A23F08FF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA23F08A23F08A23F08A23F08FF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFA23F08A23F08A23F08A23F08A23F08A2
      3F08FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFA23F08A23F08A23F08BC5804BC5804A23F08A2
      3F08A23F08FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFA23F08A23F08A74407C96501CC6701BC5804A2
      3F08A23F08A23F08FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFA23F08A23F08A23F08B24E05CC6701CC6701BC
      5804A23F08A23F08A23F08FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFA23F08A23F08A23F08B45105CC6701CC
      6701B45105A23F08A23F08FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA23F08A23F08A23F08BC5804CC
      6701CC6701AF4C06A23F08A23F08FF00FFFF00FFFF00FFFF00FFA23F08A23F08
      A23F08A23F08A23F08A23F08A23F08A23F08A23F08A23F08A23F08A23F08A23F
      08A23F08A23F08A23F08A23F08FF00FFFF00FFFF00FFA23F08A23F08A23F08C4
      6002CC6701C96501A74407A23F08A23F08FF00FFFF00FFFF00FFA23F08A23F08
      A23F08A23F08A23F08A23F08A23F08A23F08A23F08A23F08A23F08A23F08A23F
      08A23F08A23F08A23F08A23F08A23F08FF00FFFF00FFFF00FFA23F08A23F08A5
      4208C76202CC6701C25D03A23F08A23F08A23F08FF00FFFF00FFA23F08A23F08
      C5681AC16214BD5D0FBA5709B75305B75305B75305B75305B75305B75305B753
      05B75305B75305B75305AF4C06A23F08A23F08FF00FFFF00FFFF00FFA23F08A2
      3F08AA4707C96501CC6701B75305A23F08A23F08FF00FFFF00FFA23F08A23F08
      EE9B37E7902BDF841FD87914D06E08CC6701CC6701CC6701CC6701CC6701CC67
      01CC6701CC6701CC6701CC6701A54208A23F08FF00FFFF00FFFF00FFFF00FFA2
      3F08A23F08AF4C06CC6701C96501A74407A23F08A23F08FF00FFA23F08A23F08
      F7A944F09D39E8922DE18621D97B15D26F0ACD6802CC6701CC6701CC6701CC67
      01CC6701CC6701CC6701C25D03A23F08A23F08FF00FFFF00FFFF00FFFF00FFFF
      00FFA23F08A23F08BA5604CC6701BC5804A23F08A23F08FF00FFA23F08A23F08
      FCB04CF8AA46F19F3BE9942FE28823D77917A94609A23F08A23F08A23F08A23F
      08A23F08A23F08A23F08A23F08A23F08FF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFA23F08A23F08A74407CC6701CC6701A74407A23F08A23F08A23F08A23F08
      FCB04CFCB04CE9983CD37A27EB9531E38A25CB6C16A23F08A23F08A23F08A23F
      08A23F08A23F08A23F08A23F08FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFA23F08A23F08BF5B03CC6701BA5604A23F08A23F08A23F08A23F08
      FCB04CFCB04CE6943BA7450CE38F33EC9733E48C27B95A11A23F08A23F08FF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFA23F08A23F08B45105CC6701C25D03A23F08A23F08A23F08A23F08
      FCB04CFCB04CE6943BA23F08B25313EF9E3CED9935E28928AE4D0DA23F08A23F
      08FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFA23F08A23F08AD4906CC6701C96501A23F08A23F08A23F08A23F08
      FCB04CFCB04CE6943BA23F08A23F08C36820F6A742EE9B37E38B29AE4D0EA23F
      08A23F08FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFA23F08A23F08AD4906CC6701CC6701A23F08A23F08A23F08A23F08
      FCB04CFCB04CE6943BA23F08A23F08A23F08CF7729F7A844F09D39E48D2BAF4E
      0EA23F08A23F08FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFA23F08A23F08AD4906CC6701CC6701A23F08A23F08A23F08A23F08
      FCB04CFCB04CE6943BA23F08A23F08A23F08A23F08DA8532F8AA46F19F3BE58F
      2DAF4E0EA23F08A23F08FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFA23F08A23F08B75305CC6701C76202A23F08A23F08A23F08A23F08
      FCB04CFCB04CE6943BA23F08A23F08A23F08A23F08A23F08DA8632F9AC48F2A1
      3DE6912FB75813A23F08A23F08FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFA23F08A23F08C76202CC6701BF5B03A23F08A23F08A23F08A23F08
      FCB04CFCB04CE6943BA23F08A23F08FF00FFA23F08A23F08A23F08DA8633FAAD
      49F3A33EEC9733C06317A23F08A23F08FF00FFFF00FFFF00FFFF00FFFF00FFA2
      3F08A23F08A23F08B45105CC6701CC6701B24E05A23F08A23F08A23F08A23F08
      FCB04CFCB04CE6943BA23F08A23F08FF00FFFF00FFA23F08A23F08A23F08C469
      22FBAE4AF5A540ED9935CD721EA6440AA23F08A23F08A23F08A23F08A23F08A2
      3F08A23F08AA4707CC6701CC6701C76202A23F08A23F08FF00FFA23F08A23F08
      FCB04CFCB04CE6943BA23F08A23F08FF00FFFF00FFFF00FFA23F08A23F08A23F
      08B95B19F6A846F6A742EE9B36DB8225B65611A23F08A23F08A23F08A23F08A2
      3F08B45105CC6701CC6701C96501AA4707A23F08A23F08FF00FFA23F08A23F08
      FCB04CFCB04CE6943BA23F08A23F08FF00FFFF00FFFF00FFFF00FFA23F08A23F
      08A23F08A8460CDA8532F7A844F09D38E8912DDD8220CC6D13C6640AC25E03C4
      6002CC6701CC6701C76202AA4707A23F08A23F08FF00FFFF00FFA23F08A23F08
      FCB04CFCB04CE6943BA23F08A23F08FF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFA23F08A23F08A23F08B85B19DC8731F19F3AE9932FE28823DA7C17D2710BCD
      6802C76202B75305A54208A23F08A23F08FF00FFFF00FFFF00FFA23F08A23F08
      D57F2EF6A948C46922A23F08A23F08FF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFA23F08A23F08A23F08A23F08A7450BBF621AC5681BC16315B7560DAB
      4808A23F08A23F08A23F08A23F08FF00FFFF00FFFF00FFFF00FFFF00FFA23F08
      A23F08A23F08A23F08A23F08FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFA23F08A23F08A23F08A23F08A23F08A23F08A23F08A2
      3F08A23F08A23F08FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      A23F08A23F08A23F08FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA23F08A23F08A23F08A23F08FF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
  end
  object cdsCx: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 8
    Top = 224
    object cdsCxID: TIntegerField
      FieldName = 'ID'
    end
  end
  object DataSource1: TDataSource
    DataSet = cdsCx
    Left = 8
    Top = 264
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Options = [poAllowCommandText]
    Left = 8
    Top = 192
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 
      'SELECT distinct ID FROM caixas WHERE not EXISTS(select NUMCAI fr' +
      'om MOVDOC WHERE id = NUMCAI and ATIVO = '#39'S'#39')'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 8
    Top = 152
    object SQLDataSet1ID: TIntegerField
      FieldName = 'ID'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 224
    Top = 88
    object Procurar1: TMenuItem
      Bitmap.Data = {
        C2070000424DC20700000000000036000000280000001E000000150000000100
        1800000000008C070000120B0000120B00000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0070A01F70A01F80AF0070
        A0BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBF108FBF2F8FB00F0F0F0000001F4F600F7FB0
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBF0070A020AFDF3FCFFF50909FF0C090806F500000002F607FBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0F70AF
        108FC03FCFFF3FCFFF50909FFFCF9FFFCF9F4F4030101F1F2F80B0BFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00609F1F9FCF3FCFFF1F9FCF3F
        CFFF4FCFFF50A0BFF0C090FFCF9FAF8F6F0000005F90B0BFBFBFBFBFBF005080
        2F80B000609FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBF0F7FB02FBFEF3FCFFF3FCFFF2090C070DFFF90E0
        FFAFE0FFAF9F80FFCF9FCFA080000000508FAF00609F409FC0609FB01F1F1F1F
        30400F70A0BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBF108FC03FCFFF40CFFF5FD0FF7FDFFF409FC0AFE0FFD0F0FFE0F0FF
        EFEFF0A09080806F50304F5F308FBF80D0F07FDFFF5F8F9F9F8060000000102F
        3F00609FBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF0070A01080
        BF4FD0FF6FD0FF8FDFFFA0E0FFC0EFFFBFE0F05F9FC0F0FFFFF0FFFFDFF0FFBF
        E0FF5FAFCF0F90C050C0EF50D0FF3FCFFF50909FFFCF9F6F5F400000000F5F80
        BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF0F7FAF30AFDF4FAFDF90E0FF
        AFEFFFCFEFFFDFF0FFEFFFFFF0FFFF2F9FC02F9FC060BFDF409FC00F8FB00070
        A000AFD030BFEF3FCFFF3FCFFF309FBFF0C090CFA0800000001F709FBFBFBFBF
        BFBFBFBFBFBFBFBF0000BFBFBFBFBFBF00609F90DFFF3F8FBFD0F0FFE0F0FFF0
        FFFFF0FFFFE0F0FFCFF0FF90D0EF1F9FCF00A0CF0090C000AFD00080B000AFD0
        20BFEF3FCFFF3FCFFF3FCFFF809080CFA0800000001F6F90BFBFBFBFBFBFBFBF
        BFBFBFBF0000BFBFBFBFBFBF00609FD0F0FF80BFD07FB0CFF0FFFFDFF0FFC0EF
        FFAFE0FF8FDFFF70DFFF50D0FF1FA0D00070AF0090C0007FAF00A0CF0F9FCF3F
        CFFF3FCFFF3FCFFF3FC0F050808000304F0070A0BFBFBFBFBFBFBFBFBFBFBFBF
        0000BFBFBFBFBFBF00609F8FBFD0D0E0F02F80AF207FAF60B0DF60BFDF60D0FF
        4FCFFF3FCFFF3FCFFF3FCFFF30C0FF1F9FD00090BF00A0CF00A0CF10A0D030C0
        FF1FAFDF1090C00070AF005080BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
        BFBFBFBFBFBFBF00609F00609FBFBFBFBFBFBF0F70A020A0D020A0DF20A0DF30
        C0FF3FCFFF3FCFFF3FCFFF3FCFFF30C0FF20A0DF006F9F0070A0005080BFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0F7FAF20AFDF108FC01F9F
        CF109FD01090C0007FB0006F9F005080BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0070A0007FAF00609FBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBF0000}
      Caption = 'Procurar'
      ShortCut = 119
      OnClick = btnverClick
    end
    object Sair1: TMenuItem
      Bitmap.Data = {
        060E0000424D060E000000000000360000002800000022000000220000000100
        180000000000D00D0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFE9E9E8CBCAC8D9D7D5E9E4E1F2EEEEFCF8F6FFFDFBFF
        FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7E3EA3B7699185D83266689406A844C74
        8B6080917D8C93929999A9A9A9C1BCBAD1CBC6DED7D5EDE8E3F9F6F3FDF9F7FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFF5F8FBF3F7FAF4F8FBF5F8FBFCFDFE8AB4CE005696005D9F
        005F99005C94005B93005A90005A91005A9000598E075886195B811F5D823062
        7C4D6D7E5C758293989BF5F5F4FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFB4CDDE186A9D146B9F176FA2176FA21970A30C
        679A02639C1B76C91976C61674C11575BE1272BA106FB60B6BAE0B6AAE0666AB
        0364A90064A500619E005A9F005C9C20597BDDD7D4FFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF72A5C7004A820643700740
        6D06406D073F6D014D800766A5217FD22083D22487D32183D22183D22183D220
        81D01F7ECF1D7DCD1D7DCC1B78C91A78C71871C00668AD125A85D6D0CBFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEE7EFFFF9F65F9BBD
        00508513375F14355D14365F14325A044F660866AC268AD7288CD5278ED6278D
        D6268DD6268BD5268AD4268AD42489D32286D22287D32387D3207FD01072BC12
        5985D3CDC7FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D5D440
        8440BFBFB5629ABE005288123964133561112A5F013E220D785A0B65B7288ED9
        2D93D9268BD5298FD72B91D82B91D8258CD6268CD5288FD7268DD6268CD5268B
        D52188D41475C6125886C9C3BEFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFA8B7A71E8F2305880AB4B0A84A84B60044800B2E4C06393C04651550BC533C
        95A10762B02F93DC2D94D9278CD52B92D92D94DA2D94DA258DD6278DD62C92D9
        2A91D8288ED7268DD5288ED7187EC6115883C0BCB8FFFFFF0000FFFFFFFFFFFF
        FFFFFFFFF5FF86A68B0089042FC44216911C50774C195D3E004827166E1F30A2
        326CD47D9CF0AD2D86900C68B03092DD3197DB248AD52F95DA3098DB2F96DA28
        8ED62990D72E95DB2C92D92A90D8278ED62991D91B80C8085888B7B4B2FFFFFF
        0000FFFFFFFFFFFFF8F4F864956303940E27C23A32C0442EB63C28AE3635B842
        51C55E69D27A76D88D85DF9D79DA8C0062641371BB3396DF349ADD238BD33198
        DC3298DC3399DD298FD72B91D83298DC2F96DA2C93D9288FD72C92D91F82C900
        588DB0AFAEFFFFFF0000FFFFFFEAEFE935863700A1061EBB2F25BB362FBC403A
        C54E4BCA5E58CC6C60D07664D07975D68C7BDC90177F180044611579C93599DF
        399EDF268DD9389EE2359CDF379DDF2B90D82B91D8349BDE3198DC3096DB2990
        D72F94DB2587D500588EA8A8A7FFFFFF0000FFFFFFC7DCC60085010EB72016B9
        2826BB3730BC4039C34C49C75C4EC96260CF7570D78579DE8E24A21E06393403
        4F8B1A7BBF389FE53CA4E51F78B02C83B7369BDC3DA5E82D93DA2D94D9389DE0
        379ADD3299DD2A91D83397DD278BD4005B91A0A3A2FFFFFF0000FFFFFFFFFFFF
        DAE8D92B9A2F12AD2128BF3A2FBC403BC54E47CA5A51CD6357CD6541B34A0B6E
        1A072F481334620153861B80CA3996D21B5E9A0A4D920D4883164C6E3594D12E
        97DE2F95DB3AA1E3389FE1349BDE2A91D7399EE02A8DD9005C93979C9EFFFFFF
        0000FFFFFFFFFFFFFFFFFFEAECE94D9F4E04A31134C5472BB1371A9E22188D25
        16633B09483C0B375014356413385F005288278BCE1A6FB6105EAA1A7DCB1472
        C30A417D2D72932F97DE3198DC3DA3E43BA1E3389EE12A91D8389EE22E93DA02
        619D8A9399FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFBFE71B57315A0211B
        911C5D7A73096095083D7313326013376213375F13375F02578F288CD20F5EA8
        1879C82086D31D81D00F5EAC175E8E3196D9349ADE40A6E53EA4E53BA1E22991
        D83BA2E33398E10665A4869093FFFEFC0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFAFD1AE1B931A75939F06639F0C406B13365E13386013375F12385F00
        5D942C91D7145EA657A3D860ACDF5DAADC155FA72172A0359ADE349BDE44A9E8
        40A6E53EA4E42991D83FA5E5369CE40666A5768992FFFDFB0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F5DC95BCD4005B9210386013375F1338
        6013375F12375E005D943199DB2175B19CB0D3EEF5FDC2D2E7195D9E3C9DD333
        9BE0379DE045AAE841A7E541A7E72990D840A6E53A9FE50668A671858CFCFAF8
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BB3CE00578F
        11386013375F13386013375E0D3D670360963297D93FA8E92A84BD559ACA2F85
        BF41A2DD4CB4F1359CDE38A0E249AEEC45ABEA48AEEA2A90D743A9E73EA6E80F
        72B4607F8DFCF9F70000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF76A9C600568E13355E13386113386013365E0E3C6604639E3399DA4DB1F0
        3FA9E92994DC4DB5F24CB3F04CB2EE359CE0389FE14BB1ED48AEEA49AEEB2B91
        D946AAEA3FA7E71374B7597A8BFCF7F50000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF5F9DC0004F861233520F2E5013386013365D0B426C05
        65A13B9FE14DB3EF3EA6E739A1E44DB7F248B0EF4AB3F1319BE0349FE449B3F1
        45AFEF46B1F0258FD93DA8EA47AFEE1375B748718BF9F4F20000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5C9DC3004984025A16003B170D25
        4B14365C0B426E0A6BA93EA2E54AB5F438A1E43AA4E853B5EE4EB4EE53B6EF41
        9EDD53A8DD61B7E960B7E863B9E84B9CD462B4E64AAEEF1478BE466F87F5EFED
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5089B8003574
        0E771623A3260033180A183A09406B0B6EAB34A2EB92C4DCDCDBCCE0E5D5EFEB
        D4EFEBD4ECE6D3EEEBD3F8F3D2FCFAD5FAFAD5F2EDD3FBFED9FDE9CC9CC8DD12
        7DC63A6B86F4EEEA0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E1E28B
        A08D175C2E0062072E9B3280E39940B24800420D0A32530B74BA35A5ECFDE7CE
        E6DEEAD1CAF4C7C2F0B7B5F0FFFAF8DFDAF7A19CF4948EF28380F8FCFCFD7874
        FAFFF4EBBFDADF1A81CB306380EDE8E40000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF819E802B862C219E2C35B9424AC55A62CD736ED4847DDB9356C65C0868470B
        6DBB45ABEAEFDED9382FEF2D27F05A56F23C35EF8C87F6615CF38583F6433DF0
        6965F4FCFBFE2C26EFFEF3F1BCDCE21981CB2C6382EAE4E00000FFFFFFFFFFFF
        FFFFFFF8F2F757965705A4122CC03E44C85849C95D56CB6B60D0766CD18076D6
        8C90E89F3793930B6CB554B6EFECDDDA2E28EFE3E2FBFAFAFDF0F0FD2019EC47
        41F0FFFFFF7773F4BCBAF9FCFBFD302AEFFFF7F9C4E3E81B87D2245F81E3E0DD
        0000FFFFFFFFFFFFFFFFFF6EA36E09A0142BC03E34BE443DC35148C75B54CA68
        60CF756CD18175D58B8EE69C3993960C6EB853B7F1F6E4DA2A23ED352FF06966
        F3FFFFFF3C35EF5D58F2FFFFFF7571F4BFBEFAFFFFFE322DF6D9D3CFB5CDCF23
        8ED9215E80E0DBD90000FFFFFFFFFFFFBEC7BF00920321BD322ABF3C31C3443D
        C54F48C95654CD6565D2786BD28083DE9B77DC7E127572147BC65BB9EEF3E2DA
        2924EFB8B4F8DBDBFBB2AFF73A36F0443DEFC0BDF94D47F0645EF3706CF75C53
        D6CFB99C8DB6CF2694DC1B587CD6D5D20000FFFFFFFFFFFF4FA0520BB51D1EBE
        3012AD2118992144A84F117443095B3024912D79DD9056BF620B6610004D6D1C
        83CB69BFEFF7E5DB3630F03C36F05550F1524DF2C0BFFAC2C0F97D79F58480F5
        8E8CF59A97F7F8DDCDCCDEDD57C0FB2C98DE195B7ECFCDCB0000FFFFFFEBF1EB
        0B90100CB61D00900678A178C2D4BED2DAE3025BA108367019842B4BC34D0157
        110F2C53024F851B87CD6DBEEEFFF4DADBDBFBE0E0FBEDEEFCF5F6FDFFFFF8FF
        FFF8FFFFF8FFFFF4FFFFF2FFFFEDFFE4C95DBBF151BDFD349BE015597FCBCBC8
        0000FFFFFFC3DEC30190062A8F2DD2D1CFFFFFFFFFFFFFDAE5F2005A940F3966
        04641801492013306515325B025182228BCF68BDF2FFEDC4FFFADFFFF9E3FFF4
        D9FFF1DAFEEBD4F7E9D6EEE5D3E5E2D5DCDDD9D1DBD98EC4E249B9F955B9F633
        9BE00C547EC0C2C20000FFFFFFC3E1C3007000B4BBB5FFFFFFFFFFFFFFFFFFD6
        E3ED00528D00487C00467400437900477A004576005588268CCE49B5FBB3D0D9
        BED4D5ABD0E2A3CFE390CBE887C6EC74C0F05EB9F548B1F13EAAF033A1E92C9A
        E23093D42B8FCF0F76BD105780CFCFCD0000FFFFFFC5E2C54F9250FFF8FFFFFF
        FFFFFFFFFFFFFFF6F9FA6AA1BF4389B2488BB6478CB5478CB54F91B804619624
        85C644AAEE3BA8EF39A2E92E9BE02892D9238ACF1780C90A74BE046CAD00629F
        005C96005991005A97025893096195186B9D75A0B8FCF9F80000FFFFFFFFFEFF
        F0F7F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF2E77A600589500609E00548F00518800548B0F6192256C972C78A13F
        7DA14B89AA5C96B87AA6C3A5C6DABDCAD2EEF4F5FFFFFEFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF7FAFCA2F79A66190AC8EB1C3AECBDCD2DFE9E4EE
        F4EFF0F1F3F9FCFEFBF7FFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000}
      Caption = 'Sair'
      ShortCut = 120
      OnClick = BitBtn1Click
    end
  end
end