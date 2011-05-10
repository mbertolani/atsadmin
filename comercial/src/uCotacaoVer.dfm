inherited fCotacaoVer: TfCotacaoVer
  Left = 174
  Top = 82
  Width = 915
  Height = 775
  Caption = 'Cota'#231#245'es'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    Width = 907
    Height = 50
    object GroupBox1: TGroupBox
      Left = 2
      Top = 3
      Width = 450
      Height = 45
      Caption = 'Prod. / Material'
      TabOrder = 0
      object edProduto: TEdit
        Left = 6
        Top = 17
        Width = 84
        Height = 21
        TabOrder = 0
        OnKeyPress = edProdutoKeyPress
      end
      object edDescricao: TEdit
        Left = 112
        Top = 17
        Width = 328
        Height = 21
        Color = clBtnShadow
        Enabled = False
        TabOrder = 1
      end
    end
    object GroupBox2: TGroupBox
      Left = 452
      Top = 3
      Width = 453
      Height = 45
      Caption = 'Fornecedor'
      TabOrder = 1
      object edFornec: TEdit
        Left = 8
        Top = 17
        Width = 69
        Height = 21
        TabOrder = 0
        OnKeyPress = edFornecKeyPress
      end
      object btnClienteProcura: TBitBtn
        Left = 76
        Top = 17
        Width = 33
        Height = 21
        Caption = '...'
        TabOrder = 1
        TabStop = False
      end
      object edFornecNome: TEdit
        Left = 109
        Top = 17
        Width = 340
        Height = 21
        Color = clBtnShadow
        Enabled = False
        TabOrder = 2
      end
    end
  end
  inherited MMJPanel2: TMMJPanel
    Top = 697
    Width = 907
    inherited btnGravar: TBitBtn
      Left = -200
    end
    inherited btnIncluir: TBitBtn
      Left = -200
    end
    inherited btnCancelar: TBitBtn
      Left = -200
    end
    inherited btnExcluir: TBitBtn
      Left = -200
    end
    inherited btnProcurar: TBitBtn
      Left = 404
      OnClick = btnProcurarClick
    end
    inherited btnSair: TBitBtn
      Caption = 'Retornar'
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A23F08A23F08C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A23F08A23F08A23F08A23F08C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A23F08A23F08A23F08A23F08A23F08A2
        3F08C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0A23F08A23F08A23F08BC5804BC5804A23F08A2
        3F08A23F08C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0A23F08A23F08A74407C96501CC6701BC5804A2
        3F08A23F08A23F08C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0A23F08A23F08A23F08B24E05CC6701CC6701BC
        5804A23F08A23F08A23F08C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A23F08A23F08A23F08B45105CC6701CC
        6701B45105A23F08A23F08C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A23F08A23F08A23F08BC5804CC
        6701CC6701AF4C06A23F08A23F08C0C0C0C0C0C0C0C0C0C0C0C0A23F08A23F08
        A23F08A23F08A23F08A23F08A23F08A23F08A23F08A23F08A23F08A23F08A23F
        08A23F08A23F08A23F08A23F08C0C0C0C0C0C0C0C0C0A23F08A23F08A23F08C4
        6002CC6701C96501A74407A23F08A23F08C0C0C0C0C0C0C0C0C0A23F08A23F08
        A23F08A23F08A23F08A23F08A23F08A23F08A23F08A23F08A23F08A23F08A23F
        08A23F08A23F08A23F08A23F08A23F08C0C0C0C0C0C0C0C0C0A23F08A23F08A5
        4208C76202CC6701C25D03A23F08A23F08A23F08C0C0C0C0C0C0A23F08A23F08
        C5681AC16214BD5D0FBA5709B75305B75305B75305B75305B75305B75305B753
        05B75305B75305B75305AF4C06A23F08A23F08C0C0C0C0C0C0C0C0C0A23F08A2
        3F08AA4707C96501CC6701B75305A23F08A23F08C0C0C0C0C0C0A23F08A23F08
        EE9B37E7902BDF841FD87914D06E08CC6701CC6701CC6701CC6701CC6701CC67
        01CC6701CC6701CC6701CC6701A54208A23F08C0C0C0C0C0C0C0C0C0C0C0C0A2
        3F08A23F08AF4C06CC6701C96501A74407A23F08A23F08C0C0C0A23F08A23F08
        F7A944F09D39E8922DE18621D97B15D26F0ACD6802CC6701CC6701CC6701CC67
        01CC6701CC6701CC6701C25D03A23F08A23F08C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0A23F08A23F08BA5604CC6701BC5804A23F08A23F08C0C0C0A23F08A23F08
        FCB04CF8AA46F19F3BE9942FE28823D77917A94609A23F08A23F08A23F08A23F
        08A23F08A23F08A23F08A23F08A23F08C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0A23F08A23F08A74407CC6701CC6701A74407A23F08A23F08A23F08A23F08
        FCB04CFCB04CE9983CD37A27EB9531E38A25CB6C16A23F08A23F08A23F08A23F
        08A23F08A23F08A23F08A23F08C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0A23F08A23F08BF5B03CC6701BA5604A23F08A23F08A23F08A23F08
        FCB04CFCB04CE6943BA7450CE38F33EC9733E48C27B95A11A23F08A23F08C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0A23F08A23F08B45105CC6701C25D03A23F08A23F08A23F08A23F08
        FCB04CFCB04CE6943BA23F08B25313EF9E3CED9935E28928AE4D0DA23F08A23F
        08C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0A23F08A23F08AD4906CC6701C96501A23F08A23F08A23F08A23F08
        FCB04CFCB04CE6943BA23F08A23F08C36820F6A742EE9B37E38B29AE4D0EA23F
        08A23F08C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0A23F08A23F08AD4906CC6701CC6701A23F08A23F08A23F08A23F08
        FCB04CFCB04CE6943BA23F08A23F08A23F08CF7729F7A844F09D39E48D2BAF4E
        0EA23F08A23F08C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0A23F08A23F08AD4906CC6701CC6701A23F08A23F08A23F08A23F08
        FCB04CFCB04CE6943BA23F08A23F08A23F08A23F08DA8532F8AA46F19F3BE58F
        2DAF4E0EA23F08A23F08C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0A23F08A23F08B75305CC6701C76202A23F08A23F08A23F08A23F08
        FCB04CFCB04CE6943BA23F08A23F08A23F08A23F08A23F08DA8632F9AC48F2A1
        3DE6912FB75813A23F08A23F08C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0A23F08A23F08C76202CC6701BF5B03A23F08A23F08A23F08A23F08
        FCB04CFCB04CE6943BA23F08A23F08C0C0C0A23F08A23F08A23F08DA8633FAAD
        49F3A33EEC9733C06317A23F08A23F08C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A2
        3F08A23F08A23F08B45105CC6701CC6701B24E05A23F08A23F08A23F08A23F08
        FCB04CFCB04CE6943BA23F08A23F08C0C0C0C0C0C0A23F08A23F08A23F08C469
        22FBAE4AF5A540ED9935CD721EA6440AA23F08A23F08A23F08A23F08A23F08A2
        3F08A23F08AA4707CC6701CC6701C76202A23F08A23F08C0C0C0A23F08A23F08
        FCB04CFCB04CE6943BA23F08A23F08C0C0C0C0C0C0C0C0C0A23F08A23F08A23F
        08B95B19F6A846F6A742EE9B36DB8225B65611A23F08A23F08A23F08A23F08A2
        3F08B45105CC6701CC6701C96501AA4707A23F08A23F08C0C0C0A23F08A23F08
        FCB04CFCB04CE6943BA23F08A23F08C0C0C0C0C0C0C0C0C0C0C0C0A23F08A23F
        08A23F08A8460CDA8532F7A844F09D38E8912DDD8220CC6D13C6640AC25E03C4
        6002CC6701CC6701C76202AA4707A23F08A23F08C0C0C0C0C0C0A23F08A23F08
        FCB04CFCB04CE6943BA23F08A23F08C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0A23F08A23F08A23F08B85B19DC8731F19F3AE9932FE28823DA7C17D2710BCD
        6802C76202B75305A54208A23F08A23F08C0C0C0C0C0C0C0C0C0A23F08A23F08
        D57F2EF6A948C46922A23F08A23F08C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0A23F08A23F08A23F08A23F08A7450BBF621AC5681BC16315B7560DAB
        4808A23F08A23F08A23F08A23F08C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A23F08
        A23F08A23F08A23F08A23F08C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0A23F08A23F08A23F08A23F08A23F08A23F08A23F08A2
        3F08A23F08A23F08C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        A23F08A23F08A23F08C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A23F08A23F08A23F08A23F08C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
    end
  end
  object gb1: TGroupBox [2]
    Left = 0
    Top = 51
    Width = 450
    Height = 213
    Caption = 'Cota'#231#227'o 1'
    TabOrder = 2
    object Label1: TLabel
      Left = 146
      Top = 191
      Width = 39
      Height = 13
      Caption = '+  Total '
    end
    object Label2: TLabel
      Left = 8
      Top = 11
      Width = 107
      Height = 13
      Caption = 'Condi'#231#245'es Pagamento'
    end
    object Label3: TLabel
      Left = 10
      Top = 190
      Width = 24
      Height = 13
      Caption = 'Frete'
    end
    object Label4: TLabel
      Left = 123
      Top = 10
      Width = 22
      Height = 13
      Caption = 'Obs.'
    end
    object Label26: TLabel
      Left = 284
      Top = 191
      Width = 61
      Height = 13
      Caption = '= Total Geral'
    end
    object JvDBGrid1: TJvDBGrid
      Left = 2
      Top = 44
      Width = 445
      Height = 143
      Align = alCustom
      DataSource = ds1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
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
          FieldName = 'ITEM'
          Title.Caption = 'Item'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Width = 192
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECO'
          Title.Caption = 'Pre'#231'o'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COTACAO_QTDE'
          Title.Caption = 'Qtde.'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Caption = 'Total'
          Width = 58
          Visible = True
        end>
    end
    object edTotal1: TJvCalcEdit
      Left = 196
      Top = 189
      Width = 83
      Height = 24
      DisplayFormat = ',##0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 1
      DisabledColor = clMenuBar
      DecimalPlacesAlwaysShown = False
    end
    object edFrete1: TJvCalcEdit
      Left = 39
      Top = 189
      Width = 93
      Height = 24
      Color = clMenu
      DisplayFormat = ',##0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 2
      DisabledColor = clMenuBar
      DecimalPlacesAlwaysShown = False
    end
    object edCond1: TEdit
      Left = 6
      Top = 25
      Width = 112
      Height = 17
      Color = clMenuBar
      Enabled = False
      TabOrder = 3
    end
    object edObs1: TEdit
      Left = 121
      Top = 24
      Width = 324
      Height = 19
      Color = clMenuBar
      Enabled = False
      TabOrder = 4
    end
    object edTotalGeral1: TJvCalcEdit
      Left = 361
      Top = 189
      Width = 83
      Height = 24
      DisplayFormat = ',##0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 5
      DisabledColor = clMenuBar
      DecimalPlacesAlwaysShown = False
    end
  end
  object gb2: TGroupBox [3]
    Left = 455
    Top = 51
    Width = 450
    Height = 213
    Caption = 'Cota'#231#227'o 1'
    TabOrder = 3
    object Label5: TLabel
      Left = 154
      Top = 192
      Width = 39
      Height = 13
      Caption = '+  Total '
    end
    object Label6: TLabel
      Left = 4
      Top = 12
      Width = 107
      Height = 13
      Caption = 'Condi'#231#245'es Pagamento'
    end
    object Label7: TLabel
      Left = 10
      Top = 190
      Width = 24
      Height = 13
      Caption = 'Frete'
    end
    object Label8: TLabel
      Left = 119
      Top = 10
      Width = 22
      Height = 13
      Caption = 'Obs.'
    end
    object Label25: TLabel
      Left = 292
      Top = 191
      Width = 61
      Height = 13
      Caption = '= Total Geral'
    end
    object JvDBGrid2: TJvDBGrid
      Left = 2
      Top = 48
      Width = 445
      Height = 139
      Align = alCustom
      DataSource = ds2
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
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
          FieldName = 'ITEM'
          Title.Caption = 'Item'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Width = 192
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECO'
          Title.Caption = 'Pre'#231'o'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COTACAO_QTDE'
          Title.Caption = 'Qtde.'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Caption = 'Total'
          Width = 58
          Visible = True
        end>
    end
    object edTotal2: TJvCalcEdit
      Left = 202
      Top = 189
      Width = 83
      Height = 24
      DisplayFormat = ',##0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 1
      DisabledColor = clMenuBar
      DecimalPlacesAlwaysShown = False
    end
    object edFrete2: TJvCalcEdit
      Left = 39
      Top = 189
      Width = 93
      Height = 24
      Color = clMenu
      DisplayFormat = ',##0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 2
      DisabledColor = clMenuBar
      DecimalPlacesAlwaysShown = False
    end
    object edCond2: TEdit
      Left = 5
      Top = 25
      Width = 107
      Height = 21
      Color = clMenuBar
      Enabled = False
      TabOrder = 3
    end
    object edObs2: TEdit
      Left = 116
      Top = 25
      Width = 329
      Height = 21
      Color = clMenuBar
      Enabled = False
      TabOrder = 4
    end
    object edTotalGeral2: TJvCalcEdit
      Left = 361
      Top = 189
      Width = 83
      Height = 24
      DisplayFormat = ',##0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 5
      DisabledColor = clMenuBar
      DecimalPlacesAlwaysShown = False
    end
  end
<<<<<<< .mine
  object gb3: TGroupBox [4]
    Left = 0
    Top = 264
    Width = 450
    Height = 213
    Caption = 'Cota'#231#227'o 1'
=======
  object gb3: TGroupBox [4]
    Left = 3
    Top = 163
    Width = 358
    Height = 126
    Caption = 'Cota'#231#227'o '
>>>>>>> .r752
    TabOrder = 4
    object Label9: TLabel
      Left = 143
      Top = 190
      Width = 42
      Height = 13
      Caption = '+   Total '
    end
    object Label10: TLabel
      Left = 4
      Top = 12
      Width = 107
      Height = 13
      Caption = 'Condi'#231#245'es Pagamento'
    end
    object Label11: TLabel
      Left = 10
      Top = 190
      Width = 24
      Height = 13
      Caption = 'Frete'
    end
    object Label12: TLabel
      Left = 119
      Top = 12
      Width = 22
      Height = 13
      Caption = 'Obs.'
    end
    object Label27: TLabel
      Left = 287
      Top = 191
      Width = 61
      Height = 13
      Caption = '= Total Geral'
    end
    object JvDBGrid3: TJvDBGrid
      Left = 2
      Top = 48
      Width = 445
      Height = 140
      Align = alCustom
      DataSource = ds3
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
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
          FieldName = 'ITEM'
          Title.Caption = 'Item'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Width = 192
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECO'
          Title.Caption = 'Pre'#231'o'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COTACAO_QTDE'
          Title.Caption = 'Qtde.'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Caption = 'Total'
          Width = 58
          Visible = True
        end>
    end
    object edTotal3: TJvCalcEdit
      Left = 201
      Top = 189
      Width = 83
      Height = 24
      DisplayFormat = ',##0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 1
      DisabledColor = clMenuBar
      DecimalPlacesAlwaysShown = False
    end
    object edFrete3: TJvCalcEdit
      Left = 39
      Top = 188
      Width = 93
      Height = 24
      Color = clMenu
      DisplayFormat = ',##0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 2
      DisabledColor = clMenuBar
      DecimalPlacesAlwaysShown = False
    end
    object edCond3: TEdit
      Left = 4
      Top = 25
      Width = 109
      Height = 21
      Color = clMenuBar
      Enabled = False
      TabOrder = 3
    end
    object edObs3: TEdit
      Left = 117
      Top = 25
      Width = 349
      Height = 21
      Color = clMenuBar
      Enabled = False
      TabOrder = 4
    end
    object edTotalGeral3: TJvCalcEdit
      Left = 361
      Top = 189
      Width = 83
      Height = 24
      DisplayFormat = ',##0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 5
      DisabledColor = clMenuBar
      DecimalPlacesAlwaysShown = False
    end
  end
<<<<<<< .mine
  object gb4: TGroupBox [5]
    Left = 455
    Top = 264
    Width = 450
    Height = 213
    Caption = 'Cota'#231#227'o 1'
=======
  object gb4: TGroupBox [5]
    Left = 371
    Top = 163
    Width = 358
    Height = 126
    Caption = 'Cota'#231#227'o '
>>>>>>> .r752
    TabOrder = 5
    object Label13: TLabel
      Left = 314
      Top = 194
      Width = 27
      Height = 13
      Caption = 'Total '
    end
    object Label14: TLabel
      Left = 9
      Top = 15
      Width = 107
      Height = 13
      Caption = 'Condi'#231#245'es Pagamento'
    end
    object Label15: TLabel
      Left = 322
      Top = 14
      Width = 24
      Height = 13
      Caption = 'Frete'
    end
    object Label16: TLabel
      Left = 8
      Top = 34
      Width = 22
      Height = 13
      Caption = 'Obs.'
    end
    object JvDBGrid4: TJvDBGrid
      Left = 2
      Top = 52
      Width = 445
      Height = 136
      Align = alCustom
      DataSource = ds4
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
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
          FieldName = 'ITEM'
          Title.Caption = 'Item'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Width = 192
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECO'
          Title.Caption = 'Pre'#231'o'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COTACAO_QTDE'
          Title.Caption = 'Qtde.'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Caption = 'Total'
          Width = 58
          Visible = True
        end>
    end
    object edTotal4: TJvCalcEdit
      Left = 354
      Top = 189
      Width = 83
      Height = 21
      DisplayFormat = ',##0.00'
      Enabled = False
      ShowButton = False
      TabOrder = 1
      DisabledColor = clMenuBar
      DecimalPlacesAlwaysShown = False
    end
    object edFrete4: TJvCalcEdit
      Left = 351
      Top = 9
      Width = 93
      Height = 21
      Color = clMenu
      DisplayFormat = ',##0.00'
      Enabled = False
      ShowButton = False
      TabOrder = 2
      DisabledColor = clMenuBar
      DecimalPlacesAlwaysShown = False
    end
    object edCond4: TEdit
      Left = 150
      Top = 13
      Width = 166
      Height = 21
      Color = clMenuBar
      Enabled = False
      TabOrder = 3
    end
    object edObs4: TEdit
      Left = 35
      Top = 31
      Width = 410
      Height = 21
      Color = clMenuBar
      Enabled = False
      TabOrder = 4
    end
  end
<<<<<<< .mine
  object gb5: TGroupBox [6]
    Left = 1
    Top = 477
    Width = 450
    Height = 213
    Caption = 'Cota'#231#227'o 1'
=======
  object gb5: TGroupBox [6]
    Left = 3
    Top = 291
    Width = 358
    Height = 126
    Caption = 'Cota'#231#227'o '
>>>>>>> .r752
    TabOrder = 6
    object Label17: TLabel
      Left = 314
      Top = 194
      Width = 27
      Height = 13
      Caption = 'Total '
    end
    object Label18: TLabel
      Left = 9
      Top = 15
      Width = 107
      Height = 13
      Caption = 'Condi'#231#245'es Pagamento'
    end
    object Label19: TLabel
      Left = 322
      Top = 14
      Width = 24
      Height = 13
      Caption = 'Frete'
    end
    object Label20: TLabel
      Left = 8
      Top = 34
      Width = 22
      Height = 13
      Caption = 'Obs.'
    end
    object JvDBGrid5: TJvDBGrid
      Left = 2
      Top = 52
      Width = 445
      Height = 136
      Align = alCustom
      DataSource = ds5
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
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
          FieldName = 'ITEM'
          Title.Caption = 'Item'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Width = 192
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECO'
          Title.Caption = 'Pre'#231'o'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COTACAO_QTDE'
          Title.Caption = 'Qtde.'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Caption = 'Total'
          Width = 58
          Visible = True
        end>
    end
    object edTotal5: TJvCalcEdit
      Left = 354
      Top = 189
      Width = 83
      Height = 21
      DisplayFormat = ',##0.00'
      Enabled = False
      ShowButton = False
      TabOrder = 1
      DisabledColor = clMenuBar
      DecimalPlacesAlwaysShown = False
    end
    object edFrete5: TJvCalcEdit
      Left = 351
      Top = 9
      Width = 93
      Height = 21
      Color = clMenu
      DisplayFormat = ',##0.00'
      Enabled = False
      ShowButton = False
      TabOrder = 2
      DisabledColor = clMenuBar
      DecimalPlacesAlwaysShown = False
    end
    object edCond5: TEdit
      Left = 150
      Top = 13
      Width = 166
      Height = 21
      Color = clMenuBar
      Enabled = False
      TabOrder = 3
    end
    object edObs5: TEdit
      Left = 35
      Top = 31
      Width = 410
      Height = 21
      Color = clMenuBar
      Enabled = False
      TabOrder = 4
    end
  end
<<<<<<< .mine
  object gb6: TGroupBox [7]
    Left = 455
    Top = 477
    Width = 450
    Height = 213
    Caption = 'Cota'#231#227'o 1'
=======
  object gb6: TGroupBox [7]
    Left = 371
    Top = 291
    Width = 358
    Height = 126
    Caption = 'Cota'#231#227'o '
>>>>>>> .r752
    TabOrder = 7
    object Label21: TLabel
      Left = 314
      Top = 194
      Width = 27
      Height = 13
      Caption = 'Total '
    end
    object Label22: TLabel
      Left = 9
      Top = 15
      Width = 107
      Height = 13
      Caption = 'Condi'#231#245'es Pagamento'
    end
    object Label23: TLabel
      Left = 322
      Top = 14
      Width = 24
      Height = 13
      Caption = 'Frete'
    end
    object Label24: TLabel
      Left = 8
      Top = 34
      Width = 22
      Height = 13
      Caption = 'Obs.'
    end
    object JvDBGrid6: TJvDBGrid
      Left = 2
      Top = 52
      Width = 445
      Height = 136
      Align = alCustom
      DataSource = ds6
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
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
          FieldName = 'ITEM'
          Title.Caption = 'Item'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Width = 192
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECO'
          Title.Caption = 'Pre'#231'o'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COTACAO_QTDE'
          Title.Caption = 'Qtde.'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Caption = 'Total'
          Width = 58
          Visible = True
        end>
    end
    object edTotal6: TJvCalcEdit
      Left = 354
      Top = 189
      Width = 83
      Height = 21
      DisplayFormat = ',##0.00'
      Enabled = False
      ShowButton = False
      TabOrder = 1
      DisabledColor = clMenuBar
      DecimalPlacesAlwaysShown = False
    end
    object edFrete6: TJvCalcEdit
      Left = 351
      Top = 9
      Width = 93
      Height = 21
      Color = clMenu
      DisplayFormat = ',##0.00'
      Enabled = False
      ShowButton = False
      TabOrder = 2
      DisabledColor = clMenuBar
      DecimalPlacesAlwaysShown = False
    end
    object edCond6: TEdit
      Left = 150
      Top = 13
      Width = 166
      Height = 21
      Color = clMenuBar
      Enabled = False
      TabOrder = 3
    end
    object edObs6: TEdit
      Left = 35
      Top = 31
      Width = 410
      Height = 21
      Color = clMenuBar
      Enabled = False
      TabOrder = 4
    end
  end
  object dsp1: TDataSetProvider
    DataSet = SQLDataSet1
    Options = [poAllowCommandText]
    Left = 104
    Top = 120
  end
  object cds1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp1'
    Left = 136
    Top = 120
    object cds1ITEM: TStringField
      FieldName = 'ITEM'
      Required = True
      Size = 15
    end
    object cds1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ReadOnly = True
      FixedChar = True
      Size = 254
    end
    object cds1PRECO: TFloatField
      FieldName = 'PRECO'
      ReadOnly = True
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cds1COTACAO_PRAZO: TStringField
      FieldName = 'COTACAO_PRAZO'
      ReadOnly = True
      Size = 30
    end
    object cds1COTACAO_FRETE: TFloatField
      FieldName = 'COTACAO_FRETE'
      ReadOnly = True
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cds1COTACAO_OBSERVACAO: TStringField
      FieldName = 'COTACAO_OBSERVACAO'
      ReadOnly = True
      Size = 200
    end
    object cds1COTACAO_QTDE: TFloatField
      FieldName = 'COTACAO_QTDE'
      ReadOnly = True
      DisplayFormat = ',##0.0'
      EditFormat = ',##0.0'
    end
    object cds1TOTAL: TFloatField
      FieldName = 'TOTAL'
      ReadOnly = True
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
  end
  object ds1: TDataSource
    DataSet = cds1
    Left = 168
    Top = 120
  end
  object sql2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select COTACAO_ITEM ITEM, UDF_LEFT(COTACAO_ITEMDESCRICAO, 60) DE' +
        'SCRICAO, COTACAO_PRECO PRECO , COTACAO_PRAZO, COTACAO_FRETE, COT' +
        'ACAO_OBSERVACAO, COTACAO_QTDE, (COTACAO_PRECO * COTACAO_QTDE) TO' +
        'TAL'
      'from COMPRA_COTACAO')
    SQLConnection = DM.sqlsisAdimin
    Left = 488
    Top = 120
  end
  object dsp2: TDataSetProvider
    DataSet = sql2
    Options = [poAllowCommandText]
    Left = 520
    Top = 120
  end
  object cds2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp2'
    Left = 552
    Top = 120
    object cds2ITEM: TStringField
      FieldName = 'ITEM'
      Required = True
      Size = 15
    end
    object cds2DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ReadOnly = True
      FixedChar = True
      Size = 254
    end
    object cds2PRECO: TFloatField
      FieldName = 'PRECO'
      ReadOnly = True
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cds2COTACAO_PRAZO: TStringField
      FieldName = 'COTACAO_PRAZO'
      ReadOnly = True
      Size = 30
    end
    object cds2COTACAO_FRETE: TFloatField
      FieldName = 'COTACAO_FRETE'
      ReadOnly = True
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cds2COTACAO_OBSERVACAO: TStringField
      FieldName = 'COTACAO_OBSERVACAO'
      ReadOnly = True
      Size = 200
    end
    object cds2COTACAO_QTDE: TFloatField
      FieldName = 'COTACAO_QTDE'
      ReadOnly = True
      DisplayFormat = ',##0.0'
      EditFormat = ',##0.0'
    end
    object cds2TOTAL: TFloatField
      FieldName = 'TOTAL'
      ReadOnly = True
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
  end
  object ds2: TDataSource
    DataSet = cds2
    Left = 592
    Top = 120
  end
  object SQLQuery2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select COTACAO_ITEM ITEM, UDF_LEFT(COTACAO_ITEMDESCRICAO, 60)'
      ' DESCRICAO, COTACAO_PRECO PRECO , COTACAO_PRAZO, '
      'COTACAO_FRETE, COTACAO_OBSERVACAO, COTACAO_QTDE, '
      '(COTACAO_PRECO * COTACAO_QTDE) TOTAL'
      'from COMPRA_COTACAO')
    SQLConnection = DM.sqlsisAdimin
    Left = 88
    Top = 344
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = SQLQuery2
    Options = [poAllowCommandText]
    Left = 120
    Top = 344
  end
  object cds3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider2'
    Left = 152
    Top = 344
    object cds3ITEM: TStringField
      FieldName = 'ITEM'
      Required = True
      Size = 15
    end
    object cds3DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ReadOnly = True
      FixedChar = True
      Size = 254
    end
    object cds3PRECO: TFloatField
      FieldName = 'PRECO'
      ReadOnly = True
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cds3COTACAO_PRAZO: TStringField
      FieldName = 'COTACAO_PRAZO'
      ReadOnly = True
      Size = 30
    end
    object cds3COTACAO_FRETE: TFloatField
      FieldName = 'COTACAO_FRETE'
      ReadOnly = True
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cds3COTACAO_OBSERVACAO: TStringField
      FieldName = 'COTACAO_OBSERVACAO'
      ReadOnly = True
      Size = 200
    end
    object cds3COTACAO_QTDE: TFloatField
      FieldName = 'COTACAO_QTDE'
      ReadOnly = True
      DisplayFormat = ',##0.0'
      EditFormat = ',##0.0'
    end
    object cds3TOTAL: TFloatField
      FieldName = 'TOTAL'
      ReadOnly = True
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
  end
  object ds3: TDataSource
    DataSet = cds3
    Left = 184
    Top = 344
  end
  object SQLQuery3: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select COTACAO_ITEM ITEM, UDF_LEFT(COTACAO_ITEMDESCRICAO, 60)'
      ' DESCRICAO, COTACAO_PRECO PRECO , COTACAO_PRAZO, '
      'COTACAO_FRETE, COTACAO_OBSERVACAO, COTACAO_QTDE, '
      '(COTACAO_PRECO * COTACAO_QTDE) TOTAL'
      'from COMPRA_COTACAO'
      '')
    SQLConnection = DM.sqlsisAdimin
    Left = 632
    Top = 360
  end
  object DataSetProvider3: TDataSetProvider
    DataSet = SQLQuery3
    Options = [poAllowCommandText]
    Left = 664
    Top = 360
  end
  object cds4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider3'
    Left = 696
    Top = 360
    object cds4ITEM: TStringField
      FieldName = 'ITEM'
      Required = True
      Size = 15
    end
    object cds4DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ReadOnly = True
      FixedChar = True
      Size = 254
    end
    object cds4PRECO: TFloatField
      FieldName = 'PRECO'
      ReadOnly = True
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cds4COTACAO_PRAZO: TStringField
      FieldName = 'COTACAO_PRAZO'
      ReadOnly = True
      Size = 30
    end
    object cds4COTACAO_FRETE: TFloatField
      FieldName = 'COTACAO_FRETE'
      ReadOnly = True
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cds4COTACAO_OBSERVACAO: TStringField
      FieldName = 'COTACAO_OBSERVACAO'
      ReadOnly = True
      Size = 200
    end
    object cds4COTACAO_QTDE: TFloatField
      FieldName = 'COTACAO_QTDE'
      ReadOnly = True
      DisplayFormat = ',##0.0'
      EditFormat = ',##0.0'
    end
    object cds4TOTAL: TFloatField
      FieldName = 'TOTAL'
      ReadOnly = True
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
  end
  object ds4: TDataSource
    DataSet = cds4
    Left = 728
    Top = 360
  end
  object SQLQuery4: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select COTACAO_ITEM ITEM, UDF_LEFT(COTACAO_ITEMDESCRICAO, 60)'
      ' DESCRICAO, COTACAO_PRECO PRECO , COTACAO_PRAZO, '
      'COTACAO_FRETE, COTACAO_OBSERVACAO, COTACAO_QTDE, '
      '(COTACAO_PRECO * COTACAO_QTDE) TOTAL'
      'from COMPRA_COTACAO')
    SQLConnection = DM.sqlsisAdimin
    Left = 96
    Top = 536
  end
  object DataSetProvider4: TDataSetProvider
    DataSet = SQLQuery4
    Options = [poAllowCommandText]
    Left = 128
    Top = 536
  end
  object cds5: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider4'
    Left = 160
    Top = 536
    object cds5ITEM: TStringField
      FieldName = 'ITEM'
      Required = True
      Size = 15
    end
    object cds5DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ReadOnly = True
      FixedChar = True
      Size = 254
    end
    object cds5PRECO: TFloatField
      FieldName = 'PRECO'
      ReadOnly = True
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cds5COTACAO_PRAZO: TStringField
      FieldName = 'COTACAO_PRAZO'
      ReadOnly = True
      Size = 30
    end
    object cds5COTACAO_FRETE: TFloatField
      FieldName = 'COTACAO_FRETE'
      ReadOnly = True
    end
    object cds5COTACAO_OBSERVACAO: TStringField
      FieldName = 'COTACAO_OBSERVACAO'
      ReadOnly = True
      Size = 200
    end
    object cds5COTACAO_QTDE: TFloatField
      FieldName = 'COTACAO_QTDE'
      ReadOnly = True
    end
    object cds5TOTAL: TFloatField
      FieldName = 'TOTAL'
      ReadOnly = True
    end
  end
  object ds5: TDataSource
    DataSet = cds5
    Left = 192
    Top = 536
  end
  object SQLQuery5: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select COTACAO_ITEM ITEM, UDF_LEFT(COTACAO_ITEMDESCRICAO, 60)'
      ' DESCRICAO, COTACAO_PRECO PRECO , COTACAO_PRAZO, '
      'COTACAO_FRETE, COTACAO_OBSERVACAO, COTACAO_QTDE, '
      '(COTACAO_PRECO * COTACAO_QTDE) TOTAL'
      'from COMPRA_COTACAO')
    SQLConnection = DM.sqlsisAdimin
    Left = 616
    Top = 528
  end
  object DataSetProvider5: TDataSetProvider
    DataSet = SQLQuery5
    Options = [poAllowCommandText]
    Left = 648
    Top = 528
  end
  object cds6: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider5'
    Left = 680
    Top = 528
    object cds6ITEM: TStringField
      FieldName = 'ITEM'
      Required = True
      Size = 15
    end
    object cds6DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ReadOnly = True
      FixedChar = True
      Size = 254
    end
    object cds6PRECO: TFloatField
      FieldName = 'PRECO'
      ReadOnly = True
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cds6COTACAO_PRAZO: TStringField
      FieldName = 'COTACAO_PRAZO'
      ReadOnly = True
      Size = 30
    end
    object cds6COTACAO_FRETE: TFloatField
      FieldName = 'COTACAO_FRETE'
      ReadOnly = True
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cds6COTACAO_OBSERVACAO: TStringField
      FieldName = 'COTACAO_OBSERVACAO'
      ReadOnly = True
      Size = 200
    end
    object cds6COTACAO_QTDE: TFloatField
      FieldName = 'COTACAO_QTDE'
      ReadOnly = True
      DisplayFormat = ',##0.0'
      EditFormat = ',##0.0'
    end
    object cds6TOTAL: TFloatField
      FieldName = 'TOTAL'
      ReadOnly = True
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
  end
  object ds6: TDataSource
    DataSet = cds6
    Left = 712
    Top = 528
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pSolic'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'SELECT r.COTACAO_CODIGO, r.COTACAO_DATA, r.COTACAO_FORNEC, '
      'r.COTACAO_SOLICIT, r.COTACAO_ITEM, r.COTACAO_ITEMDESCRICAO, '
      'r.COTACAO_SITUACAO, r.COTACAO_QTDE, r.COTACAO_PRECO, '
      'r.COTACAO_USER, r.COTACAO_DTENTREGA, r.COTACAO_PRAZO, '
      'r.COTACAO_OBSERVACAO, r.COTACAO_TIPO, r.COTACAO_CODSOLIC, '
      'forn.RAZAOSOCIAL FORNECEDOR'
      '   FROM COMPRA_COTACAO r, FORNECEDOR forn'
      'WHERE forn.CODFORNECEDOR = r.COTACAO_FORNEC'
      '      AND r.COTACAO_CODSOLIC = :pSolic')
    SQLConnection = DM.sqlsisAdimin
    Left = 192
    Top = 8
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLQuery1
    Options = [poAllowCommandText]
    Left = 224
    Top = 8
  end
  object cdsFornec: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pSolic'
        ParamType = ptUnknown
      end>
    ProviderName = 'DataSetProvider1'
    Left = 256
    Top = 8
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 
      'select COTACAO_ITEM ITEM, UDF_LEFT(COTACAO_ITEMDESCRICAO, 60) DE' +
      'SCRICAO, COTACAO_PRECO PRECO , COTACAO_PRAZO, COTACAO_FRETE, COT' +
      'ACAO_OBSERVACAO, COTACAO_QTDE, (COTACAO_PRECO * COTACAO_QTDE) TO' +
      'TAL'#13#10'from COMPRA_COTACAO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 70
    Top = 120
  end
  object sqlBuscaTotal: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 424
    Top = 104
  end
end
