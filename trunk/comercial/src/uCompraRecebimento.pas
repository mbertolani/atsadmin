unit uCompraRecebimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, FMTBcd, DBClient, Provider, SqlExpr, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, Mask, DBCtrls;

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
    sqlPedidoRECEBIDO: TBCDField;
    cdsPedidoRECEBIDO: TBCDField;
    BitBtn1: TBitBtn;
    procedure edFornecExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure cdsPedidoBeforePost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCompraRecebimento: TfCompraRecebimento;

implementation

uses UDm;

{$R *.dfm}

procedure TfCompraRecebimento.edFornecExit(Sender: TObject);
begin
  //inherited;
  if (cdsPedido.Active) then
    cdsPedido.Close;
  cdsPedido.Params[0].AsInteger := StrToInt(edFornec.Text);
  cdsPedido.Open;
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

procedure TfCompraRecebimento.BitBtn1Click(Sender: TObject);
begin
  //inherited;
  try
    cdsPedido.ApplyUpdates(0);
  except
  end;
end;

end.
