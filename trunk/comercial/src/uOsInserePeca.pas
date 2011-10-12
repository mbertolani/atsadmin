unit uOsInserePeca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, StdCtrls, Mask, JvExMask, JvToolEdit, JvBaseEdits,
  JvExStdCtrls, JvMemo, Menus, XPMenu, DB, Buttons, ExtCtrls, MMJPanel;

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
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure edDescVlrServExit(Sender: TObject);
    procedure edDescServExit(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure edProdutoExit(Sender: TObject);
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
  sCtrlResize.CtrlResize(TForm(fOs));
end;

procedure TfOsInserePeca.FormShow(Sender: TObject);
begin
  LimpaCamposPeca;
  lblServico.Caption                  := fOs.ServDescricao;
  fOs.cdsPecasID_OSDET_SERV.AsInteger := fOs.ServCodServ;
  if (DtSrc.State in [dsEdit]) then
  begin
    edServico.Lines.Add(fOs.cdsPecasDESCRICAO_SERV.AsString);
    edProduto.Text      := fOs.cdsPecasCODPRO.AsString;
    codProdutoPeca      := fOs.cdsPecasCODPRODUTO.asInteger;
    edQtdeServ.Value    := fOs.cdsPecasQTDE.AsFloat;
    edPrecoServ.Value   := fOs.cdsPecasPRECO.AsFloat;
    edDescVlrServ.Value := fOs.cdsPecasDESCONTO.AsFloat;
    edTotalServ.Value   := fOs.cdsPecasVALORTOTAL.AsFloat;
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
end;

procedure TfOsInserePeca.DtSrcStateChange(Sender: TObject);
begin
  inherited;
  edProduto.Enabled     := DtSrc.State in [dsEdit, dsInsert];
  edServico.Enabled     := DtSrc.State in [dsEdit, dsInsert];
  edQtdeServ.Enabled    := DtSrc.State in [dsEdit, dsInsert];
  edPrecoServ.Enabled   := DtSrc.State in [dsEdit, dsInsert];
  edDescServ.Enabled    := DtSrc.State in [dsEdit, dsInsert];
  edDescVlrServ.Enabled := DtSrc.State in [dsEdit, dsInsert];
end;

procedure TfOsInserePeca.btnGravarClick(Sender: TObject);
var str: string;
  I : Integer;
begin
  str := '';
  for I := 0 to edServico.Lines.Count -1 do
    str := str + edServico.Lines[I] + #13#10;
  if (str = '') then
    str := edProdDescr.Text;

  fOs.cdsPecasDESCRICAO_SERV.AsString := str;
  fOs.cdsPecasCODPRO.AsString         := edProduto.Text;
  fOs.cdsPecasCODPRODUTO.asInteger    := codProdutoPeca;
  fOs.cdsPecasSTATUS.AsString         := 'O';
  fOs.cdsPecasTIPO.AsString           := 'P';
  fOs.cdsPecasQTDE.AsFloat            := edQtdeServ.Value;
  fOs.cdsPecasPRECO.AsFloat           := edPrecoServ.Value;
  fOs.cdsPecasDESCONTO.AsFloat        := edDescVlrServ.Value;
  //cdsPecasDESCPERCENT.AsFloat     := edDesc.Value;
  fOs.cdsPecas.Post;

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
  fOs.cdsPecas.Append;
  fOs.cdsPecasID_OS_DET.AsInteger     := fOs.numOsDet;
  fOs.cdsPecasID_OSDET_SERV.AsInteger := fOs.ServCodServ;
  fOs.cdsPecasTIPO.AsString           := 'P';
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
  varonde := 'compra';
  var_F := 'venda';

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
  if (fOs.dsPecas.State = dsBrowse) then
    fOs.cdsPecas.Edit;
  fOs.cdsPecasCODPRODUTO.AsInteger := fProcura_prodOficina.cds_procCODPRODUTO.AsInteger;
  fOs.cdsPecasQTDE.AsFloat         := 1;
  fOs.cdsPecasPRECO.AsFloat        := fProcura_prodOficina.cds_procPRECO_VENDA.AsFloat;

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
  if (fOs.dsPecas.State = dsBrowse) then
    fOs.cdsPecas.Edit;
  fOs.cdsPecasCODPRODUTO.AsInteger := dm.scds_produto_procCODPRODUTO.AsInteger;
  fOs.cdsPecasQTDE.AsFloat         := 1;
  fOs.cdsPecasPRECO.AsFloat        := dm.scds_produto_procVALOR_PRAZO.AsFloat;

end;

end.
