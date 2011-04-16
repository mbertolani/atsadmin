unit uCompraRecebimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, FMTBcd, DBClient, Provider, SqlExpr, Grids, DBGrids,
  JvExDBGrids, JvDBGrid;

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
    procedure edFornecExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure cdsPedidoAfterPost(DataSet: TDataSet);
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

procedure TfCompraRecebimento.cdsPedidoAfterPost(DataSet: TDataSet);
begin
  inherited;
  cdsPedido.ApplyUpdates(0);
end;

end.
