inherited fTurmaCadastro: TfTurmaCadastro
  Left = 253
  Width = 511
  Caption = 'Cadastro de Turma'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 13
    Top = 52
    Width = 30
    Height = 13
    Caption = 'Turma'
  end
  object Label2: TLabel [1]
    Left = 229
    Top = 52
    Width = 64
    Height = 13
    Caption = 'Hor'#225'rio Inicial'
  end
  object Label3: TLabel [2]
    Left = 306
    Top = 52
    Width = 59
    Height = 13
    Caption = 'Hor'#225'rio Final'
  end
  object Label4: TLabel [3]
    Left = 384
    Top = 52
    Width = 42
    Height = 13
    Caption = 'Situa'#231#227'o'
  end
  object Label5: TLabel [4]
    Left = 208
    Top = 91
    Width = 29
    Height = 13
    Caption = 'Grupo'
  end
  object Label6: TLabel [5]
    Left = 10
    Top = 92
    Width = 53
    Height = 13
    Caption = 'Num. Vaga'
  end
  object Label7: TLabel [6]
    Left = 72
    Top = 91
    Width = 58
    Height = 13
    Caption = 'Dia Semana'
  end
  inherited MMJPanel1: TMMJPanel
    Width = 503
    TabOrder = 6
  end
  inherited MMJPanel2: TMMJPanel
    Width = 503
    TabOrder = 7
    inherited btnGravar: TBitBtn
      Left = 135
    end
    inherited btnIncluir: TBitBtn
      Left = 135
    end
    inherited btnCancelar: TBitBtn
      Left = 258
    end
    inherited btnExcluir: TBitBtn
      Left = 258
    end
    inherited btnProcurar: TBitBtn
      Left = 12
      Visible = False
    end
    inherited btnSair: TBitBtn
      Left = 381
    end
  end
  object DBEdit1: TDBEdit [9]
    Left = 10
    Top = 67
    Width = 209
    Height = 21
    DataField = 'NOMETURMA'
    DataSource = DtSrc
    TabOrder = 0
    OnKeyPress = FormKeyPress
  end
  object DBEdit2: TDBEdit [10]
    Left = 226
    Top = 67
    Width = 71
    Height = 21
    DataField = 'HORARIOINICIAL'
    DataSource = DtSrc
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object DBEdit3: TDBEdit [11]
    Left = 304
    Top = 67
    Width = 71
    Height = 21
    DataField = 'HORARIOFINAL'
    DataSource = DtSrc
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  object JvDBGrid1: TJvDBGrid [12]
    Left = 8
    Top = 136
    Width = 481
    Height = 330
    DataSource = DtSrc
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = JvDBGrid1CellClick
    MultiSelect = True
    AlternateRowColor = cl3DLight
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
        FieldName = 'NOMETURMA'
        Title.Caption = 'Turma'
        Width = 218
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HORARIOINICIAL'
        Title.Caption = 'In'#237'cio'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HORARIOFINAL'
        Title.Caption = 'Final'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Title.Caption = 'Situa'#231#227'o'
        Width = 103
        Visible = True
      end>
  end
  object DBComboBox1: TDBComboBox [13]
    Left = 381
    Top = 67
    Width = 104
    Height = 21
    DataField = 'STATUS'
    DataSource = DtSrc
    ItemHeight = 13
    Items.Strings = (
      'ATIVO'
      'INATIVO'
      'SUSPENSO')
    TabOrder = 3
    OnKeyPress = FormKeyPress
  end
  object JvDBComboEdit1: TJvDBComboEdit [14]
    Left = 208
    Top = 106
    Width = 281
    Height = 21
    DataField = 'GRUPOTURMA'
    DataSource = DtSrc
    TabOrder = 5
    OnKeyPress = FormKeyPress
  end
  object DBEdit4: TDBEdit [15]
    Left = 9
    Top = 106
    Width = 57
    Height = 21
    DataField = 'NUMVAGA'
    DataSource = DtSrc
    TabOrder = 4
    OnKeyPress = FormKeyPress
  end
  object cbDia: TComboBox [16]
    Left = 69
    Top = 106
    Width = 137
    Height = 21
    ItemHeight = 13
    TabOrder = 9
    OnKeyPress = FormKeyPress
  end
  inherited DtSrc: TDataSource
    DataSet = dmAcademia.cdsTurma
    Left = 48
  end
  inherited XPMenu1: TXPMenu
    Left = 80
  end
  inherited PopupMenu1: TPopupMenu
    Left = 112
  end
end
