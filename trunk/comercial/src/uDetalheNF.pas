unit uDetalheNF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvExDBGrids, JvDBGrid, StdCtrls, Mask, DBCtrls,
  SqlExpr, Provider, DBXpress, Buttons, ExtCtrls, DB, DBClient;

type
  TfDetalheNF = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    dbeCodpro: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    Label19: TLabel;
    Label20: TLabel;
    Calcman: TCheckBox;
    btnSair: TBitBtn;
    DBNavigator1: TDBNavigator;
    btnGravar: TBitBtn;
    procedure btnSairClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure dbeCodproExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDetalheNF: TfDetalheNF;

implementation

uses UDMNF, uNotaf, UDm;

{$R *.dfm}

procedure TfDetalheNF.btnSairClick(Sender: TObject);
begin
  fNotaf.calculaicms(dmnf.cds_nfUF.AsString);
  Close;
end;



procedure TfDetalheNF.btnGravarClick(Sender: TObject);
var codmovdet : integer;
begin
  if (calcman.Checked = True) then
    fNotaf.inativaCalc;

  if (dmnf.cds_Mov_det.State in [dsEdit, dsInsert]) then
    dmnf.cds_mov_det.Post;
  //********************************************************************************
  dmnf.cds_Mov_det.First;
  While not dmnf.cds_Mov_det.Eof do
  begin
    if (dmnf.cds_Mov_detCODDETALHE.AsInteger >= 1999999) then
    begin
      dmnf.cds_Mov_det.Edit;
      if dmnf.cds_Mov_detCODPRODUTO.IsNull then
         dmnf.cds_Mov_detCODPRODUTO.AsInteger := 1;
      dmnf.cds_Mov_detCODMOVIMENTO.AsInteger := dmnf.cds_MovimentoCODMOVIMENTO.AsInteger;
      IF (dmnf.cds_Mov_detQTDE_ALT.IsNull) then
         dmnf.cds_Mov_detQTDE_ALT.AsFloat := 0;
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOVDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      codmovdet := dm.c_6_genid.Fields[0].AsInteger;
      dmnf.cds_Mov_detCODDETALHE.AsInteger := codmovdet;
      dmnf.cds_Mov_det.post;
    end;
    dmnf.cds_Mov_det.Next;
  end;
  dmnf.cds_Mov_det.ApplyUpdates(0);

  if (calcman.Checked = True) then
    fNotaf.ativaCalc;
end;

procedure TfDetalheNF.dbeCodproExit(Sender: TObject);
var sql: String;
begin
if (dmnf.DtSrc1.State in [dsInsert, dsEdit]) then
  begin

  if (dm.codBarra = 'N') then
  begin
    if (dmnf.dtSrc1.State in [dsInsert, dsEdit]) then
    begin
    if (dbeCodpro.Text = '') then
    begin
      exit;
    end;
    if dmnf.DtSrc1.DataSet.State in [dsInactive] then
      if dbeCodpro.Text='' then exit;
    //begin
      if dmnf.DtSrc1.DataSet.State in [dsBrowse] then
         dmnf.DtSrc1.DataSet.Edit;
      if dm.scds_produto_proc.Active then
        dm.scds_produto_proc.Close;
      dm.scds_produto_proc.Params[0].AsInteger := 0;
      dm.scds_produto_proc.Params[1].AsString := dbeCodpro.Text;
      dm.scds_produto_proc.Open;
      if dm.scds_produto_proc.IsEmpty then begin
        MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
        [mbOk], 0);
        //btnProdutoProcura.Click;
        exit;
      end;
      dmnf.cds_Mov_detCODPRODUTO.AsInteger := dm.scds_produto_procCODPRODUTO.AsInteger;
      dmnf.cds_Mov_detDESCPRODUTO.Value := dm.scds_produto_procPRODUTO.Value;
      dmnf.cds_Mov_detLOCALIZACAO.Value := dm.scds_produto_procLOCALIZACAO.Value;
      dmnf.cds_Mov_detCOD_COMISSAO.AsInteger := dm.scds_produto_procCOD_COMISSAO.AsInteger;
      if ( dmnf.cds_Mov_detQTDE_PCT.AsFloat < 1) then
        dmnf.cds_Mov_detQTDE_PCT.AsFloat := 1;
      dmnf.cds_Mov_detUN.AsString := dm.scds_produto_procUNIDADEMEDIDA.AsString;
      if ( dmnf.cds_Mov_detQUANTIDADE.AsFloat < 1) then
        dmnf.cds_Mov_detQUANTIDADE.AsFloat := 1;
      dmnf.cds_Mov_detQTDE_ALT.AsFloat := 0;
      dmnf.cds_Mov_detPRECOCUSTO.AsFloat := dm.scds_produto_procPRECOMEDIO.AsFloat;
      if dm.scds_produto_procQTDE_PCT.AsFloat > 1 then
         dmnf.cds_Mov_detPRECO.AsFloat :=
         dm.scds_produto_procVALOR_PRAZO.AsFloat / dm.scds_produto_procQTDE_PCT.AsFloat
      else
         dmnf.cds_Mov_detPRECO.AsFloat := dm.scds_produto_procVALOR_PRAZO.AsFloat;
      dmnf.cds_Mov_detCODALMOXARIFADO.AsInteger := dm.scds_produto_procCODALMOXARIFADO.AsInteger;
      dmnf.cds_Mov_detALMOXARIFADO.AsString := '';
      dmnf.cds_Mov_detICMS.AsFloat := dm.scds_produto_procICMS.AsFloat;
    end;
  end
  else
  begin
  if (dmnf.DtSrc1.DataSet.State in [dsInsert]) then
    begin

        if (dm.codBarra = 'S') then // usa codigo de barra
        begin
          // busca pelo código de barra
          if dm.scds_produto_proc.Active then
            dm.scds_produto_proc.Close;
          sql := 'select CODPRODUTO, CODPRO, PRODUTO, UNIDADEMEDIDA, QTDE_PCT' +
             ', ICMS, CODALMOXARIFADO, PRECO_COMPRAULTIMO as  VALORUNITARIOATUAL ' +
             ', PRECO_VENDA AS VALOR_PRAZO, TIPO, ESTOQUEATUAL, LOCALIZACAO ' +
             ', LOTES  , PRECO_COMPRAMEDIO AS PRECOMEDIO, PESO_QTDE, COD_COMISSAO' +
             ', RATEIO, conta_despesa , IPI '  +
             'from LISTAPRODUTO(:CODPRODUTO, :CODPRO, ' + QuotedStr('TODOSGRUPOS') +
             ', ' + QuotedStr('TODOSSUBGRUPOS') + ' ,' + QuotedStr('TODASMARCAS') + ')';
          dm.scds_produto_proc.CommandText := sql + ' WHERE COD_BARRA = ' +
            QuotedStr(dbeCodpro.Text) + ' or CODPRO = ' + QuotedStr(dbeCodpro.Text);
          dm.scds_produto_proc.Params[0].AsInteger := 0;
          dm.scds_produto_proc.Params[1].AsString := 'TODOSPRODUTOS';
          dm.scds_produto_proc.Open;
          if dm.scds_produto_proc.IsEmpty then begin
             MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
            [mbOk], 0);
            //btnProdutoProcura.Click;
            exit;
          end;
        end
        else begin
          // busca pelo código de barra
          if dm.scds_produto_proc.Active then
            dm.scds_produto_proc.Close;
          dm.scds_produto_proc.Params[0].AsInteger := 0;
          dm.scds_produto_proc.Params[1].AsString := 'TODOSPRODUTOS';
          dm.scds_produto_proc.Open;
          if dm.scds_produto_proc.IsEmpty then
          begin
             MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
            [mbOk], 0);
           // btnProdutoProcura.Click;
            exit;
          end;
        end;
        dmnf.cds_Mov_detCODPRODUTO.AsInteger := dm.scds_produto_procCODPRODUTO.AsInteger;
        dmnf.cds_Mov_detDESCPRODUTO.Value := dm.scds_produto_procPRODUTO.Value;
        dmnf.cds_Mov_detLOCALIZACAO.Value := dm.scds_produto_procLOCALIZACAO.Value;
        dmnf.cds_Mov_detCOD_COMISSAO.AsInteger := dm.scds_produto_procCOD_COMISSAO.AsInteger;
        if ( dmnf.cds_Mov_detQTDE_PCT.AsFloat < 1) then
          dmnf.cds_Mov_detQTDE_PCT.AsFloat := 1;
        dmnf.cds_Mov_detUN.AsString := dm.scds_produto_procUNIDADEMEDIDA.AsString;
        if ( dmnf.cds_Mov_detQUANTIDADE.AsFloat < 1) then
          dmnf.cds_Mov_detQUANTIDADE.AsFloat := 1;
        dmnf.cds_Mov_detQTDE_ALT.AsFloat := 0;
        dmnf.cds_Mov_detPRECOCUSTO.AsFloat := dm.scds_produto_procPRECOMEDIO.AsFloat;
        if dm.scds_produto_procQTDE_PCT.AsFloat > 1 then
           dmnf.cds_Mov_detPRECO.AsFloat :=
           dm.scds_produto_procVALOR_PRAZO.AsFloat / dm.scds_produto_procQTDE_PCT.AsFloat
        else
          dmnf.cds_Mov_detPRECO.AsFloat := dm.scds_produto_procVALOR_PRAZO.AsFloat;
        dmnf.cds_Mov_detCODALMOXARIFADO.AsInteger := dm.scds_produto_procCODALMOXARIFADO.AsInteger;
        dmnf.cds_Mov_detALMOXARIFADO.AsString := '';//dm.scds_produto_procALMOXARIFADO.AsString;
        dmnf.cds_Mov_detICMS.AsFloat := dm.scds_produto_procICMS.AsFloat;
      end;
    end;
  end;
end;

end.
