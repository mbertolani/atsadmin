unit uFreqRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, StdCtrls, Buttons, SqlExpr, JvExStdCtrls,
  JvCombobox, JvDBSearchComboBox, Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvDBFindEdit, rpcompobase, rpvclreport;

type
  TfFreqRel = class(TForm)
    Label1: TLabel;
    JvDBFindEdit1: TJvDBFindEdit;
    cbNomeAluno: TJvDBSearchComboBox;
    sdsBusca: TSQLDataSet;
    Label2: TLabel;
    cbNomeTurma: TJvDBSearchComboBox;
    BitBtn4: TBitBtn;
    DtSrc: TDataSource;
    VCLReport1: TVCLReport;
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFreqRel: TfFreqRel;

implementation

uses uDmAcademia, UDm;

{$R *.dfm}

procedure TfFreqRel.FormShow(Sender: TObject);
begin
  if (dmAcademia.cdsTurma.Active) then
    dmAcademia.cdsTurma.Close;
  dmAcademia.cdsTurma.Params.ParamByName('pTurma').AsInteger := 0;
  dmAcademia.cdsTurma.Open;
  if (not dmAcademia.cdsAluno.Active) then
    dmAcademia.cdsAluno.Open;
  cbNomeAluno.Text := '';
  cbNomeTurma.Text := ''; 
end;

procedure TfFreqRel.BitBtn4Click(Sender: TObject);
begin
  VCLReport1.FileName := str_relatorio + 'alunofrequencia.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Title := VCLReport1.FileName;
  VCLReport1.Report.Params.ParamByName('PCLI').Value := 0;
  if (cbNomeAluno.Text <> '') then
    VCLReport1.Report.Params.ParamByName('PCLI').Value := dmAcademia.cdsAlunoCODCLIENTE.AsInteger;
  VCLReport1.Report.Params.ParamByName('PTURMA').Value := 0;
  if (cbNomeTurma.Text <> '') then
    VCLReport1.Report.Params.ParamByName('PTURMA').Value := dmAcademia.cdsTurmaCODTURMA.AsInteger;
  VCLReport1.Execute;
end;

end.
