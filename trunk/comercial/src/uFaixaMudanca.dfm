object fFaixaMudanca: TfFaixaMudanca
  Left = 199
  Top = 107
  Width = 696
  Height = 480
  Caption = 'Consultar Mudan'#231'a de Faixas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 192
    Top = 411
    Width = 38
    Height = 13
    Caption = 'Per'#237'odo'
  end
  object Label2: TLabel
    Left = 262
    Top = 427
    Width = 6
    Height = 13
    Caption = #224
  end
  object Label3: TLabel
    Left = 32
    Top = 411
    Width = 79
    Height = 13
    Caption = 'Selecione o M'#234's'
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 8
    Width = 649
    Height = 393
    DataSource = dtSrc
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'RA'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMECLIENTE'
        Width = 225
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATANASC'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NASC'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_FAIXA'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MENSALIDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATATRANSF'
        Title.Caption = 'Data Altera'#231#227'o'
        Visible = True
      end>
  end
  object medta1: TMaskEdit
    Left = 192
    Top = 427
    Width = 65
    Height = 21
    EditMask = '!99/99/00;1;_'
    MaxLength = 8
    TabOrder = 1
    Text = '  /  /  '
  end
  object medta2: TMaskEdit
    Left = 272
    Top = 427
    Width = 65
    Height = 21
    EditMask = '!99/99/00;1;_'
    MaxLength = 8
    TabOrder = 2
    Text = '  /  /  '
  end
  object btnProcurar: TBitBtn
    Left = 453
    Top = 410
    Width = 103
    Height = 40
    Caption = 'F8-Procurar'
    TabOrder = 3
    OnClick = btnProcurarClick
    Glyph.Data = {
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
  end
  object btnSair: TBitBtn
    Left = 559
    Top = 410
    Width = 103
    Height = 40
    Caption = 'F9-Sair'
    TabOrder = 4
    OnClick = btnSairClick
    Glyph.Data = {
      E60C0000424DE60C0000000000003600000028000000250000001D0000000100
      180000000000B00C0000120B0000120B00000000000000000000BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBF9F60606F3030BFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F60609F6060A06060A06060
      6F3030BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F60609F60
      60A06060B06060C06060CF6060B060606F3030BFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBF9F60609F6060AF6F6FC06F6FCF6F6FCF6F6FCF606FCF606FB06060
      6F3030AF60609F60609F60609F60609F60609F60609F60609F60609F6060BFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F6060D06F70D06F70D06F
      6FD06F6FD06F6FD06F6FD06F6FB0606F6F3030FFA0A0FFAFAFFFAFB0FFB0B0FF
      BFBFFFC0C0FFC0C0FFC0C09F6060BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBF9F6060DF7070DF7070D07070D07070D06F70D06F6FD06F6FB06F6F
      6F30305FB06030CF6030CF6030CF6030CF6030CF6030CF60FFC0C09F6060BFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F6060DF7070DF7070DF70
      70DF7070DF7070D07070D07070BF6F6F6F30305FB06030CF6030CF6030CF6030
      CF6030CF6030CF60FFC0C09F6060BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBF9F6060DF7F7FDF7F7FDF7F7FDF707FDF7070DF7070DF7070BF6F6F
      6F30305FB06030CF6030CF6030CF6030CF6030CF6030CF60FFC0C09F6060BFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F6060E07F7FE07F7FE07F
      7FE07F7FDF7F7FDF7F7FDF707FBF6F6F6F30305FB06030CF6030CF6030CF6030
      CF6030CF6030CF60FFC0C09F6060BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBF9F6060E08080E07F80E07F7FE07F7FE07F7FE07F7FE07F7FBF7070
      6F30305FB06030CF6030CF6030CF6030CF6030CF6030CF60FFC0C09F6060BFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F6060EF8080EF8080E080
      80E08080E0808FEFA0A0E07F7FBF70706F303070BF7030CF6030CF6030CF6030
      CF6030CF6030CF60FFC0C09F6060BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBF9F6060EF808FEF8080EF8080EF8080F0BFBFFFFFFFF0B0B0C07070
      6F3030F0DFC0C0F0BF7FDF907FDF9060D08060D08060D080FFC0C09F6060BFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F6060F08F8FEF8F8FEF8F
      8FEF808FF0BFBFFFFFFFF0AFAFC070706F3030F0DFC0FFFFDFFFFFDFFFFFDFFF
      FFDFE0FFCFE0FFCFFFC0C09F6060BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBF9F6060F08F8FF08F8FF08F8FF08F8FEF8F8FF0A0A0EF808FC07070
      6F3030F0DFC0FFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFC0C09F6060BFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F6060F09090F09090F08F
      90F08F8FF08F8FF08F8FF08F8FC07F7F6F3030F0DFC0FFFFDFFFFFDFFFFFDFFF
      FFDFFFFFDFFFFFDFFFC0C09F6060BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBF9F6060FF9090FF9090FF9090F09090F09090F08F90F08F8FC07F7F
      6F3030F0DFC0FFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFC0C09F6060BFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F6060FF909FFF9090FF90
      90FF9090FF9090FF9090F09090CF7F7F6F3030F0DFC0FFFFDFFFFFDFFFFFDFFF
      FFDFFFFFDFFFFFDFFFC0C09F6060BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBF9F6060FF9F9FFF9F9FFF9F9FFF909FFF909FFF9090FF9090CF7F7F
      6F3030F0DFC0FFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFC0C09F6060BFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F6060FF9F9FFF9F9FFF9F
      9FFF9F9FFF9F9FFF9F9FFF9F9FCF7F7F6F3030F0DFC0FFFFDFFFFFDFFFFFDFFF
      FFDFFFFFDFFFFFDFFFC0C09F6060BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBF9F6060FF9090FF9F9FFF9F9FFF9F9FFF9F9FFF9F9FFF9F9FCF8080
      6F3030F0DFC0FFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFC0C09F6060BFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F60609F6060C07F7FDF8F
      8FFF9F9FFF9F9FFF9F9FFF9F9FCF80806F3030F0DFC0FFFFDFFFFFDFFFFFDFFF
      FFDFFFFFDFFFFFDFFFC0C09F6060BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBF9F60609F6060A06F6FC07F7FF09090FF9F9FCF8080
      6F3030A060609F60609F60609F60609F60609F60609F60609F60609F6060BFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBF9F60609F6060AF7070B070706F3030BFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF9F6060
      6F3030BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBF00}
  end
  object ComboBox1: TComboBox
    Left = 32
    Top = 427
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Text = 'M'#234's'
    OnChange = ComboBox1Change
    Items.Strings = (
      'Janeiro'
      'Fevereiro'
      'Mar'#231'o'
      'Abril'
      'Maio'
      'Junho'
      'Julho'
      'Agosto'
      'Setembro'
      'Outubro'
      'Novembro'
      'Dezembro')
  end
  object btnImprimir: TBitBtn
    Left = 347
    Top = 410
    Width = 103
    Height = 40
    Caption = '&Imprimir'
    TabOrder = 6
    OnClick = btnImprimirClick
    Glyph.Data = {
      360C0000424D360C000000000000360000002800000020000000200000000100
      180000000000000C000000000000000000000000000000000000C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00101
      01000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000070707BFBF
      BF9898989E9E9E000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000050505D0D0D0B4B4B4B8B8
      B89F9F9FA2A2A29B9B9B989898020202000000C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0060606020202DBDBDBC8C8C8CDCDCDC5C5C58585
      85000000000000A4A4A4A2A2A2929292868686050505000000C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0050505000000E3E3E3D8D8D8D5D5D5BCBCBC888888888888BEBE
      BE9B9B9BA8A8A80000000101019B9B9B9696969C9C9C808080000000010101C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      030303000000EDEDEDE1E1E1E3E3E3C5C5C5848484898989BFBFBF979797DBDB
      DBA0A0A094949498989895959502020200000093939398989889898978787800
      0000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000
      FAFAFAF2F2F2EBEBEBC1C1C1838383878787CECECECCCCCCC4C4C49A9A9AD4D4
      D4A3A3A398989896969695959597979788888800000002020285858584848489
      8989777777060606000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0989898
      F5F5F5BFBFBF818181848484DBDBDBCBCBCBCBCBCBCFCFCFB6B6B6969696DDDD
      DD9F9F9F9D9D9D9D9D9D9999998585859797978282829C9C9C00000003030384
      84847676767474747A7A7A090909C0C0C0C0C0C0C0C0C0C0C0C0C0C0C09B9B9B
      808080888888DCDCDCD9D9D9CCCCCCCBCBCBD0D0D0CACACACFCFCF9D9D9DD3D3
      D3939393A2A2A29696969898989292928585859797978B8B8B82828277777702
      0202030303757575777777000000C0C0C0C0C0C0C0C0C0C0C0C0969696939393
      EBEBEB9B9B9BD4D4D4D3D3D3DCDCDCD8D8D8C9C9C9CBCBCBCACACA999999D5D5
      D5A0A0A0959595A1A1A19696968484849B9B9B8383838080807E7E7E86868672
      7272777777000000010101000000C0C0C0C0C0C0C0C0C0C0C0C0999999F8F8F8
      EDEDEDA0A0A0D2D2D2D8D8D8D3D3D3D6D6D6D6D6D6CACACAD4D4D4999999F5F5
      F59C9C9CA6A6A69393938282829898988888888787877878788787877373738E
      8E8E797979767676737373020202010101C0C0C0C0C0C0C0C0C08F8F8FFFFFFF
      E7E7E7929292E6E6E6D5D5D5D9D9D9D9D9D9CCCCCCCFCFCFF2F2F29A9A9A8A8A
      8ABCBCBCB9B9B98787879A9A9A7F7F7F86868681818190909074747488888871
      71716D6D6D7F7F7F7676765F5F5F040404C0C0C0C0C0C0C0C0C09E9E9EFAFAFA
      ECECEC949494D3D3D3DBDBDBCECECECACACAF8F8F8FBFBFBBCBCBCC1C1C1C8C8
      C87F7F7F838383C2C2C2C4C4C48383838C8C8C8A8A8A6B6B6B8B8B8B79797978
      78787B7B7B7575756A6A6A6C6C6C000000C0C0C0C0C0C0C0C0C0999796F6F6F6
      E7E6E89FA1A2C5CAC8CAD2CBF0F8F1F3FAF7B9BCC4BCBEC8C8C9D3CBCED3C9CB
      CBC8C9C7C7C4C6838284818286C1C3C4BEBDBF77777789878777787675767475
      7777767676666567727173686567050303C0C0C0C0C0C0C0C0C09C9994FBF9F8
      E8E7F0979BA0EDFDF2E8FFE9B0CAB3AEC6BCBFCADE3B405F3A3E5BC3C7DAD3D7
      D87576728B858AC1BEC7BDBFC96D737A848589C5C3C3B4B0AF7877737B7F7A6F
      747263656676777B6763686660650E090BC0C0C0C0C0C0C0C0C09C9994FCFAFA
      F1F0FA8B9196788A7DB2CCB4B6D5BA7E998F616F85B8C0E59CA0C37B7E93767A
      7BD9DAD6D2CCD1C0B8C2BEBDC6BDBDC3020001868182797672C0BFBBB9BDB877
      7C7A797D7E6364686D676C6C6769040000C0C0C0C0C0C0C0C0C09B97969D9B9B
      F1F1F7DFE4E7B4C2B77A8D7C6C8270AEC3BBA3B0C079809B787C95DADDECD9DB
      DCD1D0CCD1CCCBD8CDCF0F03030B0000B7AFAFBAB6B5060705838886808583BB
      C0BFAAACAC666666666464686666050302C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      9E9D9F909292F4FCF5CFDDD2B9C8C07684827D868F626A77C0C3D1DADBE5D5D4
      D6DFDCD80B07020D0100C8AEA8FDE3DDF1E1DBB7B2AF000100BCC2C1C1C7C67F
      8483898B8BC0C1BFB7B5B4676662020000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0969A958C918FF8FEFDD2DADAB9BEBF838889777B7C8281830200
      01040000B2B0A6EDDDD0FFDED0572D20442B21E6DCD5CBCCCA000100787D7EBC
      C1C0ACADAB8B8A86848680C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0939399999A9EF7FBF6D6DBD2B6B7B3918F8E7671
      72BCB8B7EFEDE34030205C311EFFE4D2FFE8D9F6E7DEE5E2DD0002007D828182
      84848C8D8BC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C09A9A949A9C90FFFFF8D5D2CDC7C2
      C3888384E1DFD7F7E8D8FFDCC7FFFBE54D2917472F23F1E6DEC0BBB8060403C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C09A998F9F9C97FAF5
      F78A8789E9E6E2F0E4D85E3925532710FFF0DEFFEADBFFECE1FDF0E8C8BFBB05
      0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C09D9A
      9C9C9B9F848183F7ECE8FFECDCFFE9D5FFF7E55332224B2E20FFEEE3F5E5DECC
      C3C0050303C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C089878DF0EAEBFFF7EB4C33234B2D1CFFF3E3FFF8EAFFF4E6FFF1E9FD
      F2EEC1BFBF000006C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0878388FFFEF7FFFAEEFFF5E9FFFFF2FFEFE14E2E21463129F9
      EEEAF6F4F4B6B6BC04060E000006C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C083827EFCF6EFFFFBF2452C22492B20FFFAF0FFF8F1FF
      F6F2F9F7F7EEEFF38083887F8287C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C08B8884FFF6F4FFF9F6FFF4EFFFFDF8FFF4EEFF
      F9F4878584888A8AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0847F80FDF7F8FFFAFAFAF2F29089868D
      8885C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07C7F847F828784878BC0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
  end
  object sds: TSQLDataSet
    CommandText = 
      'select cli.RA, cli.DATANASC, cli.nomecliente, udf_age(cli.DATANA' +
      'SC) as nasc'#13#10'    , cli.COD_FAIXA, cli.MENSALIDADE, cli.DATATRANS' +
      'F'#13#10' from CLIENTES cli WHERE GRUPO_CLIENTE = '#39'ASH'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 506
    Top = 352
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poAllowCommandText]
    Left = 538
    Top = 352
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    Left = 570
    Top = 352
    object cdsRA: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'RA'
      Size = 10
    end
    object cdsDATANASC: TDateField
      DisplayLabel = 'Data Nascimento'
      FieldName = 'DATANASC'
      EditMask = '!99/99/00;1;_'
    end
    object cdsNASC: TIntegerField
      DisplayLabel = 'Idade'
      FieldName = 'NASC'
      ReadOnly = True
    end
    object cdsCOD_FAIXA: TIntegerField
      DisplayLabel = 'Faixa'
      FieldName = 'COD_FAIXA'
      ReadOnly = True
    end
    object cdsMENSALIDADE: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'MENSALIDADE'
      ReadOnly = True
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsNOMECLIENTE: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
    object cdsDATATRANSF: TDateField
      FieldName = 'DATATRANSF'
      ReadOnly = True
    end
  end
  object dtSrc: TDataSource
    DataSet = cds
    Left = 602
    Top = 352
  end
  object rep: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 640
    Top = 352
  end
end