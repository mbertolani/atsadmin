object fLotes_Produtos: TfLotes_Produtos
  Left = 400
  Top = 253
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Serie Produto'
  ClientHeight = 89
  ClientWidth = 346
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object MMJPanel2: TMMJPanel
    Left = 0
    Top = 0
    Width = 346
    Height = 89
    Align = alClient
    TabOrder = 0
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clTeal
    Background.EndColor = clSilver
    Background.FillType = GradUpDown
    object Label1: TLabel
      Left = 6
      Top = 8
      Width = 79
      Height = 13
      Caption = 'Serie do Produto'
      Transparent = True
    end
    object DBText1: TDBText
      Left = 9
      Top = 23
      Width = 181
      Height = 17
      DataField = 'DESCPRODUTO'
      DataSource = fCompra.DtSrc1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object btnSair: TBitBtn
      Left = 207
      Top = 11
      Width = 59
      Height = 53
      Caption = 'Proximo'
      TabOrder = 1
      OnClick = btnSairClick
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000ADD2B0002A713200196E230013741D000F761B0011751B001574
        1D001A6F24002C723300ACD4B100C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0004985
        4F00177320000F7718000C7717000E791C000A781A0008781A0008781A000A78
        18000C7818000C7716000D78170018731E00558E5B00C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000D2F1D400187121001078
        19000D78180008781A00118A2F0022A249002CB65E002AB55D002AB65B0037BD
        630024A24900138930000A781A000D7818000F7718001F712800C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C00028762F0012771B000C771A001B91
        40003EC373002DBE69001EC0610017C1610013C15D000FC0590014C15F0019BF
        600021C2660026BF690038C170004DCA7B0020903C000D771A0011761A002877
        2E00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C0001D6E250012771B0010781B0052C87D0040C1
        760035C06F002BBF6B001CBF63001EBB60001BB1580019A956001FAF5C0023B0
        5F0022B4620028BF690037C1740043C179004DC27D0054C27A000E781B001477
        1B001F6E2500C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C00028762F000F7718000F771A0036A2560044BF7B003BC1
        750033C06F0028BF690020BF6300429F68009AC4AB0097BAA60096B9A50093BA
        A5004F9E72002ABD680036C1700040C176004AC17D004FBE8000379E53001078
        1B001076170028742D00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C6E6C70013761A000C751A004FB56E0057C2840048C07F0040C1
        760036C0720029BC6A0023BF68004F956C00E9F3ED00E0DFE100D7D6D800BBC2
        BF005E9175002DBD6A0038C0720040C078004AC07F0050BE830064C88E0052B3
        70000F771A0013751B00CDECCF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C0001C7022000C741C006DCD8D0062C98C0058C287004CC07D0042C0
        780039C0740030C06D0027BD69004F956D00F1FBF500F8F8F800F0F1EF00CCD1
        CF006292760035BF71003BC1750041BF77004AC17D0051BF840060C68C0066C7
        8F006CCD8D000C761D001A702200C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000629B68001178170024853B0069C88F0062C88E005CC68B004EC0800043C0
        7A003CC2760035C06F002EC06E0056967200F2FCF600F8F8F800F0F0F000CED1
        CF006390750039BF73003FBF770044C07A004CC07D0053BF840060C68C0069C7
        90006DC8900023863E000F77180064986800C0C0C000C0C0C000C0C0C000C0C0
        C000197320000F77180075CF94006BC7920067C88F005FC68C004DC1800047C0
        7C0040C078003AC1750035BF710058957300F1FBF500F8F8F800F0F0F000CCD1
        CF00639075003FBF780042BF790048C17D004EC0800057C1860060C78A0067C8
        8F006DC8910073CD91000F77180018721F00C0C0C000C0C0C000C0C0C000B4DA
        B6001177180010761E0073CB96006BC8910067C88F005FC78A004EC0800048C0
        7F0043C0780040C078003BC077005A967400F2F9F400F8F8F800F0F0F000CDD0
        CE006691760042BF7A0046C17D0049C07C004EC0800055C1860060C8890065C8
        90006CC9920072CB93000C741C0012781900A7D2AD00C0C0C000C0C0C0003078
        36000F7718002585380075CA98006DC7920064B4850056A57A004FA275004DA4
        720049A36E0047A16C0048A16F0058826B00F5FAF800F9F9F900EFEFEF00CDD2
        D0006C8979004B9F6F004DA373004EA3760053A2760055A276005AA47A0062AF
        83006CC691006FC79100278C3E000F7718002C763600C0C0C000C0C0C0001F79
        26000E76170037994D0070C997006AC7900080AD9300BBCFC300B2C6BA00AEBE
        B700ACBFB600ADC0B700B3C7BB00CED5D000F1F1F100F8F8F800F7F7F700E0E0
        E000C4CAC500B3C4B900AFC0B700AFC0B700AFBFB800B0BEB800ACBDB4008CB0
        9F006DC4920068C68F004FB469000F771A0017702000C0C0C000C0C0C0001273
        1C000F77180053B569006DC792006CC6910093B19E00EEF0F000E0E0E000E3E1
        E100E2DFE100E2DFE100E0E0E000EAE7E900F8F8F800F8F8F800FAF8F800F0F0
        F000EAE7E900E0E0E000E0E0E000E2DFE100E2DFE100E2DFE100C8C9C70095AC
        9E006CC6910069C7900065C57F0012791E0013751B00C0C0C000C0C0C0000F76
        1B000F771A0051B569006AC892006AC892008DB39D00F4F9F700F8F8F800F8F8
        F800F8F8F800F8F8F800F9F9F900F9F9F900F8F8F800F8F8F800F8F8F800F8F8
        F800F9F9F900F8F9F700F8F9F700F8F8F800F8F8F800F9F9F900D0D0D00094AE
        9E006DC7920067C8900065C481001278200011751B00C0C0C000C0C0C0001276
        1E000E7617004CB2640062C98C0061C68F008CB39E00F4F9F700F8F8F800F8F8
        F800F7F7F700F8F8F800F7F7F700F8F8F800F8F8F800F9F9F900F8F7F900F8F8
        F800F7F7F700F8F9F700F8F8F800F8F8F800FAF8F800F6F8F800E6E8E8009BB5
        A70064C58D0061C88E0062C57F001278200011751B00C0C0C000C0C0C0001876
        22000F771A0047AD600060C889005FC68C008BBEA200E8FEF200ECFDF200ECFD
        F400ECFDF400EDFCF400EDFCF400F4F9F700F8F8F800F8F8F800FAF8F800F8F8
        F800F4F9F700F0FDF500EEFDF500EDFCF400EDFCF400ECFDF400ECFDF400BAE1
        CC0068C68F0061C9880061C47E0011771F0013741D00C0C0C000C0C0C0002779
        30000F771800298F3E005AC1880059C086005DBB85005BAB7C0064B1850066B3
        870067B187006EB38E0076B29000738D7D00F6F9F700F8F8F800F1F1F100DEE0
        E0008A9E92007DB3950074B28E0074B18F0070B38E0067B0880065B286005EB5
        830062C68A0061C98A0047AD60000F771A00196F2100C0C0C000C0C0C0004E8D
        55000F781700107821005AC0860057C1860056BF860056BF860062C98C0068C9
        90006AC7900074C9970080C89D007A978700F4F9F700F8F9F700F1F1F100D0D1
        CF007C92860088C8A4007FCA9E0077C7980073C8940068C68F0065C890005FC7
        8A0060C889005BC187001F8635000E761700347A3B00C0C0C000C0C0C000C0C0
        C00013741D000D771A0061CB890057C1860057C1860059C1840065C98F006AC7
        900077C899007FC99F008CCBA400819A8C00F6F8F800F8F8F800EFEFEF00D0D0
        D0007F9184008FC8A70087C8A10082CA9F0077C7980072CA950065C8900061C8
        8B0060C8890064C98B000D761B000F771800B4DCB900C0C0C000C0C0C000C0C0
        C0002B7430001079180057BC780054BF810057C087005AC0860067C7910072CA
        95007AC79B0087C8A10093C7A90085988F00F6F8F800F9F9F900F0F0F000CED1
        CF008393880093C7A9008AC7A30084C7A0007CC79B0074C8980069C88F0062C8
        8E0062C7890067CB89000E7619001C702200C0C0C000C0C0C000C0C0C000C0C0
        C000B7DDB90013751B000C741F0063CB8A0059C087005BC1870069C7900076CB
        990082CAA0008BC9A5009BCAB000899A9100F6F8F800F9F9F900F0F0F000CED0
        D00083928A0099C9AD0090C9A80087C8A1007FCA9E0074C8980069C88F0062C7
        8F0063CA8D00167C2B0012771B0071A47800C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000307538000D7818002D974A005CC3860063C78D006CC7900078C9
        9A0083CBA1008ECBA700A0CAB10089989000F7F9F900F9F9F900F9F9F900D6D8
        D8008A9991009CC9AE008FC8A70089C8A1007FC99F0076CA9A0069C88F0063C9
        8F0052BB72000D771A001E6F2600C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C00018721F000E761700137B280062CC87006CCA910078C9
        9A0083C69F008FC8A7009DC7B00096AA9E00E4E9E700E4E9E700E5EAE800E3EA
        E700A6B9B0009CC8B1008EC7A8008AC9A2007FCA9E0073CA980062C98C002C96
        49001177180015741D00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C0008EC6930016741D000E77160008751F0063C88A0070CA
        950080CAA0008CC9A5009EC9AE00A8C6B300AFC6B800B2C6B900ADC7B900A8C5
        B500A0C6B00099C8AE008DC9A70082C89F0076CB990064C78900137E2F000C77
        170013761A0050925700C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C0006CA6700016741D000E761700258E3F0062CB
        880060BE87007BC69A0097CCAB009DC8AD00A4C9B500A8C8B500A1C7B1009EC9
        AE0098C9AD008ECAA8007EC89E0063BD880062C986003AA255000E7617001375
        1B002D753300C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00019711E00107819000C76
        1D002A9348005FC8850061BE87006BBA8E007CC29D0085C5A20081C49D0078C2
        98006ABB8E0062BE890062CA89003FA760000C741F000F771A0016731E005A99
        6100C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00049854F001872
        1F00117817000F771A000D751D000F7722001C863300278F3C00288F3A00278F
        3A00147C27000C771B000D771A000F78170012741A00347A3B00C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000DEFB
        E200639B68001C71210012781900107918001078190010791800107918001078
        19001079180011771800177322003E804500C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000A3CBA8006CA372003B8043002D7735002C7935002E78
        36005F99630088B58E00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000}
      Layout = blGlyphTop
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 40
      Width = 184
      Height = 21
      DataField = 'LOTE'
      DataSource = fCompra.DtSrc1
      TabOrder = 0
      OnKeyPress = DBEdit1KeyPress
    end
    object LotSeq: TCheckBox
      Left = 9
      Top = 68
      Width = 82
      Height = 17
      Caption = 'Sequencial?'
      Color = clSilver
      ParentColor = False
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 273
      Top = 11
      Width = 59
      Height = 53
      Caption = 'Cancelar'
      TabOrder = 3
      OnClick = BitBtn1Click
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000BDC3D9009497BC006469
        AE004C55A40047519F004E559900656D9900656F85007D808E00C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0D0E900666BC7002A2EB500040DAE000E24
        C400182ACB001322C6000819C8000213B50009149F00373C9D00444484006B67
        8B00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000A9BBE2003F5AB4001627BC00202CE1002333F6001734
        F2001332ED001935F0001931FC001832F300172FDB001823B9002426A4003331
        910063679000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000B8BDE800344CB0001134D1001533F2001830F800182CF400102F
        ED000E32EB000C30E800102BF3001232F0001138E8001D35EC00222CE1001115
        B400283787005B6E8700C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C0002F3ED0001431E6000C30F200162DF6001727EF001E2DEB002F45
        DA003D50D4004350D600293BE5000D2FE1000B39ED000230ED001034F4001B37
        EE00091FAB0025358A005B618300C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C0007B83E3001323E300102CFD000B2FF5001933D7005364DC00C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C0006A7FED001D39E9000F31F8000F30F6001030
        ED001732E3001223A600353E8600C0C0C000C0C0C000C0C0C000C0C0C000B4BA
        F500353CDA001428FA00112BFC000623DC00859CF500C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000A2ADF3002E36EB001423F300182EF7001734
        F4000F2AF500172CD3002333990065717B00C0C0C000C0C0C000C0C0C000626E
        E1000F2AE6001031F400152BD4007E86F600C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C0007F87E5002834D200212EEF001E29F400212FF4001629
        EE00142EFF001A32F0000815A00067669700C0C0C000C0C0C000D5D5F7003243
        D5000A2BEF001233EE002E3FC800C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000949AE3000F23C5001A35F1000E2CEF001F33E8002E41E8002339
        E6000E2FF900152FF4001C28CC00524F9B00C0C0C000C0C0C000AFB5F300162D
        CB001033F900142DE600505FCB00C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C0008E9CE7001F2FC8001231F600092BF6000B2DE7002C44CE0091A6FF003D55
        D600092DEC000F2FF7001C2EE20027268400C0C0C000C0C0C0008297F700172F
        DC001931FA001421DA006478D700C0C0C000C0C0C000C0C0C000C0C0C0007187
        DE000924C6000F2EF400122CFB001A27EA004146D600C0C0C000C0C0C0007985
        DE000D2DE4000E2DFA001E34EE001A248000C0C0C000C0C0C000637DF6001B32
        DF001A2BF6001B25E400525EC900C0C0C000C0C0C000C0C0C000939FE4001022
        C3001533F000092DF400162BE2004B58DB00C0C0C000C0C0C000C0C0C0007F8B
        DE000D2BE200112DFC002031EE0022277F00C0C0C000C0C0C0007B94F5001428
        D4002030FE001120E700353CBE00C0C0C000C0C0C0009A9DE5002533C2001B2D
        F000162FF7000F2EE9003B4CD000C0C0C000C0C0C000C0C0C000C0C0C0007E8E
        E4000B2BE0001429FB002A32F20043449300C0C0C000C0C0C0009CACF6001E34
        D3000E2CF400122FFC00000FA8008798DF008C90EC001D2BCB00122EE7001936
        FB001626E5003C42D300C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000424E
        CF001030E6001B2EF9002424DE007576B500C0C0C000C0C0C000CDD9F300253D
        CA000B2CF8000B32F900082BD500142FC600222FDE001C2BEE00162FFC000D2B
        DC004A5BDA00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000939CF7002734
        E900102EF0001D2EEF00292BCB009EA4C900C0C0C000C0C0C000C0C0C0005C6D
        E5000C28EF000331F0000933EE00112EED001D2CF7001A29FE001124F1003853
        DE00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0003444D1001326
        F800162FFD001C2BD8004C52C800C0C0C000C0C0C000C0C0C000C0C0C000B2B2
        EF00292DD8001235F3000F2FF600172CF700202CFA001B2AF500162CDE00C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C0008A90F1000E1EBF001331E4000E34
        F300182AEC004353C900B0BEDE00C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C0007B80E6000E24DA00132DF500132DF500182FF100152EEE00041CCF00132C
        9C004554B8006066CE004252BC002030B5001B27CB001530EC001234F7000C2F
        E900293DCC008F9AE300C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C0003F4EE1001126DB001534F3000B31E9001434F500152CEF001C33
        D600212ED5001C21D6001727DD001D2EEE002032FB000D2CF3000E2EEC000A25
        CB007C8AE200C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000677CDA001C32D7001533EE00112BF200152CF7000F2C
        F200182DF6001F2CFA001A2EFA001E2FF6001623E800232AEB003A49D300889C
        E300C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000A8AEF1004758D5001F35CA001831DD000E29
        EC001830EF00172DE400142CE100172CD0003443CF007D88E700B7C0F600C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000B3C8F100718CF5005A6D
        FB003851FA004161F8006481F9008CA4F300BDD2F400C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000}
      Layout = blGlyphTop
    end
  end
end