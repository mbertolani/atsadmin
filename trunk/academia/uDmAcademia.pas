unit uDmAcademia;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr, Dialogs;

type
  TdmAcademia = class(TDataModule)
    sdsTurma: TSQLDataSet;
    dspTurma: TDataSetProvider;
    sdsFrequencia: TSQLDataSet;
    dspFrequencia: TDataSetProvider;
    cdsFrequencia: TClientDataSet;
    sdsTurmaBusca: TSQLDataSet;
    dspTurmaBusca: TDataSetProvider;
    cdsTurmaBusca: TClientDataSet;
    dsTurmaBusca: TDataSource;
    sdsTurmaAluno: TSQLDataSet;
    dspTurmaAluno: TDataSetProvider;
    cdsTurmaAluno: TClientDataSet;
    dsTurmaAluno: TDataSource;
    sdsTurmaAlunoCODTURMAALUNO: TIntegerField;
    sdsTurmaAlunoCODCLIENTE: TIntegerField;
    sdsTurmaAlunoCODTURMA: TIntegerField;
    sdsTurmaAlunoALUNO: TStringField;
    sdsTurmaAlunoTURMA: TStringField;
    cdsTurmaAlunoCODTURMAALUNO: TIntegerField;
    cdsTurmaAlunoCODCLIENTE: TIntegerField;
    cdsTurmaAlunoCODTURMA: TIntegerField;
    cdsTurmaAlunoALUNO: TStringField;
    cdsTurmaAlunoTURMA: TStringField;
    sdsAluno: TSQLDataSet;
    dspAluno: TDataSetProvider;
    cdsAluno: TClientDataSet;
    sdsAlunoCODCLIENTE: TIntegerField;
    sdsAlunoALUNO: TStringField;
    cdsAlunoCODCLIENTE: TIntegerField;
    cdsAlunoALUNO: TStringField;
    dsAluno: TDataSource;
    dsTurma: TDataSource;
    cdsTurma: TClientDataSet;
    cdsTurmaCODTURMA: TIntegerField;
    cdsTurmaNOMETURMA: TStringField;
    cdsTurmaHORARIOINICIAL: TTimeField;
    cdsTurmaHORARIOFINAL: TTimeField;
    cdsTurmaSTATUS: TStringField;
    sdsTurmaCODTURMA: TIntegerField;
    sdsTurmaNOMETURMA: TStringField;
    sdsTurmaHORARIOINICIAL: TTimeField;
    sdsTurmaHORARIOFINAL: TTimeField;
    sdsTurmaSTATUS: TStringField;
    sdsTurmaBuscaCODTURMAALUNO: TIntegerField;
    sdsTurmaBuscaCODCLIENTE: TIntegerField;
    sdsTurmaBuscaCODTURMA: TIntegerField;
    sdsTurmaBuscaALUNO: TStringField;
    sdsTurmaBuscaTURMA: TStringField;
    cdsTurmaBuscaCODTURMAALUNO: TIntegerField;
    cdsTurmaBuscaCODCLIENTE: TIntegerField;
    cdsTurmaBuscaCODTURMA: TIntegerField;
    cdsTurmaBuscaALUNO: TStringField;
    cdsTurmaBuscaTURMA: TStringField;
    sdsTurmaAlunoSEG: TStringField;
    sdsTurmaAlunoTER: TStringField;
    sdsTurmaAlunoQUA: TStringField;
    sdsTurmaAlunoQUI: TStringField;
    sdsTurmaAlunoSEX: TStringField;
    sdsTurmaAlunoSAB: TStringField;
    sdsTurmaAlunoDOM: TStringField;
    cdsTurmaAlunoSEG: TStringField;
    cdsTurmaAlunoTER: TStringField;
    cdsTurmaAlunoQUA: TStringField;
    cdsTurmaAlunoQUI: TStringField;
    cdsTurmaAlunoSEX: TStringField;
    cdsTurmaAlunoSAB: TStringField;
    cdsTurmaAlunoDOM: TStringField;
    sdsTurmaGRUPOTURMA: TStringField;
    cdsTurmaGRUPOTURMA: TStringField;
    SQLDataSet1: TSQLDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    sdsProcCli: TSQLDataSet;
    IntegerField3: TIntegerField;
    StringField3: TStringField;
    dspProcCli: TDataSetProvider;
    cdsProcCli: TClientDataSet;
    IntegerField4: TIntegerField;
    StringField4: TStringField;
    sdsTurmaNUMVAGA: TSmallintField;
    sdsTurmaDIASEMANA: TSmallintField;
    cdsTurmaNUMVAGA: TSmallintField;
    cdsTurmaDIASEMANA: TSmallintField;
    copiaProcCli: TSQLDataSet;
    IntegerField5: TIntegerField;
    StringField5: TStringField;
    FloatField1: TFloatField;
    SQLTimeStampField1: TSQLTimeStampField;
    sdsProcCliCOD_FAIXA: TIntegerField;
    sdsProcCliVALORPARCELA: TFloatField;
    cdsProcCliCOD_FAIXA: TIntegerField;
    cdsProcCliVALORPARCELA: TFloatField;
    sdsProcCliDESCONTO: TFloatField;
    cdsProcCliDESCONTO: TFloatField;
    sdsProcCliDATAVENCIMENTO: TStringField;
    cdsProcCliDATAVENCIMENTO: TStringField;
    sdsFrequencia1: TSQLDataSet;
    dspFrequencia1: TDataSetProvider;
    cdsFrequencia1: TClientDataSet;
    sdsFrequencia1CODFREQUENCIA: TIntegerField;
    sdsFrequencia1CODCLIENTE: TIntegerField;
    sdsFrequencia1HORARIOENTRADA: TTimeField;
    sdsFrequencia1HORARIOSAIDA: TTimeField;
    sdsFrequencia1NOMECLIENTE: TStringField;
    sdsFrequencia1NOMETURMA: TStringField;
    sdsFrequencia1PRESENTE: TStringField;
    cdsFrequencia1CODFREQUENCIA: TIntegerField;
    cdsFrequencia1CODCLIENTE: TIntegerField;
    cdsFrequencia1HORARIOENTRADA: TTimeField;
    cdsFrequencia1HORARIOSAIDA: TTimeField;
    cdsFrequencia1NOMECLIENTE: TStringField;
    cdsFrequencia1NOMETURMA: TStringField;
    cdsFrequencia1PRESENTE: TStringField;
    sdsFrequenciaCODFREQUENCIA: TIntegerField;
    sdsFrequenciaDATAFREQUENCIA: TDateField;
    sdsFrequenciaCODCLIENTE: TIntegerField;
    sdsFrequenciaCODTURMA: TIntegerField;
    sdsFrequenciaHORARIOENTRADA: TTimeField;
    sdsFrequenciaHORARIOSAIDA: TTimeField;
    sdsFrequenciaPRESENTE: TStringField;
    cdsFrequenciaCODFREQUENCIA: TIntegerField;
    cdsFrequenciaDATAFREQUENCIA: TDateField;
    cdsFrequenciaCODCLIENTE: TIntegerField;
    cdsFrequenciaCODTURMA: TIntegerField;
    cdsFrequenciaHORARIOENTRADA: TTimeField;
    cdsFrequenciaHORARIOSAIDA: TTimeField;
    cdsFrequenciaPRESENTE: TStringField;
    procedure cdsFrequenciaReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmAcademia: TdmAcademia;

implementation

uses UDm;

{$R *.dfm}

procedure TdmAcademia.cdsFrequenciaReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  MessageDlg('Não foi possível gravar o registro. Erro : ' + E.Message , mtWarning,
        [mbOk], 0);
end;

end.
