unit u_SIMILARES;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls, Buttons,
  Grids, DBGrids, JvExDBGrids, JvDBGrid, ExtCtrls, MMJPanel, RXCtrls,DBXpress;

type
  TF_SIMILARES = class(TForm)
    MMJPanel1: TMMJPanel;
    s_produto: TSQLDataSet;
    p_produto: TDataSetProvider;
    ds_produto: TClientDataSet;
    d_produto: TDataSource;
    d_similar: TDataSource;
    ds_similar: TClientDataSet;
    p_similar: TDataSetProvider;
    s_similar: TSQLDataSet;
    ds_produtoCODPRO: TStringField;
    ds_produtoPRODUTO: TStringField;
    ds_produtoVALORUNITARIOATUAL: TFloatField;
    ds_produtoPRECOMEDIO: TBCDField;
    s_similarID_SIMILAR: TIntegerField;
    s_similarID_PRODUTO: TIntegerField;
    s_similarCODPRO: TStringField;
    s_similarCODPROSIMILAR: TStringField;
    ds_similarID_SIMILAR: TIntegerField;
    ds_similarID_PRODUTO: TIntegerField;
    ds_similarCODPRO: TStringField;
    ds_similarCODPROSIMILAR: TStringField;
    ds_produtoMARCA: TStringField;
    s_similarPRODUTO: TStringField;
    s_similarMARCA: TStringField;
    ds_similarPRODUTO: TStringField;
    ds_similarMARCA: TStringField;
    busca: TSQLDataSet;
    buscaMARCA: TStringField;
    grp4: TGroupBox;
    JvDBGrid2: TJvDBGrid;
    s_produtoCODPRODUTO: TIntegerField;
    s_produtoCODPRO: TStringField;
    s_produtoPRODUTO: TStringField;
    s_produtoVALORUNITARIOATUAL: TFloatField;
    s_produtoPRECOMEDIO: TBCDField;
    s_produtoMARCA: TStringField;
    ds_produtoCODPRODUTO: TIntegerField;
    busca_prod: TSQLDataSet;
    MMJPanel2: TMMJPanel;
    btn1: TBitBtn;
    edt1: TEdit;
    lbl1: TLabel;
    cbb1: TComboBox;
    lbl3: TLabel;
    RxLabel1: TRxLabel;
    lbl6: TLabel;
    edt3: TEdit;
    btn4: TBitBtn;
    btn5: TBitBtn;
    btn8: TBitBtn;
    grp1: TGroupBox;
    JvDBGrid1: TJvDBGrid;
    p_buscaprod: TDataSetProvider;
    ds_buscaprod: TClientDataSet;
    ds_buscaprodCODPRODUTO: TIntegerField;
    ds_buscaprodCODPRO: TStringField;
    ds_buscaprodPRODUTO: TStringField;
    ds_buscaprodVALORUNITARIOATUAL: TFloatField;
    ds_buscaprodPRECOMEDIO: TBCDField;
    ds_buscaprodMARCA: TStringField;
    d_buscaprod: TDataSource;
    s_similarVALORUNITARIOATUAL: TFloatField;
    s_similarPRECOMEDIO: TBCDField;
    ds_similarVALORUNITARIOATUAL: TFloatField;
    ds_similarPRECOMEDIO: TBCDField;
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt1KeyPress(Sender: TObject; var Key: Char);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_SIMILARES: TF_SIMILARES;
  sql_insert : string;
  TD: TTransactionDesc;

implementation

uses UDm;

{$R *.dfm}

procedure TF_SIMILARES.btn1Click(Sender: TObject);
begin
    if (edt1.Text = '') then
    begin
     ShowMessage('Informe o "CÓDIGO" do produto');
     edt1.SetFocus;
     Exit;
    end;
    if (cbb1.Text = '') then
    begin
     ShowMessage('Informe a "MARCA" do produto');
     cbb1.SetFocus;
     Exit;
    end;
    if (ds_produto.Active) then
       ds_produto.Close;
    ds_produto.Params[0].AsString := edt1.Text;
    ds_produto.Params[1].AsString := cbb1.Text;
    ds_produto.Open;
    if (ds_produto.IsEmpty) then
    begin
       ShowMessage('Nenhum produto encontrado.');
       Exit;
    end
    else
    begin
      RxLabel1.Caption := ds_produtoPRODUTO.AsString;
      if (ds_similar.Active) then
        ds_similar.close;
      ds_similar.Params[0].AsInteger := ds_produtoCODPRODUTO.AsInteger;
      ds_similar.Open;
    end;
end;

procedure TF_SIMILARES.FormShow(Sender: TObject);
begin
    if (not busca.Active) then
       busca.Open;
    while not busca.Eof do
    begin
      cbb1.Items.Add(buscaMARCA.AsString);
      busca.Next;
    end;
    busca.Close;

end;

procedure TF_SIMILARES.edt1KeyPress(Sender: TObject; var Key: Char);
begin
 {** quando clicar enter ele entende que é o tab}
 if (key = #13) then
 begin
   btn1.Click;
   if (not ds_produto.IsEmpty) then
     cbb1.SetFocus;
 end;
end;

procedure TF_SIMILARES.btn4Click(Sender: TObject);
begin
    if (edt3.Text = '') then
    begin
     ShowMessage('Informe o "CÓDIGO" do produto SIMILAR');
     edt3.SetFocus;
     Exit;
    end;

    if (ds_buscaprod.Active) then
       ds_buscaprod.Close;
    ds_buscaprod.Params[0].AsString := edt3.Text;
    ds_buscaprod.Params[1].AsString := cbb1.Text;
    ds_buscaprod.Open;
    if (ds_buscaprod.IsEmpty) then
    begin
       ShowMessage('Nenhum produto encontrado.');
       Exit;
       edt3.SetFocus;
    end

end;

procedure TF_SIMILARES.btn5Click(Sender: TObject);
begin
  if (ds_buscaprod.IsEmpty) then
    Exit;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);

  sql_insert := 'INSERT INTO SIMILARES (ID_SIMILAR, ID_PRODUTO, CODPRO, CODPROSIMILAR) ';
  sql_insert := sql_insert + 'VALUES (';
  sql_insert := sql_insert + IntToStr(ds_buscaprodCODPRODUTO.AsInteger) + ', ';
  sql_insert := sql_insert + IntToStr(ds_produtoCODPRODUTO.AsInteger) + ', ';
  sql_insert := sql_insert + QuotedStr(ds_produtoCODPRO.AsString) + ', ';//CODPRO
  sql_insert := sql_insert + QuotedStr(ds_buscaprodCODPRO.AsString) + ') ';//CODPROSIMILAR

  dm.sqlsisAdimin.ExecuteDirect(sql_insert);
  dm.sqlsisAdimin.Commit(TD);
  btn1.Click;
  edt3.Text := '';
  edt3.SetFocus;
end;

procedure TF_SIMILARES.btn8Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     d_similar.DataSet.Delete;
     (d_similar.DataSet as TClientDataSet).ApplyUpdates(0);
  end
  else
    exit;
end;

end.
