unit uTurmaAluno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid,
  JvExStdCtrls, JvCombobox, JvDBSearchComboBox, Mask, JvExMask, JvToolEdit,
  JvMaskEdit, JvDBFindEdit, FMTBcd, SqlExpr, DBCtrls;

type
  TfTurmaAluno = class(TfPai_new)
    Label1: TLabel;
    JvDBFindEdit1: TJvDBFindEdit;
    cbNomeAluno: TJvDBSearchComboBox;
    Label2: TLabel;
    cbNomeTurma: TJvDBSearchComboBox;
    JvDBUltimGrid1: TJvDBUltimGrid;
    sdsBusca: TSQLDataSet;
    dbSeg: TDBCheckBox;
    dbTer: TDBCheckBox;
    dbQua: TDBCheckBox;
    dbQui: TDBCheckBox;
    dbSex: TDBCheckBox;
    dbSab: TDBCheckBox;
    dbDom: TDBCheckBox;
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTurmaAluno: TfTurmaAluno;

implementation

uses uDmAcademia, uUtils, UDm;

{$R *.dfm}

procedure TfTurmaAluno.FormShow(Sender: TObject);
begin
  inherited;
  if (dmAcademia.cdsTurma.Active) then
    dmAcademia.cdsTurma.Close;
  dmAcademia.cdsTurma.Params.ParamByName('pTurma').AsInteger := 0;
  dmAcademia.cdsTurma.Open;
  if (not dmAcademia.cdsAluno.Active) then
    dmAcademia.cdsAluno.Open;

end;

procedure TfTurmaAluno.btnGravarClick(Sender: TObject);
var t: TUtils;
begin
  if (sdsBusca.Active) then
    sdsBusca.Close;
  sdsBusca.Params.ParamByName('pTurma').AsInteger := dmacademia.cdsTurmaCODTURMA.AsInteger;
  sdsBusca.Params.ParamByName('pCliente').AsInteger := dmAcademia.cdsAlunoCODCLIENTE.AsInteger;
  sdsBusca.Open;
  if (sdsBusca.IsEmpty) then
  begin
    t := TUtils.Create;
    dmAcademia.cdsTurmaAlunoCODTURMAALUNO.AsInteger := StrToInt(t.buscaChave('GEN_ACADEMIATURMAALUNO'));
    dmAcademia.cdsTurmaAlunoCODCLIENTE.AsInteger := dmAcademia.cdsAlunoCODCLIENTE.AsInteger;
    dmAcademia.cdsTurmaAlunoCODTURMA.AsInteger := dmacademia.cdsTurmaCODTURMA.AsInteger;
    dmAcademia.cdsTurmaAlunoALUNO.AsString := dmAcademia.cdsAlunoALUNO.AsString;
    dmAcademia.cdsTurmaAlunoTURMA.AsString := dmAcademia.cdsTurmaNOMETURMA.AsString;
    t.Destroy;
  end;
  if (dbSeg.Checked) then
    dmAcademia.cdsTurmaAlunoSEG.AsString := 'T'
  else
    dmAcademia.cdsTurmaAlunoSEG.AsString := 'F';
  if (dbTer.Checked) then
    dmAcademia.cdsTurmaAlunoTER.AsString := 'T'
  else
    dmAcademia.cdsTurmaAlunoTER.AsString := 'F';
  if (dbQUA.Checked) then
    dmAcademia.cdsTurmaAlunoQUA.AsString := 'T'
  else
    dmAcademia.cdsTurmaAlunoQUA.AsString := 'F';
  if (dbQUI.Checked) then
    dmAcademia.cdsTurmaAlunoQUI.AsString := 'T'
  else
    dmAcademia.cdsTurmaAlunoQUI.AsString := 'F';
  if (dbSEX.Checked) then
    dmAcademia.cdsTurmaAlunoSEX.AsString := 'T'
  else
    dmAcademia.cdsTurmaAlunoSEX.AsString := 'F';
  if (dbSAB.Checked) then
    dmAcademia.cdsTurmaAlunoSAB.AsString := 'T'
  else
    dmAcademia.cdsTurmaAlunoSAB.AsString := 'F';
  if (dbDOM.Checked) then
    dmAcademia.cdsTurmaAlunoDOM.AsString := 'T'
  else
    dmAcademia.cdsTurmaAlunoDOM.AsString := 'F';

  inherited;

  sdsBusca.Close;
end;

procedure TfTurmaAluno.btnProcurarClick(Sender: TObject);
begin
  inherited;
  if (dmAcademia.cdsTurmaAluno.Active) then
    dmAcademia.cdsTurmaAluno.Close;
  if (cbNomeTurma.Text = '') then
  begin
    dmAcademia.cdsTurmaAluno.Params.ParamByName('pTurma').AsInteger := 0;
  end
  else begin
    dmAcademia.cdsTurmaAluno.Params.ParamByName('pTurma').AsInteger := dmAcademia.cdsTurmaCODTURMA.AsInteger;
  end;
  dmAcademia.cdsTurmaAluno.Params.ParamByName('pAluno').AsInteger := 0;
  //dmAcademia.cdsTurmaAluno.Params.ParamByName('pEnt1').AsTime := StrToTime('0:01');
  //dmAcademia.cdsTurmaAluno.Params.ParamByName('pEnt2').AsTime := StrToTime('23:59');
  dmAcademia.cdsTurmaAluno.Open;
end;

procedure TfTurmaAluno.btnIncluirClick(Sender: TObject);
begin
  inherited;
  dbSeg.Checked := False;
  dbTer.Checked := False;
  dbQua.Checked := False;
  dbQui.Checked := False;
  dbSex.Checked := False;
  dbSab.Checked := False;
  dbDom.Checked := False;
end;

end.
