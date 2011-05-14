unit uCompraSolicProc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, Grids, DBGrids, JvExDBGrids, JvDBGrid, FMTBcd, DBClient,
  Provider, SqlExpr;

type
  TfCompraSolicProc = class(TfPai_new)
    rgSit: TRadioGroup;
    JvDBGrid1: TJvDBGrid;
    btnAprovar: TBitBtn;
    sdsSol: TSQLDataSet;
    dspSol: TDataSetProvider;
    cdsSol: TClientDataSet;
    cdsSolSOLIC_CODIGO: TIntegerField;
    cdsSolSOLIC_DATA: TDateField;
    cdsSolSOLIC_QUANTIDADE: TFloatField;
    cdsSolSOLIC_SITUACAO: TStringField;
    cdsSolSOLIC_DATAAPROV: TDateField;
    cdsSolSOLIC_DESCRICAO: TStringField;
    cdsSolSOLIC_TIPO: TStringField;
    cdsSolSOLIC_PRODUTO: TStringField;
    cdsSolSOLIC_SOLICITANTE: TStringField;
    cdsSolSOLIC_APROVACAO: TStringField;
    cdsSolSOLIC_DTNECESSIT: TDateField;
    cdsSolSOLIC_OBSERVACAO: TStringField;
    cdsSolUNIDADEMEDIDA: TStringField;
    btnStatus: TBitBtn;
    procedure rgSitClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnStatusClick(Sender: TObject);
    procedure JvDBGrid1CellClick(Column: TColumn);
  private
    procedure listaSolicitacao;
    procedure atualizaSolic;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCompraSolicProc: TfCompraSolicProc;

implementation

uses UDm, uAtsAdmin;

{$R *.dfm}

procedure TfCompraSolicProc.listaSolicitacao;
var sit, str: string;
begin
  sit := '';
  case rgSit.ItemIndex of
    0 : sit := 'P';
    1 : sit := 'A';
    2 : sit := 'C';
  end;

  // Busca Solicitacao
  if (cdsSol.Active) then
    cdsSol.Close;
  str := 'SELECT * FROM COMPRA_SOLIC, produtos' ;
  if (sit <> '') then
    str := str + ' WHERE SOLIC_SITUACAO = ' + QuotedStr(sit) +
     ' and codpro = SOLIC_PRODUTO'
  else
    str := str + ' WHERE codpro = SOLIC_PRODUTO';
  cdsSol.CommandText := str;
  cdsSol.Open;
end;

procedure TfCompraSolicProc.rgSitClick(Sender: TObject);
begin
  case rgSit.ItemIndex of
    0 : btnAprovar.Enabled := True;
    1 : btnAprovar.Enabled := False;
    2 : btnAprovar.Enabled := False;
  end;
  listaSolicitacao;
end;

procedure TfCompraSolicProc.btnProcurarClick(Sender: TObject);
begin
  //inherited;
  listaSolicitacao;
end;

procedure TfCompraSolicProc.btnIncluirClick(Sender: TObject);
var situa: string;
begin
  if (cdsSolSOLIC_SITUACAO.AsString = 'C') then
  begin
    MessageDlg('Solicita��o Cancelada, altere a situa��o para Pendente.'+#13+#10+'Para poder aprova-la.', mtWarning, [mbOK], 0);
    exit;
  end;

  // Ver se o usuario q esta aprovando e a pessoa responsavel
  if (fAtsAdmin.UserControlComercial.CurrentUser.UserLogin = cdsSolSOLIC_APROVACAO.AsString) then
  begin
    dm.sqlsisAdimin.ExecuteDirect('UPDATE COMPRA_SOLIC SET SOLIC_SITUACAO = ' +
      QuotedStr('A') + ', SOLIC_DATAAPROV = CURRENT_DATE'  +
        ' WHERE SOLIC_CODIGO = ' + IntToStr(cdsSolSOLIC_CODIGO.AsInteger));
    atualizaSolic;
  end
  else begin
    MessageDlg('Respons�vel pela aprova��o diferente do usu�rio atual;', mtWarning, [mbOK], 0);
  end;
end;

procedure TfCompraSolicProc.FormCreate(Sender: TObject);
begin
  //inherited;

end;

procedure TfCompraSolicProc.btnStatusClick(Sender: TObject);
begin
  // inherited;
  //Cancela Solicitacao
  if (cdsSolSOLIC_SITUACAO.AsString = 'P') then
  begin
    dm.sqlsisAdimin.ExecuteDirect('UPDATE COMPRA_SOLIC SET SOLIC_SITUACAO = ' +
      QuotedStr('C') + ', SOLIC_DATAAPROV = CURRENT_DATE'  +
        ' WHERE SOLIC_CODIGO = ' + IntToStr(cdsSolSOLIC_CODIGO.AsInteger));
    atualizaSolic;
  end;
  if ((cdsSolSOLIC_SITUACAO.AsString = 'C') or (cdsSolSOLIC_SITUACAO.AsString = 'A')) then
  begin
    dm.sqlsisAdimin.ExecuteDirect('UPDATE COMPRA_SOLIC SET SOLIC_SITUACAO = ' +
      QuotedStr('P') + ', SOLIC_DATAAPROV = CURRENT_DATE'  +
        ' WHERE SOLIC_CODIGO = ' + IntToStr(cdsSolSOLIC_CODIGO.AsInteger));
    atualizaSolic;
  end;
end;

procedure TfCompraSolicProc.JvDBGrid1CellClick(Column: TColumn);
begin
  //inherited;
  if (cdsSolSOLIC_SITUACAO.AsString = 'P') then
  begin
    btnStatus.Caption := 'Cancelar';
  end;
  if (cdsSolSOLIC_SITUACAO.AsString = 'C') then
  begin
    btnStatus.Caption := 'Pendente';
  end;

end;

procedure TfCompraSolicProc.atualizaSolic;
var numLinha : Integer;
begin
  cdsSol.DisableControls;
  numLinha := cdsSol.RecNo;
  if (cdsSol.Active) then
    cdsSol.Close;
  cdsSol.Open;
  if (cdsSol.RecordCount >= numLinha) then
    cdsSol.RecNo := numLinha
  else
    cdsSol.RecNo := numLinha - 1;
  cdsSol.EnableControls;
end;

end.
