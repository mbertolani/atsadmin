object fEstoqueCorrige: TfEstoqueCorrige
  Left = 235
  Top = 117
  Width = 397
  Height = 270
  Caption = 'Corrige Estoque'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 8
    Width = 278
    Height = 13
    Caption = 'Atualiza no Cadastro Produto o Estoque atual de cada item'
  end
  object Label2: TLabel
    Left = 24
    Top = 40
    Width = 138
    Height = 13
    Caption = 'C'#243'digo Produto (CodProduto)'
  end
  object Label3: TLabel
    Left = 192
    Top = 40
    Width = 159
    Height = 13
    Caption = 'C'#243'digo Produto (CodProduto)and '
  end
  object Label4: TLabel
    Left = 176
    Top = 56
    Width = 6
    Height = 13
    Caption = #224
  end
  object Label5: TLabel
    Left = 120
    Top = 79
    Width = 138
    Height = 13
    Caption = 'Corrige estoque no per'#237'odo : '
  end
  object Label7: TLabel
    Left = 177
    Top = 99
    Width = 6
    Height = 13
    Caption = #224
  end
  object Label6: TLabel
    Left = 16
    Top = 120
    Width = 3
    Height = 13
  end
  object Edit1: TEdit
    Left = 16
    Top = 56
    Width = 153
    Height = 21
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 192
    Top = 56
    Width = 161
    Height = 21
    TabOrder = 1
    OnKeyPress = Edit1KeyPress
  end
  object Button1: TButton
    Left = 33
    Top = 192
    Width = 121
    Height = 25
    Caption = 'Executar corre'#231#227'o'
    TabOrder = 4
    OnClick = Button1Click
  end
  object JvDateEdit1: TJvDateEdit
    Left = 16
    Top = 96
    Width = 153
    Height = 21
    TabOrder = 2
    OnKeyPress = Edit1KeyPress
  end
  object JvDateEdit2: TJvDateEdit
    Left = 194
    Top = 96
    Width = 159
    Height = 21
    TabOrder = 3
    OnKeyPress = Edit1KeyPress
  end
  object Button2: TButton
    Left = 215
    Top = 192
    Width = 121
    Height = 25
    Caption = 'Executar EstoqueMes'
    TabOrder = 5
    OnClick = Button2Click
  end
  object JvProgressBar1: TJvProgressBar
    Left = 16
    Top = 144
    Width = 337
    Height = 16
    TabOrder = 6
  end
  object prog2: TJvProgressBar
    Left = 16
    Top = 166
    Width = 337
    Height = 16
    TabOrder = 7
  end
  object sqlQ: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 352
    Top = 72
  end
  object SQLDataSet1: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 24
    Top = 168
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Options = [poAllowCommandText]
    Left = 56
    Top = 168
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 88
    Top = 168
  end
  object sdsA: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 184
    Top = 160
  end
  object dspA: TDataSetProvider
    DataSet = sdsA
    Options = [poAllowCommandText]
    Left = 216
    Top = 160
  end
  object cdsA: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspA'
    Left = 248
    Top = 160
  end
  object SQLDataSet2: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 232
    Top = 192
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = SQLDataSet2
    Options = [poAllowCommandText]
    Left = 264
    Top = 192
  end
  object cdsB: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider2'
    Left = 296
    Top = 192
  end
end
