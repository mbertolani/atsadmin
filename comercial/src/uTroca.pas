unit uTroca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, RXCtrls, ExtCtrls, MMJPanel, Mask, JvExMask,
  JvToolEdit, JvBaseEdits, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  JvDBUltimGrid, FMTBcd, DB, DBClient, Provider, SqlExpr, DBXpress;

type
  TfTroca = class(TForm)
    MMJPanel2: TMMJPanel;
    Label3: TLabel;
    Label4: TLabel;
    RxLabel1: TRxLabel;
    MMJPanel1: TMMJPanel;
    btnGravar: TBitBtn;
    btnIncluir: TBitBtn;
    btnProcurar: TBitBtn;
    btnSair: TBitBtn;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    edProdutoatrocar: TEdit;
    GroupBox2: TGroupBox;
    JvDBUltimGrid1: TJvDBUltimGrid;
    edProd: TEdit;
    edProdNome: TEdit;
    Label5: TLabel;
    edProdPreco: TJvCalcEdit;
    Label1: TLabel;
    edPrecoaTrocar: TJvCalcEdit;
    GroupBox3: TGroupBox;
    edSaldo: TJvCalcEdit;
    btnNovo: TBitBtn;
    BitBtn8: TBitBtn;
    btnProdutoProcura: TBitBtn;
    sdsMovDet: TSQLDataSet;
    sqsBusca: TSQLQuery;
    dspMovDet: TDataSetProvider;
    cdsMovDet: TClientDataSet;
    dsMovDet: TDataSource;
    edQtde: TJvCalcEdit;
    Label2: TLabel;
    cdsMovDetCODPRO: TStringField;
    cdsMovDetCODPRODUTO: TIntegerField;
    cdsMovDetQUANTIDADE: TFloatField;
    cdsMovDetPRECO: TFloatField;
    cdsMovDetUN: TStringField;
    cdsMovDetDESCPRODUTO: TStringField;
    procedure FormShow(Sender: TObject);
    procedure edProdExit(Sender: TObject);
    procedure edProdKeyPress(Sender: TObject; var Key: Char);
    procedure btnProdutoProcuraClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    codProduto : integer;
    procedure abreMovDet;
    procedure pesquisaProdutos;
    { Private declarations }
  public
    codMovTroca: integer;
    codVendaTroca: Integer;
    produtoATrocar: String;
    codProdATrocar: Integer;
    valorATrocar: Double;
    { Public declarations }
  end;

var
  fTroca: TfTroca;

implementation

uses UDm, ufprocura_prod, uMovimentoDetalhe;

{$R *.dfm}

procedure TfTroca.FormShow(Sender: TObject);
begin
  edProdutoatrocar.Text := produtoATrocar;
  edPrecoaTrocar.Value := valorATrocar;
  edSaldo.Value  := valorATrocar;
end;

procedure TfTroca.edProdExit(Sender: TObject);
begin
  PesquisaProdutos;
end;

procedure TfTroca.edProdKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    if (edProd.Text = '') then
    begin
      btnProdutoProcura.Click;
      exit;
    end
    else
    begin
      PesquisaProdutos;
    end;
  end;
  if (key = #13) then
  begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
  end;

end;

procedure TfTroca.btnProdutoProcuraClick(Sender: TObject);
begin
  var_F := 'venda';
    fProcura_prod.cbTipo.ItemIndex := 4;
    fProcura_prod.btnIncluir.Visible := true;
    if (procprod <> 'PROC_PROD_COMPLETO') then
    begin
      fProcura_prod.Panel1.Visible := false;
      fProcura_prod.Panel2.Visible := true;
      //fProcura_prod.CheckBox1.Checked := True;
      fProcura_prod.BitBtn1.Click;
    end
    else begin
      fProcura_prod.Panel2.Visible := false;
      fProcura_prod.Panel1.Visible := true;
      //fProcura_prod.CheckBox1.Checked := False;
      if (fProcura_prod.cds_proc.Active) then
        fProcura_prod.cds_proc.Close;
    end;
    varonde := 'compra';
    var_F := 'venda';
    fProcura_prod.ShowModal;

    if (procprod = 'PROC_PROD_COMPLETO') then
    begin
      edProd.Text := fProcura_prod.cds_procCODPRO.AsString;
      codProduto := fProcura_prod.cds_procCODPRODUTO.AsInteger;
      edProdNome.Text := fProcura_prod.cds_procPRODUTO.AsString;
      edProdPreco.Value := fProcura_prod.cds_procPRECO_VENDA.value;
    end;
end;

procedure TfTroca.pesquisaProdutos;
var sql: String;
begin
  if (dm.codBarra = 'N') then
  begin
    varonde := 'compra';
    var_F := 'venda';
    if (edProd.Text = '') then
      exit;

    if dm.scds_produto_proc.Active then
      dm.scds_produto_proc.Close;
    dm.scds_produto_proc.Params[0].AsInteger := 0;
    dm.scds_produto_proc.Params[1].AsString := edProd.Text;
    dm.scds_produto_proc.Open;
    if dm.scds_produto_proc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      btnProdutoProcura.Click;
      exit;
    end;
  end;
  if (dm.codBarra = 'S') then // usa codigo de barra
  begin
    // busca pelo código de barra
    if dm.scds_produto_proc.Active then
      dm.scds_produto_proc.Close;
    sql := 'select CODPRODUTO, CODPRO, PRODUTO, UNIDADEMEDIDA, QTDE_PCT' +
       ', ICMS, CODALMOXARIFADO, PRECO_COMPRAULTIMO as  VALORUNITARIOATUAL ' +
       ', PRECO_VENDA AS VALOR_PRAZO, TIPO, ESTOQUEATUAL, LOCALIZACAO ' +
       ', LOTES  , PRECO_COMPRAMEDIO AS PRECOMEDIO, PESO_QTDE, COD_COMISSAO' +
       ', RATEIO, conta_despesa , IPI, OBS '  +
       ' from LISTAPRODUTO(:CODPRODUTO, :CODPRO, ' + QuotedStr('TODOSGRUPOS') +
       ', ' + QuotedStr('TODOSSUBGRUPOS') + ' ,' + QuotedStr('TODASMARCAS') +
       ', ' + QuotedStr('TODASAPLICACOES') + ', 0)';
    dm.scds_produto_proc.CommandText := sql + ' WHERE COD_BARRA = ' +
      QuotedStr(edProd.Text) + ' or CODPRO = ' + QuotedStr(edProd.Text);
    dm.scds_produto_proc.Params[0].AsInteger := 0;
    dm.scds_produto_proc.Params[1].AsString := 'TODOSPRODUTOS';
    dm.scds_produto_proc.Open;
    if dm.scds_produto_proc.IsEmpty then
    begin
       MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      btnProdutoProcura.Click;
      exit;
    end;
  end;
  codProduto := dm.scds_produto_procCODPRODUTO.AsInteger;
  edProdNome.Text := dm.scds_produto_procPRODUTO.Value;
  edQtde.Value := 1;
  edProdPreco.Value := dm.scds_produto_procVALOR_PRAZO.Value;
end;

procedure TfTroca.abreMovDet;
begin
  if (cdsMovDet.Active) then
    cdsMovDet.Close;
  cdsMovDet.CommandText := 'SELECT p.CODPRO, md.CODPRODUTO, md.QUANTIDADE, ' +
    ' md.PRECO, md.UN, md.DESCPRODUTO ' +
    ' FROM MOVIMENTODETALHE md, PRODUTOS p ' +
    ' WHERE md.CODPRODUTO = p.CODPRODUTO ' +
    '   AND md.CODMOVIMENTO = ' + IntToStr(codMovTroca) +
    '   AND CODMOVRATEIO = 1';
end;

procedure TfTroca.BitBtn1Click(Sender: TObject);
var  TDA: TTransactionDesc;
  fmDet: TMovimentoDetalhe;
begin
  TDA.TransactionID  := 1;
  TDA.IsolationLevel := xilREADCOMMITTED;
  Try
    fmDet := TMovimentoDetalhe.Create;
    cdsMovDet.First;
    while not cdsMovDet.Eof do
    begin
      fmDet.CodMov := codMovTroca;
      fmDet.CodProduto := cdsMovDetCODPRODUTO.AsInteger;
      fmDet.Descricao := cdsMovDetDESCPRODUTO.AsString;
      fmDet.Qtde := cdsMovDetQUANTIDADE.AsFloat;
      fmDet.Preco := cdsMovDetPRECO.AsFloat;
      dm.sqlsisAdimin.StartTransaction(TDA);
      try
        fmDet.inserirMovDet;
        dm.sqlsisAdimin.Commit(TDA);
        MessageDlg('Troca executada com sucesso.', mtInformation,
             [mbOk], 0);
      except
        on E : Exception do
        begin
          ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
          dm.sqlsisAdimin.Rollback(TDA); //on failure, undo the changes}
        end;
      end;
      cdsMovDet.Next;
    end;
  finally
    fmDet.Free;
  end;
end;

procedure TfTroca.btnNovoClick(Sender: TObject);
begin
  cdsMovDet.Append;
  cdsMovDetCODPRO.AsString := edProd.Text;
  cdsMovDetCODPRODUTO.AsInteger := codProduto;
  cdsMovDetDESCPRODUTO.AsString := edProdNome.Text;
  cdsMovDetQUANTIDADE.AsFloat := edQtde.Value;
  cdsMovDetPRECO.AsFloat := edProdPreco.Value;
  cdsMovDet.Post;
end;

procedure TfTroca.btnSairClick(Sender: TObject);
begin
  close;
end;

end.
