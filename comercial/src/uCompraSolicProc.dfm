inherited fCompraSolicProc: TfCompraSolicProc
  Caption = 'Solicitacao Compra'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    Height = 57
    object rgSit: TRadioGroup
      Left = 413
      Top = 1
      Width = 359
      Height = 55
      Caption = 'Situacao'
      Columns = 4
      ItemIndex = 0
      Items.Strings = (
        'Pendente'
        'Aprovada'
        'Cancelada'
        'Em Cota'#231'ao'
        'Encerrado'
        'Todas')
      TabOrder = 0
      OnClick = rgSitClick
    end
    object GroupBox1: TGroupBox
      Left = 205
      Top = 8
      Width = 205
      Height = 44
      Caption = 'Data da Solicita'#231#227'o'
      TabOrder = 1
      object Label1: TLabel
        Left = 97
        Top = 20
        Width = 6
        Height = 13
        Caption = #224
      end
      object dtSolic: TJvDatePickerEdit
        Left = 8
        Top = 15
        Width = 84
        Height = 21
        AllowNoDate = True
        Checked = False
        TabOrder = 0
        OnKeyPress = FormKeyPress
      end
      object dtSolic2: TJvDatePickerEdit
        Left = 111
        Top = 15
        Width = 84
        Height = 21
        AllowNoDate = True
        Checked = False
        TabOrder = 1
        OnKeyPress = FormKeyPress
      end
    end
    object GroupBox3: TGroupBox
      Left = 4
      Top = 8
      Width = 100
      Height = 44
      Caption = 'C'#243'digo Solicita'#231#227'o'
      TabOrder = 2
      object Edit1: TEdit
        Left = 5
        Top = 16
        Width = 89
        Height = 21
        TabOrder = 0
      end
    end
    object GroupBox2: TGroupBox
      Left = 107
      Top = 8
      Width = 95
      Height = 44
      Caption = 'C'#243'digo Produto'
      TabOrder = 3
      object edProd: TEdit
        Left = 5
        Top = 16
        Width = 85
        Height = 21
        TabOrder = 0
      end
    end
  end
  inherited MMJPanel2: TMMJPanel
    inherited btnGravar: TBitBtn
      Left = -150
      Visible = False
    end
    inherited btnIncluir: TBitBtn
      Left = -150
      Visible = False
    end
    inherited btnCancelar: TBitBtn
      Left = -200
      Top = 4
      Visible = False
    end
    inherited btnExcluir: TBitBtn
      Left = -200
      Top = 4
      Visible = False
    end
    inherited btnProcurar: TBitBtn
      Left = 394
      OnClick = btnProcurarClick
    end
    object btnStatus: TBitBtn
      Left = 271
      Top = 5
      Width = 107
      Height = 42
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 6
      OnClick = btnStatusClick
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000497015FF00000009000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000079422144D36625FF0000002C000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001D46423FFDB6724FF311B0EB3000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000008F6D
        1EFFDB6724FFD06122FF765E13FF1011035B291A07B7261506B90D0702620201
        0036000000130000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000076402247DC6A
        24FFD16322FFCC6121FFC45C20FFC45C20FFC65D21FFC95E21FFC95E21FFCB5F
        21FFC15B20FF271206C800000023000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001DB7223FFD66E
        23FFCD6821FFC86520FFC86420FFC96421FFCB6321FFCD6421FFCC6321FFCC61
        21FFC95F21FFCE6222FFDB6B2AFF030200420000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000977D1CFFDA7B22FFD476
        21FFCE7220FFCD7020FFCE6F21FFD06E21FFD16E21FFD26D22FFD06B21FFCF6A
        21FFD56C23FFDE7229FFE28443FFE3884DFF190C047E00000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000884B2951DD8721FFD88321FFD480
        20FFD37E20FFD47D21FFD57C21FFD67B21FFD77A21FFD17621FFCD7320FFD173
        21FFE07924FFE48B40FFE5924CFFE89A59FFE89F63FF02010041000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FCF7EEFDDE9320FFDB9020FFDA8E
        20FFDA8C21FFDB8B21FFDC8921FFDD8921FF0000002B00000000000000000000
        000000000000D7A38550E9C498FFE89D4EFFEAA760FFEDB473FF000000220000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000050352601F9EED6FFE19C
        20FFE19A20FFE29920FFE29821FFE09520FF2B1407A100000000000000000000
        000000000000000000000000000000000000E4C0A3FFEAA34AFF4A3D31FD0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000EBD094F4E7A621FFE6A420FFE5A220FFD7C93CFF00000000000000000000
        00000000000000000000000000000000000000000000EFBB9D0BEBA843FF0000
        0010000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000C6A7729FEAAF21FFEDAF21FF00000010000000000000
        0000000000000000000000000000000000000000000000000000EEB797040000
        0012000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000B69F7D3A00000006000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000060000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000001A00000000000000000000
        0000000000000000000000000000000000000000000000000000E1A54FFF0603
        0151000000140000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000EBCB89FF00000025000000000000
        0000000000000000000000000000000000000000000000000000EBCA9DFFE7AE
        22FFE5AD22FF130A047F0000001E000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000F2CD7FDBE5AD4EFF000000360000
        000000000000000000000000000000000000000000000000000000000000E0A1
        23FFE0A323FFE3A623FFE3A722FF271408CE0000002700000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000E8AC59FFE9AE5AFF3E2C
        22F30000002E000000050000000000000000000000000000000000000000D794
        25FFDB9724FFDA9823FFDB9A23FFDB9B23FFDC9E22FF3F1F0EF3010000310000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000EFC591AFE6A863FFE6A8
        61FFE4A155FFCE8556FF4A2D1BE8190E07500000003A0D0603414B2610B6D388
        2CFFD28825FFD28A24FFD18B24FFD28D24FFD38E24FFD79224FFD89324FF0000
        0008000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FCF2DBFFE198
        59FFDF914EFFDD8C45FFDA8032FFCD7728FFC67426FFC97726FFCB7927FFCA79
        26FFCA7B26FFC87B25FFC87D25FFC97E25FFCE8325FFD28526FFC28833FF0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000FAED
        DEFFD97F43FFD5722FFFC56928FFC06827FFC16927FFC16B27FFC26C27FFC26D
        27FFC06D26FFC06E26FFC17026FFC67426FFCB7827FFDB9855FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000D0B09E9FB95D28FFBA5F28FFBB5F28FFBC6028FFBC6128FFBC6328FFB962
        27FFB96226FFBA6326FFBF6727FFC56B28FFCD702AFF0000000C000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000301C1101D3A991CFBB5E2AFFBA5D28FFB95D28FFB55B27FFB45A
        27FFB45B28FFBA5E28FFC06229FFCA682BFFA0633AFF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000002F1B100246342A034D3C32073725
        1905FCFCFC01BF6029FFC8642BFFD28456FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000C8642BFFC6642CFF0000000B0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000DB8B5CFFA16D4FFF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000C4A897BD00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object btnAprovar: TBitBtn
      Left = 151
      Top = 6
      Width = 107
      Height = 42
      Caption = 'F2-Aprovar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 7
      OnClick = btnIncluirClick
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
  object JvDBGrid1: TJvDBGrid [2]
    Left = 0
    Top = 57
    Width = 772
    Height = 417
    Align = alClient
    DataSource = DtSrc
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = JvDBGrid1CellClick
    OnTitleClick = JvDBGrid1TitleClick
    MultiSelect = True
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'SOLIC_CODIGO'
        Title.Caption = 'Codigo'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOLIC_PRODUTO'
        Title.Caption = 'Material'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOLIC_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNIDADEMEDIDA'
        Title.Caption = 'UN.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOLIC_QUANTIDADE'
        Title.Caption = 'Quantidade'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOLIC_OBSERVACAO'
        Title.Caption = 'Observa'#231#227'o'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOLIC_DATA'
        Title.Caption = 'Data'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOLIC_DTNECESSIT'
        Title.Caption = 'Data Necessidade'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOLIC_SOLICITANTE'
        Title.Caption = 'Solicitante'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOLIC_APROVACAO'
        Title.Caption = 'Aprovador'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOLIC_DATAAPROV'
        Title.Caption = 'Data Aprova'#231#227'o'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOLIC_SITUACAO'
        Title.Caption = 'Status'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOLIC_TIPO'
        Title.Caption = 'Tipo'
        Visible = True
      end>
  end
  inherited DtSrc: TDataSource
    DataSet = cdsSol
    Top = 56
  end
  inherited XPMenu1: TXPMenu
    Top = 56
  end
  inherited PopupMenu1: TPopupMenu
    Top = 56
  end
  object sdsSol: TSQLDataSet
    CommandText = 
      'SELECT cs.SOLIC_CODIGO, cs.SOLIC_DATA, cs.SOLIC_QUANTIDADE, cs.S' +
      'OLIC_DATAAPROV, cs.SOLIC_DESCRICAO,'#13#10'cs.SOLIC_TIPO, cs.SOLIC_PRO' +
      'DUTO, cs.SOLIC_SOLICITANTE, cs.SOLIC_APROVACAO, cs.SOLIC_DTNECES' +
      'SIT, '#13#10'cs.SOLIC_OBSERVACAO, p.UNIDADEMEDIDA, CASE cs.SOLIC_SITUA' +
      'CAO WHEN '#39'A'#39' THEN '#39'APROVADO'#39' WHEN '#39'C'#39' '#13#10'THEN '#39'CANCELADO'#39' WHEN '#39'G' +
      #39' THEN '#39'EM COTA'#199#195'O'#39' WHEN '#39'E'#39' THEN '#39'ENCERRADO'#39' ELSE '#39'OUTROS'#39' END ' +
      #13#10'AS SOLIC_SITUACAO'#13#10'FROM COMPRA_SOLIC cs, PRODUTOS p'#13#10'where p.C' +
      'ODPRO = cs.SOLIC_PRODUTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 256
    Top = 96
  end
  object dspSol: TDataSetProvider
    DataSet = sdsSol
    Options = [poAllowCommandText]
    Left = 288
    Top = 96
  end
  object cdsSol: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSol'
    Left = 320
    Top = 96
    object cdsSolSOLIC_CODIGO: TIntegerField
      FieldName = 'SOLIC_CODIGO'
      Required = True
    end
    object cdsSolSOLIC_DATA: TDateField
      FieldName = 'SOLIC_DATA'
    end
    object cdsSolSOLIC_QUANTIDADE: TFloatField
      FieldName = 'SOLIC_QUANTIDADE'
    end
    object cdsSolSOLIC_SITUACAO: TStringField
      FieldName = 'SOLIC_SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cdsSolSOLIC_DATAAPROV: TDateField
      FieldName = 'SOLIC_DATAAPROV'
    end
    object cdsSolSOLIC_DESCRICAO: TStringField
      FieldName = 'SOLIC_DESCRICAO'
      Size = 300
    end
    object cdsSolSOLIC_TIPO: TStringField
      FieldName = 'SOLIC_TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsSolSOLIC_PRODUTO: TStringField
      FieldName = 'SOLIC_PRODUTO'
      Required = True
      Size = 15
    end
    object cdsSolSOLIC_SOLICITANTE: TStringField
      FieldName = 'SOLIC_SOLICITANTE'
      Size = 30
    end
    object cdsSolSOLIC_APROVACAO: TStringField
      FieldName = 'SOLIC_APROVACAO'
      Size = 30
    end
    object cdsSolSOLIC_DTNECESSIT: TDateField
      FieldName = 'SOLIC_DTNECESSIT'
    end
    object cdsSolSOLIC_OBSERVACAO: TStringField
      FieldName = 'SOLIC_OBSERVACAO'
      Size = 300
    end
    object cdsSolUNIDADEMEDIDA: TStringField
      FieldName = 'UNIDADEMEDIDA'
      FixedChar = True
      Size = 2
    end
  end
end
