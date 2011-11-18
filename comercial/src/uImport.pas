unit uImport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, JvCsvData,  ExtCtrls, DBCtrls,
  ComCtrls, JvCSVParse, Buttons, DBxPress, FMTBcd, DBClient, Provider,
  SqlExpr, JvBaseDlg, JvProgressDialog, TFlatGaugeUnit;

type
  TfImport = class(TForm)
    JvCsvDataSet1: TJvCsvDataSet;
    DataSource1: TDataSource;
    OpenDialog1: TOpenDialog;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    JvCsvDataSet1Sequencial: TStringField;
    JvCsvDataSet1Cdigo: TStringField;
    JvCsvDataSet1DescriodoProduto: TStringField;
    JvCsvDataSet1Qutde: TStringField;
    JvCsvDataSet1UN: TStringField;
    JvCsvDataSet1RCompra: TStringField;
    JvCsvDataSet1RVenda: TStringField;
    JvCsvDataSet1Marca: TStringField;
    JvCsvDataSet1Grupo: TStringField;
    JvCsvDataSet1SubGrupo: TStringField;
    JvCsvDataSet1LocalEstoque: TStringField;
    JvCsvDataSet1ICMS: TStringField;
    BitBtn2: TBitBtn;
    s_produtos: TSQLDataSet;
    p_produtos: TDataSetProvider;
    c_produtos: TClientDataSet;
    s_produtosCODPRODUTO: TIntegerField;
    s_produtosFAMILIA: TStringField;
    s_produtosCATEGORIA: TStringField;
    s_produtosMARCA: TStringField;
    s_produtosUNIDADEMEDIDA: TStringField;
    s_produtosDATAULTIMACOMPRA: TDateField;
    s_produtosESTOQUEMAXIMO: TFloatField;
    s_produtosESTOQUEATUAL: TFloatField;
    s_produtosESTOQUEREPOSICAO: TFloatField;
    s_produtosESTOQUEMINIMO: TFloatField;
    s_produtosVALORUNITARIOATUAL: TFloatField;
    s_produtosVALORUNITARIOANTERIOR: TFloatField;
    s_produtosICMS: TFloatField;
    s_produtosCODALMOXARIFADO: TIntegerField;
    s_produtosIPI: TFloatField;
    s_produtosCLASSIFIC_FISCAL: TStringField;
    s_produtosCST: TStringField;
    s_produtosBASE_ICMS: TFloatField;
    s_produtosPRODUTO: TStringField;
    s_produtosPRECOMEDIO: TBCDField;
    s_produtosCOD_COMISSAO: TIntegerField;
    s_produtosMARGEM_LUCRO: TFloatField;
    s_produtosCOD_BARRA: TStringField;
    s_produtosVALOR_PRAZO: TFloatField;
    s_produtosTIPO: TStringField;
    s_produtosCONTA_DESPESA: TStringField;
    s_produtosCONTA_RECEITA: TStringField;
    s_produtosCONTA_ESTOQUE: TStringField;
    s_produtosRATEIO: TStringField;
    s_produtosCODPRO: TStringField;
    s_produtosQTDE_PCT: TFloatField;
    s_produtosPESO_QTDE: TFloatField;
    s_produtosDATACADASTRO: TSQLTimeStampField;
    s_produtosMARGEM: TFloatField;
    s_produtosPRO_COD: TStringField;
    s_produtosDATAGRAV: TDateField;
    s_produtosCODFORN: TStringField;
    s_produtosFOTOPRODUTO: TStringField;
    s_produtosLOTES: TStringField;
    s_produtosUSA: TStringField;
    s_produtosLOCALIZACAO: TStringField;
    s_produtosTIPOPRECOVENDA: TStringField;
    s_produtosVALORMINOMO: TFloatField;
    s_produtosVALORMINIMO: TFloatField;
    s_produtosVALORCOMISSAO: TFloatField;
    s_produtosGERADESCONTO: TStringField;
    s_produtosIMPRIMIR: TStringField;
    s_produtosORIGEM: TIntegerField;
    s_produtosNCM: TStringField;
    s_produtosIMPRESSORA_1: TStringField;
    s_produtosIMPRESSORA_2: TStringField;
    s_produtosIMPRESSORA_3: TStringField;
    s_produtosLEAD_TIME: TSmallintField;
    s_produtosTAM_LOTE: TIntegerField;
    Memo1: TMemo;
    FlatGauge1: TFlatGauge;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fImport: TfImport;
  sql_insert : string;
  TD: TTransactionDesc;

implementation

uses UDm;

{$R *.dfm}

procedure TfImport.BitBtn1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
    Memo1.Lines.LoadFromFile(OpenDialog1.FileName);

   JvCsvDataSet1.Active := False;
   JvCsvDataSet1.AssignFromStrings(Memo1.Lines);
   JvCsvDataSet1.Active := True;

end;

procedure TfImport.BitBtn2Click(Sender: TObject);
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  FlatGauge1.Progress := 0;
  FlatGauge1.MaxValue := JvCsvDataSet1.RecordCount;
  JvCsvDataSet1.First;
  while not JvCsvDataSet1.Eof do
  begin
    if (c_produtos.Active) then
      c_produtos.Close;
    c_produtos.Params[0].AsString := JvCsvDataSet1Cdigo.AsString;
    c_produtos.Open;
    if (c_produtos.IsEmpty) then
    begin
       {
        sql_insert := 'INSERT INTO SIMILARES (ID_SIMILAR, ID_PRODUTO, CODPRO, CODPROSIMILAR) ';
        sql_insert := sql_insert + 'VALUES (';
        sql_insert := sql_insert + IntToStr(ds_buscaprodCODPRODUTO.AsInteger) + ', ';
        sql_insert := sql_insert + IntToStr(ds_produtoCODPRODUTO.AsInteger) + ', ';
        sql_insert := sql_insert + QuotedStr(ds_produtoCODPRO.AsString) + ', ';//CODPRO
        sql_insert := sql_insert + QuotedStr(ds_buscaprodCODPRO.AsString) + ') ';//CODPROSIMILAR
        }
    end
    else
    begin
     //    sql_insert := 'UPDATE RECEBIMENTO SET DP = 1 where CODVENDA = ' + IntToStr(ds_vendaCODVENDA.AsInteger);
    end;
    try
      dm.sqlsisAdimin.StartTransaction(TD);
      dm.sqlsisAdimin.ExecuteDirect(sql_insert);
      dm.sqlsisAdimin.Commit(TD);
    except
       dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
       MessageDlg('Erro .', mtError,
           [mbOk], 0);
    end;
    FlatGauge1.Progress := FlatGauge1.Progress + 1;
    JvCsvDataSet1.Next;
  end;

end;

end.
