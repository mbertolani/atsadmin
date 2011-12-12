inherited fDeclaracaoImportacao: TfDeclaracaoImportacao
  Left = 60
  Top = 136
  Width = 405
  Height = 467
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 8
    Top = 67
    Width = 97
    Height = 13
    Caption = 'N'#250'mero DI/DSI/DA:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel [1]
    Left = 184
    Top = 67
    Width = 68
    Height = 13
    Caption = 'Data Registro:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel [2]
    Left = 8
    Top = 99
    Width = 101
    Height = 13
    Caption = 'Local Desembara'#231'o :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel [3]
    Left = 17
    Top = 131
    Width = 89
    Height = 13
    Caption = 'UF Desembara'#231'o :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel [4]
    Left = 158
    Top = 131
    Width = 95
    Height = 13
    Caption = 'Data Desembara'#231'o:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel [5]
    Left = 48
    Top = 163
    Width = 57
    Height = 13
    Caption = 'Exportador :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  inherited MMJPanel1: TMMJPanel
    Top = 386
    Width = 397
    inherited btnGravar: TBitBtn
      Left = 58
      Width = 95
    end
    inherited btnIncluir: TBitBtn
      Left = 58
      Width = 95
    end
    inherited btnCancelar: TBitBtn
      Left = 163
      Width = 95
    end
    inherited btnExcluir: TBitBtn
      Left = 163
      Width = 95
    end
    inherited btnProcurar: TBitBtn
      Left = 17
      Width = 32
      Visible = False
    end
    inherited btnSair: TBitBtn
      Left = 268
      Width = 95
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 397
    inherited Label1: TLabel
      Left = 18
      Width = 364
      Height = 36
      Caption = 'Documento de Importa'#231#227'o'
      Font.Height = -32
    end
    inherited Label2: TLabel
      Left = 15
      Width = 364
      Height = 36
      Caption = 'Documento de Importa'#231#227'o'
      Font.Height = -32
    end
  end
  object DBEdit1: TDBEdit [8]
    Left = 109
    Top = 63
    Width = 65
    Height = 21
    DataField = 'DI_NUMDI'
    DataSource = DtSrc
    TabOrder = 2
  end
  object DBEdit2: TDBEdit [9]
    Left = 260
    Top = 63
    Width = 65
    Height = 21
    DataField = 'DI_DATA'
    DataSource = DtSrc
    TabOrder = 3
  end
  object DBEdit3: TDBEdit [10]
    Left = 109
    Top = 95
    Width = 215
    Height = 21
    DataField = 'DI_LOCALDESEMB'
    DataSource = DtSrc
    TabOrder = 4
  end
  object DBEdit4: TDBEdit [11]
    Left = 109
    Top = 127
    Width = 44
    Height = 21
    DataField = 'DI_UFDESEMB'
    DataSource = DtSrc
    TabOrder = 5
  end
  object DBEdit5: TDBEdit [12]
    Left = 260
    Top = 127
    Width = 65
    Height = 21
    DataField = 'DI_DATADESEMB'
    DataSource = DtSrc
    TabOrder = 6
  end
  object DBEdit6: TDBEdit [13]
    Left = 109
    Top = 159
    Width = 44
    Height = 21
    DataField = 'DI_CODEXPORTADOR'
    DataSource = DtSrc
    TabOrder = 7
  end
  object Button1: TButton [14]
    Left = 155
    Top = 159
    Width = 21
    Height = 21
    Caption = '...'
    TabOrder = 8
    OnClick = Button1Click
  end
  object DBEdit7: TDBEdit [15]
    Left = 178
    Top = 159
    Width = 146
    Height = 21
    DataField = 'NOMEFORNECEDOR'
    DataSource = DtSrc
    ReadOnly = True
    TabOrder = 9
  end
  object DBGrid1: TDBGrid [16]
    Left = 9
    Top = 185
    Width = 376
    Height = 185
    DataSource = DtSrc
    ReadOnly = True
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DI_NUMDI'
        Title.Caption = 'DI/DSI/DA'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DI_DATA'
        Title.Caption = 'Data Registro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DI_LOCALDESEMB'
        Title.Caption = 'Local Desembara'#231'o'
        Width = 199
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DI_UFDESEMB'
        Title.Caption = 'UF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DI_DATADESEMB'
        Title.Caption = 'Data Desemb.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DI_CODEXPORTADOR'
        Title.Caption = 'Exportador'
        Width = 60
        Visible = True
      end>
  end
  inherited XPMenu1: TXPMenu
    Left = 96
    Top = 0
  end
  inherited DtSrc: TDataSource
    DataSet = cdsDI
    Left = 320
    Top = 0
  end
  object dspDI: TDataSetProvider
    DataSet = sdsDI
    Left = 32
  end
  object cdsDI: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'coddi'
        ParamType = ptInput
      end>
    ProviderName = 'dspDI'
    Left = 64
    object cdsDIDI_CODDI: TIntegerField
      FieldName = 'DI_CODDI'
      Required = True
    end
    object cdsDIDI_NUMDI: TStringField
      FieldName = 'DI_NUMDI'
      Required = True
      Size = 10
    end
    object cdsDIDI_DATA: TDateField
      FieldName = 'DI_DATA'
    end
    object cdsDIDI_LOCALDESEMB: TStringField
      FieldName = 'DI_LOCALDESEMB'
      Size = 60
    end
    object cdsDIDI_UFDESEMB: TStringField
      FieldName = 'DI_UFDESEMB'
      Size = 2
    end
    object cdsDIDI_DATADESEMB: TDateField
      FieldName = 'DI_DATADESEMB'
    end
    object cdsDIDI_CODEXPORTADOR: TStringField
      FieldName = 'DI_CODEXPORTADOR'
      Size = 60
    end
    object cdsDINOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Required = True
      Size = 50
    end
  end
  object sdsDI: TSQLDataSet
    CommandText = 
      'select DI_CODDI, '#13#10'DI_NUMDI, '#13#10'DI_DATA, '#13#10'DI_LOCALDESEMB, '#13#10'DI_U' +
      'FDESEMB, '#13#10'DI_DATADESEMB,'#13#10'DI_CODEXPORTADOR, '#13#10'NOMEFORNECEDOR fr' +
      'om DECLARACAOIMPORTACAO, FORNECEDOR'#13#10'Where CODFORNECEDOR = DI_CO' +
      'DEXPORTADOR'#13#10'and DI_CODDI = :coddi'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'coddi'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    object sdsDIDI_CODDI: TIntegerField
      FieldName = 'DI_CODDI'
      Required = True
    end
    object sdsDIDI_NUMDI: TStringField
      FieldName = 'DI_NUMDI'
      Required = True
      Size = 10
    end
    object sdsDIDI_DATA: TDateField
      FieldName = 'DI_DATA'
    end
    object sdsDIDI_LOCALDESEMB: TStringField
      FieldName = 'DI_LOCALDESEMB'
      Size = 60
    end
    object sdsDIDI_UFDESEMB: TStringField
      FieldName = 'DI_UFDESEMB'
      Size = 2
    end
    object sdsDIDI_DATADESEMB: TDateField
      FieldName = 'DI_DATADESEMB'
    end
    object sdsDIDI_CODEXPORTADOR: TStringField
      FieldName = 'DI_CODEXPORTADOR'
      Size = 60
    end
    object sdsDINOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Required = True
      Size = 50
    end
  end
end
