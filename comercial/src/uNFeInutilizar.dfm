object fNFeInutilizar: TfNFeInutilizar
  Left = 265
  Top = 215
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Inutiliza'#231#227'o de NF-e'
  ClientHeight = 217
  ClientWidth = 432
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MMJPanel1: TMMJPanel
    Left = 0
    Top = 0
    Width = 432
    Height = 217
    Align = alTop
    TabOrder = 0
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clTeal
    Background.EndColor = clSilver
    Background.FillType = GradUpDown
    object Label1: TLabel
      Left = 24
      Top = 13
      Width = 23
      Height = 13
      Caption = 'Ano'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 21
      Top = 51
      Width = 42
      Height = 13
      Caption = 'Modelo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 21
      Top = 91
      Width = 30
      Height = 13
      Caption = 'S'#233'rie'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 22
      Top = 130
      Width = 82
      Height = 13
      Caption = 'N'#250'mero Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 22
      Top = 170
      Width = 75
      Height = 13
      Caption = 'N'#250'mero Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 224
      Top = 13
      Width = 69
      Height = 13
      Caption = 'Justificativa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object edtAno: TEdit
      Left = 18
      Top = 27
      Width = 193
      Height = 21
      TabOrder = 0
    end
    object edtModelo: TEdit
      Left = 18
      Top = 65
      Width = 193
      Height = 21
      TabOrder = 1
      Text = '55'
    end
    object edtSerie: TEdit
      Left = 18
      Top = 105
      Width = 193
      Height = 21
      TabOrder = 2
    end
    object edtNumIni: TEdit
      Left = 18
      Top = 144
      Width = 193
      Height = 21
      TabOrder = 3
    end
    object edtNumFim: TEdit
      Left = 18
      Top = 182
      Width = 193
      Height = 21
      TabOrder = 4
    end
    object edtJustificativa: TEdit
      Left = 218
      Top = 26
      Width = 193
      Height = 138
      AutoSize = False
      TabOrder = 5
    end
    object btnInutilizar: TButton
      Left = 220
      Top = 171
      Width = 90
      Height = 33
      Caption = 'Inutilizar'
      TabOrder = 6
      OnClick = btnInutilizarClick
    end
    object btnSair: TButton
      Left = 321
      Top = 171
      Width = 90
      Height = 33
      Caption = 'Sair'
      TabOrder = 7
      OnClick = btnSairClick
    end
    object MemoResp: TMemo
      Left = 176
      Top = 2
      Width = 24
      Height = 22
      Align = alCustom
      TabOrder = 8
      Visible = False
    end
  end
end
