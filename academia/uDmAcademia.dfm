object dmAcademia: TdmAcademia
  OldCreateOrder = False
  Left = 192
  Top = 107
  Height = 341
  Width = 506
  object sdsTurma: TSQLDataSet
    CommandText = 
      'select * from academiaTurma  where (codTurma = :pTurma) or (:pTu' +
      'rma = 0)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pTurma'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pTurma'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 16
    Top = 4
    object sdsTurmaCODTURMA: TIntegerField
      FieldName = 'CODTURMA'
      Required = True
    end
    object sdsTurmaNOMETURMA: TStringField
      FieldName = 'NOMETURMA'
      Size = 80
    end
    object sdsTurmaHORARIOINICIAL: TTimeField
      FieldName = 'HORARIOINICIAL'
    end
    object sdsTurmaHORARIOFINAL: TTimeField
      FieldName = 'HORARIOFINAL'
    end
    object sdsTurmaSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 15
    end
    object sdsTurmaGRUPOTURMA: TStringField
      FieldName = 'GRUPOTURMA'
      Size = 80
    end
    object sdsTurmaNUMVAGA: TSmallintField
      FieldName = 'NUMVAGA'
    end
    object sdsTurmaDIASEMANA: TSmallintField
      FieldName = 'DIASEMANA'
    end
  end
  object dspTurma: TDataSetProvider
    DataSet = sdsTurma
    Left = 16
    Top = 48
  end
  object sdsFrequencia: TSQLDataSet
    CommandText = 
      'select fre.CODFREQUENCIA, fre.DATAFREQUENCIA, fre.CODCLIENTE,'#13#10'f' +
      're.CODTURMA, fre.HORARIOENTRADA, fre.HORARIOSAIDA , fre.PRESENTE' +
      #13#10'from ACADEMIAFREQUENCIA fre '#13#10'where fre.CODFREQUENCIA = :pCod'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCod'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 87
    Top = 2
    object sdsFrequenciaCODFREQUENCIA: TIntegerField
      FieldName = 'CODFREQUENCIA'
      Required = True
    end
    object sdsFrequenciaDATAFREQUENCIA: TDateField
      FieldName = 'DATAFREQUENCIA'
    end
    object sdsFrequenciaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object sdsFrequenciaCODTURMA: TIntegerField
      FieldName = 'CODTURMA'
    end
    object sdsFrequenciaHORARIOENTRADA: TTimeField
      FieldName = 'HORARIOENTRADA'
    end
    object sdsFrequenciaHORARIOSAIDA: TTimeField
      FieldName = 'HORARIOSAIDA'
    end
    object sdsFrequenciaPRESENTE: TStringField
      FieldName = 'PRESENTE'
      FixedChar = True
      Size = 1
    end
  end
  object dspFrequencia: TDataSetProvider
    DataSet = sdsFrequencia
    Options = [poAllowCommandText]
    Left = 86
    Top = 46
  end
  object cdsFrequencia: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCod'
        ParamType = ptInput
      end>
    ProviderName = 'dspFrequencia'
    OnReconcileError = cdsFrequenciaReconcileError
    Left = 85
    Top = 91
    object cdsFrequenciaCODFREQUENCIA: TIntegerField
      FieldName = 'CODFREQUENCIA'
      Required = True
    end
    object cdsFrequenciaDATAFREQUENCIA: TDateField
      FieldName = 'DATAFREQUENCIA'
    end
    object cdsFrequenciaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsFrequenciaCODTURMA: TIntegerField
      FieldName = 'CODTURMA'
    end
    object cdsFrequenciaHORARIOENTRADA: TTimeField
      FieldName = 'HORARIOENTRADA'
    end
    object cdsFrequenciaHORARIOSAIDA: TTimeField
      FieldName = 'HORARIOSAIDA'
    end
    object cdsFrequenciaPRESENTE: TStringField
      FieldName = 'PRESENTE'
      FixedChar = True
      Size = 1
    end
  end
  object sdsTurmaBusca: TSQLDataSet
    CommandText = 
      'select ata.CODTURMAALUNO, ata.CODCLIENTE, ata.CODTURMA '#13#10', a.NOM' +
      'ECLIENTE as ALUNO, t.NOMETURMA as TURMA'#13#10'from ACADEMIATURMAALUNO' +
      ' ata '#13#10'inner join ACADEMIATURMA t on t.CODTURMA = ata.CODTURMA '#13 +
      #10'inner join CLIENTES a on a.CODCLIENTE = ata.CODCLIENTE '#13#10'where ' +
      '((ata.CODTURMA = :pTurma) or (:pTurma = 0)) and ((ata.CODCLIENTE' +
      ' = :pAluno) or (:pAluno = 0))  '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pTurma'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pTurma'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pAluno'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pAluno'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 169
    Top = 2
    object sdsTurmaBuscaCODTURMAALUNO: TIntegerField
      FieldName = 'CODTURMAALUNO'
      Required = True
    end
    object sdsTurmaBuscaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object sdsTurmaBuscaCODTURMA: TIntegerField
      FieldName = 'CODTURMA'
    end
    object sdsTurmaBuscaALUNO: TStringField
      FieldName = 'ALUNO'
      Required = True
      Size = 50
    end
    object sdsTurmaBuscaTURMA: TStringField
      FieldName = 'TURMA'
      Size = 80
    end
  end
  object dspTurmaBusca: TDataSetProvider
    DataSet = sdsTurmaBusca
    Left = 169
    Top = 46
  end
  object cdsTurmaBusca: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pTurma'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pTurma'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pAluno'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pAluno'
        ParamType = ptInput
      end>
    ProviderName = 'dspTurmaBusca'
    Left = 168
    Top = 91
    object cdsTurmaBuscaCODTURMAALUNO: TIntegerField
      FieldName = 'CODTURMAALUNO'
      Required = True
    end
    object cdsTurmaBuscaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsTurmaBuscaCODTURMA: TIntegerField
      FieldName = 'CODTURMA'
    end
    object cdsTurmaBuscaALUNO: TStringField
      FieldName = 'ALUNO'
      Required = True
      Size = 50
    end
    object cdsTurmaBuscaTURMA: TStringField
      FieldName = 'TURMA'
      Size = 80
    end
  end
  object dsTurmaBusca: TDataSource
    DataSet = cdsTurmaBusca
    Left = 167
    Top = 137
  end
  object sdsTurmaAluno: TSQLDataSet
    CommandText = 
      'select ata.CODTURMAALUNO, ata.CODCLIENTE, ata.CODTURMA '#13#10', a.NOM' +
      'ECLIENTE as ALUNO, t.NOMETURMA as TURMA, '#13#10'ata.SEG, ata.TER, ata' +
      '.QUA, ata.QUI, ata.SEX, ata.SAB, ata.DOM'#13#10'from ACADEMIATURMAALUN' +
      'O ata '#13#10'inner join ACADEMIATURMA t on t.CODTURMA = ata.CODTURMA ' +
      #13#10'inner join CLIENTES a on a.CODCLIENTE = ata.CODCLIENTE '#13#10'where' +
      ' (a.STATUS = 1) and ((ata.CODTURMA = :pTurma) or (:pTurma = 0)) ' +
      'and ((ata.CODCLIENTE = :pAluno) or (:pAluno = 0))  '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pTurma'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pTurma'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pAluno'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pAluno'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 251
    Top = 2
    object sdsTurmaAlunoCODTURMAALUNO: TIntegerField
      FieldName = 'CODTURMAALUNO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsTurmaAlunoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsTurmaAlunoCODTURMA: TIntegerField
      FieldName = 'CODTURMA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsTurmaAlunoALUNO: TStringField
      FieldName = 'ALUNO'
      ProviderFlags = []
      Required = True
      Size = 50
    end
    object sdsTurmaAlunoTURMA: TStringField
      FieldName = 'TURMA'
      ProviderFlags = []
      Size = 80
    end
    object sdsTurmaAlunoSEG: TStringField
      FieldName = 'SEG'
      FixedChar = True
      Size = 1
    end
    object sdsTurmaAlunoTER: TStringField
      FieldName = 'TER'
      FixedChar = True
      Size = 1
    end
    object sdsTurmaAlunoQUA: TStringField
      FieldName = 'QUA'
      FixedChar = True
      Size = 1
    end
    object sdsTurmaAlunoQUI: TStringField
      FieldName = 'QUI'
      FixedChar = True
      Size = 1
    end
    object sdsTurmaAlunoSEX: TStringField
      FieldName = 'SEX'
      FixedChar = True
      Size = 1
    end
    object sdsTurmaAlunoSAB: TStringField
      FieldName = 'SAB'
      FixedChar = True
      Size = 1
    end
    object sdsTurmaAlunoDOM: TStringField
      FieldName = 'DOM'
      FixedChar = True
      Size = 1
    end
  end
  object dspTurmaAluno: TDataSetProvider
    DataSet = sdsTurmaAluno
    Left = 252
    Top = 46
  end
  object cdsTurmaAluno: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pTurma'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pTurma'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pAluno'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pAluno'
        ParamType = ptInput
      end>
    ProviderName = 'dspTurmaAluno'
    Left = 250
    Top = 92
    object cdsTurmaAlunoCODTURMAALUNO: TIntegerField
      FieldName = 'CODTURMAALUNO'
      Required = True
    end
    object cdsTurmaAlunoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsTurmaAlunoCODTURMA: TIntegerField
      FieldName = 'CODTURMA'
    end
    object cdsTurmaAlunoALUNO: TStringField
      FieldName = 'ALUNO'
      Required = True
      Size = 50
    end
    object cdsTurmaAlunoTURMA: TStringField
      FieldName = 'TURMA'
      Size = 80
    end
    object cdsTurmaAlunoSEG: TStringField
      FieldName = 'SEG'
      FixedChar = True
      Size = 1
    end
    object cdsTurmaAlunoTER: TStringField
      FieldName = 'TER'
      FixedChar = True
      Size = 1
    end
    object cdsTurmaAlunoQUA: TStringField
      FieldName = 'QUA'
      FixedChar = True
      Size = 1
    end
    object cdsTurmaAlunoQUI: TStringField
      FieldName = 'QUI'
      FixedChar = True
      Size = 1
    end
    object cdsTurmaAlunoSEX: TStringField
      FieldName = 'SEX'
      FixedChar = True
      Size = 1
    end
    object cdsTurmaAlunoSAB: TStringField
      FieldName = 'SAB'
      FixedChar = True
      Size = 1
    end
    object cdsTurmaAlunoDOM: TStringField
      FieldName = 'DOM'
      FixedChar = True
      Size = 1
    end
  end
  object dsTurmaAluno: TDataSource
    DataSet = cdsTurmaAluno
    Left = 249
    Top = 137
  end
  object sdsAluno: TSQLDataSet
    CommandText = 
      'select alun.NOMECLIENTE as ALUNO ,  alun.CODCLIENTE'#13#10'from CLIENT' +
      'ES alun  Where alun.STATUS = 1 '#13#10'ORDER BY UDF_COLLATEBR(alun.NOM' +
      'ECLIENTE)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 328
    Top = 2
    object sdsAlunoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object sdsAlunoALUNO: TStringField
      FieldName = 'ALUNO'
      Required = True
      Size = 50
    end
  end
  object dspAluno: TDataSetProvider
    DataSet = sdsAluno
    Left = 328
    Top = 46
  end
  object cdsAluno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAluno'
    Left = 328
    Top = 92
    object cdsAlunoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object cdsAlunoALUNO: TStringField
      FieldName = 'ALUNO'
      Required = True
      Size = 50
    end
  end
  object dsAluno: TDataSource
    DataSet = cdsAluno
    Left = 328
    Top = 136
  end
  object dsTurma: TDataSource
    DataSet = cdsTurma
    Left = 24
    Top = 152
  end
  object cdsTurma: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pTurma'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pTurma'
        ParamType = ptInput
      end>
    ProviderName = 'dspTurma'
    Left = 16
    Top = 100
    object cdsTurmaCODTURMA: TIntegerField
      FieldName = 'CODTURMA'
      Required = True
    end
    object cdsTurmaNOMETURMA: TStringField
      FieldName = 'NOMETURMA'
      Size = 80
    end
    object cdsTurmaHORARIOINICIAL: TTimeField
      FieldName = 'HORARIOINICIAL'
    end
    object cdsTurmaHORARIOFINAL: TTimeField
      FieldName = 'HORARIOFINAL'
    end
    object cdsTurmaSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 15
    end
    object cdsTurmaGRUPOTURMA: TStringField
      FieldName = 'GRUPOTURMA'
      Size = 80
    end
    object cdsTurmaNUMVAGA: TSmallintField
      FieldName = 'NUMVAGA'
    end
    object cdsTurmaDIASEMANA: TSmallintField
      FieldName = 'DIASEMANA'
    end
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 
      'select aluno.CODCLIENTE, aluno.NOMECLIENTE as ALUNO '#13#10'from CLIEN' +
      'TES aluno  Where aluno.STATUS = 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 384
    Top = 210
    object IntegerField1: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'ALUNO'
      Required = True
      Size = 50
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Left = 384
    Top = 230
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAluno'
    Left = 384
    Top = 252
    object IntegerField2: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object StringField2: TStringField
      FieldName = 'ALUNO'
      Required = True
      Size = 50
    end
  end
  object sdsProcCli: TSQLDataSet
    CommandText = 
      'select aluno.CODCLIENTE, aluno.NOMECLIENTE as ALUNO , aluno.PRAZ' +
      'ORECEBIMENTO || '#39'/'#39' ||  udf_month(current_date) || '#39'/'#39' || udf_ye' +
      'ar(current_date) as DATAVENCIMENTO,  aluno.COD_FAIXA, fe.VALORPA' +
      'RCELA, aluno.DESCONTO '#13#10' from CLIENTES aluno  '#13#10'inner join FAIXA' +
      '_ETARIA fe on fe.CODFAIXA = aluno.COD_FAIXA '#13#10' Where aluno.STATU' +
      'S = 1 and aluno.NOMECLIENTE like :pNome order  by aluno.NOMECLIE' +
      'NTE'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pNome'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 408
    Top = 2
    object IntegerField3: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object StringField3: TStringField
      FieldName = 'ALUNO'
      Required = True
      Size = 50
    end
    object sdsProcCliCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
    end
    object sdsProcCliVALORPARCELA: TFloatField
      FieldName = 'VALORPARCELA'
    end
    object sdsProcCliDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object sdsProcCliDATAVENCIMENTO: TStringField
      FieldName = 'DATAVENCIMENTO'
      ReadOnly = True
    end
  end
  object dspProcCli: TDataSetProvider
    DataSet = sdsProcCli
    Left = 408
    Top = 46
  end
  object cdsProcCli: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pNome'
        ParamType = ptInput
      end>
    ProviderName = 'dspProcCli'
    Left = 408
    Top = 92
    object IntegerField4: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object StringField4: TStringField
      FieldName = 'ALUNO'
      Required = True
      Size = 50
    end
    object cdsProcCliCOD_FAIXA: TIntegerField
      FieldName = 'COD_FAIXA'
    end
    object cdsProcCliVALORPARCELA: TFloatField
      FieldName = 'VALORPARCELA'
    end
    object cdsProcCliDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object cdsProcCliDATAVENCIMENTO: TStringField
      FieldName = 'DATAVENCIMENTO'
      ReadOnly = True
    end
  end
  object copiaProcCli: TSQLDataSet
    CommandText = 
      'select aluno.CODCLIENTE, aluno.NOMECLIENTE as ALUNO , faixa.VALO' +
      'R_PLANO, udf_encDate(udf_year(current_date), udf_month(current_d' +
      'ate),aluno.PRAZORECEBIMENTO) as dataVencimento'#13#10'from CLIENTES al' +
      'uno  '#13#10' inner join FAIXA_ETARIA faixa on faixa.CODFAIXA = aluno.' +
      'COD_FAIXA '#13#10'Where aluno.STATUS = 1 and aluno.NOMECLIENTE like :p' +
      'Nome order by aluno.NOMECLIENTE'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pNome'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 32
    Top = 258
    object IntegerField5: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object StringField5: TStringField
      FieldName = 'ALUNO'
      Required = True
      Size = 50
    end
    object FloatField1: TFloatField
      FieldName = 'VALOR_PLANO'
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'DATAVENCIMENTO'
      ReadOnly = True
    end
  end
  object sdsFrequencia1: TSQLDataSet
    CommandText = 'select *'#13#10'from ACADEMIAFREQUENCIASP(:pTurma, :pData)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pTurma'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'pData'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 95
    Top = 138
    object sdsFrequencia1CODFREQUENCIA: TIntegerField
      FieldName = 'CODFREQUENCIA'
    end
    object sdsFrequencia1CODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object sdsFrequencia1HORARIOENTRADA: TTimeField
      FieldName = 'HORARIOENTRADA'
    end
    object sdsFrequencia1HORARIOSAIDA: TTimeField
      FieldName = 'HORARIOSAIDA'
    end
    object sdsFrequencia1NOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 80
    end
    object sdsFrequencia1NOMETURMA: TStringField
      FieldName = 'NOMETURMA'
      Size = 80
    end
    object sdsFrequencia1PRESENTE: TStringField
      FieldName = 'PRESENTE'
      FixedChar = True
      Size = 1
    end
  end
  object dspFrequencia1: TDataSetProvider
    DataSet = sdsFrequencia1
    Options = [poAllowCommandText]
    Left = 94
    Top = 182
  end
  object cdsFrequencia1: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pTurma'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'pData'
        ParamType = ptInput
      end>
    ProviderName = 'dspFrequencia1'
    OnReconcileError = cdsFrequenciaReconcileError
    Left = 93
    Top = 227
    object cdsFrequencia1CODFREQUENCIA: TIntegerField
      FieldName = 'CODFREQUENCIA'
    end
    object cdsFrequencia1CODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsFrequencia1HORARIOENTRADA: TTimeField
      FieldName = 'HORARIOENTRADA'
    end
    object cdsFrequencia1HORARIOSAIDA: TTimeField
      FieldName = 'HORARIOSAIDA'
    end
    object cdsFrequencia1NOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 80
    end
    object cdsFrequencia1NOMETURMA: TStringField
      FieldName = 'NOMETURMA'
      Size = 80
    end
    object cdsFrequencia1PRESENTE: TStringField
      FieldName = 'PRESENTE'
      FixedChar = True
      Size = 1
    end
  end
end
