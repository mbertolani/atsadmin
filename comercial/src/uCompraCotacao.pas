unit uCompraCotacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, Grids, DBGrids, JvExDBGrids, JvDBGrid, FMTBcd, DBClient,
  Provider, SqlExpr, dbxpress, dateutils, DBCtrls, rpcompobase, rpvclreport,
  JvExStdCtrls, JvHtControls, Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, JvBaseEdits;

type
  TfCompraCotacao = class(TfPai_new)
    sqlSolic: TSQLQuery;
    dspSolic: TDataSetProvider;
    cdsSolic: TClientDataSet;
    dsSolic: TDataSource;
    cdsSolicSOLIC_CODIGO: TIntegerField;
    cdsSolicSOLIC_DATA: TDateField;
    cdsSolicSOLIC_PRODUTO: TStringField;
    cdsSolicSOLIC_QUANTIDADE: TFloatField;
    cdsSolicSOLIC_SOLICITANTE: TStringField;
    cdsSolicSOLIC_SITUACAO: TStringField;
    cdsSolicSOLIC_APROVACAO: TStringField;
    cdsSolicSOLIC_DATAAPROV: TDateField;
    cdsSolicSOLIC_DESCRICAO: TStringField;
    cdsSolicSOLIC_TIPO: TStringField;
    sqlCotacao: TSQLQuery;
    dspCotacao: TDataSetProvider;
    cdsCotacao: TClientDataSet;
    dsCotacao: TDataSource;
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
    sqlBusca: TSQLQuery;
    BitBtn4: TBitBtn;
    VCLReport1: TVCLReport;
    SQLQuery1: TSQLQuery;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1COTACAO_FORNEC: TIntegerField;
    ClientDataSet1NOMEFORNECEDOR: TStringField;
    cdsCotacaoCOTACAO_DTENTREGA: TDateField;
    cdsCotacaoCOTACAO_PRAZO: TStringField;
    cdsCotacaoCOTACAO_OBSERVACAO: TStringField;
    cdsSolicSOLIC_DTNECESSIT: TDateField;
    cdsSolicSOLIC_OBSERVACAO: TStringField;
    GroupBox1: TGroupBox;
    jvdbgrd1: TJvDBGrid;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    btnClienteProcura: TBitBtn;
    Edit2: TEdit;
    btnIncluiCotacao: TBitBtn;
    BitBtn1: TBitBtn;
    btnProcCotacao: TBitBtn;
    GroupBox3: TGroupBox;
    JvDBGrid1: TJvDBGrid;
    GroupBox4: TGroupBox;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    dtEntrega: TJvDatePickerEdit;
    cbPrazo: TComboBox;
    edPreco: TJvCalcEdit;
    edObservacao: TEdit;
    jvdbgrd2: TJvDBGrid;
    cdsCotacaoCOTACAO_IPI: TFloatField;
    cdsCotacaoCOTACAO_DESCONTO: TFloatField;
    cdsCotacaoCOTACAO_FRETE: TFloatField;
    edFrete: TEdit;
    edIPI: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    edDesconto: TEdit;
    Label8: TLabel;
    cdsSolicFAMILIA: TStringField;
    cdsSolicCATEGORIA: TStringField;
    cdsSolicMARCA: TStringField;
    procedure btnIncluiCotacaoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbnvgr1Click(Sender: TObject; Button: TNavigateBtn);
    procedure Edit1Exit(Sender: TObject);
    procedure btnClienteProcuraClick(Sender: TObject);
    procedure btnProcCotacaoClick(Sender: TObject);
    procedure dsCotacaoStateChange(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure JvDBGrid1CellClick(Column: TColumn);
    procedure jvdbgrd1CellClick(Column: TColumn);
    procedure btnIncluirClick(Sender: TObject);
    procedure jvdbgrd2CellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
     TD: TTransactionDesc;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCompraCotacao: TfCompraCotacao;

implementation

uses UDm, uProcurar;

{$R *.dfm}

procedure TfCompraCotacao.btnIncluiCotacaoClick(Sender: TObject);
var str: string;
  codCotacao: Integer;

begin
  if (sqlBusca.Active) then
    sqlBusca.Close;
  sqlBusca.SQL.Clear;
  sqlBusca.SQL.Add('SELECT MAX(COTACAO_CODIGO) FROM COMPRA_COTACAO');
  sqlBusca.Open;
  codCotacao := sqlBusca.Fields[0].AsInteger + 1;
  str := 'INSERT INTO COMPRA_COTACAO (COTACAO_CODIGO, COTACAO_DATA, COTACAO_FORNEC, ' +
    ' COTACAO_SOLICIT, COTACAO_ITEM, COTACAO_ITEMDESCRICAO, COTACAO_SITUACAO, ' +
    ' COTACAO_QTDE, COTACAO_PRECO, COTACAO_USER, COTACAO_CODSOLIC, COTACAO_TIPO, ' +
    ' COTACAO_DTENTREGA, COTACAO_OBSERVACAO)' +
    ' VALUES (';
  str := str + IntToStr(codCotacao) + ', ';
  str := str + QuotedStr(FormatDateTime('mm/dd/yyyy',today)) + ', ';
  str := str + edit1.Text + ', ';  // Fornecedor
  str := str + QuotedStr(cdsSolicSOLIC_SOLICITANTE.AsString) + ', ';
  str := str + QuotedStr(cdsSolicSOLIC_PRODUTO.AsString) + ', ';
  str := str + QuotedStr(cdsSolicSOLIC_DESCRICAO.AsString) + ', ';
  str := str + QuotedStr('P') + ', ';
  DecimalSeparator := '.';
  str := str + FloatToStr(cdsSolicSOLIC_QUANTIDADE.AsFloat) + ', ';
  DecimalSeparator := ',';
  str := str + '0, ';
  str := str + QuotedStr(DM.varLogado) + ', ';
  str := str + IntToStr(cdsSolicSOLIC_CODIGO.AsInteger) + ', ';
  str := str + QuotedStr(cdsSolicSOLIC_TIPO.AsString) + ', ';
  str := str + QuotedStr(FormatDateTime('mm/dd/yyyy',cdsSolicSOLIC_DTNECESSIT.AsDateTime)) + ', ';
  str := str + QuotedStr(cdsSolicSOLIC_OBSERVACAO.AsString);
  str := str + ')';
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  try
    dm.sqlsisAdimin.ExecuteDirect(str);
    dm.sqlsisAdimin.ExecuteDirect('UPDATE COMPRA_SOLIC SET SOLIC_SITUACAO = ' +
      QuotedStr('G') + ' WHERE SOLIC_CODIGO = ' + IntToStr(cdsSolicSOLIC_CODIGO.AsInteger)); // Altero o Status para G=Gerado Cotacao
    dm.sqlsisAdimin.Commit(TD);
    MessageDlg('Cotação gravada com sucesso.', mtInformation, [mbOK], 0);
  except
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro para gravar a cotação.', mtError, [mbOK], 0);
    exit;
  end;

  if (cdsCotacao.Active) then
    cdsCotacao.Close;
  cdsCotacao.Params.ParamByName('FORNEC').AsInteger := StrToInt(edit1.Text);
  cdsCotacao.Open;


  if (cdsSolic.Active) then
    cdsSolic.Close;
  cdsSolic.Open;

end;

procedure TfCompraCotacao.FormShow(Sender: TObject);
begin
  //inherited;
  if (cdsSolic.Active) then
    cdsSolic.Close;
  cdsSolic.Open;
end;

procedure TfCompraCotacao.dbnvgr1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  //inherited;
end;

procedure TfCompraCotacao.Edit1Exit(Sender: TObject);
begin
  if dm.scds_forn_proc.Active then
    dm.scds_forn_proc.Close;
  dm.scds_forn_proc.Params[0].Clear;
  dm.scds_forn_proc.Params[1].Clear;
  dm.scds_forn_proc.Params[2].AsInteger:=StrToInt(Edit1.Text);
  dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
  dm.scds_forn_proc.Params.ParamByName('pSegmento').AsInteger := 1;
  dm.scds_forn_proc.Open;
  if dm.scds_forn_proc.IsEmpty then begin
    MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
    [mbOk], 0);
    //btnClienteProcura.Click;
    exit;
  end;
  edit2.text     := dm.scds_forn_procNOMEFORNECEDOR.AsString;
  //dtEntrega.Date := today + dm.scds_forn_procPRAZOPAGAMENTO.AsInteger;

  if (cdsCotacao.Active) then
    cdsCotacao.Close;
  cdsCotacao.Params.ParamByName('FORNEC').AsInteger := StrToInt(Edit1.Text);
  cdsCotacao.Open;

  if (ClientDataSet1.Active) then
    ClientDataSet1.Close;


end;

procedure TfCompraCotacao.btnClienteProcuraClick(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,dm.scds_forn_proc);
  dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
  dm.scds_forn_proc.Params.ParamByName('pSegmento').AsInteger := 0;
  fProcurar.RadioGroup2.Visible := True;
  fProcurar.BtnProcurar.Click;
  fProcurar.EvDBFind1.DataField := 'NOMEFORNECEDOR';
  fProcurar.btnIncluir.Visible := True;
  try
    varForm1 := 'compra';
    cod_forn := 0;
    nome_forn := '';
    fProcurar.ShowModal;
    Edit1.Text := IntToStr(dm.scds_forn_procCODFORNECEDOR.AsInteger);
    Edit2.Text := dm.scds_forn_procNOMEFORNECEDOR.AsString;
  finally
    dm.scds_forn_proc.Close;
    fProcurar.Free;
  end;

end;

procedure TfCompraCotacao.btnProcCotacaoClick(Sender: TObject);
begin
  if (cdsCotacao.Active) then
    cdsCotacao.Close;
  cdsCotacao.Params.ParamByName('FORNEC').AsInteger := StrToInt(Edit1.Text);
  cdsCotacao.Open;

end;

procedure TfCompraCotacao.dsCotacaoStateChange(Sender: TObject);
begin
  //inherited;
//  if (dsCotacao.State in (dsEdit, dsInsert)) then
    btnGravar.Enabled := dsCotacao.State in [dsEdit, dsInsert];
end;

procedure TfCompraCotacao.btnGravarClick(Sender: TObject);
var str_altera: string;
begin
  //inherited;
  //cdsCotacao.ApplyUpdates(0);

  DecimalSeparator := '.';
  str_altera := 'UPDATE COMPRA_COTACAO SET ' +
    ' COTACAO_PRECO = ' + FloatToStr(edPreco.Value) + ', ';

  str_altera := str_altera + ' COTACAO_DTENTREGA = ' +
    QuotedStr(FormatDateTime('mm/dd/yyyy', dtEntrega.Date)) + ', ';

  str_altera := str_altera + ' COTACAO_PRAZO        = ' + QuotedStr(cbPrazo.Text) + ', ';
  str_altera := str_altera + ' COTACAO_FRETE        = ' + edFrete.Text + ', ';
  str_altera := str_altera + ' COTACAO_IPI        = ' + edIPI.Text + ', ';
  str_altera := str_altera + ' COTACAO_DESCONTO        = ' + edDesconto.Text + ', ';
  str_altera := str_altera + ' COTACAO_OBSERVACAO   = ' + QuotedStr(edObservacao.Text);
  str_altera := str_altera + ' WHERE COTACAO_CODIGO = ' + IntToStr(cdsCotacaoCOTACAO_CODIGO.AsInteger);
  DecimalSeparator := ',';
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  try
    dm.sqlsisAdimin.ExecuteDirect(str_altera);
    dm.sqlsisAdimin.Commit(TD);

    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect('UPDATE COMPRA_SOLIC SET SOLIC_SITUACAO = ' +
      QuotedStr('C') + ' WHERE SOLIC_CODIGO = ' + IntToStr(cdsSolicSOLIC_CODIGO.AsInteger)); // Altero o Status para C=Cotado
    dm.sqlsisAdimin.Commit(TD);

    if (cdsCotacao.Active) then
      cdsCotacao.Close;
    cdsCotacao.Params.ParamByName('FORNEC').AsInteger := ClientDataSet1COTACAO_FORNEC.AsInteger;
    cdsCotacao.Open;

    MessageDlg('Alteração gravada com sucesso.', mtInformation, [mbOK], 0);
  except
    //dm.sqlsisAdimin.SQLConnection.getErrorMessage();  
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro para gravar a alteraçao.', mtError, [mbOK], 0);
    exit;
  end;
end;

procedure TfCompraCotacao.BitBtn4Click(Sender: TObject);
begin
  if (not cdsCotacao.IsEmpty) then
  begin
    VCLReport1.FileName := str_relatorio + 'compra_cotacao.rep';
    VCLReport1.Title := 'compra_cotacao.rep';
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport1.Report.Params.ParamByName('PFORNEC').Value := cdsCotacaoCOTACAO_FORNEC.AsInteger;
    VCLReport1.Report.Params.ParamByName('PDATA').Value := cdsCotacaoCOTACAO_DATA.AsDateTime;
    VCLReport1.Execute;
  end;
end;

procedure TfCompraCotacao.JvDBGrid1CellClick(Column: TColumn);
begin
  if (cdsCotacao.Active) then
    cdsCotacao.Close;
  cdsCotacao.Params.ParamByName('FORNEC').AsInteger := ClientDataSet1COTACAO_FORNEC.AsInteger;
  cdsCotacao.Open;


end;

procedure TfCompraCotacao.jvdbgrd1CellClick(Column: TColumn);
begin
  inherited;
  if (ClientDataSet1.Active) then
    ClientDataSet1.Close;
  ClientDataSet1.Params.ParamByName('ITEM').AsString := cdsSolicSOLIC_PRODUTO.AsString;
  ClientDataSet1.Open;
end;

procedure TfCompraCotacao.btnIncluirClick(Sender: TObject);
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  try
    cdsCotacao.First;
    while (not cdsCotacao.Eof) do begin
      if (cdsCotacaoCOTACAO_PRECO.AsFloat > 0) then
      begin
        dm.sqlsisAdimin.ExecuteDirect('UPDATE COMPRA_COTACAO SET COTACAO_SITUACAO = ' +
          QuotedStr('C') + ' WHERE COTACAO_CODIGO = ' + IntToStr(cdsCotacaoCOTACAO_CODIGO.AsInteger));
      end;
      cdsCotacao.Next;
    end;
    dm.sqlsisAdimin.Commit(TD);
    MessageDlg('Pedido gerado com sucesso.', mtInformation, [mbOK], 0);
    if (cdsSolic.Active) then
      cdsSolic.Close;
    cdsSolic.Open;
  except
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro para gerar o pedido.', mtError, [mbOK], 0);
    exit;
  end;

end;

procedure TfCompraCotacao.jvdbgrd2CellClick(Column: TColumn);
begin
  //inherited;
  cdsCotacao.Edit;
  dtEntrega.Date    := cdsCotacaoCOTACAO_DTENTREGA.AsDateTime;
  cbPrazo.Text      := cdsCotacaoCOTACAO_PRAZO.AsString;
  edObservacao.Text := cdsCotacaoCOTACAO_OBSERVACAO.AsString;
  edPreco.Value     := cdsCotacaoCOTACAO_PRECO.AsFloat;
end;

procedure TfCompraCotacao.FormCreate(Sender: TObject);
begin
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

procedure TfCompraCotacao.btnExcluirClick(Sender: TObject);
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  try
    dm.sqlsisAdimin.ExecuteDirect('DELETE FROM COMPRA_COTACAO WHERE COTACAO_CODIGO = ' +
      IntToStr(cdsCotacaoCOTACAO_CODIGO.AsInteger));
    dm.sqlsisAdimin.Commit(TD);
    MessageDlg('Item excluído com sucesso.', mtInformation, [mbOK], 0);
    if (cdsCotacao.Active) then
      cdsCotacao.Close;
    cdsCotacao.Params.ParamByName('FORNEC').AsInteger := StrToInt(edit1.Text);
    cdsCotacao.Open;
  except
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro para excluir o pedido.', mtError, [mbOK], 0);
    exit;
  end;

end;

end.
