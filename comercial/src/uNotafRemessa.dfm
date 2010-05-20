object fNotafRemessa: TfNotafRemessa
  Left = 194
  Top = 103
  Width = 870
  Height = 640
  Caption = 'Sele'#231#227'o de Notas de Entrega Futura'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 40
    Top = 64
    Width = 777
    Height = 233
    Caption = 'Notas de Futura Remessa para sele'#231#227'o'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 8
      Top = 20
      Width = 761
      Height = 205
      DataSource = DtSrc
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NOTAFISCAL'
          Title.Caption = 'Nota Fiscal'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SERIE'
          Title.Caption = 'Serie'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTAEMISSAO'
          Title.Caption = 'Data Emiss'#227'o'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODCLIENTE'
          Title.Caption = 'Cod. Cliente'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RAZAOSOCIAL'
          Title.Caption = 'Nome Cliente'
          Width = 205
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTIDADE'
          Title.Caption = 'Quantidade'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PESOBRUTO'
          Title.Caption = 'Peso Bruto'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PESOLIQUIDO'
          Title.Caption = 'Peso Liquido'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_PRODUTO'
          Title.Caption = 'Valor Produtos'
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_TOTAL_NOTA'
          Title.Caption = 'Valor Total da Nota'
          Visible = True
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 40
    Top = 312
    Width = 777
    Height = 233
    Caption = 'Notas de Remessa'
    TabOrder = 1
    object DBGrid2: TDBGrid
      Left = 8
      Top = 16
      Width = 761
      Height = 209
      DataSource = DtsrcR
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NOTAFISCAL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTIDADE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PESOBRUTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PESOLIQUIDO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTAEMISSAO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_PRODUTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_TOTAL_NOTA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CFOP'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODCLIENTE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SERIE'
          Width = 49
          Visible = True
        end>
    end
  end
  object MMJPanel2: TMMJPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 54
    Align = alTop
    TabOrder = 2
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clTeal
    Background.EndColor = clSilver
    Background.FillType = GradUpDown
    object Label1: TLabel
      Left = 152
      Top = 8
      Width = 559
      Height = 42
      Caption = 'Sele'#231#227'o de notas de Entrega Futura'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -37
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 156
      Top = 9
      Width = 559
      Height = 42
      Caption = 'Sele'#231#227'o de notas de Entrega Futura'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -37
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object MMJPanel1: TMMJPanel
    Left = 0
    Top = 559
    Width = 862
    Height = 54
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 3
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clSilver
    Background.EndColor = clTeal
    Background.FillType = GradUpDown
    object btnSair: TBitBtn
      Left = 445
      Top = 7
      Width = 103
      Height = 40
      Caption = 'Sair'
      TabOrder = 0
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
    object btnSelecionar: TBitBtn
      Left = 301
      Top = 6
      Width = 103
      Height = 40
      Caption = 'Selecionar'
      TabOrder = 1
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000C40E0000C40E00000000000000000000000000000000
        00000000000000000000000000FF000000FF0C3829FF0B3628FF000000FF0000
        00FF000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000FF0D3E2EFF1E9770FF167255FF000000FF0000
        00FF000000FF000000FF000000FF000000000000000000000000000000000000
        000000000000000000001E966FFF1E9972FF2BCC9FFF1FA37AFF1E9870FF0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000001E966FFF1E9972FF27CB9DFF1FD2A5FF27D0A3FF1E9973FF1E96
        6FFF000000000000000000000000000000000000000000000000000000000000
        00001E966FFF1E9972FF25D0A3FF1FD2A5FFFFFFFFFF1ED1A5FF23BC92FF1E9A
        73FF1E966FFF0000000000000000000000000000000000000000000000001E96
        6FFF1E9A72FF23CFA2FF1FD2A5FF2DDAAFFF28A982FF2DDAAFFF20D2A6FF1FA8
        7FFF1E9972FF00000000000000000000000000000000000000001E966FFF1E99
        71FF21CFA2FF1ED1A5FF41E1BAFF20A57AFF28A881FF1FA479FF2DDAAFFF21CF
        A3FF1E9C75FF1E9870FF0000000000000000000000000000000031A481FF2DDA
        AFFF20D0A4FF7BF2D6FF23AD7FFF23AC7FFF0000000021AA7CFF1FA67AFF2DDA
        AFFF1FC398FF1F9E75FF1F9972FF00000000000000000000000031A481FF31A4
        81FF8CF8E0FF2AB287FF25B585FF00000000000000000000000020AB7DFF1FA7
        7BFF1ECB9EFF1FB389FF20A278FF0000000000000000000000000000000031A4
        81FF31A481FF25B586FF000000000000000000000000000000000000000021AA
        7CFF21AB7EFF1EC89BFF20A87EFF20A178FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000023AB7DFF23AC7FFF1FC094FF23A97DFF21A378FF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000024AC7FFF24AF81FF21B488FF23A97DFF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000025AC7EFF25AE81FF24AB7EFF23A87CFF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000025AD7FFF25AE81FF24AB7EFF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000025AE80FF25AE81FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000025AD80FF}
    end
  end
  object DtSrc: TDataSource
    DataSet = cdsNFfutura
    Left = 544
    Top = 8
  end
  object XPMenu1: TXPMenu
    DimLevel = 30
    GrayLevel = 10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Color = clBtnFace
    DrawMenuBar = False
    IconBackColor = clBtnFace
    MenuBarColor = clBtnFace
    SelectColor = clHighlight
    SelectBorderColor = clHighlight
    SelectFontColor = clMenuText
    DisabledColor = clInactiveCaption
    SeparatorColor = clBtnFace
    CheckedColor = clHighlight
    IconWidth = 24
    DrawSelect = True
    UseSystemColors = True
    UseDimColor = False
    OverrideOwnerDraw = False
    Gradient = False
    FlatMenu = True
    AutoDetect = False
    Active = False
    Left = 592
    Top = 8
  end
  object sdsNFfutura: TSQLDataSet
    CommandText = 
      'SELECT nf.NOTASERIE, nf.NUMNF, nf.QUANTIDADE, nf.PESOBRUTO, nf.P' +
      'ESOLIQUIDO, nf.DTAEMISSAO, nf.CODVENDA, nf.NOTAFISCAL, nf.BASE_I' +
      'CMS'#13#10', nf.VALOR_ICMS, nf.BASE_ICMS_SUBST, nf.VALOR_ICMS_SUBST, n' +
      'f.VALOR_PRODUTO, nf.VALOR_TOTAL_NOTA, nf.CFOP, nf.CODCLIENTE, nf' +
      '.CNPJ_CPF'#13#10', nf.INSCRICAOESTADUAL, nf.SERIE, cli.RAZAOSOCIAL'#13#10'FR' +
      'OM NOTAFISCAL nf '#13#10'inner join CLIENTES cli on cli.CODCLIENTE = n' +
      'f.CODCLIENTE'#13#10'where nf.CODCLIENTE = :codcli and ((nf.CFOP = '#39'592' +
      '2'#39') or (nf.CFOP = '#39'6922'#39'))'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'codcli'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 72
    Top = 136
    object sdsNFfuturaNOTASERIE: TStringField
      FieldName = 'NOTASERIE'
      Required = True
      Size = 10
    end
    object sdsNFfuturaNUMNF: TIntegerField
      FieldName = 'NUMNF'
      Required = True
    end
    object sdsNFfuturaQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object sdsNFfuturaPESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      Precision = 9
      Size = 2
    end
    object sdsNFfuturaPESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      Precision = 9
      Size = 2
    end
    object sdsNFfuturaDTAEMISSAO: TDateField
      FieldName = 'DTAEMISSAO'
    end
    object sdsNFfuturaCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
    object sdsNFfuturaNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object sdsNFfuturaBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object sdsNFfuturaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object sdsNFfuturaBASE_ICMS_SUBST: TFloatField
      FieldName = 'BASE_ICMS_SUBST'
    end
    object sdsNFfuturaVALOR_ICMS_SUBST: TFloatField
      FieldName = 'VALOR_ICMS_SUBST'
    end
    object sdsNFfuturaVALOR_PRODUTO: TFloatField
      FieldName = 'VALOR_PRODUTO'
    end
    object sdsNFfuturaVALOR_TOTAL_NOTA: TFloatField
      FieldName = 'VALOR_TOTAL_NOTA'
    end
    object sdsNFfuturaCFOP: TStringField
      FieldName = 'CFOP'
      Size = 30
    end
    object sdsNFfuturaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object sdsNFfuturaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object sdsNFfuturaINSCRICAOESTADUAL: TStringField
      FieldName = 'INSCRICAOESTADUAL'
    end
    object sdsNFfuturaSERIE: TStringField
      FieldName = 'SERIE'
    end
    object sdsNFfuturaRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
  end
  object sdsNFremessa: TSQLDataSet
    CommandText = 
      'SELECT nf.NOTASERIE, nf.NUMNF, nf.QUANTIDADE, nf.PESOBRUTO, nf.P' +
      'ESOLIQUIDO, nf.DTAEMISSAO, nf.CODVENDA, nf.NOTAFISCAL, nf.BASE_I' +
      'CMS'#13#10', nf.VALOR_ICMS, nf.BASE_ICMS_SUBST, nf.VALOR_ICMS_SUBST, n' +
      'f.VALOR_PRODUTO, nf.VALOR_TOTAL_NOTA, nf.CFOP, nf.CODCLIENTE, nf' +
      '.CNPJ_CPF'#13#10', nf.INSCRICAOESTADUAL, nf.SERIE'#13#10'FROM NOTAFISCAL nf'
    DataSource = DtSrc
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 88
    Top = 392
  end
  object cdsNFfutura: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'codcli'
        ParamType = ptInput
      end>
    ProviderName = 'dspNFfutura'
    Left = 136
    Top = 136
    object cdsNFfuturaNOTASERIE: TStringField
      FieldName = 'NOTASERIE'
      Required = True
      Size = 10
    end
    object cdsNFfuturaNUMNF: TIntegerField
      FieldName = 'NUMNF'
      Required = True
    end
    object cdsNFfuturaQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object cdsNFfuturaPESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      Precision = 9
      Size = 2
    end
    object cdsNFfuturaPESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      Precision = 9
      Size = 2
    end
    object cdsNFfuturaDTAEMISSAO: TDateField
      FieldName = 'DTAEMISSAO'
    end
    object cdsNFfuturaCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
    object cdsNFfuturaNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object cdsNFfuturaBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object cdsNFfuturaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object cdsNFfuturaBASE_ICMS_SUBST: TFloatField
      FieldName = 'BASE_ICMS_SUBST'
    end
    object cdsNFfuturaVALOR_ICMS_SUBST: TFloatField
      FieldName = 'VALOR_ICMS_SUBST'
    end
    object cdsNFfuturaVALOR_PRODUTO: TFloatField
      FieldName = 'VALOR_PRODUTO'
    end
    object cdsNFfuturaVALOR_TOTAL_NOTA: TFloatField
      FieldName = 'VALOR_TOTAL_NOTA'
    end
    object cdsNFfuturaCFOP: TStringField
      FieldName = 'CFOP'
      Size = 30
    end
    object cdsNFfuturaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsNFfuturaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsNFfuturaINSCRICAOESTADUAL: TStringField
      FieldName = 'INSCRICAOESTADUAL'
    end
    object cdsNFfuturaSERIE: TStringField
      FieldName = 'SERIE'
    end
    object cdsNFfuturaRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
  end
  object dspNFfutura: TDataSetProvider
    DataSet = sdsNFfutura
    Left = 104
    Top = 136
  end
  object dspNFremessa: TDataSetProvider
    DataSet = sdsNFfutura
    Left = 120
    Top = 392
  end
  object cdsNFremessa: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'codcli'
        ParamType = ptInput
      end>
    ProviderName = 'dspNFremessa'
    Left = 152
    Top = 392
    object cdsNFremessaNOTASERIE: TStringField
      FieldName = 'NOTASERIE'
      Required = True
      Size = 10
    end
    object cdsNFremessaNUMNF: TIntegerField
      FieldName = 'NUMNF'
      Required = True
    end
    object cdsNFremessaQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object cdsNFremessaPESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      Precision = 9
      Size = 2
    end
    object cdsNFremessaPESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      Precision = 9
      Size = 2
    end
    object cdsNFremessaDTAEMISSAO: TDateField
      FieldName = 'DTAEMISSAO'
    end
    object cdsNFremessaCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
    object cdsNFremessaNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object cdsNFremessaBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object cdsNFremessaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object cdsNFremessaBASE_ICMS_SUBST: TFloatField
      FieldName = 'BASE_ICMS_SUBST'
    end
    object cdsNFremessaVALOR_ICMS_SUBST: TFloatField
      FieldName = 'VALOR_ICMS_SUBST'
    end
    object cdsNFremessaVALOR_PRODUTO: TFloatField
      FieldName = 'VALOR_PRODUTO'
    end
    object cdsNFremessaVALOR_TOTAL_NOTA: TFloatField
      FieldName = 'VALOR_TOTAL_NOTA'
    end
    object cdsNFremessaCFOP: TStringField
      FieldName = 'CFOP'
      Size = 30
    end
    object cdsNFremessaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsNFremessaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsNFremessaINSCRICAOESTADUAL: TStringField
      FieldName = 'INSCRICAOESTADUAL'
    end
    object cdsNFremessaSERIE: TStringField
      FieldName = 'SERIE'
    end
  end
  object DtsrcR: TDataSource
    DataSet = cdsNFremessa
    Left = 328
    Top = 352
  end
end
