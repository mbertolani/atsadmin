object F_AUTOPECAS: TF_AUTOPECAS
  Left = 193
  Top = 104
  BorderStyle = bsSingle
  Caption = 'TERMINAL AUTOPE'#199'AS'
  ClientHeight = 562
  ClientWidth = 791
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object MMJPanel1: TMMJPanel
    Left = 0
    Top = 0
    Width = 791
    Height = 45
    Align = alTop
    TabOrder = 0
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clSilver
    Background.EndColor = clSkyBlue
    Background.FillType = GradUpDown
    object lbl1: TLabel
      Left = 58
      Top = 10
      Width = 323
      Height = 25
      Caption = 'Entre com o C'#243'digo de Barras -->'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Modern No. 20'
      Font.Style = [fsItalic]
      ParentFont = False
      Transparent = True
    end
    object edt_produto: TEdit
      Left = 397
      Top = 8
      Width = 274
      Height = 32
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = edt_produtoKeyPress
    end
    object btn1: TBitBtn
      Left = 673
      Top = 8
      Width = 116
      Height = 32
      Caption = 'Lista Produtos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsItalic]
      ParentFont = False
      TabOrder = 1
    end
  end
  object MMJPanel2: TMMJPanel
    Left = 395
    Top = 45
    Width = 396
    Height = 477
    Align = alRight
    TabOrder = 1
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clSilver
    Background.EndColor = clSkyBlue
    Background.FillType = GradUpDown
    object JvDBGrid1: TJvDBGrid
      Left = 1
      Top = 1
      Width = 394
      Height = 328
      Align = alTop
      BorderStyle = bsNone
      DataSource = d_movdet
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      BevelKind = bkFlat
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'CODPRO'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRODUTO'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTIDADE'
          Title.Caption = 'Qtde'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTDE_ALT'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UN'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BAIXA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CONTROLE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_COMISSAO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALTOTAL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODALMOXARIFADO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORUNITARIOATUAL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTDE_PCT'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ALMOXARIFADO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CONTA_DESPESA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_BARRA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOCALIZACAO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESTOQUEATUAL'
          Visible = True
        end>
    end
    object MMJPanel3: TMMJPanel
      Left = 1
      Top = 415
      Width = 394
      Height = 61
      Align = alBottom
      BevelInner = bvLowered
      TabOrder = 1
      Silhuette.Shape.ShapeText = 'Shape text'
      Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
      Silhuette.PictureShape.DisplayPicture = True
      Background.StartColor = clSilver
      Background.EndColor = clSkyBlue
      Background.FillType = GradUpDown
      object lbl2: TLabel
        Left = 16
        Top = 21
        Width = 146
        Height = 21
        Caption = 'Total do Pedido -->'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Modern No. 20'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = True
      end
      object dbedt1: TDBEdit
        Left = 168
        Top = 3
        Width = 223
        Height = 54
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -41
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object JvGroupBox7: TJvGroupBox
      Left = 1
      Top = 329
      Width = 394
      Height = 85
      Align = alTop
      Caption = 'APLICA'#199#195'O DO PRODUTO'
      TabOrder = 2
      object JvDBGrid3: TJvDBGrid
        Left = 2
        Top = 15
        Width = 390
        Height = 68
        Align = alClient
        BorderStyle = bsNone
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        BevelKind = bkFlat
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 17
        TitleRowHeight = 17
      end
    end
  end
  object MMJPanel5: TMMJPanel
    Left = 0
    Top = 522
    Width = 791
    Height = 40
    Align = alBottom
    TabOrder = 2
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clSilver
    Background.EndColor = clSkyBlue
    Background.FillType = GradUpDown
    object btn_incluir: TBitBtn
      Left = 206
      Top = 5
      Width = 83
      Height = 31
      Caption = 'F2-Incluir'
      TabOrder = 0
      OnClick = btn_incluirClick
    end
    object btn4: TBitBtn
      Left = 384
      Top = 5
      Width = 83
      Height = 31
      Caption = 'Apr. Or'#231'amento'
      TabOrder = 1
    end
    object btn10: TBitBtn
      Left = 295
      Top = 5
      Width = 83
      Height = 31
      Caption = 'F7-Excluir'
      TabOrder = 2
    end
    object btn11: TBitBtn
      Left = 117
      Top = 5
      Width = 83
      Height = 31
      Caption = 'F8-Procurar'
      TabOrder = 3
    end
    object btn12: TBitBtn
      Left = 473
      Top = 5
      Width = 83
      Height = 31
      Caption = 'Relat'#243'rios'
      TabOrder = 4
    end
    object btn13: TBitBtn
      Left = 563
      Top = 5
      Width = 83
      Height = 31
      Caption = 'F9-Sair'
      TabOrder = 5
    end
  end
  object pgc1: TPageControl
    Left = 0
    Top = 45
    Width = 395
    Height = 477
    ActivePage = ts1
    Align = alClient
    TabOrder = 3
    object ts1: TTabSheet
      Caption = 'VENDA/OR'#199'AMENTO'
      object MMJPanel4: TMMJPanel
        Left = 0
        Top = 0
        Width = 387
        Height = 449
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 0
        Silhuette.Shape.ShapeText = 'Shape text'
        Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
        Silhuette.PictureShape.DisplayPicture = True
        Background.StartColor = clSilver
        Background.EndColor = clSkyBlue
        Background.FillType = GradUpDown
        object JvGroupBox1: TJvGroupBox
          Left = 3
          Top = 52
          Width = 380
          Height = 55
          Caption = 'Dados do Cliente'
          TabOrder = 0
          object lbl3: TLabel
            Left = 4
            Top = 14
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
          end
          object lbl9: TLabel
            Left = 52
            Top = 14
            Width = 102
            Height = 13
            Caption = 'Nome / Raz'#227'o Social'
          end
          object dbedt2: TDBEdit
            Left = 5
            Top = 28
            Width = 47
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            TabOrder = 0
          end
          object dbedt6: TDBEdit
            Left = 53
            Top = 28
            Width = 293
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            TabOrder = 1
          end
          object btn2: TBitBtn
            Left = 347
            Top = 26
            Width = 27
            Height = 23
            Caption = '...'
            TabOrder = 2
          end
        end
        object JvGroupBox2: TJvGroupBox
          Left = 3
          Top = 108
          Width = 380
          Height = 55
          Caption = 'Dados do Ve'#237'culo'
          TabOrder = 1
          object lbl4: TLabel
            Left = 4
            Top = 14
            Width = 27
            Height = 13
            Caption = 'Placa'
          end
          object lbl10: TLabel
            Left = 111
            Top = 14
            Width = 48
            Height = 13
            Caption = 'Descri'#231#227'o'
          end
          object dbedt3: TDBEdit
            Left = 4
            Top = 28
            Width = 75
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            TabOrder = 0
          end
          object dbedt7: TDBEdit
            Left = 111
            Top = 28
            Width = 241
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            TabOrder = 1
          end
          object btn3: TBitBtn
            Left = 81
            Top = 26
            Width = 27
            Height = 23
            Caption = '...'
            TabOrder = 2
          end
        end
        object JvGroupBox4: TJvGroupBox
          Left = 3
          Top = 301
          Width = 380
          Height = 145
          Caption = 'SIMILARES'
          TabOrder = 2
          object JvDBGrid2: TJvDBGrid
            Left = 2
            Top = 15
            Width = 376
            Height = 128
            Align = alClient
            BorderStyle = bsNone
            DataSource = d_similar
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            BevelKind = bkFlat
            AutoSizeColumns = True
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 17
            TitleRowHeight = 17
            Columns = <
              item
                Expanded = False
                FieldName = 'CODPROSIMILAR'
                Title.Caption = 'C'#243'digo'
                Width = 44
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRODUTO'
                Width = 132
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MARCA'
                Width = 44
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALORUNITARIOATUAL'
                Title.Caption = 'R$Compra'
                Width = 56
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRECOMEDIO'
                Title.Caption = 'R$Venda'
                Width = 79
                Visible = True
              end>
          end
        end
        object JvGroupBox5: TJvGroupBox
          Left = 3
          Top = 4
          Width = 380
          Height = 47
          TabOrder = 3
          object lbl7: TLabel
            Left = 5
            Top = 7
            Width = 58
            Height = 13
            Caption = 'N'#186' de Odem'
          end
          object lbl8: TLabel
            Left = 81
            Top = 7
            Width = 23
            Height = 13
            Caption = 'Data'
          end
          object dbedt4: TDBEdit
            Left = 6
            Top = 21
            Width = 72
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            TabOrder = 0
          end
          object dbedt5: TDBEdit
            Left = 82
            Top = 21
            Width = 85
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            TabOrder = 1
          end
          object rg1: TRadioGroup
            Left = 171
            Top = 9
            Width = 203
            Height = 33
            Caption = 'Tipo'
            Columns = 2
            Items.Strings = (
              'Pedido'
              'Or'#231'amento')
            TabOrder = 2
          end
        end
        object JvGroupBox3: TJvGroupBox
          Left = 3
          Top = 162
          Width = 380
          Height = 94
          TabOrder = 4
          object lbl5: TLabel
            Left = 5
            Top = 12
            Width = 117
            Height = 13
            Caption = 'Condi'#231#227'o de Pagamento'
          end
          object lbl6: TLabel
            Left = 173
            Top = 12
            Width = 101
            Height = 13
            Caption = 'Forma de Pagamento'
          end
          object lbl11: TLabel
            Left = 5
            Top = 51
            Width = 68
            Height = 13
            Caption = 'Caixa / Banco'
          end
          object lbl12: TLabel
            Left = 173
            Top = 51
            Width = 51
            Height = 13
            Caption = 'Pago em ?'
          end
          object cbb1: TComboBox
            Left = 5
            Top = 28
            Width = 164
            Height = 21
            BevelKind = bkFlat
            ItemHeight = 13
            TabOrder = 0
          end
          object cbb2: TComboBox
            Left = 173
            Top = 28
            Width = 197
            Height = 21
            BevelKind = bkFlat
            ItemHeight = 13
            TabOrder = 1
          end
          object cbb6: TComboBox
            Left = 5
            Top = 66
            Width = 164
            Height = 21
            BevelKind = bkFlat
            ItemHeight = 13
            TabOrder = 2
          end
          object cbb7: TComboBox
            Left = 173
            Top = 66
            Width = 169
            Height = 21
            BevelKind = bkFlat
            ItemHeight = 13
            TabOrder = 3
          end
          object btn5: TBitBtn
            Left = 345
            Top = 63
            Width = 29
            Height = 25
            Caption = '...'
            TabOrder = 4
          end
        end
        object JvGroupBox6: TJvGroupBox
          Left = 3
          Top = 256
          Width = 380
          Height = 44
          Caption = 'Obs.:'
          TabOrder = 5
          object dbedt9: TDBEdit
            Left = 5
            Top = 15
            Width = 370
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            TabOrder = 0
          end
        end
      end
    end
    object ts2: TTabSheet
      Caption = 'FINANCEIRO'
      ImageIndex = 1
      object MMJPanel6: TMMJPanel
        Left = 0
        Top = 0
        Width = 387
        Height = 449
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 0
        Silhuette.Shape.ShapeText = 'Shape text'
        Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
        Silhuette.PictureShape.DisplayPicture = True
        Background.StartColor = clSilver
        Background.EndColor = clSkyBlue
        Background.FillType = GradUpDown
        object JvGroupBox10: TJvGroupBox
          Left = 4
          Top = 193
          Width = 378
          Height = 134
          TabOrder = 0
          object lbl17: TLabel
            Left = 5
            Top = 12
            Width = 117
            Height = 13
            Caption = 'Condi'#231#227'o de Pagamento'
          end
          object lbl18: TLabel
            Left = 173
            Top = 12
            Width = 101
            Height = 13
            Caption = 'Forma de Pagamento'
          end
          object lbl27: TLabel
            Left = 5
            Top = 51
            Width = 68
            Height = 13
            Caption = 'Caixa / Banco'
          end
          object lbl28: TLabel
            Left = 173
            Top = 51
            Width = 51
            Height = 13
            Caption = 'Pago em ?'
          end
          object lbl29: TLabel
            Left = 5
            Top = 90
            Width = 37
            Height = 13
            Caption = 'N. Doc.'
          end
          object cbb3: TComboBox
            Left = 5
            Top = 28
            Width = 164
            Height = 21
            BevelKind = bkFlat
            ItemHeight = 13
            TabOrder = 0
          end
          object cbb4: TComboBox
            Left = 173
            Top = 28
            Width = 197
            Height = 21
            BevelKind = bkFlat
            ItemHeight = 13
            TabOrder = 1
          end
          object cbbConta: TComboBox
            Left = 5
            Top = 66
            Width = 164
            Height = 21
            BevelKind = bkFlat
            ItemHeight = 13
            TabOrder = 2
          end
          object cbb5: TComboBox
            Left = 173
            Top = 66
            Width = 166
            Height = 21
            BevelKind = bkFlat
            ItemHeight = 13
            TabOrder = 3
          end
          object btn9: TBitBtn
            Left = 341
            Top = 63
            Width = 29
            Height = 25
            TabOrder = 4
          end
          object dbedtN_DOCUMENTO: TDBEdit
            Left = 5
            Top = 105
            Width = 293
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object btn14: TBitBtn
            Left = 300
            Top = 101
            Width = 73
            Height = 25
            Caption = 'Rel. Cheques'
            TabOrder = 6
          end
        end
        object JvGroupBox11: TJvGroupBox
          Left = 4
          Top = 327
          Width = 378
          Height = 118
          Caption = 'FINANCEIRO'
          TabOrder = 1
          object JvDBGrid4: TJvDBGrid
            Left = 2
            Top = 15
            Width = 374
            Height = 101
            Align = alClient
            BorderStyle = bsNone
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            BevelKind = bkFlat
            AutoSizeColumns = True
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 17
            TitleRowHeight = 17
          end
        end
        object JvGroupBox12: TJvGroupBox
          Left = 4
          Top = 5
          Width = 378
          Height = 188
          Caption = 'Dados da N.F'
          TabOrder = 2
          object lbl23: TLabel
            Left = 8
            Top = 14
            Width = 24
            Height = 13
            Caption = 'S'#233'rie'
          end
          object lbl24: TLabel
            Left = 97
            Top = 14
            Width = 53
            Height = 13
            Caption = 'Nota Fiscal'
          end
          object lbl25: TLabel
            Left = 184
            Top = 14
            Width = 72
            Height = 13
            Caption = 'Data da Venda'
          end
          object lbl26: TLabel
            Left = 297
            Top = 16
            Width = 56
            Height = 13
            Caption = 'N'#186' Parcelas'
          end
          object lbl30: TLabel
            Left = 7
            Top = 57
            Width = 68
            Height = 13
            Caption = 'Valor Frete R$'
          end
          object lbl31: TLabel
            Left = 130
            Top = 56
            Width = 78
            Height = 13
            Caption = 'Valor Seguro R$'
          end
          object lbl32: TLabel
            Left = 7
            Top = 99
            Width = 70
            Height = 13
            Caption = 'Valor ICMS R$'
          end
          object lbl33: TLabel
            Left = 132
            Top = 99
            Width = 57
            Height = 13
            Caption = 'Valor IPI R$'
          end
          object lbl34: TLabel
            Left = 255
            Top = 55
            Width = 86
            Height = 13
            Caption = 'Outros Valores R$'
          end
          object lbl35: TLabel
            Left = 7
            Top = 140
            Width = 62
            Height = 13
            Caption = 'Multa / Juros'
          end
          object lbl36: TLabel
            Left = 130
            Top = 141
            Width = 63
            Height = 13
            Caption = 'Desconto R$'
          end
          object dbedtSERIE: TDBEdit
            Left = 7
            Top = 32
            Width = 56
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object btnSerie: TBitBtn
            Left = 65
            Top = 31
            Width = 29
            Height = 22
            Caption = '. . .'
            TabOrder = 1
            TabStop = False
          end
          object dbedtNOTAFISCAL: TDBEdit
            Left = 96
            Top = 32
            Width = 73
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object dbedtDATAVENDA: TDBEdit
            Left = 183
            Top = 32
            Width = 102
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object dbedtN_PARCELA: TDBEdit
            Left = 295
            Top = 32
            Width = 75
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object dbedtVALOR_FRETE: TDBEdit
            Left = 7
            Top = 73
            Width = 115
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object dbedtVALOR_SEGURO: TDBEdit
            Left = 130
            Top = 73
            Width = 115
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object dbedtVALOR_ICMS: TDBEdit
            Left = 7
            Top = 115
            Width = 115
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
          object dbedtVALOR_IPI: TDBEdit
            Left = 131
            Top = 115
            Width = 115
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
          end
          object dbedtOUTRAS_DESP: TDBEdit
            Left = 255
            Top = 72
            Width = 115
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
          end
          object dbedtMULTA_JUROS: TDBEdit
            Left = 7
            Top = 155
            Width = 115
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
          end
          object dbedtDESCONTO: TDBEdit
            Left = 131
            Top = 155
            Width = 114
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
          end
        end
      end
    end
    object ts3: TTabSheet
      Caption = 'O.S'
      ImageIndex = 2
      object MMJPanel7: TMMJPanel
        Left = 0
        Top = 0
        Width = 387
        Height = 449
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 0
        Silhuette.Shape.ShapeText = 'Shape text'
        Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
        Silhuette.PictureShape.DisplayPicture = True
        Background.StartColor = clSilver
        Background.EndColor = clSkyBlue
        Background.FillType = GradUpDown
        object lbl13: TLabel
          Left = 8
          Top = 11
          Width = 51
          Height = 13
          Caption = 'N'#186' da O.S.'
          Transparent = True
        end
        object lbl14: TLabel
          Left = 84
          Top = 11
          Width = 51
          Height = 13
          Caption = 'Data Inicio'
          Transparent = True
        end
        object lbl15: TLabel
          Left = 173
          Top = 11
          Width = 42
          Height = 13
          Caption = 'Data Fim'
          Transparent = True
        end
        object lbl16: TLabel
          Left = 263
          Top = 11
          Width = 67
          Height = 13
          Caption = 'SItua'#231#227'o O.S.'
          Transparent = True
        end
        object lbl19: TLabel
          Left = 8
          Top = 53
          Width = 27
          Height = 13
          Caption = 'Placa'
          Transparent = True
        end
        object lbl20: TLabel
          Left = 86
          Top = 53
          Width = 89
          Height = 13
          Caption = 'Descri'#231#227'o Veiculo '
          Transparent = True
        end
        object lbl21: TLabel
          Left = 263
          Top = 53
          Width = 43
          Height = 13
          Caption = 'Ano Fab.'
          Transparent = True
        end
        object lbl22: TLabel
          Left = 321
          Top = 53
          Width = 46
          Height = 13
          Caption = 'Ano Mod.'
          Transparent = True
        end
        object dbedt10: TDBEdit
          Left = 8
          Top = 25
          Width = 72
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 0
        end
        object dbedt11: TDBEdit
          Left = 84
          Top = 25
          Width = 85
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 1
        end
        object dbedt12: TDBEdit
          Left = 173
          Top = 25
          Width = 85
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 2
        end
        object dbedt13: TDBEdit
          Left = 263
          Top = 25
          Width = 112
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 3
        end
        object dbedt14: TDBEdit
          Left = 8
          Top = 67
          Width = 72
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 4
        end
        object dbedt15: TDBEdit
          Left = 84
          Top = 67
          Width = 174
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 5
        end
        object dbedt16: TDBEdit
          Left = 263
          Top = 67
          Width = 54
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 6
        end
        object dbedt17: TDBEdit
          Left = 321
          Top = 67
          Width = 54
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 7
        end
        object JvGroupBox8: TJvGroupBox
          Left = 9
          Top = 94
          Width = 365
          Height = 175
          Caption = 'SERVI'#199'OS'
          TabOrder = 8
          object JvDBGrid5: TJvDBGrid
            Left = 2
            Top = 15
            Width = 361
            Height = 158
            Align = alClient
            BorderStyle = bsNone
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            BevelKind = bkFlat
            AutoSizeColumns = True
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 17
            TitleRowHeight = 17
          end
        end
        object JvGroupBox9: TJvGroupBox
          Left = 9
          Top = 317
          Width = 365
          Height = 128
          Caption = 'OBSERVA'#199#213'ES'
          TabOrder = 9
          object dbmmo1: TDBMemo
            Left = 2
            Top = 15
            Width = 361
            Height = 111
            Align = alClient
            BevelKind = bkFlat
            BorderStyle = bsNone
            TabOrder = 0
          end
        end
        object pnl1: TPanel
          Left = 9
          Top = 270
          Width = 365
          Height = 41
          Color = clMoneyGreen
          TabOrder = 10
          object btn6: TBitBtn
            Left = 62
            Top = 9
            Width = 75
            Height = 25
            Caption = 'INCLUIR'
            TabOrder = 0
          end
          object btn7: TBitBtn
            Left = 142
            Top = 9
            Width = 75
            Height = 25
            Caption = 'EXCLUIR'
            TabOrder = 1
          end
          object btn8: TBitBtn
            Left = 224
            Top = 9
            Width = 75
            Height = 25
            Caption = 'SALVAR'
            TabOrder = 2
          end
        end
      end
    end
  end
  object s_buscaPro: TSQLDataSet
    CommandText = 
      'select CODPRODUTO, PRODUTO, PRECOMEDIO, VALORUNITARIOATUAL, UNID' +
      'ADEMEDIDA, MARCA, CODPRO, COD_BARRA, QTDE_PCT, ICMS, IPI, CLASSI' +
      'FIC_FISCAL, CST, BASE_ICMS, COD_COMISSAO'#13#10' from PRODUTOS '#13#10'where' +
      ' COD_BARRA = :cdBarra'#13#10'      or CODPRO = :cdPro'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'cdBarra'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'cdPro'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 466
    Top = 84
    object s_buscaProCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object s_buscaProPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object s_buscaProPRECOMEDIO: TBCDField
      FieldName = 'PRECOMEDIO'
      Precision = 9
      Size = 2
    end
    object s_buscaProVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
    end
    object s_buscaProUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      FixedChar = True
      Size = 2
    end
    object s_buscaProMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object s_buscaProCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object s_buscaProCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
    end
    object s_buscaProQTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
    end
    object s_buscaProICMS: TFloatField
      FieldName = 'ICMS'
    end
    object s_buscaProIPI: TFloatField
      FieldName = 'IPI'
    end
    object s_buscaProCLASSIFIC_FISCAL: TStringField
      FieldName = 'CLASSIFIC_FISCAL'
      Size = 30
    end
    object s_buscaProCST: TStringField
      FieldName = 'CST'
      Size = 30
    end
    object s_buscaProBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object s_buscaProCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
    end
  end
  object s_similar: TSQLDataSet
    CommandText = 
      'select s.*, '#13#10'           p.PRODUTO, '#13#10'           p.MARCA,'#13#10'     ' +
      '      p.VALORUNITARIOATUAL,'#13#10'           p.PRECOMEDIO '#13#10'from SIMI' +
      'LARES s '#13#10'inner join PRODUTOS p on'#13#10'p.CODPRODUTO = s.ID_SIMILAR ' +
      #13#10'where s.ID_PRODUTO = :id'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 465
    Top = 118
  end
  object s_movimento: TSQLDataSet
    CommandText = 
      'select mov.*, cli.NOMECLIENTE, cli.OBS, vei.PLACA, vei.MARCA_MOD' +
      'ELO, '#13#10'usu.NOMEUSUARIO, forn.NOMEFORNECEDOR, nat.DESCNATUREZA, '#13 +
      #10'alm.ALMOXARIFADO, nat.TIPOTITULO, nat.BAIXAMOVIMENTO  '#13#10'from MO' +
      'VIMENTO mov '#13#10'left outer join CLIENTES cli on cli.CODCLIENTE=mov' +
      '.CODCLIENTE '#13#10'left outer join VEICULO vei on vei.COD_CLIENTE=mov' +
      '.CODCLIENTE '#13#10'left outer join USUARIO usu on usu.CODUSUARIO=mov.' +
      'CODUSUARIO '#13#10'left outer join FORNECEDOR forn on forn.CODFORNECED' +
      'OR =mov.CODFORNECEDOR '#13#10'inner join NATUREZAOPERACAO nat on  nat.' +
      'CODNATUREZA=mov.CODNATUREZA '#13#10'left outer join ALMOXARIFADO alm o' +
      'n alm.CODALMOXARIFADO=mov.CODALMOXARIFADO '#13#10' where CODMOVIMENTO=' +
      ':pCODMOV'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODMOV'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 466
    Top = 155
    object s_movimentoCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object s_movimentoDATAMOVIMENTO: TDateField
      FieldName = 'DATAMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object s_movimentoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object s_movimentoCODNATUREZA: TSmallintField
      FieldName = 'CODNATUREZA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object s_movimentoSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object s_movimentoCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object s_movimentoCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object s_movimentoCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object s_movimentoCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object s_movimentoDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object s_movimentoCOD_VEICULO: TIntegerField
      FieldName = 'COD_VEICULO'
      ProviderFlags = [pfInUpdate]
    end
    object s_movimentoCONTROLE: TStringField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object s_movimentoOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object s_movimentoCONFERIDO: TStringField
      FieldName = 'CONFERIDO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object s_movimentoNFCOBRANCA: TIntegerField
      FieldName = 'NFCOBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object s_movimentoORDEMATEND: TIntegerField
      FieldName = 'ORDEMATEND'
      ProviderFlags = [pfInUpdate]
    end
    object s_movimentoNFREVENDA: TIntegerField
      FieldName = 'NFREVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object s_movimentoCODORIGEM: TIntegerField
      FieldName = 'CODORIGEM'
      ProviderFlags = [pfInUpdate]
    end
    object s_movimentoKM: TStringField
      FieldName = 'KM'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object s_movimentoTOTALMOVIMENTO: TFloatField
      FieldName = 'TOTALMOVIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object s_movimentoVALORRATEIO: TFloatField
      FieldName = 'VALORRATEIO'
      ProviderFlags = [pfInUpdate]
    end
    object s_movimentoRATEIO: TFloatField
      FieldName = 'RATEIO'
      ProviderFlags = [pfInUpdate]
    end
    object s_movimentoCODMOVRATEIO: TIntegerField
      FieldName = 'CODMOVRATEIO'
      ProviderFlags = [pfInUpdate]
    end
    object s_movimentoNFE: TStringField
      FieldName = 'NFE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object s_movimentoNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object s_movimentoOBS_1: TStringField
      FieldName = 'OBS_1'
      ProviderFlags = []
      Size = 200
    end
    object s_movimentoPLACA: TStringField
      FieldName = 'PLACA'
      ProviderFlags = []
      Size = 10
    end
    object s_movimentoMARCA_MODELO: TStringField
      FieldName = 'MARCA_MODELO'
      ProviderFlags = []
      Size = 60
    end
    object s_movimentoNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      ProviderFlags = []
      Size = 30
    end
    object s_movimentoNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object s_movimentoDESCNATUREZA: TStringField
      FieldName = 'DESCNATUREZA'
      ProviderFlags = []
      Required = True
      Size = 30
    end
    object s_movimentoALMOXARIFADO: TStringField
      FieldName = 'ALMOXARIFADO'
      ProviderFlags = []
      Size = 30
    end
    object s_movimentoTIPOTITULO: TSmallintField
      FieldName = 'TIPOTITULO'
      ProviderFlags = []
      Required = True
    end
    object s_movimentoBAIXAMOVIMENTO: TSmallintField
      FieldName = 'BAIXAMOVIMENTO'
      ProviderFlags = []
    end
  end
  object p_similar: TDataSetProvider
    DataSet = s_similar
    Left = 499
    Top = 117
  end
  object p_movimento: TDataSetProvider
    DataSet = s_movimento
    UpdateMode = upWhereKeyOnly
    Left = 501
    Top = 154
  end
  object ds_similar: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'p_similar'
    Left = 535
    Top = 117
    object ds_similarID_SIMILAR: TIntegerField
      FieldName = 'ID_SIMILAR'
    end
    object ds_similarID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object ds_similarCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object ds_similarCODPROSIMILAR: TStringField
      FieldName = 'CODPROSIMILAR'
      Size = 15
    end
    object ds_similarPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
    object ds_similarMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object ds_similarVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
    end
    object ds_similarPRECOMEDIO: TBCDField
      FieldName = 'PRECOMEDIO'
      Precision = 9
      Size = 2
    end
  end
  object ds_movimento: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODMOV'
        ParamType = ptInput
      end>
    ProviderName = 'p_movimento'
    BeforePost = ds_movimentoBeforePost
    Left = 536
    Top = 154
    object ds_movimentoCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ds_movimentoDATAMOVIMENTO: TDateField
      FieldName = 'DATAMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object ds_movimentoCODNATUREZA: TSmallintField
      FieldName = 'CODNATUREZA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object ds_movimentoSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object ds_movimentoCODUSUARIO: TSmallintField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object ds_movimentoCODVENDEDOR: TSmallintField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object ds_movimentoCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = [pfInUpdate]
    end
    object ds_movimentoCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object ds_movimentoDATA_SISTEMA: TSQLTimeStampField
      FieldName = 'DATA_SISTEMA'
      ProviderFlags = [pfInUpdate]
    end
    object ds_movimentoCOD_VEICULO: TIntegerField
      FieldName = 'COD_VEICULO'
      ProviderFlags = [pfInUpdate]
    end
    object ds_movimentoCONTROLE: TStringField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object ds_movimentoOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object ds_movimentoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object ds_movimentoCONFERIDO: TStringField
      FieldName = 'CONFERIDO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object ds_movimentoNFCOBRANCA: TIntegerField
      FieldName = 'NFCOBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object ds_movimentoORDEMATEND: TIntegerField
      FieldName = 'ORDEMATEND'
      ProviderFlags = [pfInUpdate]
    end
    object ds_movimentoNFREVENDA: TIntegerField
      FieldName = 'NFREVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object ds_movimentoCODORIGEM: TIntegerField
      FieldName = 'CODORIGEM'
      ProviderFlags = [pfInUpdate]
    end
    object ds_movimentoKM: TStringField
      FieldName = 'KM'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object ds_movimentoTOTALMOVIMENTO: TFloatField
      FieldName = 'TOTALMOVIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object ds_movimentoVALORRATEIO: TFloatField
      FieldName = 'VALORRATEIO'
      ProviderFlags = [pfInUpdate]
    end
    object ds_movimentoRATEIO: TFloatField
      FieldName = 'RATEIO'
      ProviderFlags = [pfInUpdate]
    end
    object ds_movimentoCODMOVRATEIO: TIntegerField
      FieldName = 'CODMOVRATEIO'
      ProviderFlags = [pfInUpdate]
    end
    object ds_movimentoNFE: TStringField
      FieldName = 'NFE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object ds_movimentoNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object ds_movimentoOBS_1: TStringField
      FieldName = 'OBS_1'
      ProviderFlags = []
      Size = 200
    end
    object ds_movimentoPLACA: TStringField
      FieldName = 'PLACA'
      ProviderFlags = []
      Size = 10
    end
    object ds_movimentoMARCA_MODELO: TStringField
      FieldName = 'MARCA_MODELO'
      ProviderFlags = []
      Size = 60
    end
    object ds_movimentoNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      ProviderFlags = []
      Size = 30
    end
    object ds_movimentoNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object ds_movimentoDESCNATUREZA: TStringField
      FieldName = 'DESCNATUREZA'
      ProviderFlags = []
      Required = True
      Size = 30
    end
    object ds_movimentoALMOXARIFADO: TStringField
      FieldName = 'ALMOXARIFADO'
      ProviderFlags = []
      Size = 30
    end
    object ds_movimentoTIPOTITULO: TSmallintField
      FieldName = 'TIPOTITULO'
      ProviderFlags = []
      Required = True
    end
    object ds_movimentoBAIXAMOVIMENTO: TSmallintField
      FieldName = 'BAIXAMOVIMENTO'
      ProviderFlags = []
    end
  end
  object d_similar: TDataSource
    DataSet = ds_similar
    Left = 571
    Top = 117
  end
  object d_movimento: TDataSource
    DataSet = ds_movimento
    Left = 572
    Top = 154
  end
  object d_movdet: TDataSource
    DataSet = ds_movdet
    Left = 572
    Top = 189
  end
  object ds_movdet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODDETALHE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCODMOV'
        ParamType = ptInput
      end>
    ProviderName = 'p_movdet'
    Left = 536
    Top = 188
    object ds_movdetCODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ds_movdetCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object ds_movdetCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object ds_movdetICMS: TFloatField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object ds_movdetPRECO: TFloatField
      FieldName = 'PRECO'
      ProviderFlags = [pfInUpdate]
    end
    object ds_movdetQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object ds_movdetQTDE_ALT: TFloatField
      FieldName = 'QTDE_ALT'
      ProviderFlags = [pfInUpdate]
    end
    object ds_movdetUN: TStringField
      FieldName = 'UN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object ds_movdetBAIXA: TStringField
      FieldName = 'BAIXA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object ds_movdetCONTROLE: TSmallintField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate]
    end
    object ds_movdetCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object ds_movdetVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object ds_movdetCODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = []
      Size = 15
    end
    object ds_movdetPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = []
      Required = True
      Size = 300
    end
    object ds_movdetCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = []
    end
    object ds_movdetVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
      ProviderFlags = []
    end
    object ds_movdetQTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
      ProviderFlags = []
    end
    object ds_movdetALMOXARIFADO: TStringField
      FieldName = 'ALMOXARIFADO'
      ProviderFlags = []
      Size = 30
    end
    object ds_movdetCONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      ProviderFlags = []
      Size = 15
    end
    object ds_movdetCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      ProviderFlags = []
    end
    object ds_movdetLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      ProviderFlags = []
      Size = 50
    end
    object ds_movdetESTOQUEATUAL: TFloatField
      FieldName = 'ESTOQUEATUAL'
      ProviderFlags = []
    end
  end
  object p_movdet: TDataSetProvider
    DataSet = s_movdet
    UpdateMode = upWhereKeyOnly
    Left = 501
    Top = 188
  end
  object s_movdet: TSQLDataSet
    CommandText = 
      'select movd.CODDETALHE'#13#10'        , movd.CODMOVIMENTO'#13#10'        , m' +
      'ovd.CODPRODUTO'#13#10'        , movd.ICMS'#13#10'        , movd.PRECO'#13#10'     ' +
      '   , movd.QUANTIDADE'#13#10'        , movd.QTDE_ALT'#13#10'        , movd.UN' +
      #13#10'        , movd.BAIXA'#13#10'        , movd.CONTROLE'#13#10'        , movd.' +
      'COD_COMISSAO '#13#10'        , movd.VALTOTAL'#13#10'        , prod.CODPRO'#13#10' ' +
      '       , prod.PRODUTO'#13#10'        , prod.CODALMOXARIFADO'#13#10'        ,' +
      ' prod.VALORUNITARIOATUAL'#13#10'        , prod.QTDE_PCT'#13#10'        , ccu' +
      's.ALMOXARIFADO'#13#10'        , prod.CONTA_DESPESA  '#13#10'        , prod.C' +
      'OD_BARRA '#13#10'        , prod.LOCALIZACAO '#13#10'        , prod.ESTOQUEAT' +
      'UAL '#13#10'from MOVIMENTODETALHE movd '#13#10'inner join PRODUTOS prod on p' +
      'rod.CODPRODUTO=movd.CODPRODUTO '#13#10'left outer join ALMOXARIFADO cc' +
      'us on ccus.CODALMOXARIFADO = prod.CODALMOXARIFADO '#13#10'where movd.C' +
      'ODDETALHE=:CODDETALHE or movd.CODMOVIMENTO=:pCODMOV '#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODDETALHE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCODMOV'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 466
    Top = 189
    object s_movdetCODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object s_movdetCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object s_movdetCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetICMS: TFloatField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetPRECO: TFloatField
      FieldName = 'PRECO'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetQTDE_ALT: TFloatField
      FieldName = 'QTDE_ALT'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetUN: TStringField
      FieldName = 'UN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object s_movdetBAIXA: TStringField
      FieldName = 'BAIXA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object s_movdetCONTROLE: TSmallintField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object s_movdetCODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = []
      Size = 15
    end
    object s_movdetPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = []
      Required = True
      Size = 300
    end
    object s_movdetCODALMOXARIFADO: TIntegerField
      FieldName = 'CODALMOXARIFADO'
      ProviderFlags = []
    end
    object s_movdetVALORUNITARIOATUAL: TFloatField
      FieldName = 'VALORUNITARIOATUAL'
      ProviderFlags = []
    end
    object s_movdetQTDE_PCT: TFloatField
      FieldName = 'QTDE_PCT'
      ProviderFlags = []
    end
    object s_movdetALMOXARIFADO: TStringField
      FieldName = 'ALMOXARIFADO'
      ProviderFlags = []
      Size = 30
    end
    object s_movdetCONTA_DESPESA: TStringField
      FieldName = 'CONTA_DESPESA'
      ProviderFlags = []
      Size = 15
    end
    object s_movdetCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      ProviderFlags = []
    end
    object s_movdetLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      ProviderFlags = []
      Size = 50
    end
    object s_movdetESTOQUEATUAL: TFloatField
      FieldName = 'ESTOQUEATUAL'
      ProviderFlags = []
    end
  end
  object SQLDataSet5: TSQLDataSet
    Params = <>
    Left = 466
    Top = 221
  end
  object DataSetProvider4: TDataSetProvider
    Left = 501
    Top = 220
  end
  object ds4: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 536
    Top = 220
  end
  object DataSource4: TDataSource
    Left = 572
    Top = 221
  end
end
