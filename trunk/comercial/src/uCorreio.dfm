inherited fCorreio: TfCorreio
  Left = 252
  Top = 70
  Width = 876
  Height = 652
  Caption = 'Arquivo'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    Width = 860
  end
  inherited MMJPanel2: TMMJPanel
    Top = 563
    Width = 860
    inherited btnGravar: TBitBtn
      Left = 272
      Width = 106
    end
    inherited btnProcurar: TBitBtn
      OnClick = btnProcurarClick
    end
  end
  object Arquivo: TPageControl [2]
    Left = 1
    Top = 53
    Width = 856
    Height = 509
    ActivePage = TabSheet1
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Arquivo'
      OnShow = TabSheet1Show
      object Label1: TLabel
        Left = 10
        Top = 62
        Width = 66
        Height = 16
        Caption = 'EMPRESA'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 10
        Top = 89
        Width = 38
        Height = 16
        Caption = 'CAIXA'
        FocusControl = DBEdit3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 10
        Top = 119
        Width = 123
        Height = 16
        Caption = 'DEPARTAMENTOS'
        FocusControl = DBEdit4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 10
        Top = 147
        Width = 97
        Height = 16
        Caption = 'SE'#199#195'O/SETOR'
        FocusControl = DBEdit5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 10
        Top = 257
        Width = 42
        Height = 16
        Caption = 'LOCAL'
        FocusControl = DBEdit6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 10
        Top = 337
        Width = 40
        Height = 16
        Caption = 'ATIVO'
        FocusControl = DBEdit7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 10
        Top = 175
        Width = 97
        Height = 16
        Caption = 'DOCUMENTOS'
        FocusControl = DBEdit8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 10
        Top = 201
        Width = 83
        Height = 16
        Caption = 'PERIODO DE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 279
        Top = 201
        Width = 27
        Height = 16
        Caption = 'AT'#201
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 10
        Top = 229
        Width = 98
        Height = 16
        Caption = 'INTERVALO DE'
        FocusControl = DBEdit11
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 278
        Top = 229
        Width = 27
        Height = 16
        Caption = 'AT'#201
        FocusControl = DBEdit12
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 217
        Top = 282
        Width = 64
        Height = 16
        Caption = 'ESTANTE'
        FocusControl = DBEdit13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 375
        Top = 282
        Width = 84
        Height = 16
        Caption = 'PRATELEIRA'
        FocusControl = DBEdit14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 270
        Top = 309
        Width = 145
        Height = 16
        Caption = 'PRAZO DE DESCARTE'
        FocusControl = DBEdit15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 11
        Top = 364
        Width = 22
        Height = 13
        Caption = 'OBS'
        FocusControl = DBMemo1
      end
      object Label16: TLabel
        Left = 325
        Top = 87
        Width = 107
        Height = 16
        Caption = 'DATA INCLUS'#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 10
        Top = 282
        Width = 55
        Height = 16
        Caption = 'COLUNA'
        FocusControl = DBEdit17
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 10
        Top = 308
        Width = 117
        Height = 16
        Caption = 'N'#186' CX DO CLIENTE'
        FocusControl = DBEdit18
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 222
        Top = 88
        Width = 68
        Height = 16
        Caption = 'TAMANHO'
        FocusControl = DBEdit19
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 143
        Top = 57
        Width = 41
        Height = 24
        DataField = 'CODFIR'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 143
        Top = 83
        Width = 70
        Height = 24
        DataField = 'NUMCAI'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 143
        Top = 111
        Width = 82
        Height = 24
        DataField = 'CODDEP'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit5: TDBEdit
        Left = 143
        Top = 141
        Width = 82
        Height = 24
        DataField = 'CODSEC'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit6: TDBEdit
        Left = 143
        Top = 249
        Width = 81
        Height = 24
        DataField = 'CODLOC'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit7: TDBEdit
        Left = 144
        Top = 332
        Width = 17
        Height = 24
        CharCase = ecUpperCase
        DataField = 'ATIVO'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object DBEdit8: TDBEdit
        Left = 143
        Top = 170
        Width = 82
        Height = 24
        DataField = 'CODDOC'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object DBEdit11: TDBEdit
        Left = 143
        Top = 222
        Width = 83
        Height = 24
        DataField = 'DOCINI'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object DBEdit12: TDBEdit
        Left = 325
        Top = 223
        Width = 87
        Height = 24
        DataField = 'DOCFIN'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object DBEdit13: TDBEdit
        Left = 291
        Top = 278
        Width = 57
        Height = 24
        DataField = 'ESTANTE'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object DBEdit14: TDBEdit
        Left = 469
        Top = 276
        Width = 57
        Height = 24
        DataField = 'PRATEL'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object DBEdit15: TDBEdit
        Left = 436
        Top = 304
        Width = 90
        Height = 24
        DataField = 'DESCARTE'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 11
      end
      object DBMemo1: TDBMemo
        Left = 45
        Top = 366
        Width = 759
        Height = 106
        DataField = 'OBS'
        DataSource = DtSrc
        TabOrder = 12
      end
      object DBEdit17: TDBEdit
        Left = 143
        Top = 276
        Width = 41
        Height = 24
        DataField = 'COLUNA'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
      end
      object DBEdit18: TDBEdit
        Left = 143
        Top = 303
        Width = 57
        Height = 24
        DataField = 'NCAICLI'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
      end
      object DBEdit19: TDBEdit
        Left = 294
        Top = 83
        Width = 22
        Height = 24
        DataField = 'TAMANHO'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
      end
      object DBEdit2: TDBEdit
        Left = 190
        Top = 57
        Width = 547
        Height = 24
        DataField = 'RAZAOSOCIAL'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
      end
      object GroupBox1: TGroupBox
        Left = 8
        Top = 2
        Width = 745
        Height = 51
        Caption = 'CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 17
        object jvNome: TJvDBSearchComboBox
          Left = 86
          Top = 17
          Width = 643
          Height = 24
          DataField = 'NOMECLIENTE'
          DataSource = dCliente
          Enabled = False
          ItemHeight = 16
          TabOrder = 1
          Text = 'jvNome'
          OnChange = jvNomeChange
        end
        object jvCod: TJvDBSearchComboBox
          Left = 9
          Top = 16
          Width = 66
          Height = 24
          DataField = 'CODCLIENTE'
          DataSource = dCliente
          Enabled = False
          ItemHeight = 16
          TabOrder = 0
          Text = 'JvDBSearchComboBox1'
          OnChange = jvCodChange
        end
      end
      object btnRetirada: TBitBtn
        Left = 550
        Top = 314
        Width = 115
        Height = 41
        Caption = 'Retirada '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 18
        OnClick = btnRetiradaClick
      end
      object btnproc: TBitBtn
        Left = 422
        Top = 169
        Width = 81
        Height = 27
        Caption = 'Procurar'
        Enabled = False
        TabOrder = 19
        OnClick = btnprocClick
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C03E00453A0040250023C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000000000000000000000000000
          000000000000000000000000000000000000AF38B8AA3DB1611E610000000000
          00000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08E8588C5C0C2C1C5BFB9
          C5B9BEC4BFC2BBC2BFC0BCC2C6C1C3C4C8E4AEDD6D1267B537B9B42FC274057F
          5F165FC5BFC0BCC6B9BDCBBF000300C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08476
          81FFF9FFFFF9F9F4F4F4FEFDFFFFFCFFFBFFF9F9FAF6FFF7FF700A70B32DB5FF
          C1FF700081600F6C1F001CFFFFFBFAFFF8F2FDFA050200C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C08D8389FFFDFFFFFEFCFFFDFFFFFDFFFFFDFFFBF9F9FFF8FFFFE9
          FFBE35BFFFBEFFB725C16414711B0020907686FFFFFBFDFFFEF5FAFD090205C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0778073FBFFF7FFFFFBBEBCBBC0C1BFC1C4C2
          DCA7E0690F6FB433BAC32DC08703866D0B75867C88BBC7B5BFC8B3FFFFFCFFFA
          FFFFFBFF06000CC0C0C0C0C0C0C0C0C0C0C0C0C0C0C07A857DF2FFFAEEFAFCF8
          FFFFFAFFFFFAFFFF660D6DB033B9FFC3FF7E027E70106B23001BFFFDFFFAFFFC
          FCFFF5FFFAF7FFFDFFFFFCFF000006C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07D83
          82F5FFFFF6FEFFB6BBBCB6BCBBB7BABE9D40A1FFCAFFB230B96B0F6827001D9C
          7F8EC4C3C5B7B9BAC2C0C0FFFEFEFFFEFFFFFEFE000604C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C00C0500160E00120600120B008F8867C6C1B2E1B6D1A36A975D1B
          5C957B8DBEB6B6CCC9C5C6C1C2C2BDBFC0BDC6FBFEFFFBFFFFFDFFFE000500C0
          C0C0C0C0C0C0C0C00204000A10006C6F1976751A746F147A741B1C1500170E00
          897D7D8D7A8915000FFFF8FFFCFBFDFDFFFCFFFCFEFFFEFFFAFFFDF8FFFFF8FD
          FEF9FAFE040400C0C0C0C0C0C08B8677CACAA2C1C780D6DC65E2E669DBDB65D2
          CD6A7B741D756C237A7C69010303857B81BCB9C2C0C3C7BABFBDC4C4C4B9B9B9
          BCC3BCFAFFFFFBFFFFFFFDFF050100C0C0C0C0C0C0D3CC6FFFFFAFD1D080D1D5
          5EE3E56DCED076C7C28BDDD691DAD364090E007C8578BAC0BBB9BFBEB9BEBFBA
          BDC1BDC0BEBFC0BCC4C2C1FFFFFFFFFEFEFFFBFD040307C0C0C08D8F5BFFFFA9
          D6D567FFFFCBE0E36FD5D561DCDD8D97975796944E9D9849686E33050D007C80
          74FDFFFFF7F9F9FCFEFFFAFAFAFFFFFEFAFAFAF7F7F7FEFEFEFFFFFF000001C0
          C0C08E934EDEDA6AFFFFB4C4CF91D3D367E8E474CBC87DC2C07FD4D28CC9C584
          6B7130090F00878878BABABACECECEC0C0C0C5C5C5BCBCBCC3C3C3FFFFFFFBFB
          FBFEFEFE030303C0C0C08D904BDBD56CFFFFBCFFFFE6E1D67CEDE273D0CD72CA
          C477DCD788D2CF7A7070340C0D007E7E72BBBBBBC2C2C2C4C4C4C1C1C1C0C0C0
          C0C0C0FFFFFFFAFAFAFDFDFD010101C0C0C0939559FFFFAAD7D170FFFFE7E1D8
          76DBD556E3E86FE7EC79CCD25DDBE46C6D68370C050086837EFFFFFFFCFCFCFF
          FFFFFAFAFAFFFFFFFFFFFFFBFBFBFFFFFFFDFDFD040404C0C0C0C0C0C0D7D472
          FFFFB9FFFFDFDAD56EEAE866D1D859C8D34FECF674C8D256160D008C827BC6C2
          C1FFFFFFFFFFFFFDFDFDFEFEFEFFFFFFFFFFFFFEFEFEFCFCFCFFFFFF000000C0
          C0C0C0C0C0908766FFFFDFBBC192CED175FFFFB5D1D274CCD070DDE08A6A692D
          888275C9C4C3C0BEBEC5C5C5C1C1C1FDFDFDFFFFFFFEFEFEFFFFFFFFFFFFFFFF
          FFFDFDFD000000C0C0C0C0C0C0C0C0C08C83797F7F73FFFFCFC8CA78FFFFCDD2
          CC9F1208000E0400FFFFF3FFFFF9FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFF9F9F9000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08889
          6190925E8A8A5C0E05008F847CCDC2C4FFFFFBFDFFF9FFFFFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF7B7B7B010101000000070707000000C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0858486FFFCFEFFFFFEFFFFF5FFFFF5FFFFFCF4F8FDFAFEFFFBFD
          FEFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD828282BBBBBB898989000000C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0757876FFFFFCFCFBF7FFFCFFFFFCFFF6F5F9
          FBFFFFFAFEFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F7E7E7E0000
          00C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07C817FFDFFFEFFFFFEFB
          F4FFFFFAFFFFFEFFFDFFFFFBFDFDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          7E7E7E000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07E81
          857E7F8983808986828184817C83837D7C7D7982837F7F7F7F7F7F7F7F7F7F7F
          7F7F7F7F7F7F7F7F828282C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
      end
      object Edit1: TEdit
        Left = 232
        Top = 171
        Width = 180
        Height = 21
        TabOrder = 20
      end
      object btnproc1: TBitBtn
        Left = 421
        Top = 112
        Width = 81
        Height = 27
        Caption = 'Procurar'
        Enabled = False
        TabOrder = 21
        OnClick = btnproc1Click
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C03E00453A0040250023C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000000000000000000000000000
          000000000000000000000000000000000000AF38B8AA3DB1611E610000000000
          00000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08E8588C5C0C2C1C5BFB9
          C5B9BEC4BFC2BBC2BFC0BCC2C6C1C3C4C8E4AEDD6D1267B537B9B42FC274057F
          5F165FC5BFC0BCC6B9BDCBBF000300C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08476
          81FFF9FFFFF9F9F4F4F4FEFDFFFFFCFFFBFFF9F9FAF6FFF7FF700A70B32DB5FF
          C1FF700081600F6C1F001CFFFFFBFAFFF8F2FDFA050200C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C08D8389FFFDFFFFFEFCFFFDFFFFFDFFFFFDFFFBF9F9FFF8FFFFE9
          FFBE35BFFFBEFFB725C16414711B0020907686FFFFFBFDFFFEF5FAFD090205C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0778073FBFFF7FFFFFBBEBCBBC0C1BFC1C4C2
          DCA7E0690F6FB433BAC32DC08703866D0B75867C88BBC7B5BFC8B3FFFFFCFFFA
          FFFFFBFF06000CC0C0C0C0C0C0C0C0C0C0C0C0C0C0C07A857DF2FFFAEEFAFCF8
          FFFFFAFFFFFAFFFF660D6DB033B9FFC3FF7E027E70106B23001BFFFDFFFAFFFC
          FCFFF5FFFAF7FFFDFFFFFCFF000006C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07D83
          82F5FFFFF6FEFFB6BBBCB6BCBBB7BABE9D40A1FFCAFFB230B96B0F6827001D9C
          7F8EC4C3C5B7B9BAC2C0C0FFFEFEFFFEFFFFFEFE000604C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C00C0500160E00120600120B008F8867C6C1B2E1B6D1A36A975D1B
          5C957B8DBEB6B6CCC9C5C6C1C2C2BDBFC0BDC6FBFEFFFBFFFFFDFFFE000500C0
          C0C0C0C0C0C0C0C00204000A10006C6F1976751A746F147A741B1C1500170E00
          897D7D8D7A8915000FFFF8FFFCFBFDFDFFFCFFFCFEFFFEFFFAFFFDF8FFFFF8FD
          FEF9FAFE040400C0C0C0C0C0C08B8677CACAA2C1C780D6DC65E2E669DBDB65D2
          CD6A7B741D756C237A7C69010303857B81BCB9C2C0C3C7BABFBDC4C4C4B9B9B9
          BCC3BCFAFFFFFBFFFFFFFDFF050100C0C0C0C0C0C0D3CC6FFFFFAFD1D080D1D5
          5EE3E56DCED076C7C28BDDD691DAD364090E007C8578BAC0BBB9BFBEB9BEBFBA
          BDC1BDC0BEBFC0BCC4C2C1FFFFFFFFFEFEFFFBFD040307C0C0C08D8F5BFFFFA9
          D6D567FFFFCBE0E36FD5D561DCDD8D97975796944E9D9849686E33050D007C80
          74FDFFFFF7F9F9FCFEFFFAFAFAFFFFFEFAFAFAF7F7F7FEFEFEFFFFFF000001C0
          C0C08E934EDEDA6AFFFFB4C4CF91D3D367E8E474CBC87DC2C07FD4D28CC9C584
          6B7130090F00878878BABABACECECEC0C0C0C5C5C5BCBCBCC3C3C3FFFFFFFBFB
          FBFEFEFE030303C0C0C08D904BDBD56CFFFFBCFFFFE6E1D67CEDE273D0CD72CA
          C477DCD788D2CF7A7070340C0D007E7E72BBBBBBC2C2C2C4C4C4C1C1C1C0C0C0
          C0C0C0FFFFFFFAFAFAFDFDFD010101C0C0C0939559FFFFAAD7D170FFFFE7E1D8
          76DBD556E3E86FE7EC79CCD25DDBE46C6D68370C050086837EFFFFFFFCFCFCFF
          FFFFFAFAFAFFFFFFFFFFFFFBFBFBFFFFFFFDFDFD040404C0C0C0C0C0C0D7D472
          FFFFB9FFFFDFDAD56EEAE866D1D859C8D34FECF674C8D256160D008C827BC6C2
          C1FFFFFFFFFFFFFDFDFDFEFEFEFFFFFFFFFFFFFEFEFEFCFCFCFFFFFF000000C0
          C0C0C0C0C0908766FFFFDFBBC192CED175FFFFB5D1D274CCD070DDE08A6A692D
          888275C9C4C3C0BEBEC5C5C5C1C1C1FDFDFDFFFFFFFEFEFEFFFFFFFFFFFFFFFF
          FFFDFDFD000000C0C0C0C0C0C0C0C0C08C83797F7F73FFFFCFC8CA78FFFFCDD2
          CC9F1208000E0400FFFFF3FFFFF9FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFF9F9F9000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08889
          6190925E8A8A5C0E05008F847CCDC2C4FFFFFBFDFFF9FFFFFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF7B7B7B010101000000070707000000C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0858486FFFCFEFFFFFEFFFFF5FFFFF5FFFFFCF4F8FDFAFEFFFBFD
          FEFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD828282BBBBBB898989000000C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0757876FFFFFCFCFBF7FFFCFFFFFCFFF6F5F9
          FBFFFFFAFEFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F7E7E7E0000
          00C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07C817FFDFFFEFFFFFEFB
          F4FFFFFAFFFFFEFFFDFFFFFBFDFDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          7E7E7E000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07E81
          857E7F8983808986828184817C83837D7C7D7982837F7F7F7F7F7F7F7F7F7F7F
          7F7F7F7F7F7F7F7F828282C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
      end
      object Edit2: TEdit
        Left = 232
        Top = 113
        Width = 180
        Height = 21
        TabOrder = 22
      end
      object Edit3: TEdit
        Left = 232
        Top = 143
        Width = 180
        Height = 21
        TabOrder = 23
      end
      object btnproc2: TBitBtn
        Left = 422
        Top = 141
        Width = 81
        Height = 27
        Caption = 'Procurar'
        Enabled = False
        TabOrder = 24
        OnClick = btnproc2Click
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C03E00453A0040250023C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000000000000000000000000000
          000000000000000000000000000000000000AF38B8AA3DB1611E610000000000
          00000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08E8588C5C0C2C1C5BFB9
          C5B9BEC4BFC2BBC2BFC0BCC2C6C1C3C4C8E4AEDD6D1267B537B9B42FC274057F
          5F165FC5BFC0BCC6B9BDCBBF000300C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08476
          81FFF9FFFFF9F9F4F4F4FEFDFFFFFCFFFBFFF9F9FAF6FFF7FF700A70B32DB5FF
          C1FF700081600F6C1F001CFFFFFBFAFFF8F2FDFA050200C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C08D8389FFFDFFFFFEFCFFFDFFFFFDFFFFFDFFFBF9F9FFF8FFFFE9
          FFBE35BFFFBEFFB725C16414711B0020907686FFFFFBFDFFFEF5FAFD090205C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0778073FBFFF7FFFFFBBEBCBBC0C1BFC1C4C2
          DCA7E0690F6FB433BAC32DC08703866D0B75867C88BBC7B5BFC8B3FFFFFCFFFA
          FFFFFBFF06000CC0C0C0C0C0C0C0C0C0C0C0C0C0C0C07A857DF2FFFAEEFAFCF8
          FFFFFAFFFFFAFFFF660D6DB033B9FFC3FF7E027E70106B23001BFFFDFFFAFFFC
          FCFFF5FFFAF7FFFDFFFFFCFF000006C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07D83
          82F5FFFFF6FEFFB6BBBCB6BCBBB7BABE9D40A1FFCAFFB230B96B0F6827001D9C
          7F8EC4C3C5B7B9BAC2C0C0FFFEFEFFFEFFFFFEFE000604C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C00C0500160E00120600120B008F8867C6C1B2E1B6D1A36A975D1B
          5C957B8DBEB6B6CCC9C5C6C1C2C2BDBFC0BDC6FBFEFFFBFFFFFDFFFE000500C0
          C0C0C0C0C0C0C0C00204000A10006C6F1976751A746F147A741B1C1500170E00
          897D7D8D7A8915000FFFF8FFFCFBFDFDFFFCFFFCFEFFFEFFFAFFFDF8FFFFF8FD
          FEF9FAFE040400C0C0C0C0C0C08B8677CACAA2C1C780D6DC65E2E669DBDB65D2
          CD6A7B741D756C237A7C69010303857B81BCB9C2C0C3C7BABFBDC4C4C4B9B9B9
          BCC3BCFAFFFFFBFFFFFFFDFF050100C0C0C0C0C0C0D3CC6FFFFFAFD1D080D1D5
          5EE3E56DCED076C7C28BDDD691DAD364090E007C8578BAC0BBB9BFBEB9BEBFBA
          BDC1BDC0BEBFC0BCC4C2C1FFFFFFFFFEFEFFFBFD040307C0C0C08D8F5BFFFFA9
          D6D567FFFFCBE0E36FD5D561DCDD8D97975796944E9D9849686E33050D007C80
          74FDFFFFF7F9F9FCFEFFFAFAFAFFFFFEFAFAFAF7F7F7FEFEFEFFFFFF000001C0
          C0C08E934EDEDA6AFFFFB4C4CF91D3D367E8E474CBC87DC2C07FD4D28CC9C584
          6B7130090F00878878BABABACECECEC0C0C0C5C5C5BCBCBCC3C3C3FFFFFFFBFB
          FBFEFEFE030303C0C0C08D904BDBD56CFFFFBCFFFFE6E1D67CEDE273D0CD72CA
          C477DCD788D2CF7A7070340C0D007E7E72BBBBBBC2C2C2C4C4C4C1C1C1C0C0C0
          C0C0C0FFFFFFFAFAFAFDFDFD010101C0C0C0939559FFFFAAD7D170FFFFE7E1D8
          76DBD556E3E86FE7EC79CCD25DDBE46C6D68370C050086837EFFFFFFFCFCFCFF
          FFFFFAFAFAFFFFFFFFFFFFFBFBFBFFFFFFFDFDFD040404C0C0C0C0C0C0D7D472
          FFFFB9FFFFDFDAD56EEAE866D1D859C8D34FECF674C8D256160D008C827BC6C2
          C1FFFFFFFFFFFFFDFDFDFEFEFEFFFFFFFFFFFFFEFEFEFCFCFCFFFFFF000000C0
          C0C0C0C0C0908766FFFFDFBBC192CED175FFFFB5D1D274CCD070DDE08A6A692D
          888275C9C4C3C0BEBEC5C5C5C1C1C1FDFDFDFFFFFFFEFEFEFFFFFFFFFFFFFFFF
          FFFDFDFD000000C0C0C0C0C0C0C0C0C08C83797F7F73FFFFCFC8CA78FFFFCDD2
          CC9F1208000E0400FFFFF3FFFFF9FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFF9F9F9000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08889
          6190925E8A8A5C0E05008F847CCDC2C4FFFFFBFDFFF9FFFFFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF7B7B7B010101000000070707000000C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0858486FFFCFEFFFFFEFFFFF5FFFFF5FFFFFCF4F8FDFAFEFFFBFD
          FEFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD828282BBBBBB898989000000C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0757876FFFFFCFCFBF7FFFCFFFFFCFFF6F5F9
          FBFFFFFAFEFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F7E7E7E0000
          00C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07C817FFDFFFEFFFFFEFB
          F4FFFFFAFFFFFEFFFDFFFFFBFDFDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          7E7E7E000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07E81
          857E7F8983808986828184817C83837D7C7D7982837F7F7F7F7F7F7F7F7F7F7F
          7F7F7F7F7F7F7F7F828282C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
      end
      object btnDevolucao: TBitBtn
        Left = 678
        Top = 314
        Width = 115
        Height = 41
        Caption = 'Devolu'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 25
        OnClick = btnDevolucaoClick
      end
      object DBEdit16: TJvDBDateEdit
        Left = 436
        Top = 84
        Width = 121
        Height = 24
        DataField = 'DTINC'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 26
      end
      object DBEdit9: TJvDBDateEdit
        Left = 143
        Top = 196
        Width = 121
        Height = 24
        DataField = 'DTINID'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 27
      end
      object DBEdit10: TJvDBDateEdit
        Left = 324
        Top = 196
        Width = 121
        Height = 24
        DataField = 'DTFIND'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 28
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Retirada'
      ImageIndex = 1
      OnShow = TabSheet2Show
      object Label20: TLabel
        Left = 16
        Top = 203
        Width = 68
        Height = 13
        Caption = 'Nome Retirou '
        FocusControl = DBEdit20
      end
      object Label21: TLabel
        Left = 16
        Top = 243
        Width = 129
        Height = 13
        Caption = 'Nome Documento Retirado'
        FocusControl = DBEdit21
      end
      object Label22: TLabel
        Left = 16
        Top = 291
        Width = 66
        Height = 13
        Caption = 'Data Retirado'
      end
      object Label23: TLabel
        Left = 184
        Top = 291
        Width = 122
        Height = 13
        Caption = 'Data Previs'#227'o Devolu'#231#227'o'
      end
      object Label24: TLabel
        Left = 16
        Top = 332
        Width = 22
        Height = 13
        Caption = 'OBS'
        FocusControl = DBEdit24
      end
      object Label25: TLabel
        Left = 16
        Top = 160
        Width = 41
        Height = 13
        Caption = 'N'#186' Caixa'
        FocusControl = DBEdit25
      end
      object Label26: TLabel
        Left = 168
        Top = 160
        Width = 61
        Height = 13
        Caption = 'Caixa Cliente'
        FocusControl = DBEdit26
      end
      object Label27: TLabel
        Left = 19
        Top = 370
        Width = 22
        Height = 13
        Caption = 'OBS'
        FocusControl = DBMemo2
      end
      object DBGrid1: TDBGrid
        Left = 16
        Top = 0
        Width = 889
        Height = 145
        DataSource = dsDetR
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NUMCAI'
            Title.Caption = 'N'#186' Cx'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NCAICLI'
            Title.Caption = 'N'#186' Cx Cli'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMERET'
            Title.Caption = 'Nome quem Retirou'
            Width = 319
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NDOCRET'
            Title.Caption = 'Doc Retirado'
            Width = 443
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTRET'
            Title.Caption = 'Data Ret.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTPREV'
            Title.Caption = 'Data Prev'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBSRET'
            Title.Caption = 'OBS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO'
            Visible = True
          end>
      end
      object DBEdit20: TDBEdit
        Left = 16
        Top = 219
        Width = 786
        Height = 21
        DataField = 'NOMERET'
        DataSource = dsDetR
        TabOrder = 1
      end
      object DBEdit21: TDBEdit
        Left = 16
        Top = 259
        Width = 785
        Height = 21
        DataField = 'NDOCRET'
        DataSource = dsDetR
        TabOrder = 2
      end
      object DBEdit24: TDBEdit
        Left = 16
        Top = 347
        Width = 784
        Height = 21
        DataField = 'OBSRET'
        DataSource = dsDetR
        TabOrder = 3
      end
      object DBEdit25: TDBEdit
        Left = 16
        Top = 176
        Width = 134
        Height = 21
        DataField = 'NUMCAI'
        DataSource = dsDetR
        TabOrder = 4
      end
      object DBEdit26: TDBEdit
        Left = 168
        Top = 176
        Width = 134
        Height = 21
        DataField = 'NCAICLI'
        DataSource = dsDetR
        TabOrder = 5
      end
      object DBMemo2: TDBMemo
        Left = 16
        Top = 384
        Width = 785
        Height = 89
        DataField = 'OBS'
        DataSource = dsDetR
        TabOrder = 6
      end
      object JvDBDateEdit1: TJvDBDateEdit
        Left = 184
        Top = 305
        Width = 121
        Height = 24
        DataField = 'DTPREV'
        DataSource = dsDetR
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object JvDBDateEdit2: TJvDBDateEdit
        Left = 17
        Top = 305
        Width = 121
        Height = 24
        DataField = 'DTRET'
        DataSource = dsDetR
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Devolu'#231#227'o'
      ImageIndex = 2
      OnShow = TabSheet3Show
      object Label28: TLabel
        Left = 16
        Top = 160
        Width = 41
        Height = 13
        Caption = 'N'#186' Caixa'
        FocusControl = DBEdit25
      end
      object Label29: TLabel
        Left = 168
        Top = 160
        Width = 61
        Height = 13
        Caption = 'Caixa Cliente'
        FocusControl = DBEdit26
      end
      object Label30: TLabel
        Left = 16
        Top = 203
        Width = 68
        Height = 13
        Caption = 'Nome Retirou '
        FocusControl = DBEdit20
      end
      object Label31: TLabel
        Left = 16
        Top = 243
        Width = 129
        Height = 13
        Caption = 'Nome Documento Retirado'
        FocusControl = DBEdit21
      end
      object Label32: TLabel
        Left = 16
        Top = 291
        Width = 66
        Height = 13
        Caption = 'Data Retirado'
      end
      object Label33: TLabel
        Left = 16
        Top = 332
        Width = 22
        Height = 13
        Caption = 'OBS'
        FocusControl = DBEdit24
      end
      object Label34: TLabel
        Left = 19
        Top = 370
        Width = 22
        Height = 13
        Caption = 'OBS'
        FocusControl = DBMemo2
      end
      object Label35: TLabel
        Left = 184
        Top = 291
        Width = 122
        Height = 13
        Caption = 'Data Previs'#227'o Devolu'#231#227'o'
      end
      object DBGrid2: TDBGrid
        Left = 16
        Top = 0
        Width = 889
        Height = 145
        DataSource = dsDetD
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NUMCAI'
            Title.Caption = 'N '#186' Cx'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NCAICLI'
            Title.Caption = 'N'#186' Cx Cli'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMERET'
            Title.Caption = 'Nome quem Retirou'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NDOCRET'
            Title.Caption = 'Doc Retirado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTRET'
            Title.Caption = 'Data Ret.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTPREV'
            Title.Caption = 'Data Prev'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBSRET'
            Title.Caption = 'OBS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO'
            Visible = True
          end>
      end
      object DBEdit27: TDBEdit
        Left = 16
        Top = 176
        Width = 134
        Height = 21
        DataField = 'NUMCAI'
        DataSource = dsDetD
        TabOrder = 1
      end
      object DBEdit28: TDBEdit
        Left = 168
        Top = 176
        Width = 134
        Height = 21
        DataField = 'NCAICLI'
        DataSource = dsDetD
        TabOrder = 2
      end
      object DBEdit29: TDBEdit
        Left = 16
        Top = 219
        Width = 785
        Height = 21
        DataField = 'NOMERET'
        DataSource = dsDetD
        TabOrder = 3
      end
      object DBEdit30: TDBEdit
        Left = 16
        Top = 259
        Width = 785
        Height = 21
        DataField = 'NDOCRET'
        DataSource = dsDetD
        TabOrder = 4
      end
      object DBEdit33: TDBEdit
        Left = 16
        Top = 347
        Width = 784
        Height = 21
        DataField = 'OBSRET'
        DataSource = dsDetD
        TabOrder = 5
      end
      object DBMemo3: TDBMemo
        Left = 16
        Top = 384
        Width = 785
        Height = 89
        DataField = 'OBS'
        DataSource = dsDetD
        TabOrder = 6
      end
      object JvDBDateEdit3: TJvDBDateEdit
        Left = 184
        Top = 305
        Width = 121
        Height = 24
        DataField = 'DTPREV'
        DataSource = dsDetD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object JvDBDateEdit4: TJvDBDateEdit
        Left = 17
        Top = 305
        Width = 121
        Height = 24
        DataField = 'DTRET'
        DataSource = dsDetD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
    end
  end
  inherited DtSrc: TDataSource
    DataSet = cdsCorreio
  end
  inherited PopupMenu1: TPopupMenu
    inherited Procurar1: TMenuItem
      OnClick = btnProcurarClick
    end
    inherited Incuir1: TMenuItem
      Caption = 'Incluir'
    end
  end
  object dCliente: TDataSource
    DataSet = cCliente
    Left = 141
    Top = 12
  end
  object cCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pCliente'
    Left = 101
    Top = 11
    object cClienteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object cClienteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
  end
  object pCliente: TDataSetProvider
    DataSet = sCliente
    UpdateMode = upWhereKeyOnly
    Left = 60
    Top = 11
  end
  object sCliente: TSQLDataSet
    CommandText = 
      'select CODCLIENTE, NOMECLIENTE from CLIENTES '#13#10'order by NOMECLIE' +
      'NTE '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 22
    Top = 11
    object sClienteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object sClienteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
  end
  object dspCorreio: TDataSetProvider
    DataSet = sdsCorreio
    Left = 624
    Top = 136
  end
  object cdsCorreio: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pcodoc'
        ParamType = ptInput
      end>
    ProviderName = 'dspCorreio'
    Left = 688
    Top = 144
    object cdsCorreioCODOC: TIntegerField
      FieldName = 'CODOC'
      Required = True
    end
    object cdsCorreioCODFIR: TSmallintField
      FieldName = 'CODFIR'
    end
    object cdsCorreioFOTO: TSmallintField
      FieldName = 'FOTO'
    end
    object cdsCorreioROLO: TSmallintField
      FieldName = 'ROLO'
    end
    object cdsCorreioNUMCAI: TFloatField
      FieldName = 'NUMCAI'
    end
    object cdsCorreioCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 80
    end
    object cdsCorreioCODSEC: TStringField
      FieldName = 'CODSEC'
      Size = 6
    end
    object cdsCorreioCODLOC: TSmallintField
      FieldName = 'CODLOC'
    end
    object cdsCorreioATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object cdsCorreioCODDOC: TStringField
      FieldName = 'CODDOC'
      Size = 80
    end
    object cdsCorreioDTINID: TDateField
      FieldName = 'DTINID'
    end
    object cdsCorreioDTFIND: TDateField
      FieldName = 'DTFIND'
    end
    object cdsCorreioDOCINI: TFloatField
      FieldName = 'DOCINI'
    end
    object cdsCorreioDOCFIN: TFloatField
      FieldName = 'DOCFIN'
    end
    object cdsCorreioESTANTE: TSmallintField
      FieldName = 'ESTANTE'
    end
    object cdsCorreioPRATEL: TSmallintField
      FieldName = 'PRATEL'
    end
    object cdsCorreioDESCARTE: TFloatField
      FieldName = 'DESCARTE'
      DisplayFormat = '#00/0000'
    end
    object cdsCorreioDTRET: TDateField
      FieldName = 'DTRET'
    end
    object cdsCorreioNOMERET: TStringField
      FieldName = 'NOMERET'
      Size = 40
    end
    object cdsCorreioNDOCRET: TStringField
      FieldName = 'NDOCRET'
      Size = 10
    end
    object cdsCorreioDTPREV: TDateField
      FieldName = 'DTPREV'
    end
    object cdsCorreioOBSRET: TStringField
      FieldName = 'OBSRET'
      Size = 60
    end
    object cdsCorreioOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object cdsCorreioDTINC: TDateField
      FieldName = 'DTINC'
    end
    object cdsCorreioCOLUNA: TSmallintField
      FieldName = 'COLUNA'
    end
    object cdsCorreioNCAICLI: TFloatField
      FieldName = 'NCAICLI'
    end
    object cdsCorreioOBS2: TStringField
      FieldName = 'OBS2'
      Size = 40
    end
    object cdsCorreioTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 1
    end
    object cdsCorreioA: TStringField
      FieldName = 'A'
      Size = 10
    end
    object cdsCorreioNUMDOC: TStringField
      FieldName = 'NUMDOC'
    end
    object cdsCorreioDATA: TStringField
      FieldName = 'DATA'
      Size = 8
    end
    object cdsCorreioQTDADE: TFloatField
      FieldName = 'QTDADE'
    end
    object cdsCorreioCODIDIO: TSmallintField
      FieldName = 'CODIDIO'
    end
    object cdsCorreioDESCR: TStringField
      FieldName = 'DESCR'
      Size = 150
    end
    object cdsCorreioFASE: TStringField
      FieldName = 'FASE'
      Size = 150
    end
    object cdsCorreioUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 10
    end
    object cdsCorreioDTUSU: TDateField
      FieldName = 'DTUSU'
    end
    object cdsCorreioHORAUSU: TStringField
      FieldName = 'HORAUSU'
      Size = 5
    end
    object cdsCorreioREGCAI: TFloatField
      FieldName = 'REGCAI'
    end
    object cdsCorreioJADESC: TStringField
      FieldName = 'JADESC'
      Size = 1
    end
    object cdsCorreioRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = [pfInWhere]
      Required = True
      Size = 50
    end
  end
  object sdsCorreio: TSQLDataSet
    CommandText = 
      'select  mov.* , cli.razaosocial from MOVDOC mov  '#13#10'inner join CL' +
      'IENTES cli on cli.CODCLIENTE = mov.CODFIR'#13#10#13#10'where CODOC = :pcod' +
      'oc'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcodoc'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 568
    Top = 136
    object sdsCorreioCODOC: TIntegerField
      FieldName = 'CODOC'
      Required = True
    end
    object sdsCorreioCODFIR: TSmallintField
      FieldName = 'CODFIR'
    end
    object sdsCorreioFOTO: TSmallintField
      FieldName = 'FOTO'
    end
    object sdsCorreioROLO: TSmallintField
      FieldName = 'ROLO'
    end
    object sdsCorreioNUMCAI: TFloatField
      FieldName = 'NUMCAI'
    end
    object sdsCorreioCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 80
    end
    object sdsCorreioCODSEC: TStringField
      FieldName = 'CODSEC'
      Size = 6
    end
    object sdsCorreioCODLOC: TSmallintField
      FieldName = 'CODLOC'
    end
    object sdsCorreioATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object sdsCorreioCODDOC: TStringField
      FieldName = 'CODDOC'
      Size = 80
    end
    object sdsCorreioDTINID: TDateField
      FieldName = 'DTINID'
    end
    object sdsCorreioDTFIND: TDateField
      FieldName = 'DTFIND'
    end
    object sdsCorreioDOCINI: TFloatField
      FieldName = 'DOCINI'
    end
    object sdsCorreioDOCFIN: TFloatField
      FieldName = 'DOCFIN'
    end
    object sdsCorreioESTANTE: TSmallintField
      FieldName = 'ESTANTE'
    end
    object sdsCorreioPRATEL: TSmallintField
      FieldName = 'PRATEL'
    end
    object sdsCorreioDESCARTE: TFloatField
      FieldName = 'DESCARTE'
    end
    object sdsCorreioDTRET: TDateField
      FieldName = 'DTRET'
    end
    object sdsCorreioNOMERET: TStringField
      FieldName = 'NOMERET'
      Size = 40
    end
    object sdsCorreioNDOCRET: TStringField
      FieldName = 'NDOCRET'
      Size = 10
    end
    object sdsCorreioDTPREV: TDateField
      FieldName = 'DTPREV'
    end
    object sdsCorreioOBSRET: TStringField
      FieldName = 'OBSRET'
      Size = 60
    end
    object sdsCorreioOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object sdsCorreioDTINC: TDateField
      FieldName = 'DTINC'
    end
    object sdsCorreioCOLUNA: TSmallintField
      FieldName = 'COLUNA'
    end
    object sdsCorreioNCAICLI: TFloatField
      FieldName = 'NCAICLI'
    end
    object sdsCorreioOBS2: TStringField
      FieldName = 'OBS2'
      Size = 40
    end
    object sdsCorreioTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 1
    end
    object sdsCorreioA: TStringField
      FieldName = 'A'
      Size = 10
    end
    object sdsCorreioNUMDOC: TStringField
      FieldName = 'NUMDOC'
    end
    object sdsCorreioDATA: TStringField
      FieldName = 'DATA'
      Size = 8
    end
    object sdsCorreioQTDADE: TFloatField
      FieldName = 'QTDADE'
    end
    object sdsCorreioCODIDIO: TSmallintField
      FieldName = 'CODIDIO'
    end
    object sdsCorreioDESCR: TStringField
      FieldName = 'DESCR'
      Size = 150
    end
    object sdsCorreioFASE: TStringField
      FieldName = 'FASE'
      Size = 150
    end
    object sdsCorreioUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 10
    end
    object sdsCorreioDTUSU: TDateField
      FieldName = 'DTUSU'
    end
    object sdsCorreioHORAUSU: TStringField
      FieldName = 'HORAUSU'
      Size = 5
    end
    object sdsCorreioREGCAI: TFloatField
      FieldName = 'REGCAI'
    end
    object sdsCorreioJADESC: TStringField
      FieldName = 'JADESC'
      Size = 1
    end
    object sdsCorreioRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = [pfInWhere]
      Required = True
      Size = 50
    end
  end
  object cdsT: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pcod'
        ParamType = ptInput
      end>
    ProviderName = 'dspT'
    Left = 600
    Top = 215
    object cdsTID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTCODDOC: TStringField
      FieldName = 'CODDOC'
      Size = 6
    end
    object cdsTDESCR: TStringField
      FieldName = 'DESCR'
      Size = 40
    end
  end
  object dspT: TDataSetProvider
    DataSet = sqlT
    Left = 560
    Top = 216
  end
  object sqlT: TSQLDataSet
    CommandText = 'select ID, CODDOC, DESCR from CADDOC where CODDOC = :pcod'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pcod'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 520
    Top = 216
    object sqlTID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sqlTCODDOC: TStringField
      FieldName = 'CODDOC'
      Size = 6
    end
    object sqlTDESCR: TStringField
      FieldName = 'DESCR'
      Size = 40
    end
  end
  object sqlCa: TSQLDataSet
    CommandText = 
      'select ID, CODDEP, DESCR, OBS from CADDEP where CODDEP = :pCODDE' +
      'P'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pCODDEP'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 552
    Top = 168
    object sqlCaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sqlCaCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 6
    end
    object sqlCaDESCR: TStringField
      FieldName = 'DESCR'
      Size = 40
    end
    object sqlCaOBS: TStringField
      FieldName = 'OBS'
      Size = 40
    end
  end
  object dspCA: TDataSetProvider
    DataSet = sqlCa
    Left = 584
    Top = 168
  end
  object cdsCa: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pCODDEP'
        ParamType = ptInput
      end>
    ProviderName = 'dspCA'
    Left = 616
    Top = 168
    object cdsCaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCaCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 6
    end
    object cdsCaDESCR: TStringField
      FieldName = 'DESCR'
      Size = 40
    end
    object cdsCaOBS: TStringField
      FieldName = 'OBS'
      Size = 40
    end
  end
  object dspS: TDataSetProvider
    DataSet = sqlS
    Left = 688
    Top = 192
  end
  object sqlS: TSQLDataSet
    CommandText = 'select ID, CODSEC, DESCR  from CADSEC WHERE CODSEC = :PCAD'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PCAD'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 648
    Top = 192
    object sqlSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sqlSCODSEC: TStringField
      FieldName = 'CODSEC'
      Size = 6
    end
    object sqlSDESCR: TStringField
      FieldName = 'DESCR'
      Size = 40
    end
  end
  object cdsS: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PCAD'
        ParamType = ptInput
      end>
    ProviderName = 'dspS'
    Left = 744
    Top = 192
    object cdsSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsSCODSEC: TStringField
      FieldName = 'CODSEC'
      Size = 6
    end
    object cdsSDESCR: TStringField
      FieldName = 'DESCR'
      Size = 40
    end
  end
  object dsDetR: TDataSource
    DataSet = cdsDetR
    Left = 133
    Top = 125
  end
  object cdsDetR: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCodfir'
        ParamType = ptInput
      end>
    ProviderName = 'dspDetR'
    Left = 101
    Top = 125
    object cdsDetRCODOC: TIntegerField
      FieldName = 'CODOC'
      Required = True
    end
    object cdsDetRCODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
    end
    object cdsDetRCODFIR: TIntegerField
      FieldName = 'CODFIR'
    end
    object cdsDetRNOMERET: TStringField
      FieldName = 'NOMERET'
      Size = 60
    end
    object cdsDetRNDOCRET: TStringField
      FieldName = 'NDOCRET'
      Size = 100
    end
    object cdsDetRDTPREV: TDateField
      FieldName = 'DTPREV'
    end
    object cdsDetROBSRET: TStringField
      FieldName = 'OBSRET'
      Size = 60
    end
    object cdsDetROBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object cdsDetRDTRET: TDateField
      FieldName = 'DTRET'
    end
    object cdsDetRTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsDetRNUMCAI: TFloatField
      FieldName = 'NUMCAI'
    end
    object cdsDetRNCAICLI: TFloatField
      FieldName = 'NCAICLI'
    end
  end
  object sqlDetR: TSQLDataSet
    CommandText = 
      'select md.CODOC, md.CODDETALHE,md.CODFIR, md.NOMERET, md.NDOCRET' +
      ', md.DTPREV, md.DTRET, md.OBSRET, md.OBS , md.TIPO ,'#13#10'm.NUMCAI ,' +
      'm.NCAICLI'#13#10'from MOVDOCDET  md '#13#10'inner join MOVDOC m on m.CODOC =' +
      ' md.CODOC'#13#10'where tipo = '#39'R'#39#13#10'and md.CODFIR = :pCodfir'#13#10'order by ' +
      'm.NUMCAI'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCodfir'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 21
    Top = 125
    object sqlDetRCODOC: TIntegerField
      FieldName = 'CODOC'
      Required = True
    end
    object sqlDetRCODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
    end
    object sqlDetRCODFIR: TIntegerField
      FieldName = 'CODFIR'
    end
    object sqlDetRNOMERET: TStringField
      FieldName = 'NOMERET'
      Size = 60
    end
    object sqlDetRNDOCRET: TStringField
      FieldName = 'NDOCRET'
      Size = 100
    end
    object sqlDetRDTPREV: TDateField
      FieldName = 'DTPREV'
    end
    object sqlDetRDTRET: TDateField
      FieldName = 'DTRET'
    end
    object sqlDetROBSRET: TStringField
      FieldName = 'OBSRET'
      Size = 60
    end
    object sqlDetROBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object sqlDetRTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sqlDetRNUMCAI: TFloatField
      FieldName = 'NUMCAI'
    end
    object sqlDetRNCAICLI: TFloatField
      FieldName = 'NCAICLI'
    end
  end
  object dspDetR: TDataSetProvider
    DataSet = sqlDetR
    Left = 53
    Top = 125
  end
  object sqlDetD: TSQLDataSet
    CommandText = 
      'select md.CODOC, md.CODDETALHE,md.CODFIR, md.NOMERET, md.NDOCRET' +
      ', md.DTPREV, md.DTRET, md.OBSRET, md.OBS , md.TIPO ,'#13#10'm.NUMCAI ,' +
      'm.NCAICLI'#13#10'from MOVDOCDET  md '#13#10'inner join MOVDOC m on m.CODOC =' +
      ' md.CODOC'#13#10'where tipo = '#39'D'#39#13#10'and md.CODFIR = :pCodfir'#13#10'order by ' +
      'm.NUMCAI'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCodfir'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 21
    Top = 157
    object sqlDetDCODOC: TIntegerField
      FieldName = 'CODOC'
      Required = True
    end
    object sqlDetDCODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
    end
    object sqlDetDCODFIR: TIntegerField
      FieldName = 'CODFIR'
    end
    object sqlDetDNOMERET: TStringField
      FieldName = 'NOMERET'
      Size = 60
    end
    object sqlDetDNDOCRET: TStringField
      FieldName = 'NDOCRET'
      Size = 100
    end
    object sqlDetDDTPREV: TDateField
      FieldName = 'DTPREV'
    end
    object sqlDetDDTRET: TDateField
      FieldName = 'DTRET'
    end
    object sqlDetDOBSRET: TStringField
      FieldName = 'OBSRET'
      Size = 60
    end
    object sqlDetDOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object sqlDetDTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sqlDetDNUMCAI: TFloatField
      FieldName = 'NUMCAI'
    end
    object sqlDetDNCAICLI: TFloatField
      FieldName = 'NCAICLI'
    end
  end
  object dspDetD: TDataSetProvider
    DataSet = sqlDetD
    Left = 61
    Top = 157
  end
  object cdsDetD: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCodfir'
        ParamType = ptInput
      end>
    ProviderName = 'dspDetD'
    Left = 93
    Top = 157
    object cdsDetDCODOC: TIntegerField
      FieldName = 'CODOC'
      Required = True
    end
    object cdsDetDCODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
    end
    object cdsDetDCODFIR: TIntegerField
      FieldName = 'CODFIR'
    end
    object cdsDetDNOMERET: TStringField
      FieldName = 'NOMERET'
      Size = 60
    end
    object cdsDetDNDOCRET: TStringField
      FieldName = 'NDOCRET'
      Size = 100
    end
    object cdsDetDDTPREV: TDateField
      FieldName = 'DTPREV'
    end
    object cdsDetDDTRET: TDateField
      FieldName = 'DTRET'
    end
    object cdsDetDOBSRET: TStringField
      FieldName = 'OBSRET'
      Size = 60
    end
    object cdsDetDOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object cdsDetDTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsDetDNUMCAI: TFloatField
      FieldName = 'NUMCAI'
    end
    object cdsDetDNCAICLI: TFloatField
      FieldName = 'NCAICLI'
    end
  end
  object dsDetD: TDataSource
    DataSet = cdsDetD
    Left = 133
    Top = 165
  end
end
