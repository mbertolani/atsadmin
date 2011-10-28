inherited fCliente1: TfCliente1
  Width = 739
  Height = 438
  Caption = 'Cadastro Cliente'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    Width = 731
    Height = 33
  end
  inherited MMJPanel2: TMMJPanel
    Top = 360
    Width = 731
    Font.Height = -13
    ParentFont = False
    inherited btnProcurar: TBitBtn
      OnClick = btnProcurarClick
    end
  end
  object rgTipo: TRadioGroup [2]
    Left = 0
    Top = 39
    Width = 81
    Height = 81
    Caption = 'Pessoa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Fisica'
      'Juridica')
    ParentFont = False
    TabOrder = 2
    OnClick = rgTipoClick
  end
  object gbNome: TGroupBox [3]
    Left = 83
    Top = 39
    Width = 646
    Height = 81
    Caption = 'Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object lblNome: TLabel
      Left = 6
      Top = 19
      Width = 37
      Height = 16
      Caption = 'Nome'
    end
    object lblRazao: TLabel
      Left = 6
      Top = 51
      Width = 47
      Height = 16
      Caption = 'Apelido'
    end
    object DBEdit1: TDBEdit
      Left = 88
      Top = 16
      Width = 532
      Height = 24
      DataField = 'RAZAOSOCIAL'
      DataSource = DtSrc
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 88
      Top = 48
      Width = 532
      Height = 24
      DataField = 'NOMECLIENTE'
      DataSource = DtSrc
      TabOrder = 1
    end
  end
  object GroupBox1: TGroupBox [4]
    Left = 0
    Top = 232
    Width = 729
    Height = 126
    Caption = 'Endere'#231'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object JvDBUltimGrid1: TJvDBUltimGrid
      Left = 2
      Top = 18
      Width = 671
      Height = 106
      Align = alCustom
      BorderStyle = bsNone
      Ctl3D = False
      DataSource = Dtsrc_e
      FixedColor = clActiveBorder
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = JvDBUltimGrid1DblClick
      BevelInner = bvNone
      BevelOuter = bvNone
      AutoSizeColumns = True
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 20
      TitleRowHeight = 20
      Columns = <
        item
          Expanded = False
          FieldName = 'TIPOEND'
          Title.Caption = 'Tipo'
          Width = 113
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOGRADOURO'
          Title.Caption = 'Rua/Avenida'
          Width = 108
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO'
          Title.Caption = 'N'#250'mero'
          Width = 108
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BAIRRO'
          Title.Caption = 'Bairro'
          Width = 108
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CIDADE'
          Title.Caption = 'Cidade'
          Width = 108
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UF'
          Width = 108
          Visible = True
        end>
    end
    object BitBtn1: TBitBtn
      Left = 677
      Top = 20
      Width = 47
      Height = 43
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 1
      OnClick = BitBtn1Click
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0ADD2B02A71
        32196E2313741D0F761B11751B15741D1A6F242C7233ACD4B1C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C049854F1773200F77180C77
        170E791C0A781A08781A08781A0A78180C78180C77160D781718731E558E5BC0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0D2F1D41871211078190D781808781A118A
        2F22A2492CB65E2AB55D2AB65B37BD6324A2491389300A781A0D78180F77181F
        7128C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C028762F12771B0C771A1B91403EC3732DBE691EC0
        6117C16113C15D0FC05914C15F19BF6021C26626BF6938C1704DCA7B20903C0D
        771A11761A28772EC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C01D6E2512771B10781B52C87D40C17635C06F2BBF6B1CBF
        631EBB601BB15819A9561FAF5C23B05F22B46228BF6937C17443C1794DC27D54
        C27A0E781B14771B1F6E25C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C028762F0F77180F771A36A25644BF7B3BC17533C06F28BF6920BF
        63429F689AC4AB97BAA696B9A593BAA54F9E722ABD6836C17040C1764AC17D4F
        BE80379E5310781B10761728742DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C6E6C713761A0C751A4FB56E57C28448C07F40C17636C07229BC6A23BF
        684F956CE9F3EDE0DFE1D7D6D8BBC2BF5E91752DBD6A38C07240C0784AC07F50
        BE8364C88E52B3700F771A13751BCDECCFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C01C70220C741C6DCD8D62C98C58C2874CC07D42C07839C07430C06D27BD
        694F956DF1FBF5F8F8F8F0F1EFCCD1CF62927635BF713BC17541BF774AC17D51
        BF8460C68C66C78F6CCD8D0C761D1A7022C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        629B6811781724853B69C88F62C88E5CC68B4EC08043C07A3CC27635C06F2EC0
        6E569672F2FCF6F8F8F8F0F0F0CED1CF63907539BF733FBF7744C07A4CC07D53
        BF8460C68C69C7906DC89023863E0F7718649868C0C0C0C0C0C0C0C0C0C0C0C0
        1973200F771875CF946BC79267C88F5FC68C4DC18047C07C40C0783AC17535BF
        71589573F1FBF5F8F8F8F0F0F0CCD1CF6390753FBF7842BF7948C17D4EC08057
        C18660C78A67C88F6DC89173CD910F771818721FC0C0C0C0C0C0C0C0C0B4DAB6
        11771810761E73CB966BC89167C88F5FC78A4EC08048C07F43C07840C0783BC0
        775A9674F2F9F4F8F8F8F0F0F0CDD0CE66917642BF7A46C17D49C07C4EC08055
        C18660C88965C8906CC99272CB930C741C127819A7D2ADC0C0C0C0C0C0307836
        0F771825853875CA986DC79264B48556A57A4FA2754DA47249A36E47A16C48A1
        6F58826BF5FAF8F9F9F9EFEFEFCDD2D06C89794B9F6F4DA3734EA37653A27655
        A2765AA47A62AF836CC6916FC791278C3E0F77182C7636C0C0C0C0C0C01F7926
        0E761737994D70C9976AC79080AD93BBCFC3B2C6BAAEBEB7ACBFB6ADC0B7B3C7
        BBCED5D0F1F1F1F8F8F8F7F7F7E0E0E0C4CAC5B3C4B9AFC0B7AFC0B7AFBFB8B0
        BEB8ACBDB48CB09F6DC49268C68F4FB4690F771A177020C0C0C0C0C0C012731C
        0F771853B5696DC7926CC69193B19EEEF0F0E0E0E0E3E1E1E2DFE1E2DFE1E0E0
        E0EAE7E9F8F8F8F8F8F8FAF8F8F0F0F0EAE7E9E0E0E0E0E0E0E2DFE1E2DFE1E2
        DFE1C8C9C795AC9E6CC69169C79065C57F12791E13751BC0C0C0C0C0C00F761B
        0F771A51B5696AC8926AC8928DB39DF4F9F7F8F8F8F8F8F8F8F8F8F8F8F8F9F9
        F9F9F9F9F8F8F8F8F8F8F8F8F8F8F8F8F9F9F9F8F9F7F8F9F7F8F8F8F8F8F8F9
        F9F9D0D0D094AE9E6DC79267C89065C48112782011751BC0C0C0C0C0C012761E
        0E76174CB26462C98C61C68F8CB39EF4F9F7F8F8F8F8F8F8F7F7F7F8F8F8F7F7
        F7F8F8F8F8F8F8F9F9F9F8F7F9F8F8F8F7F7F7F8F9F7F8F8F8F8F8F8FAF8F8F6
        F8F8E6E8E89BB5A764C58D61C88E62C57F12782011751BC0C0C0C0C0C0187622
        0F771A47AD6060C8895FC68C8BBEA2E8FEF2ECFDF2ECFDF4ECFDF4EDFCF4EDFC
        F4F4F9F7F8F8F8F8F8F8FAF8F8F8F8F8F4F9F7F0FDF5EEFDF5EDFCF4EDFCF4EC
        FDF4ECFDF4BAE1CC68C68F61C98861C47E11771F13741DC0C0C0C0C0C0277930
        0F7718298F3E5AC18859C0865DBB855BAB7C64B18566B38767B1876EB38E76B2
        90738D7DF6F9F7F8F8F8F1F1F1DEE0E08A9E927DB39574B28E74B18F70B38E67
        B08865B2865EB58362C68A61C98A47AD600F771A196F21C0C0C0C0C0C04E8D55
        0F78171078215AC08657C18656BF8656BF8662C98C68C9906AC79074C99780C8
        9D7A9787F4F9F7F8F9F7F1F1F1D0D1CF7C928688C8A47FCA9E77C79873C89468
        C68F65C8905FC78A60C8895BC1871F86350E7617347A3BC0C0C0C0C0C0C0C0C0
        13741D0D771A61CB8957C18657C18659C18465C98F6AC79077C8997FC99F8CCB
        A4819A8CF6F8F8F8F8F8EFEFEFD0D0D07F91848FC8A787C8A182CA9F77C79872
        CA9565C89061C88B60C88964C98B0D761B0F7718B4DCB9C0C0C0C0C0C0C0C0C0
        2B743010791857BC7854BF8157C0875AC08667C79172CA957AC79B87C8A193C7
        A985988FF6F8F8F9F9F9F0F0F0CED1CF83938893C7A98AC7A384C7A07CC79B74
        C89869C88F62C88E62C78967CB890E76191C7022C0C0C0C0C0C0C0C0C0C0C0C0
        B7DDB913751B0C741F63CB8A59C0875BC18769C79076CB9982CAA08BC9A59BCA
        B0899A91F6F8F8F9F9F9F0F0F0CED0D083928A99C9AD90C9A887C8A17FCA9E74
        C89869C88F62C78F63CA8D167C2B12771B71A478C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C03075380D78182D974A5CC38663C78D6CC79078C99A83CBA18ECBA7A0CA
        B1899890F7F9F9F9F9F9F9F9F9D6D8D88A99919CC9AE8FC8A789C8A17FC99F76
        CA9A69C88F63C98F52BB720D771A1E6F26C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C018721F0E7617137B2862CC876CCA9178C99A83C69F8FC8A79DC7
        B096AA9EE4E9E7E4E9E7E5EAE8E3EAE7A6B9B09CC8B18EC7A88AC9A27FCA9E73
        CA9862C98C2C964911771815741DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C08EC69316741D0E771608751F63C88A70CA9580CAA08CC9A59EC9
        AEA8C6B3AFC6B8B2C6B9ADC7B9A8C5B5A0C6B099C8AE8DC9A782C89F76CB9964
        C789137E2F0C771713761A509257C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C06CA67016741D0E7617258E3F62CB8860BE877BC69A97CC
        AB9DC8ADA4C9B5A8C8B5A1C7B19EC9AE98C9AD8ECAA87EC89E63BD8862C9863A
        A2550E761713751B2D7533C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C019711E1078190C761D2A93485FC88561BE
        876BBA8E7CC29D85C5A281C49D78C2986ABB8E62BE8962CA893FA7600C741F0F
        771A16731E5A9961C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C049854F18721F1178170F771A0D75
        1D0F77221C8633278F3C288F3A278F3A147C270C771B0D771A0F781712741A34
        7A3BC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0DEFBE2639B681C71211278
        191079181078191079181079181078191079181177181773223E8045C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A3CB
        A86CA3723B80432D77352C79352E78365F996388B58EC0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
    end
  end
  object GroupBox2: TGroupBox [5]
    Left = 0
    Top = 122
    Width = 729
    Height = 49
    Caption = 'Documentos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    object lblCnpj: TLabel
      Left = 50
      Top = 16
      Width = 26
      Height = 16
      Alignment = taRightJustify
      Caption = 'CPF'
    end
    object lblIE: TLabel
      Left = 293
      Top = 16
      Width = 26
      Height = 16
      Alignment = taRightJustify
      Caption = 'R.G.'
    end
    object lblOrgaoEmissor: TLabel
      Left = 491
      Top = 18
      Width = 90
      Height = 16
      Caption = 'Org'#227'o Emissor'
    end
    object DBEdit3: TDBEdit
      Left = 88
      Top = 16
      Width = 161
      Height = 24
      DataField = 'CNPJ'
      DataSource = DtSrc
      TabOrder = 0
    end
    object DBEdit4: TDBEdit
      Left = 329
      Top = 16
      Width = 154
      Height = 24
      DataField = 'INSCESTADUAL'
      DataSource = DtSrc
      TabOrder = 1
    end
    object DBEdit5: TDBEdit
      Left = 585
      Top = 16
      Width = 120
      Height = 24
      DataField = 'RG'
      DataSource = DtSrc
      TabOrder = 2
    end
  end
  object GroupBox3: TGroupBox [6]
    Left = -1
    Top = 174
    Width = 730
    Height = 54
    Caption = 'Outras Informa'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    object Label1: TLabel
      Left = 40
      Top = 27
      Width = 46
      Height = 16
      Caption = 'Contato'
      FocusControl = btnCancelar
    end
    object DBEdit6: TDBEdit
      Left = 89
      Top = 24
      Width = 313
      Height = 24
      DataField = 'CONTATO'
      DataSource = DtSrc
      TabOrder = 0
    end
    object rgSitCad: TRadioGroup
      Left = 420
      Top = 9
      Width = 300
      Height = 38
      Caption = 'Situa'#231#227'o do Cadastro'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Ativo'
        'Inativo'
        'Bloqueado')
      TabOrder = 1
    end
  end
  inherited DtSrc: TDataSource
    DataSet = cds_cli
  end
  object cds_cli: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODCLIENTE'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_cli'
    Left = 416
    Top = 8
    object cds_cliCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      DisplayFormat = '0000000'
    end
    object cds_cliNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object cds_cliRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object cds_cliCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_cliTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_cliCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cds_cliCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object cds_cliINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 24
    end
    object cds_cliRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cds_cliSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_cliREGIAO: TSmallintField
      FieldName = 'REGIAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_cliLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object cds_cliDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_cliCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_cliSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_cliHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cds_cliPRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliPRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliDATANASC: TDateField
      FieldName = 'DATANASC'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/0000;1;_'
    end
    object cds_cliCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_cliOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cds_cliBANCO: TStringField
      FieldName = 'BANCO'
      ProviderFlags = []
      Size = 18
    end
    object cds_cliNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      ProviderFlags = []
      Size = 30
    end
    object cds_cliTEM_IE: TStringField
      FieldName = 'TEM_IE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_cliDATARESC: TDateField
      FieldName = 'DATARESC'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/0000;1;_'
    end
    object cds_cliNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_cliSEXO: TStringField
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_cliFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_cliGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_cliCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object cds_cliEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object cds_cliDATAREINC: TDateField
      FieldName = 'DATAREINC'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/0000;1;_'
    end
    object cds_cliGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_cliGERAENV: TStringField
      FieldName = 'GERAENV'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_cliGERABOL: TStringField
      FieldName = 'GERABOL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_cliEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds_cliDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/0000;1;_'
    end
    object cds_cliSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cds_cliSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cds_cliRA: TStringField
      FieldName = 'RA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cds_cliCURSO: TStringField
      FieldName = 'CURSO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_cliIP: TStringField
      FieldName = 'IP'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_cliN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_cliMAC: TStringField
      FieldName = 'MAC'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_cliMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_cliBANDA_UPLOAD: TStringField
      FieldName = 'BANDA_UPLOAD'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_cliBANDA_DOWLOAD: TStringField
      FieldName = 'BANDA_DOWLOAD'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_cliTORRE_CONECCAO: TStringField
      FieldName = 'TORRE_CONECCAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cds_cliCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliMENSALIDADE: TFloatField
      FieldName = 'MENSALIDADE'
    end
    object cds_cliPAI: TStringField
      FieldName = 'PAI'
      Size = 30
    end
    object cds_cliLOCALTRABALUNO: TStringField
      FieldName = 'LOCALTRABALUNO'
      Size = 30
    end
    object cds_cliDIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_cliDIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_cliTELTRABALUNO: TStringField
      FieldName = 'TELTRABALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_cliDATA_MATRICULA: TSQLTimeStampField
      FieldName = 'DATA_MATRICULA'
      EditMask = '!99/99/0000;1;_'
    end
    object cds_cliSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 2
    end
    object cds_cliCOD_TRANPORTADORA: TIntegerField
      FieldName = 'COD_TRANPORTADORA'
      ProviderFlags = [pfInUpdate]
    end
    object cds_cliCODRESPONSAVEL: TIntegerField
      FieldName = 'CODRESPONSAVEL'
    end
    object cds_cliCFOP: TStringField
      FieldName = 'CFOP'
      FixedChar = True
      Size = 4
    end
  end
  object sds_cli: TSQLDataSet
    CommandText = 
      'select cli.*'#13#10'        , banc.BANCO'#13#10'        , usu.NOMEUSUARIO '#13#10 +
      'from CLIENTES cli '#13#10'left outer join BANCO banc on banc.CODBANCO=' +
      'cli.CODBANCO '#13#10'left outer join USUARIO usu on usu.CODUSUARIO = c' +
      'li.CODUSUARIO '#13#10'where CODCLIENTE=:pCODCLIENTE'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODCLIENTE'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 352
    Top = 8
    object sds_cliCODICLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '00000'
    end
    object sds_cliNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object sds_cliRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object sds_cliCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_cliTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_cliCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sds_cliCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object sds_cliINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 24
    end
    object sds_cliRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sds_cliSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_cliREGIAO: TSmallintField
      FieldName = 'REGIAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_cliLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_cliCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_cliSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sds_cliHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sds_cliPRAZORECEBIMENTO: TSmallintField
      FieldName = 'PRAZORECEBIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliPRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliCODBANCO: TSmallintField
      FieldName = 'CODBANCO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliDATANASC: TDateField
      FieldName = 'DATANASC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliCONTA_CLIENTE: TStringField
      FieldName = 'CONTA_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_cliOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object sds_cliBANCO: TStringField
      FieldName = 'BANCO'
      ProviderFlags = []
      Size = 18
    end
    object sds_cliNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      ProviderFlags = []
      Size = 30
    end
    object sds_cliTEM_IE: TStringField
      FieldName = 'TEM_IE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_cliDATARESC: TDateField
      FieldName = 'DATARESC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sds_cliSEXO: TStringField
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_cliFORMA_CORRESPOND: TStringField
      FieldName = 'FORMA_CORRESPOND'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_cliGRUPO_CLIENTE: TStringField
      FieldName = 'GRUPO_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_cliCODINCLUCANC: TIntegerField
      FieldName = 'CODINCLUCANC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliEXIST_COBERT: TStringField
      FieldName = 'EXIST_COBERT'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object sds_cliEXISTCOPART: TStringField
      FieldName = 'EXISTCOPART'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object sds_cliDATAREINC: TDateField
      FieldName = 'DATAREINC'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliGERAAVISO: TStringField
      FieldName = 'GERAAVISO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_cliGERAENV: TStringField
      FieldName = 'GERAENV'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_cliGERABOL: TStringField
      FieldName = 'GERABOL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_cliEMVIAGEM: TStringField
      FieldName = 'EMVIAGEM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds_cliDTAALTERA: TDateField
      FieldName = 'DTAALTERA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliSERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object sds_cliSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object sds_cliRA: TStringField
      FieldName = 'RA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_cliCURSO: TStringField
      FieldName = 'CURSO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_cliIP: TStringField
      FieldName = 'IP'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_cliN_CONTRATO: TStringField
      FieldName = 'N_CONTRATO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_cliMAC: TStringField
      FieldName = 'MAC'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_cliMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_cliBANDA_UPLOAD: TStringField
      FieldName = 'BANDA_UPLOAD'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_cliBANDA_DOWLOAD: TStringField
      FieldName = 'BANDA_DOWLOAD'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_cliTORRE_CONECCAO: TStringField
      FieldName = 'TORRE_CONECCAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sds_cliCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliMENSALIDADE: TFloatField
      FieldName = 'MENSALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliPAI: TStringField
      FieldName = 'PAI'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_cliLOCALTRABALUNO: TStringField
      FieldName = 'LOCALTRABALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_cliDIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_cliDIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sds_cliTELTRABALUNO: TStringField
      FieldName = 'TELTRABALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_cliDATA_MATRICULA: TSQLTimeStampField
      FieldName = 'DATA_MATRICULA'
    end
    object sds_cliSITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 2
    end
    object sds_cliCOD_TRANPORTADORA: TIntegerField
      FieldName = 'COD_TRANPORTADORA'
      ProviderFlags = [pfInUpdate]
    end
    object sds_cliCODRESPONSAVEL: TIntegerField
      FieldName = 'CODRESPONSAVEL'
    end
    object sds_cliCFOP: TStringField
      FieldName = 'CFOP'
      FixedChar = True
      Size = 4
    end
  end
  object dsp_cli: TDataSetProvider
    DataSet = sds_cli
    UpdateMode = upWhereKeyOnly
    Left = 384
    Top = 8
  end
  object sqlLocate: TSQLDataSet
    CommandText = 'select NOMECLIENTE  from CLIENTES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 95
    Top = 7
    object sqlLocateNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
  end
  object dspLocate: TDataSetProvider
    DataSet = sqlLocate
    UpdateMode = upWhereKeyOnly
    Left = 127
    Top = 7
  end
  object cdsLocate: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLocate'
    Left = 159
    Top = 6
    object cdsLocateNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 50
    end
  end
  object Dtsrc_e: TDataSource
    DataSet = cds_CliEnd
    OnStateChange = DtSrcStateChange
    Left = 680
    Top = 304
  end
  object cds_CliEnd: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCli'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_CliEnd'
    Left = 479
    Top = 286
    object cds_CliEndLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object cds_CliEndNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object cds_CliEndBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cds_CliEndCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cds_CliEndUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cds_CliEndTIPOEND: TStringField
      FieldName = 'TIPOEND'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 9
    end
    object cds_CliEndTIPO: TSmallintField
      FieldName = 'TIPO'
      ReadOnly = True
      Required = True
    end
  end
  object dsp_CliEnd: TDataSetProvider
    DataSet = sds_CliEnd
    UpdateMode = upWhereKeyOnly
    Left = 447
    Top = 287
  end
  object sds_CliEnd: TSQLDataSet
    CommandText = 
      'select LOGRADOURO, NUMERO, BAIRRO, CIDADE, UF, case  TIPOEND whe' +
      'n 0 Then '#39'PRINCIPAL'#39' when 1 then '#39'COBRA'#199'A'#39' when 2 then '#39' ENTREGA' +
      #39' else '#39'OUTROS'#39' END as TIPOEND, TIPOEND as TIPO from ENDERECOCLI' +
      'ENTE where CODCLIENTE = :pCli'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCli'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 415
    Top = 287
    object sds_CliEndLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 50
    end
    object sds_CliEndNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object sds_CliEndBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sds_CliEndCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sds_CliEndUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object sds_CliEndTIPOEND: TStringField
      FieldName = 'TIPOEND'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 9
    end
    object sds_CliEndTIPO: TSmallintField
      FieldName = 'TIPO'
      ReadOnly = True
      Required = True
    end
  end
end
