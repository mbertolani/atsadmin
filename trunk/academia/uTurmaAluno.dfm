inherited fTurmaAluno: TfTurmaAluno
  Width = 527
  Caption = 'Turma/Aluno'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 80
    Top = 56
    Width = 27
    Height = 13
    Caption = 'Aluno'
  end
  object Label2: TLabel [1]
    Left = 23
    Top = 104
    Width = 30
    Height = 13
    Caption = 'Turma'
  end
  inherited MMJPanel1: TMMJPanel
    Width = 519
  end
  inherited MMJPanel2: TMMJPanel
    Width = 519
    inherited btnGravar: TBitBtn
      Left = 143
    end
    inherited btnIncluir: TBitBtn
      Left = 143
    end
    inherited btnCancelar: TBitBtn
      Left = 266
    end
    inherited btnExcluir: TBitBtn
      Left = 266
    end
    inherited btnProcurar: TBitBtn
      Left = 20
      OnClick = btnProcurarClick
    end
    inherited btnSair: TBitBtn
      Left = 389
    end
  end
  object JvDBFindEdit1: TJvDBFindEdit [4]
    Left = 80
    Top = 71
    Width = 68
    Height = 21
    TabOrder = 2
    DataField = 'CODCLIENTE'
    DataSource = dmAcademia.dsAluno
  end
  object cbNomeAluno: TJvDBSearchComboBox [5]
    Left = 152
    Top = 71
    Width = 266
    Height = 21
    DataField = 'ALUNO'
    DataSource = dmAcademia.dsAluno
    ItemHeight = 13
    TabOrder = 3
  end
  object cbNomeTurma: TJvDBSearchComboBox [6]
    Left = 56
    Top = 103
    Width = 409
    Height = 21
    DataField = 'NOMETURMA'
    DataSource = dmAcademia.dsTurma
    ItemHeight = 13
    TabOrder = 4
  end
  object JvDBUltimGrid1: TJvDBUltimGrid [7]
    Left = 32
    Top = 152
    Width = 433
    Height = 305
    DataSource = DtSrc
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    AlternateRowColor = clMenuBar
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
        FieldName = 'CODCLIENTE'
        Title.Caption = 'Cod.'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALUNO'
        Title.Caption = 'Aluno'
        Width = 163
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODTURMA'
        Title.Caption = 'C'#243'd.'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TURMA'
        Title.Caption = 'Turma'
        Width = 164
        Visible = True
      end>
  end
  object dbSeg: TDBCheckBox [8]
    Left = 48
    Top = 132
    Width = 41
    Height = 17
    Caption = 'Seg'
    DataField = 'SEG'
    DataSource = DtSrc
    TabOrder = 6
    ValueChecked = 'T'
    ValueUnchecked = 'F'
    Visible = False
  end
  object dbTer: TDBCheckBox [9]
    Left = 112
    Top = 132
    Width = 41
    Height = 17
    Caption = 'Ter'
    DataField = 'TER'
    DataSource = DtSrc
    TabOrder = 7
    ValueChecked = 'T'
    ValueUnchecked = 'F'
    Visible = False
  end
  object dbQua: TDBCheckBox [10]
    Left = 176
    Top = 132
    Width = 41
    Height = 17
    Caption = 'Qua'
    DataField = 'QUA'
    DataSource = DtSrc
    TabOrder = 8
    ValueChecked = 'T'
    ValueUnchecked = 'F'
    Visible = False
  end
  object dbQui: TDBCheckBox [11]
    Left = 240
    Top = 132
    Width = 41
    Height = 17
    Caption = 'Qui'
    DataField = 'QUI'
    DataSource = DtSrc
    TabOrder = 9
    ValueChecked = 'T'
    ValueUnchecked = 'F'
    Visible = False
  end
  object dbSex: TDBCheckBox [12]
    Left = 304
    Top = 132
    Width = 41
    Height = 17
    Caption = 'Sex'
    DataField = 'SEX'
    DataSource = DtSrc
    TabOrder = 10
    ValueChecked = 'T'
    ValueUnchecked = 'F'
    Visible = False
  end
  object dbSab: TDBCheckBox [13]
    Left = 368
    Top = 132
    Width = 41
    Height = 17
    Caption = 'S'#225'b'
    DataField = 'SAB'
    DataSource = DtSrc
    TabOrder = 11
    ValueChecked = 'T'
    ValueUnchecked = 'F'
    Visible = False
  end
  object dbDom: TDBCheckBox [14]
    Left = 424
    Top = 132
    Width = 41
    Height = 17
    Caption = 'Dom'
    DataField = 'DOM'
    DataSource = DtSrc
    TabOrder = 12
    ValueChecked = 'T'
    ValueUnchecked = 'F'
    Visible = False
  end
  inherited DtSrc: TDataSource
    DataSet = dmAcademia.cdsTurmaAluno
    Left = 320
    Top = 16
  end
  inherited XPMenu1: TXPMenu
    Left = 352
    Top = 16
  end
  inherited PopupMenu1: TPopupMenu
    Left = 384
    Top = 16
  end
  object sdsBusca: TSQLDataSet
    CommandText = 
      'select CODTURMAALUNO, CODCLIENTE, CODTURMA from ACADEMIATURMAALU' +
      'NO where CODTURMA = :pTurma and CODCLIENTE = :pCliente'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pTurma'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCliente'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 424
    Top = 64
  end
end
