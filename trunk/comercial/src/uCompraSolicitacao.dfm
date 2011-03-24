inherited fSolicitacaoCompra: TfSolicitacaoCompra
  Width = 596
  Height = 278
  Caption = 'Solicitacao Compra'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 22
    Top = 63
    Width = 79
    Height = 13
    Caption = 'Produto/Material'
  end
  object Label2: TLabel [1]
    Left = 158
    Top = 63
    Width = 48
    Height = 13
    Caption = 'Descricao'
  end
  object Label3: TLabel [2]
    Left = 497
    Top = 64
    Width = 55
    Height = 13
    Caption = 'Quantidade'
  end
  object Label4: TLabel [3]
    Left = 24
    Top = 120
    Width = 83
    Height = 13
    Caption = 'Resp. Aprovacao'
  end
  inherited MMJPanel1: TMMJPanel
    Width = 588
  end
  inherited MMJPanel2: TMMJPanel
    Top = 200
    Width = 588
    inherited btnGravar: TBitBtn
      Left = 183
    end
    inherited btnIncluir: TBitBtn
      Left = 183
    end
    inherited btnCancelar: TBitBtn
      Left = 298
    end
    inherited btnExcluir: TBitBtn
      Left = 298
    end
    inherited btnProcurar: TBitBtn
      Left = 68
      OnClick = btnProcurarClick
    end
    inherited btnSair: TBitBtn
      Left = 421
    end
  end
  object DBEdit1: TDBEdit [6]
    Left = 22
    Top = 79
    Width = 105
    Height = 21
    Color = clWhite
    DataField = 'SOLIC_PRODUTO'
    DataSource = DtSrc
    TabOrder = 2
  end
  object DBEdit2: TDBEdit [7]
    Left = 158
    Top = 79
    Width = 331
    Height = 21
    DataField = 'SOLIC_DESCRICAO'
    DataSource = DtSrc
    TabOrder = 3
  end
  object DBEdit3: TDBEdit [8]
    Left = 494
    Top = 78
    Width = 83
    Height = 21
    DataField = 'SOLIC_QUANTIDADE'
    DataSource = DtSrc
    TabOrder = 4
  end
  object DBEdit4: TDBEdit [9]
    Left = 22
    Top = 135
    Width = 121
    Height = 21
    DataField = 'SOLIC_APROVACAO'
    DataSource = DtSrc
    TabOrder = 5
    OnExit = DBEdit4Exit
  end
  object BitBtn1: TBitBtn [10]
    Left = 126
    Top = 79
    Width = 25
    Height = 25
    Caption = '...'
    TabOrder = 6
    OnClick = BitBtn1Click
  end
  object edRespAprovacao: TEdit [11]
    Left = 160
    Top = 134
    Width = 209
    Height = 21
    TabOrder = 7
  end
  inherited DtSrc: TDataSource
    DataSet = cdsSolic
    Left = 392
  end
  inherited XPMenu1: TXPMenu
    Left = 432
  end
  inherited PopupMenu1: TPopupMenu
    Left = 464
  end
  object sq: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 432
    Top = 104
  end
  object sdsSolic: TSQLDataSet
    CommandText = 'SELECT * FROM COMPRA_SOLIC'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 208
    Top = 56
  end
  object dspSolic: TDataSetProvider
    DataSet = sdsSolic
    Left = 280
    Top = 56
  end
  object cdsSolic: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSolic'
    OnNewRecord = cdsSolicNewRecord
    Left = 352
    Top = 56
    object cdsSolicSOLIC_CODIGO: TIntegerField
      FieldName = 'SOLIC_CODIGO'
      Required = True
    end
    object cdsSolicSOLIC_DATA: TDateField
      FieldName = 'SOLIC_DATA'
    end
    object cdsSolicSOLIC_PRODUTO: TStringField
      FieldName = 'SOLIC_PRODUTO'
      Required = True
      Size = 15
    end
    object cdsSolicSOLIC_QUANTIDADE: TFloatField
      FieldName = 'SOLIC_QUANTIDADE'
      DisplayFormat = '##0.0'
      EditFormat = '##0.0'
    end
    object cdsSolicSOLIC_SOLICITANTE: TStringField
      FieldName = 'SOLIC_SOLICITANTE'
      Size = 30
    end
    object cdsSolicSOLIC_SITUACAO: TStringField
      FieldName = 'SOLIC_SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cdsSolicSOLIC_APROVACAO: TStringField
      FieldName = 'SOLIC_APROVACAO'
      Size = 30
    end
    object cdsSolicSOLIC_DATAAPROV: TDateField
      FieldName = 'SOLIC_DATAAPROV'
    end
    object cdsSolicSOLIC_DESCRICAO: TStringField
      FieldName = 'SOLIC_DESCRICAO'
      Size = 300
    end
    object cdsSolicSOLIC_TIPO: TStringField
      FieldName = 'SOLIC_TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object dsSolic: TDataSource
    DataSet = cdsSolic
    OnStateChange = dsSolicStateChange
    Left = 424
    Top = 56
  end
  object sqBusca: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 168
    Top = 128
  end
end
