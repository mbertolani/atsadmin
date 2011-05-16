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
    procedure edFornecExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure cdsPedidoBeforePost(DataSet: TDataSet);
    procedure btnProcurarClick(Sender: TObject);
    procedure cbMesChange(Sender: TObject);
    procedure JvDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCompraRecebimento: TfCompraRecebimento;

implementation

uses uUtils, UDm;

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
  str := 'select md.CODDETALHE, md.CODMOVIMENTO, m.DATA_ENTREGA, p.CODPRO, p.PRODUTO' +
    ', (md.QUANTIDADE - md.RECEBIDO) QUANTIDADE, md.PRECO, md.VALTOTAL , md.RECEBIDO' +
    ',  m.CONTROLE ' +
    ' from MOVIMENTODETALHE md ' +
    ' inner join MOVIMENTO m on  m.CODMOVIMENTO  = md.CODMOVIMENTO ' +
    ' inner join PRODUTOS   p on  md.CODPRODUTO    = p.CODPRODUTO ' +
    ' where m.CODNATUREZA   = 5 ' +
    '   and m.STATUS        = 3 ' +
    '   and ((md.QUANTIDADE - md.RECEBIDO) > 0) ' +
    '   and md.RECEBIDO = 0';

  if (cdsPedido.Active) then
    cdsPedido.Close;

  if (rgStatus.ItemIndex = 0) then
    stra := stra + ' and md.STATUS is null ';

  if (edFornec.Text <> '') then
  begin
    stra := stra + ' and m.CODFORNECEDOR = ' + edFornec.Text;
  end;

  if (edPedido.Text <> '') then
  begin
    stra := stra + ' and m.CONTROLE = ' + QuotedStr(edPedido.Text);
  end;

  // Período
  stra := stra + ' and m.DATA_ENTREGA BETWEEN ' +
    QuotedStr(FormatDateTime('mm/dd/yyyy', dta1.Date)) + ' AND '  +
    QuotedStr(FormatDateTime('mm/dd/yyyy', dta2.Date));

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
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  try
    cdsPedido.DisableControls;
    cdsPedido.First;
    DecimalSeparator := '.';
    While not cdsPedido.Eof do
    begin
      if (cdsPedidoRECEBIDO.AsFloat > 0) then
      begin
        dm.sqlsisAdimin.ExecuteDirect('UPDATE MOVIMENTODETALHE SET RECEBIDO = ' +
          FloatToStr(cdsPedidoRECEBIDO.asFloat) +
          ' WHERE CODDETALHE = ' + IntToStr(cdsPedidoCODDETALHE.AsInteger));
      end;    
      cdsPedido.Next;
    end;
    DecimalSeparator := ',';
    dm.sqlsisAdimin.Commit(TD);
    cdsPedido.EnableControls;
    MessageDlg('Recebimento Gravado com sucesso.', mtInformation, [mbOK], 0);
  except
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro para gravar o recebimento.', mtError, [mbOK], 0);
    DecimalSeparator := ',';
    exit;
  end;

end;

end.
