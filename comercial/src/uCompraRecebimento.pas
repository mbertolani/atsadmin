unit uCompraRecebimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, FMTBcd, DBClient, Provider, SqlExpr, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, Mask, DBCtrls, JvExMask,
  JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, dbxpress;

type
  TfCompraRecebimento = class(TfPai_new)
    rgStatus: TRadioGroup;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edPedido: TEdit;
    Label2: TLabel;
    edFornec: TEdit;
    edFornecNome: TEdit;
    btnClienteProcura: TBitBtn;
    JvDBGrid1: TJvDBGrid;
    dspPedido: TDataSetProvider;
    cdsPedido: TClientDataSet;
    sqlPedido: TSQLDataSet;
    sqlPedidoCODDETALHE: TIntegerField;
    sqlPedidoCODMOVIMENTO: TIntegerField;
    sqlPedidoDATA_ENTREGA: TDateField;
    sqlPedidoCODPRO: TStringField;
    sqlPedidoPRODUTO: TStringField;
    sqlPedidoQUANTIDADE: TFloatField;
    sqlPedidoPRECO: TFloatField;
    sqlPedidoVALTOTAL: TFloatField;
    cdsPedidoCODDETALHE: TIntegerField;
    cdsPedidoCODMOVIMENTO: TIntegerField;
    cdsPedidoDATA_ENTREGA: TDateField;
    cdsPedidoCODPRO: TStringField;
    cdsPedidoPRODUTO: TStringField;
    cdsPedidoQUANTIDADE: TFloatField;
    cdsPedidoPRECO: TFloatField;
    cdsPedidoVALTOTAL: TFloatField;
    BitBtn1: TBitBtn;
    sqlPedidoRECEBIDO: TFloatField;
    cdsPedidoRECEBIDO: TFloatField;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    cbMes: TComboBox;
    dta1: TJvDatePickerEdit;
    dta2: TJvDatePickerEdit;
    BitBtn2: TBitBtn;
    sqlPedidoCONTROLE: TStringField;
    cdsPedidoCONTROLE: TStringField;
    sqlPedidoCODPEDIDO: TIntegerField;
    cdsPedidoCODPEDIDO: TIntegerField;
    procedure edFornecExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure cdsPedidoBeforePost(DataSet: TDataSet);
    procedure btnProcurarClick(Sender: TObject);
    procedure cbMesChange(Sender: TObject);
    procedure JvDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnClienteProcuraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCompraRecebimento: TfCompraRecebimento;

implementation

uses uUtils, UDm, uProcurar;

{$R *.dfm}

procedure TfCompraRecebimento.edFornecExit(Sender: TObject);
begin
  //inherited;
end;

procedure TfCompraRecebimento.FormCreate(Sender: TObject);
begin
  //inherited;

end;

procedure TfCompraRecebimento.btnGravarClick(Sender: TObject);
begin
  inherited;
  //Teste
end;

procedure TfCompraRecebimento.cdsPedidoBeforePost(DataSet: TDataSet);
 //var str_sql : string;
  //TD: TTransactionDesc;
begin
  if (cdsPedidoRECEBIDO.AsFloat > cdsPedidoQUANTIDADE.AsFloat) then
  begin
    MessageDlg('Quantidade inválida (Maior do que o pedido).', mtWarning, [mbOK], 0);
    cdsPedido.Cancel;
    exit;
  end;
  {if (cdsPedidoRECEBIDO.AsFloat < cdsPedidoQUANTIDADE.AsFloat) then
  begin
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
    try
      str_sql := 'INSERT '
      dm.sqlsisAdimin.ExecuteDirect(str_sql);
      dm.sqlsisAdimin.Commit(TD);
    except
      dm.sqlsisAdimin.Rollback(TD);
      MessageDlg('Erro para efetuar a baixa.', mtError, [mbOK], 0);
      exit;
    end;
  end;}
  inherited;
end;

procedure TfCompraRecebimento.btnProcurarClick(Sender: TObject);
var str, stra: string;
begin
  stra := '';

  if (cdsPedido.Active) then
    cdsPedido.Close;

  if (rgStatus.ItemIndex = 0) then
  begin
    str := 'select md.CODDETALHE, md.CODMOVIMENTO, m.DATA_ENTREGA, p.CODPRO, p.PRODUTO' +
      ', (md.QUANTIDADE - md.RECEBIDO) QUANTIDADE, md.PRECO, md.VALTOTAL , md.RECEBIDO' +
      ',  m.CONTROLE ' +
      ' from MOVIMENTODETALHE md ' +
      ' inner join MOVIMENTO m on  m.CODMOVIMENTO  = md.CODMOVIMENTO ' +
      ' inner join PRODUTOS   p on  md.CODPRODUTO    = p.CODPRODUTO ' +
      ' where m.CODNATUREZA   = 5 ';

    stra := stra + ' and ((m.STATUS = 3) OR (m.STATUS = 4)) ';
    stra := stra + ' and ((md.QUANTIDADE - md.RECEBIDO) > 0) ';
    stra := stra + ' and md.RECEBIDO = 0';
    BitBtn1.Enabled := True;
  end;

  if (rgStatus.ItemIndex = 1) then
  begin
    str := 'select md.CODDETALHE, md.CODMOVIMENTO, m.DATA_ENTREGA, p.CODPRO, p.PRODUTO' +
      ', md.RECEBIDO QUANTIDADE, md.PRECO, md.VALTOTAL , md.RECEBIDO' +
      ',  m.CONTROLE ' +
      ' from MOVIMENTODETALHE md ' +
      ' inner join MOVIMENTO m on  m.CODMOVIMENTO  = md.CODMOVIMENTO ' +
      ' inner join PRODUTOS   p on  md.CODPRODUTO    = p.CODPRODUTO ' +
      ' where m.CODNATUREZA   = 5 ';

    stra := stra + ' and m.STATUS = 5';
    BitBtn1.Enabled := False;
  end;

  if (edFornec.Text <> '') then
  begin
    stra := stra + ' and m.CODFORNECEDOR = ' + edFornec.Text;
  end;

  if (edPedido.Text <> '') then
  begin
    stra := stra + ' and m.CODPEDIDO = ' + edPedido.Text;
  end;

  // Período
  if ((dta1.Checked) and (dta2.Checked)) then
  begin
    stra := stra + ' and m.DATA_ENTREGA BETWEEN ' +
      QuotedStr(FormatDateTime('mm/dd/yyyy', dta1.Date)) + ' AND '  +
      QuotedStr(FormatDateTime('mm/dd/yyyy', dta2.Date));
  end;

  cdsPedido.CommandText := str + stra;

  cdsPedido.Open;
end;

procedure TfCompraRecebimento.cbMesChange(Sender: TObject);
var  periodo : TUtils;
begin
  periodo := TUtils.Create;
  periodo.criaIni(cbMes.text);
  periodo.criaFim(cbMes.text);
  dta1.Text := periodo.PeriodoIni;
  dta2.Text := periodo.PeriodoFim;
  periodo.Destroy;
end;

procedure TfCompraRecebimento.JvDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = #13) then
  begin
    if (not cdsPedido.Eof) then
      cdsPedido.Next;
  end;
end;

procedure TfCompraRecebimento.BitBtn1Click(Sender: TObject);
var TD: TTransactionDesc;
  tudo, alteraStatus: String;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  try
    cdsPedido.DisableControls;
    cdsPedido.First;
    DecimalSeparator := '.';
    tudo := 'S';
    While not cdsPedido.Eof do
    begin
      if (cdsPedidoRECEBIDO.AsFloat > 0) then
      begin
        dm.sqlsisAdimin.ExecuteDirect('UPDATE MOVIMENTODETALHE SET RECEBIDO = ' +
          FloatToStr(cdsPedidoRECEBIDO.asFloat) +
          ' WHERE CODDETALHE = ' + IntToStr(cdsPedidoCODDETALHE.AsInteger));
      end;
      if (cdsPedidoRECEBIDO.AsFloat < cdsPedidoQUANTIDADE.AsFloat) then
        tudo := 'N';
      cdsPedido.Next;
    end;
    DecimalSeparator := ',';
    if (tudo = 'S') then
    begin
      alteraStatus := 'UPDATE MOVIMENTO SET STATUS = 5 WHERE CODMOVIMENTO = ' + IntToStr(cdsPedidoCODMOVIMENTO.AsInteger);
    end else begin
      alteraStatus := 'UPDATE MOVIMENTO SET STATUS = 4 WHERE CODMOVIMENTO = ' + IntToStr(cdsPedidoCODMOVIMENTO.AsInteger);
    end;
    dm.sqlsisAdimin.ExecuteDirect(alteraStatus);
    dm.sqlsisAdimin.Commit(TD);
    cdsPedido.EnableControls;
    MessageDlg('Recebimento Gravado com sucesso.', mtInformation, [mbOK], 0);
  except
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro para gravar o recebimento.', mtError, [mbOK], 0);
    DecimalSeparator := ',';
    exit;
  end;
  bitbtn2.Click;
end;

procedure TfCompraRecebimento.btnClienteProcuraClick(Sender: TObject);
begin
  inherited;
  fProcurar:= TfProcurar.Create(self,dm.scds_forn_proc);
  dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
  dm.scds_forn_proc.Params.ParamByName('pSegmento').AsInteger := 0;
  fProcurar.RadioGroup2.Visible := True;
  fProcurar.BtnProcurar.Click;
  fProcurar.EvDBFind1.DataField := 'NOMEFORNECEDOR';
  fProcurar.btnIncluir.Visible := True;
  try
    fProcurar.ShowModal;
    edFornec.Text     := IntToStr(dm.scds_forn_procCODFORNECEDOR.AsInteger);
    edFornecNome.Text := dm.scds_forn_procNOMEFORNECEDOR.AsString;
  finally
    dm.scds_forn_proc.Close;
    fProcurar.Free;
  end;
end;

end.
