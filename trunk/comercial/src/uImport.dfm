object fImport: TfImport
  Left = 190
  Top = 116
  Width = 898
  Height = 584
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 223
    Width = 882
    Height = 282
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    Lines.Strings = (
      
        'Sequencial,C'#243'digo,Descri'#231#227'o do Produto,Qutde,UN,R$ Compra,R$ Ven' +
        'da,Marca,Grupo,SubGrupo,Local Estoque,ICMS')
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 882
    Height = 223
    Align = alTop
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Sequencial'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'C'#243'digo'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descri'#231#227'o do Produto'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qutde'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UN'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'R$ Compra'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'R$ Venda'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Marca'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Grupo'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SubGrupo'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Local Estoque'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS'
        Width = 70
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 505
    Width = 882
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 104
      Top = 11
      Width = 75
      Height = 25
      Caption = 'BitBtn1'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object JvCsvDataSet1: TJvCsvDataSet
    FieldDefs = <
      item
        Name = 'Sequencial'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'C'#243'digo'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'Descri'#231#227'o do Produto'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'Qutde'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'UN'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'R$ Compra'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'R$ Venda'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'Marca'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'Grupo'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'SubGrupo'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'Local Estoque'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'ICMS'
        DataType = ftString
        Size = 80
      end>
    FileName = 'PhoneList.csv'
    Changed = False
    CsvFieldDef = 
      'Sequencial,C'#243'digo,Descri'#231#227'o do Produto,Qutde,UN,R$ Compra,R$ Ven' +
      'da,Marca,Grupo,SubGrupo,Local Estoque,ICMS'
    CsvUniqueKeys = False
    ExtendedHeaderInfo = False
    CaseInsensitive = False
    AutoBackupCount = 0
    StoreDefs = True
    Left = 368
    Top = 184
    object JvCsvDataSet1Sequencial: TStringField
      FieldName = 'Sequencial'
      Size = 80
    end
    object JvCsvDataSet1Cdigo: TStringField
      FieldName = 'C'#243'digo'
      Size = 80
    end
    object JvCsvDataSet1DescriodoProduto: TStringField
      FieldName = 'Descri'#231#227'o do Produto'
      Size = 80
    end
    object JvCsvDataSet1Qutde: TStringField
      FieldName = 'Qutde'
      Size = 80
    end
    object JvCsvDataSet1UN: TStringField
      FieldName = 'UN'
      Size = 80
    end
    object JvCsvDataSet1RCompra: TStringField
      FieldName = 'R$ Compra'
      Size = 80
    end
    object JvCsvDataSet1RVenda: TStringField
      FieldName = 'R$ Venda'
      Size = 80
    end
    object JvCsvDataSet1Marca: TStringField
      FieldName = 'Marca'
      Size = 80
    end
    object JvCsvDataSet1Grupo: TStringField
      FieldName = 'Grupo'
      Size = 80
    end
    object JvCsvDataSet1SubGrupo: TStringField
      FieldName = 'SubGrupo'
      Size = 80
    end
    object JvCsvDataSet1LocalEstoque: TStringField
      FieldName = 'Local Estoque'
      Size = 80
    end
    object JvCsvDataSet1ICMS: TStringField
      FieldName = 'ICMS'
      Size = 80
    end
  end
  object DataSource1: TDataSource
    DataSet = JvCsvDataSet1
    Left = 296
    Top = 184
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'csv'
    Filter = 'CSV files (*.csv)|*.csv|all files (*.*)|*.*'
    Left = 200
    Top = 216
  end
end
