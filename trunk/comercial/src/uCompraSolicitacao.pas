unit uCompraSolicitacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, Mask, DBCtrls, FMTBcd, SqlExpr, DBClient, Provider;

type
  TfSolicitacaoCompra = class(TfPai_new)
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    edRespAprovacao: TEdit;
    sq: TSQLQuery;
    sdsSolic: TSQLDataSet;
    dspSolic: TDataSetProvider;
    cdsSolic: TClientDataSet;
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
    dsSolic: TDataSource;
    sqBusca: TSQLQuery;
    procedure DBEdit4Exit(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure cdsSolicNewRecord(DataSet: TDataSet);
    procedure dsSolicStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSolicitacaoCompra: TfSolicitacaoCompra;

implementation

uses uCompraSolicProc, uProdutoProc, UDm;

{$R *.dfm}

procedure TfSolicitacaoCompra.DBEdit4Exit(Sender: TObject);
begin
  //dm.sqBusca
  edRespAprovacao.Text := 'Responsavel';
end;

procedure TfSolicitacaoCompra.btnProcurarClick(Sender: TObject);
begin
  inherited;
 fCompraSolicProc := TfCompraSolicProc.Create(Application);
 try
   fCompraSolicProc.ShowModal;
 finally
   fCompraSolicProc.Free;
 end;

  //if (dmcompra.
end;

procedure TfSolicitacaoCompra.BitBtn1Click(Sender: TObject);
begin
  inherited;
 fProdutoProc := TfProdutoProc.Create(Application);
 try
   fProdutoProc.ShowModal;
   if (cdsSolic.State in [dsEdit, dsInsert]) then
   begin
     cdsSolicSOLIC_PRODUTO.AsString   := fProdutoProc.cds.Fields[0].AsString;
     cdsSolicSOLIC_DESCRICAO.AsString := fProdutoProc.cds.Fields[1].AsString;
     cdsSolicSOLIC_TIPO.AsString      := fProdutoProc.cds.Fields[2].AsString;
   end;
  finally
    fProdutoProc.Free;
  end;
end;

procedure TfSolicitacaoCompra.btnGravarClick(Sender: TObject);
begin
  if (sq.Active) then
    sq.Close;
  sq.SQL.Clear;
  sq.SQL.Add('SELECT MAX(SOLIC_CODIGO) FROM COMPRA_SOLIC');
  sq.Open;
  cdsSolicSOLIC_CODIGO.AsInteger := sq.Fields[0].AsInteger + 1;
  inherited;
end;

procedure TfSolicitacaoCompra.btnIncluirClick(Sender: TObject);
begin
  inherited;
  if (not cdsSolic.Active) then
    cdsSolic.Open;
end;

procedure TfSolicitacaoCompra.cdsSolicNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsSolicSOLIC_CODIGO.AsInteger      := 1;
  cdsSolicSOLIC_DATA.AsDateTime       := now;
  cdsSolicSOLIC_SOLICITANTE.AsString  := dm.varLogado; // Usuario que gerou a solicitacao.
  cdsSolicSOLIC_SITUACAO.AsString     := 'P';
  cdsSolicSOLIC_APROVACAO.AsString    := dm.userAprovaCompra;
end;

procedure TfSolicitacaoCompra.dsSolicStateChange(Sender: TObject);
begin
  inherited;
  if (dsSolic.State in [dsEdit, dsInsert]) then
  begin
    DBEdit1.Enabled := True;
    DBEdit1.Color   := clWhite;
    DBEdit2.Enabled := True;
    DBEdit2.Color   := clWhite;
    DBEdit3.Enabled := True;
    DBEdit3.Color   := clWhite;
    DBEdit4.Enabled := True;
    DBEdit4.Color   := clWhite;
  end
  else begin
    DBEdit1.Enabled := False;
    DBEdit1.Color   := clSilver;
    DBEdit2.Enabled := False;
    DBEdit2.Color   := clSilver;
    DBEdit3.Enabled := False;
    DBEdit3.Color   := clSilver;
    DBEdit4.Enabled := False;
    DBEdit4.Color   := clSilver;
  end;
end;

procedure TfSolicitacaoCompra.FormShow(Sender: TObject);
begin
  inherited;
  DBEdit1.Enabled := False;
  DBEdit1.Color   := clSilver;
  DBEdit2.Enabled := False;
  DBEdit2.Color   := clSilver;
  DBEdit3.Enabled := False;
  DBEdit3.Color   := clSilver;
  DBEdit4.Enabled := False;
  DBEdit4.Color   := clSilver;
  edRespAprovacao.Enabled := False;
end;

end.
