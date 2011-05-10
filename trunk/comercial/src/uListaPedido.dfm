object fListaPedido: TfListaPedido
  Left = 439
  Top = 337
  Width = 351
  Height = 374
  Caption = 'Lista de Pedidos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 16
    Top = 16
    Width = 281
    Height = 321
    DataSource = dsPedido
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        Visible = True
      end>
  end
  object dsPedido: TDataSource
    Left = 48
    Top = 8
  end
end
