unit uOsInserePeca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, StdCtrls, Mask, JvExMask, JvToolEdit, JvBaseEdits,
  JvExStdCtrls, JvMemo, Menus, XPMenu, DB, Buttons, ExtCtrls, MMJPanel,
  FMTBcd, DBClient, Provider, SqlExpr, dbXpress;

type
  TfOsInserePeca = class(TfPai_new)
    GroupBox1: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label1: TLabel;
    btnNovo: TBitBtn;
    BitBtn8: TBitBtn;
    edServico: TJvMemo;
    edQtdeServ: TJvCalcEdit;
    edPrecoServ: TJvCalcEdit;
    edDescServ: TJvCalcEdit;
    edDescVlrServ: TJvCalcEdit;
    edTotalServ: TJvCalcEdit;
    edProduto: TEdit;
    BitBtn3: TBitBtn;
    edProdDescr: TEdit;
    lblServico: TLabel;
    sdsPecas: TSQLDataSet;
    dspPecas: TDataSetProvider;
    cdsPecas: TClientDataSet;
    cdsPecasID_OS_DET: TIntegerField;
    cdsPecasID_OS: TIntegerField;
    cdsPecasDESCRICAO_SERV: TStringField;
    cdsPecasRESPONSAVEL: TStringField;
    cdsPecasSTATUS: TStringField;
    cdsPecasTIPO: TStringField;
    cdsPecasQTDE: TFloatField;
    cdsPecasPRECO: TFloatField;
    cdsPecasDESCONTO: TFloatField;
    cdsPecasVALORTOTAL: TFloatField;
    cdsPecasCODPRODUTO: TIntegerField;
    cdsPecasCODPRO: TStringField;
    cdsPecasSTATUSDESC: TStringField;
    cdsPecasID_OSDET_SERV: TIntegerField;
    cdsPecasVlrTotal: TAggregateField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure edDescVlrServExit(Sender: TObject);
    procedure edDescServExit(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure edProdutoExit(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsPecasNewRecord(DataSet: TDataSet);
    procedure DtSrcStateChange(Sender: TObject);
  private
    codProdutoPeca: Integer;
    procedure LimpaCamposPeca();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fOsInserePeca: TfOsInserePeca;

implementation

uses uOs, uProcurar, UDm, uProcura_prodOficina, sCtrlResize;

{$R *.dfm}

procedure TfOsInserePeca.FormCreate(Sender: TObject);
begin
  //inherited;
  sCtrlResize.CtrlResize(TForm(fOsInserePeca));
end;

procedure TfOsInserePeca.FormShow(Sender: TObject);
begin
  LimpaCamposPeca;
  lblServico.Caption := fOs.ServDescricao;
  if (DtSrc.State in [dsEdit]) then
  begin
    edServico.Lines.Add(cdsPecasDESCRICAO_SERV.AsString);
    edProduto.Text      := cdsPecasCODPRO.AsString;
    edProdDescr.Text    := cdsPecasDESCRICAO_SERV.AsString;
    codProdutoPeca      := cdsPecasCODPRODUTO.asInteger;
    edQtdeServ.Value    := cdsPecasQTDE.AsFloat;
    edPrecoServ.Value   := cdsPecasPRECO.AsFloat;
    edDescVlrServ.Value := cdsPecasDESCONTO.AsFloat;
    edTotalServ.Value   := cdsPecasVALORTOTAL.AsFloat;
  end;
end;

procedure TfOsInserePeca.LimpaCamposPeca;
begin
  edServico.Lines.Clear;
  edQtdeServ.Value    := 0;
  edPrecoServ.Value   := 0;
  edDescServ.Value    := 0;
  edDescVlrServ.Value := 0;
  edTotalServ.Value   := 0;
  edProduto.Text      := '';
  edProdDescr.Text    := '';
end;

procedure TfOsInserePeca.btnGravarClick(Sender: TObject);
var str: string;
  I : Integer;
  TD: TTransactionDesc;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  str := '';
  for I := 0 to edServico.Lines.Count -1 do
    str := str + edServico.Lines[I] + #13#10;
  if (str = '') then
    str := edProdDescr.Text;

  cdsPecasDESCRICAO_SERV.AsString := str;
  cdsPecasCODPRO.AsString         := edProduto.Text;
  cdsPecasCODPRODUTO.asInteger    := codProdutoPeca;
  cdsPecasSTATUS.AsString         := fOs.statusOs;
  cdsPecasTIPO.AsString           := 'P';
  cdsPecasQTDE.AsFloat            := edQtdeServ.Value;
  cdsPecasPRECO.AsFloat           := edPrecoServ.Value;
  cdsPecasDESCONTO.AsFloat        := edDescVlrServ.Value;
  //cdsPecasDESCPERCENT.AsFloat     := edDesc.Value;
  cdsPecas.Post;
  //cdsPecas.ApplyUpdates(0);
  Try
    dm.sqlsisAdimin.StartTransaction(TD);
    fOs.FOsCls.osDet.CodOsP   := fOs.codigoOs;
    if ((cdsPecasTIPO.AsString = 'P') and (cdsPecasID_OS_DET.AsInteger > 90000000)) then
    begin
      fOs.FOsCls.osDet.CodDet   := 0;
      fOs.FOsCls.osDet.Status   := 'O';
      fOs.FOsCls.osDet.Tipo     := 'P';
    end;
    DecimalSeparator := '.';
    fOs.FOsCls.osDet.CodProduto := cdsPecasCODPRODUTO.AsInteger;
    fOs.FOsCls.osDet.Descricao := cdsPecasDESCRICAO_SERV.AsString;
    fOs.FOsCls.osDet.Qtde      := cdsPecasQTDE.AsFloat;
    fOs.FOsCls.osDet.Preco     := cdsPecasPRECO.AsFloat;
    fOs.FOsCls.osDet.Desconto  := cdsPecasDESCONTO.AsFloat;
    fOs.FOSCls.osDet.CodOsServ := cdsPecasID_OSDET_SERV.AsInteger;
    DecimalSeparator := ',';
    if ((cdsPecasTIPO.AsString = 'P') and (cdsPecasID_OS_DET.AsInteger > 90000000)) then
    begin
      if ((fOs.FOsCls.osDet.IncluirOsDet(0) = 0)) then
      begin
        ShowMessage('Erro na Inclusao Os Detalhe');
        Exit;
      end;
    end
    else begin
      fOs.FOsCls.osDet.alterarOsDet(cdsPecasID_OS.AsInteger);
    end;
    dm.sqlsisAdimin.Commit(TD);
  except
    on E : Exception do
    begin
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      dm.sqlsisAdimin.Rollback(TD);
    end;
  end; 
  fOs.abrirPecas;

end;

procedure TfOsInserePeca.edDescVlrServExit(Sender: TObject);
begin
  if ((edDescVlrServ.Value > 0) and (edDescServ.Value = 0) and (edPrecoServ.Value > 0)) then
  begin
    edDescServ.Value  := (edDescVlrServ.Value / edPrecoServ.Value) * 100;
    edTotalServ.Value := (edPrecoServ.Value * edQtdeServ.Value) - edDescVlrServ.Value;
  end;

end;

procedure TfOsInserePeca.edDescServExit(Sender: TObject);
begin
  if (edDescServ.Value > 0) then
  begin
    edDescVlrServ.Value := edPrecoServ.Value * (edDescServ.Value / 100);
    edTotalServ.Value   := (edPrecoServ.Value * edQtdeServ.Value) - edDescVlrServ.Value;
  end;
end;

procedure TfOsInserePeca.btnIncluirClick(Sender: TObject);
begin
  edServico.Lines.Clear;
  edProduto.Text        := '';
  edQtdeServ.Value      := 0;
  edPrecoServ.Value     := 0;
  edDescVlrServ.Value   := 0;
  edTotalServ.Value     := 0;

  fOs.numOsDet := fOs.numOsDet + 1;

  DtSrc.DataSet.Append;
  cdsPecasID_OS.AsInteger         := fOs.cdsServicoID_OS.AsInteger;
  cdsPecasID_OS_DET.AsInteger     := fOs.numOsDet;
  cdsPecasID_OSDET_SERV.AsInteger := fOs.cdsServicoID_OS_DET.AsInteger;
  cdsPecasTIPO.AsString           := 'P';
end;

procedure TfOsInserePeca.BitBtn3Click(Sender: TObject);
begin
  //fProcura_prodOficina.btnIncluir.Visible := true;
  if (procprod <> 'PROC_PROD_COMPLETO') then
  begin
    fProcura_prodOficina.Panel1.Visible := false;
    fProcura_prodOficina.Panel2.Visible := true;
  end
  else begin
    fProcura_prodOficina.Panel2.Visible := false;
    fProcura_prodOficina.Panel1.Visible := true;
    if (fProcura_prodOficina.cds_proc.Active) then
      fProcura_prodOficina.cds_proc.Close;
  end;
  varonde := 'os';
  var_F := 'os';

  fProcura_prodOficina.ShowModal;
  if (procprod = 'PROC_PROD_COMPLETO') then
  begin
    {if (cdsPecas.State in [dsInsert, dsEdit]) then
    begin
      cdsPecasCODPRO.AsString := fProcura_prodOficina.cds_procCODPRO.AsString;
      cdsPecasCODPRODUTO.asInteger := fProcura_prodOficina.cds_procCODPRODUTO.AsInteger;
      cdsPecasDESCRICAO_SERV.asString := fProcura_prodOficina.cds_procPRODUTO.AsString;
      cdsPecasPRECO.AsFloat := fProcura_prodOficina.cds_procPRECO_VENDA.AsFloat;
      if ( fProcura_prodOficina.cds_procQTDE_PCT.AsFloat < 1) then
        cdsPecasQTDE.AsFloat := 1
      else
        cdsPecasQTDE.AsFloat := fProcura_prodOficina.cds_procQTDE_PCT.AsFloat; }
      {qtde         := fProcura_prodOficina.cds_procPESO_QTDE.AsFloat;
      estoque      := fProcura_prodOficina.cds_procESTOQUEATUAL.AsFloat;
      codProduto   := fProcura_prodOficina.cds_procCODPRODUTO.AsInteger; }
    //end;
  end;
  edProduto.Text    := fProcura_prodOficina.cds_procCODPRO.AsString;
  edProdDescr.Text  := fProcura_prodOficina.cds_procPRODUTO.AsString;
  edPrecoServ.Value := fProcura_prodOficina.cds_procPRECO_VENDA.AsFloat;
  codProdutoPeca    := fProcura_prodOficina.cds_procCODPRODUTO.AsInteger;
  if (cdsPecas.State = dsBrowse) then
    cdsPecas.Edit;
  cdsPecasCODPRODUTO.AsInteger := fProcura_prodOficina.cds_procCODPRODUTO.AsInteger;
  cdsPecasQTDE.AsFloat         := 1;
  cdsPecasPRECO.AsFloat        := fProcura_prodOficina.cds_procPRECO_VENDA.AsFloat;

end;

procedure TfOsInserePeca.edProdutoExit(Sender: TObject);
begin
  if (edProduto.Text = '') then exit;

  if dm.scds_produto_proc.Active then
    dm.scds_produto_proc.Close;
  dm.scds_produto_proc.Params[0].AsInteger := 0;
  dm.scds_produto_proc.Params[1].AsString := edProduto.Text;
  dm.scds_produto_proc.Open;
  if (dm.scds_produto_proc.IsEmpty) then
  begin
    MessageDlg('Código não cadastrado.', mtWarning,
    [mbOk], 0);
    exit;
  end;

  edProduto.Text    := dm.scds_produto_procCODPRO.AsString;
  edProdDescr.Text  := dm.scds_produto_procPRODUTO.AsString;
  edPrecoServ.Value := dm.scds_produto_procVALOR_PRAZO.AsFloat;
  codProdutoPeca    := dm.scds_produto_procCODPRODUTO.AsInteger;
  if (cdsPecas.State = dsBrowse) then
    cdsPecas.Edit;
  cdsPecasCODPRODUTO.AsInteger := dm.scds_produto_procCODPRODUTO.AsInteger;
  cdsPecasQTDE.AsFloat         := 1;
  cdsPecasPRECO.AsFloat        := dm.scds_produto_procVALOR_PRAZO.AsFloat;
end;

procedure TfOsInserePeca.btnSairClick(Sender: TObject);
begin
  //inherited;
  Close;
end;

procedure TfOsInserePeca.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //inherited;
end;

procedure TfOsInserePeca.cdsPecasNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsPecasID_OS.AsInteger     := fOs.cdsServicoID_OS.AsInteger;
  cdsPecasID_OS_DET.AsInteger     := fOs.numOsDet;
  cdsPecasID_OSDET_SERV.AsInteger := fOs.cdsServicoID_OS_DET.AsInteger;
  cdsPecasTIPO.AsString           := 'P';
end;

procedure TfOsInserePeca.DtSrcStateChange(Sender: TObject);
begin
  inherited;
  edProduto.Enabled     := cdsPecas.State in [dsEdit, dsInsert];
  edServico.Enabled     := cdsPecas.State in [dsEdit, dsInsert];
  edQtdeServ.Enabled    := cdsPecas.State in [dsEdit, dsInsert];
  edPrecoServ.Enabled   := cdsPecas.State in [dsEdit, dsInsert];
  edDescServ.Enabled    := cdsPecas.State in [dsEdit, dsInsert];
  edDescVlrServ.Enabled := cdsPecas.State in [dsEdit, dsInsert];
  btnIncluir.Visible    := cdsPecas.State in [dsBrowse, dsInactive];
  btnGravar.Visible     := cdsPecas.State in [dsEdit, dsInsert];
  btnExcluir.Visible    := cdsPecas.State in [dsBrowse, dsInactive];
  btnCancelar.Visible   := cdsPecas.State in [dsEdit, dsInsert];

end;

end.
