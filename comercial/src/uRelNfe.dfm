object fRelNfe: TfRelNfe
  Left = 484
  Top = 201
  Width = 383
  Height = 200
  BorderIcons = [biSystemMenu]
  Caption = 'NFe'
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
  object Label5: TLabel
    Left = 104
    Top = 16
    Width = 165
    Height = 13
    Caption = 'Notas Fiscais Emitida no Per'#237'odo : '
  end
  object Label7: TLabel
    Left = 177
    Top = 52
    Width = 6
    Height = 13
    Caption = #224
  end
  object Button1: TButton
    Left = 128
    Top = 104
    Width = 121
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Dta1: TJvDateEdit
    Left = 41
    Top = 49
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Dta2: TJvDateEdit
    Left = 210
    Top = 49
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object VCLReport1: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 278
    Top = 99
  end
end
