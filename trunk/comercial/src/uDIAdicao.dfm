inherited fDIAdicao: TfDIAdicao
  Left = 229
  Top = 224
  Width = 424
  Height = 465
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 89
    Top = 64
    Width = 48
    Height = 13
    Caption = 'N'#186' Adi'#231#227'o'
  end
  object Label4: TLabel [1]
    Left = 171
    Top = 64
    Width = 66
    Height = 13
    Caption = 'N'#186' Sequ'#234'ncia'
  end
  object Label5: TLabel [2]
    Left = 250
    Top = 64
    Width = 75
    Height = 13
    Caption = 'Cod. Fabricante'
  end
  object Label6: TLabel [3]
    Left = 332
    Top = 64
    Width = 73
    Height = 13
    Caption = 'Valor Desconto'
  end
  object Label7: TLabel [4]
    Left = 11
    Top = 64
    Width = 69
    Height = 13
    Caption = 'N'#186' DI/DSI/DA'
  end
  object Label8: TLabel [5]
    Left = 11
    Top = 104
    Width = 131
    Height = 13
    Caption = 'Produtos Notas Fiscais'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited MMJPanel1: TMMJPanel
    Top = 384
    Width = 416
    inherited btnGravar: TBitBtn
      Left = 43
    end
    inherited btnIncluir: TBitBtn
      Left = 43
    end
    inherited btnCancelar: TBitBtn
      Left = 156
    end
    inherited btnExcluir: TBitBtn
      Left = 156
    end
    inherited btnProcurar: TBitBtn
      Left = 10
      Width = 26
      Visible = False
    end
    inherited btnSair: TBitBtn
      Left = 269
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 416
    inherited Label1: TLabel
      Left = 56
      Width = 266
      Caption = 'Cadastro Adi'#231#227'o'
    end
    inherited Label2: TLabel
      Left = 60
      Width = 266
      Caption = 'Cadastro Adi'#231#227'o'
    end
  end
  object DBEdit1: TDBEdit [8]
    Left = 88
    Top = 80
    Width = 76
    Height = 21
    DataField = 'ADIC_NADICAO'
    DataSource = DtSrc
    TabOrder = 2
  end
  object DBEdit2: TDBEdit [9]
    Left = 169
    Top = 80
    Width = 76
    Height = 21
    DataField = 'ADIC_NSEQUEN'
    DataSource = DtSrc
    TabOrder = 3
  end
  object DBEdit3: TDBEdit [10]
    Left = 249
    Top = 80
    Width = 76
    Height = 21
    DataField = 'ADIC_CODFAB'
    DataSource = DtSrc
    TabOrder = 4
  end
  object DBEdit4: TDBEdit [11]
    Left = 330
    Top = 80
    Width = 76
    Height = 21
    DataField = 'ADIC_VDESC'
    DataSource = DtSrc
    TabOrder = 5
  end
  object DBEdit5: TDBEdit [12]
    Left = 8
    Top = 80
    Width = 76
    Height = 21
    DataField = 'ADIC_CODDI'
    DataSource = DtSrc
    ReadOnly = True
    TabOrder = 6
  end
  object DBGrid1: TDBGrid [13]
    Left = 8
    Top = 120
    Width = 401
    Height = 129
    DataSource = dtsrcMov_Det
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'NOTAFISCAL'
        Title.Caption = 'Nota Fiscal'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODPRO'
        Title.Caption = 'Codigo Produto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCPRODUTO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALTOTAL'
        Title.Caption = 'Valor Total'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODFORNECEDOR'
        Title.Caption = 'Cod. Fornecedor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RAZAOSOCIAL'
        Title.Caption = 'Raz'#227'o Fornecedor'
        Visible = True
      end>
  end
  inherited XPMenu1: TXPMenu
    Left = 368
    Top = 0
  end
  inherited DtSrc: TDataSource
    DataSet = cdsAdic
    Left = 96
    Top = 0
  end
  object cdsAdic: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAdic'
    Left = 64
    object cdsAdicADIC_CODDET: TIntegerField
      FieldName = 'ADIC_CODDET'
    end
    object cdsAdicADIC_CODDI: TIntegerField
      FieldName = 'ADIC_CODDI'
    end
    object cdsAdicADIC_NADICAO: TIntegerField
      FieldName = 'ADIC_NADICAO'
      Required = True
    end
    object cdsAdicADIC_NSEQUEN: TIntegerField
      FieldName = 'ADIC_NSEQUEN'
      Required = True
    end
    object cdsAdicADIC_CODFAB: TStringField
      FieldName = 'ADIC_CODFAB'
      Size = 60
    end
    object cdsAdicADIC_VDESC: TIntegerField
      FieldName = 'ADIC_VDESC'
      DisplayFormat = ',##0.00'
    end
    object cdsAdicDESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      Size = 300
    end
  end
  object dspAdic: TDataSetProvider
    DataSet = sdsAdic
    Left = 32
  end
  object sdsAdic: TSQLDataSet
    CommandText = 
      'SELECT ADIC_CODDET, ADIC_CODDI, ADIC_NADICAO, ADIC_NSEQUEN, ADIC' +
      '_CODFAB, ADIC_VDESC, DESCPRODUTO'#13#10'FROM DIADICAO, MOVIMENTODETALH' +
      'E'#13#10'where CODDETALHE =  ADIC_CODDET'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    object sdsAdicADIC_CODDET: TIntegerField
      FieldName = 'ADIC_CODDET'
    end
    object sdsAdicADIC_CODDI: TIntegerField
      FieldName = 'ADIC_CODDI'
    end
    object sdsAdicADIC_NADICAO: TIntegerField
      FieldName = 'ADIC_NADICAO'
      Required = True
    end
    object sdsAdicADIC_NSEQUEN: TIntegerField
      FieldName = 'ADIC_NSEQUEN'
      Required = True
    end
    object sdsAdicADIC_CODFAB: TStringField
      FieldName = 'ADIC_CODFAB'
      Size = 60
    end
    object sdsAdicADIC_VDESC: TIntegerField
      FieldName = 'ADIC_VDESC'
    end
    object sdsAdicDESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      Size = 300
    end
  end
  object cdsMov_Det: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMov_Det'
    Left = 376
    Top = 152
    object cdsMov_DetNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object cdsMov_DetCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object cdsMov_DetDESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      Size = 300
    end
    object cdsMov_DetVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
      DisplayFormat = ',##0.00'
    end
    object cdsMov_DetCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object cdsMov_DetRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object cdsMov_DetCODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
      Required = True
    end
  end
  object dspMov_Det: TDataSetProvider
    DataSet = sdsMov_Det
    Left = 344
    Top = 152
  end
  object dtsrcMov_Det: TDataSource
    DataSet = cdsMov_Det
    Left = 280
    Top = 152
  end
  object sdsMov_Det: TSQLDataSet
    CommandText = 
      'SELECT md.CODDETALHE, nf.NOTAFISCAL, p.CODPRO, md.DESCPRODUTO, m' +
      'd.VALTOTAL, f.CODFORNECEDOR, f.RAZAOSOCIAL'#13#10'From MOVIMENTODETALH' +
      'E md, PRODUTOS p, COMPRA c, NOTAFISCAL nf, FORNECEDOR f'#13#10'where p' +
      '.CODPRODUTO = md.CODPRODUTO '#13#10'and f.CODFORNECEDOR = c.CODFORNECE' +
      'DOR'#13#10'and c.CODMOVIMENTO = md.CODMOVIMENTO '#13#10'and nf.CODVENDA = c.' +
      'CODCOMPRA'#13#10'and UDF_LEFT(md.CFOP, 1) = '#39'3'#39#13#10'and nf.PROTOCOLOENV i' +
      's null'#13#10'and nf.natureza = 20'#13#10'and not exists (select ADIC_CODDET' +
      ' from DIADICAO where ADIC_CODDET = MD.CODDETALHE)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 312
    Top = 152
    object sdsMov_DetNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object sdsMov_DetCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object sdsMov_DetDESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      Size = 300
    end
    object sdsMov_DetVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
    end
    object sdsMov_DetCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object sdsMov_DetRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object sdsMov_DetCODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
      Required = True
    end
  end
end
