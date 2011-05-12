unit uCompraCotacao2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, FMTBcd, DBClient, Provider, SqlExpr, JvBaseEdits, Mask,
  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  Grids, DBGrids, JvExDBGrids,  dbxpress, JvDBGrid, DBCtrls;

type
  TfCompraCotacao2 = class(TfPai_new)
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    dsCotacao: TDataSource;
    sqlCotacao: TSQLQuery;
    dspCotacao: TDataSetProvider;
    cdsCotacao: TClientDataSet;
    cdsCotacaoCOTACAO_CODIGO: TIntegerField;
    cdsCotacaoCOTACAO_DATA: TDateField;
    cdsCotacaoCOTACAO_FORNEC: TIntegerField;
    cdsCotacaoCOTACAO_SOLICIT: TStringField;
    cdsCotacaoCOTACAO_ITEMDESCRICAO: TStringField;
    cdsCotacaoCOTACAO_SITUACAO: TStringField;
    cdsCotacaoCOTACAO_QTDE: TFloatField;
    cdsCotacaoCOTACAO_PRECO: TFloatField;
    cdsCotacaoCOTACAO_USER: TStringField;
    cdsCotacaoCOTACAO_ITEM: TStringField;
    cdsCotacaoCOTACAO_DTENTREGA: TDateField;
    cdsCotacaoCOTACAO_PRAZO: TStringField;
    cdsCotacaoCOTACAO_OBSERVACAO: TStringField;
    cdsCotacaoCOTACAO_IPI: TFloatField;
    cdsCotacaoCOTACAO_DESCONTO: TFloatField;
    cdsCotacaoCOTACAO_FRETE: TFloatField;
    DataSource1: TDataSource;
    jvdbgrd2: TJvDBGrid;
    GroupBox4: TGroupBox;
    Label3: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    dtEntrega: TJvDatePickerEdit;
    edPreco: TJvCalcEdit;
    edObservacao: TEdit;
    edDesconto: TJvCalcEdit;
    edIPI: TJvCalcEdit;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    cbPrazo: TComboBox;
    Label6: TLabel;
    edFrete: TJvCalcEdit;
    Label9: TLabel;
    dtCotacao: TJvDatePickerEdit;
    Label10: TLabel;
    Edit3: TEdit;
    cdsCotacaoTotal: TAggregateField;
    cdsCotacaoCOTACAO_CODSOLIC: TIntegerField;
    cdsCotacaoRAZAOSOCIAL: TStringField;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    sqlPedido: TSQLQuery;
    dspPedido: TDataSetProvider;
    cdsPedido: TClientDataSet;
    cdsPedidoCODMOVIMENTO: TIntegerField;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label21: TLabel;
    DBEdit1: TDBEdit;
    cdsCotacaoCOTACAO_TIPO: TStringField;
    cdsCotacaoTOTALPROD: TFloatField;
    procedure btnProcurarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure jvdbgrd2CellClick(Column: TColumn);
    procedure btnGravarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure cdsCotacaoAfterScroll(DataSet: TDataSet);
  private
    TD: TTransactionDesc;
    procedure editaItens;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCompraCotacao2: TfCompraCotacao2;

implementation

uses UDm, uCotacoesHist, uCotacaoVer, uListaPedido, uRelNfe;

{$R *.dfm}

procedure TfCompraCotacao2.btnProcurarClick(Sender: TObject);
begin
  //inherited;
  fCotacoesHist.ShowModal;
  if (cdsCotacao.Active) then
    cdsCotacao.Close;
  cdsCotacao.Params[0].AsInteger := fCotacoesHist.cdsCotacaoCOTACAO_FORNEC.AsInteger;
  cdsCotacao.Params[1].AsInteger := fCotacoesHist.cdsCotacaoCOTACAO_CODIGO.AsInteger;
  cdsCotacao.Open;
  cdsCotacao.First;
  if (cdsCotacao.RecordCount > 0) then
  begin
    Edit1.Text     := IntToStr(cdsCotacaoCOTACAO_FORNEC.AsInteger);
    Edit2.Text     := cdsCotacaoRAZAOSOCIAL.AsString;
    cbPrazo.Text   := cdsCotacaoCOTACAO_PRAZO.AsString;
    edFrete.Value  := cdsCotacaoCOTACAO_FRETE.AsFloat;
    dtCotacao.Date := cdsCotacaoCOTACAO_DATA.AsDateTime;
    Edit3.Text     := IntToStr(cdsCotacaoCOTACAO_CODIGO.AsInteger);
  end;
end;

procedure TfCompraCotacao2.editaItens;
begin
  dtEntrega.Date   := cdsCotacaoCOTACAO_DTENTREGA.AsDateTime;
  edPreco.Value    := cdsCotacaoCOTACAO_PRECO.AsFloat;
  edDesconto.Value := cdsCotacaoCOTACAO_DESCONTO.AsFloat;
  edIPI.Value      := cdsCotacaoCOTACAO_IPI.AsFloat;
  edObservacao.Text:= cdsCotacaoCOTACAO_OBSERVACAO.AsString;
end;

procedure TfCompraCotacao2.FormCreate(Sender: TObject);
begin
  //inherited;
  if (not dm.cdsPrazo.Active) then
    dm.cdsPrazo.open;
  if (not dm.cdsPrazo.IsEmpty) then
  begin
    dm.CdsPrazo.first;
    cbPrazo.Items.clear;
    while not dm.CdsPrazo.eof do
    begin
      cbPrazo.Items.Add(dm.cdsPrazoPARAMETRO.asString);
      dm.cdsPrazo.next;
    end;
  end;

end;

procedure TfCompraCotacao2.jvdbgrd2CellClick(Column: TColumn);
begin
  //inherited;
  // Edita Itens
  editaItens;
end;

procedure TfCompraCotacao2.btnGravarClick(Sender: TObject);
var str_altera: string;
  linha: integer;
begin
  //inherited;
  //cdsCotacao.ApplyUpdates(0);

  DecimalSeparator := '.';
  str_altera := 'UPDATE COMPRA_COTACAO SET ' +
    ' COTACAO_PRECO = ' + FloatToStr(edPreco.Value) + ', ';

  str_altera := str_altera + ' COTACAO_DTENTREGA = ' +
    QuotedStr(FormatDateTime('mm/dd/yyyy', dtEntrega.Date)) + ', ';

  str_altera := str_altera + ' COTACAO_PRAZO        = ' + QuotedStr(cbPrazo.Text) + ', ';
  if (cdsCotacao.Bof) then
    str_altera := str_altera + ' COTACAO_FRETE        = ' + FloatToStr(edFrete.Value) + ', '
  else
    str_altera := str_altera + ' COTACAO_FRETE        = 0, ';
  str_altera := str_altera + ' COTACAO_IPI        = ' + FloatToStr(edIPI.Value) + ', ';
  str_altera := str_altera + ' COTACAO_DESCONTO        = ' + FloatToStr(edDesconto.Value) + ', ';
  str_altera := str_altera + ' COTACAO_OBSERVACAO   = ' + QuotedStr(edObservacao.Text) + ', ';
  str_altera := str_altera + ' COTACAO_SITUACAO     = ' + QuotedStr('G');
  str_altera := str_altera + ' WHERE COTACAO_CODIGO = ' + IntToStr(cdsCotacaoCOTACAO_CODIGO.AsInteger);
  str_altera := str_altera + '   AND COTACAO_ITEM   = ' + QuotedStr(cdsCotacaoCOTACAO_ITEM.AsString);
  DecimalSeparator := ',';
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  try
    dm.sqlsisAdimin.ExecuteDirect(str_altera);
    dm.sqlsisAdimin.Commit(TD);

    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect('UPDATE COMPRA_SOLIC SET SOLIC_SITUACAO = ' +
      QuotedStr('C') + ' WHERE SOLIC_CODIGO = ' + IntToStr(cdsCotacaoCOTACAO_CODSOLIC.AsInteger)); // Altero o Status para C=Cotado
    dm.sqlsisAdimin.Commit(TD);

    cdsCotacao.DisableControls;
    linha := cdsCotacao.RecNo;
    if (cdsCotacao.Active) then
      cdsCotacao.Close;
    cdsCotacao.Params.ParamByName('FORNEC').AsInteger := StrToInt(Edit1.Text);
    cdsCotacao.Params.ParamByName('COD').AsInteger    := StrToInt(Edit3.Text);
    cdsCotacao.Open;
    cdsCotacao.RecNo := linha;
    cdsCotacao.EnableControls;
    cdsCotacao.Next;
    //MessageDlg('Alteração gravada com sucesso.', mtInformation, [mbOK], 0);
  except
    //dm.sqlsisAdimin.SQLConnection.getErrorMessage();
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro para gravar a alteraçao.', mtError, [mbOK], 0);
    exit;
  end;

end;

procedure TfCompraCotacao2.BitBtn1Click(Sender: TObject);
var st: string;
begin
 fCotacaoVer :=TfCotacaoVer.Create(Application);
 fCotacaoVer.item := cdsCotacaoCOTACAO_ITEM.AsString;
 try
   fCotacaoVer.ShowModal;
 finally
   fCotacaoVer.Free;
 end;
end;

procedure TfCompraCotacao2.btnIncluirClick(Sender: TObject);
var codMov: integer;
begin
  if (cdsPedido.Active) then
    cdsPedido.Close;
  cdsPedido.Params.ParamByName('FORNEC').AsInteger := cdsCotacaoCOTACAO_FORNEC.AsInteger;
  cdsPedido.Open;
  codMov := 0;
  if (cdsPedido.RecordCount > 0) then
  begin
    if  (MessageDlg('Existe pedido em aberto para este fornecedor, '  + #10#13 +
       ' Incluir neste pedido ? ',
       mtConfirmation, [mbYes, mbNo],0) = mrYes) then
    begin
      codMov := cdsPedido.Fields[0].AsInteger;
      if (cdsPedido.RecordCount > 1) then
      begin
        fListaPedido := TfListaPedido.Create(Application);
        try
          fListaPedido.dsPedido.DataSet := cdsPedido;
          fListaPedido.ShowModal;
          codMov := cdsPedido.Fields[0].AsInteger;
        finally
         fListaPedido.Free;
        end;
      end;
    end;
  end;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  try
    cdsCotacao.First;
    //while (not cdsCotacao.Eof) do begin
      //if (cdsCotacaoCOTACAO_PRECO.AsFloat > 0) then
      begin
        //dm.sqlsisAdimin.ExecuteDirect('UPDATE COMPRA_COTACAO SET COTACAO_SITUACAO = ' +
        //  QuotedStr('C') + ' WHERE COTACAO_CODIGO = ' + IntToStr(cdsCotacaoCOTACAO_CODIGO.AsInteger));
        dm.sqlsisAdimin.ExecuteDirect('EXECUTE PROCEDURE GERA_PEDIDO_PROC(' +
          IntToStr(cdsCotacaoCOTACAO_CODIGO.AsInteger) + ', ' +
          IntToStr(cdsCotacaoCOTACAO_FORNEC.AsInteger) + ', ' +
          IntToStr(codMov)  + ')' );
      end;
      //cdsCotacao.Next;
    //end;
    dm.sqlsisAdimin.Commit(TD);
    MessageDlg('Pedido gerado com sucesso.', mtInformation, [mbOK], 0);
  except
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro para gerar o pedido.', mtError, [mbOK], 0);
    exit;
  end;
end;

procedure TfCompraCotacao2.cdsCotacaoAfterScroll(DataSet: TDataSet);
begin
  inherited;
  editaItens;
end;

end.
