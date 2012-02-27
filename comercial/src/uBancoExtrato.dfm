inherited fBancoExtrato: TfBancoExtrato
  Width = 1045
  Caption = 'Concilia'#231#227'o Banc'#225'ria'
  OldCreateOrder = True
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    Width = 1037
    object Label4: TLabel
      Left = 24
      Top = 14
      Width = 65
      Height = 13
      Caption = 'Caixa/Conta :'
      Transparent = True
    end
    object cbConta: TDBLookupComboBox
      Left = 104
      Top = 11
      Width = 253
      Height = 24
      Ctl3D = True
      DataField = 'CAIXA'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'NOME'
      ListSource = ds_conta
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnClick = cbContaClick
      OnKeyPress = FormKeyPress
    end
    object GroupBox1: TGroupBox
      Left = 614
      Top = 4
      Width = 419
      Height = 43
      Caption = 'Per'#237'odo'
      TabOrder = 1
      object Label3: TLabel
        Left = 8
        Top = 16
        Width = 20
        Height = 13
        Caption = 'M'#234's'
      end
      object Label7: TLabel
        Left = 294
        Top = 18
        Width = 6
        Height = 13
        Caption = 'a'
      end
      object cbMes: TComboBox
        Left = 32
        Top = 16
        Width = 137
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        OnChange = cbMesChange
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
      object MaskEdit1: TJvDatePickerEdit
        Left = 182
        Top = 16
        Width = 100
        Height = 21
        AllowNoDate = True
        Checked = True
        TabOrder = 1
      end
      object MaskEdit2: TJvDatePickerEdit
        Left = 313
        Top = 16
        Width = 100
        Height = 21
        AllowNoDate = True
        Checked = True
        TabOrder = 2
      end
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 1037
    inherited btnExcluir: TBitBtn
      Caption = 'Contas'
      Enabled = True
    end
    inherited btnProcurar: TBitBtn
      OnClick = btnProcurarClick
    end
  end
  object JvDBUltimGrid1: TJvDBUltimGrid [2]
    Left = 0
    Top = 51
    Width = 505
    Height = 423
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = JvDBUltimGrid1CellClick
    OnColEnter = JvDBUltimGrid1ColEnter
    OnColExit = JvDBUltimGrid1ColExit
    OnDrawColumnCell = JvDBUltimGrid1DrawColumnCell
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
        FieldName = 'SEL'
        Title.Caption = 'Sel.'
        Width = 12
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONCILIADO'
        Title.Caption = 'Conciliado'
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EXTRATOCOD'
        Title.Caption = 'Lan'#231'amento'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EXTRATODATA'
        Title.Caption = 'Data'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAIXA'
        Title.Caption = 'Caixa'
        Width = 23
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EXTRATODOC'
        Title.Caption = 'Documento'
        Width = 213
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EXTRATOTIPO'
        Title.Caption = 'Tipo'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EXTRATOVALOR'
        Title.Caption = 'Valor'
        Width = 42
        Visible = True
      end>
  end
  object grid2: TJvDBUltimGrid [3]
    Left = 507
    Top = 51
    Width = 529
    Height = 423
    DataSource = dsLanc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = JvDBUltimGrid1CellClick
    OnColEnter = JvDBUltimGrid1ColEnter
    OnColExit = JvDBUltimGrid1ColExit
    OnDrawColumnCell = JvDBUltimGrid1DrawColumnCell
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'DTAPAGTO'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORC'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORD'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTACONTABIL'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAIXA'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODCONTA'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_DOC'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ORDENA'
        Width = 7
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMPENSADO'
        Width = 13
        Visible = True
      end>
  end
  inherited DtSrc: TDataSource
    DataSet = cdsExtrato
  end
  object ds_conta: TDataSource
    DataSet = DM.cds_7_contas
    Left = 416
    Top = 8
  end
  object sdsExtrato: TSQLDataSet
    CommandText = 
      'SELECT * '#13#10'   FROM BANCOEXTRATO '#13#10'WHERE CAIXA = :CAIXA'#13#10'      AN' +
      'D EXTRATODATA BETWEEN :DTA1 AND :DTA2'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CAIXA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA2'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 400
    Top = 48
  end
  object dspExtrato: TDataSetProvider
    DataSet = sdsExtrato
    Left = 432
    Top = 48
  end
  object cdsExtrato: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CAIXA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA2'
        ParamType = ptInput
      end>
    ProviderName = 'dspExtrato'
    AfterOpen = cdsExtratoAfterOpen
    Left = 472
    Top = 48
    object cdsExtratoEXTRATODATA: TDateField
      FieldName = 'EXTRATODATA'
      Required = True
    end
    object cdsExtratoCAIXA: TIntegerField
      FieldName = 'CAIXA'
      Required = True
    end
    object cdsExtratoEXTRATODOC: TStringField
      FieldName = 'EXTRATODOC'
      Size = 100
    end
    object cdsExtratoEXTRATOTIPO: TStringField
      FieldName = 'EXTRATOTIPO'
    end
    object cdsExtratoEXTRATOVALOR: TFloatField
      FieldName = 'EXTRATOVALOR'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsExtratoEXTRATOCOD: TStringField
      FieldName = 'EXTRATOCOD'
      Required = True
    end
    object cdsExtratoSEL: TStringField
      FieldName = 'SEL'
      FixedChar = True
      Size = 1
    end
    object cdsExtratoCONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      FixedChar = True
      Size = 1
    end
  end
  object ImageList1: TImageList
    Left = 458
    Top = 288
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848284008482840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008482
      84003CBA00003CBA000084828400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002C07
      AD00342176000000000000000000000000000000000000000000000000000000
      0000C2C2EC002104860000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003CBA
      00003CBA00003CBA00003CBA0000848284000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002400
      C3003204C800787B8F0000000000000000000000000000000000000000003A1F
      A0001E00A5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848284003CBA
      00003CBA00003CBA00003CBA00003CBA00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007565
      CB002400BE00271286009499A8000000000000000000000000008168DB002A08
      AD00A39ADE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000848284003CBA00003CBA
      000000F055003CBA00003CBA00003CBA00008482840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002600B70038219900BDC3C40000000000370CAF002A06AD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003CBA00003CBA000000F0
      55000000000000F055003CBA00003CBA00008482840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006349C7002500B2003C3387007257D6003107AE00B1A4E2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000F055003CBA00000000
      0000000000000000000000F055003CBA00003CBA000084828400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002200DB002901D40099A2B200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000F055000000
      000000000000000000000000000000F055003CBA00003CBA0000848284000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007E66DF002902D3002C00DF00352E7400909597000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003CBA00003CBA00003CBA00008482
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000002D0CAA002D04B10000000000000000003710AD00310F9E006162
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000F055003CBA00003CBA00003CBA
      0000848284000000000000000000000000000000000000000000000000000000
      00007C67DF002603B5007566C2000000000000000000000000005234B8002F14
      A100464A79000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000F055003CBA00003CBA
      00003CBA00000000000000000000000000000000000000000000000000002C0A
      AF002D04BF00C4C1F3000000000000000000000000000000000000000000B19C
      F7001B0097000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000F055003CBA
      00003CBA00008482840000000000000000000000000000000000846BE3002D00
      D1003D24AA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000F0
      55003CBA000084828400000000000000000000000000000000003D21B900917F
      DE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000F055003CBA000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000F3FFFFFF00000000
      E1FFE7F300000000E0FFE3E700000000C0FFE1C700000000807FF89F00000000
      887FF81F000000009C3FFE3F00000000DE1FFC1F00000000FF0FF98F00000000
      FF07F1C700000000FF87E3E700000000FFC3C7FF00000000FFE3CFFF00000000
      FFF3FFFF00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object sdsLanc: TSQLDataSet
    CommandText = 'select * from SP_mov_caixa_ordem(:DTA1, :DTA2, :CAIXA)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DTA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CAIXA'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 632
    Top = 104
  end
  object dspLanc: TDataSetProvider
    DataSet = sdsLanc
    Left = 664
    Top = 104
  end
  object cdsLanc: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DTA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CAIXA'
        ParamType = ptInput
      end>
    ProviderName = 'dspLanc'
    Left = 696
    Top = 104
    object cdsLancDTAPAGTO: TDateField
      FieldName = 'DTAPAGTO'
    end
    object cdsLancORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
    object cdsLancDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 350
    end
    object cdsLancVALORC: TFloatField
      FieldName = 'VALORC'
    end
    object cdsLancVALORD: TFloatField
      FieldName = 'VALORD'
    end
    object cdsLancVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsLancCONTACONTABIL: TStringField
      FieldName = 'CONTACONTABIL'
      Size = 200
    end
    object cdsLancCAIXA: TStringField
      FieldName = 'CAIXA'
      Size = 60
    end
    object cdsLancCODCONTA: TStringField
      FieldName = 'CODCONTA'
    end
    object cdsLancFORMA: TStringField
      FieldName = 'FORMA'
    end
    object cdsLancN_DOC: TStringField
      FieldName = 'N_DOC'
    end
    object cdsLancORDENA: TIntegerField
      FieldName = 'ORDENA'
    end
    object cdsLancCOMPENSADO: TStringField
      FieldName = 'COMPENSADO'
      Size = 10
    end
  end
  object dsLanc: TDataSource
    DataSet = cdsLanc
    Left = 728
    Top = 104
  end
end
