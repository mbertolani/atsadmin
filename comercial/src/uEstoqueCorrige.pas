unit uEstoqueCorrige;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBXpress, Mask, JvExMask, JvToolEdit, FMTBcd, DB,
  SqlExpr, DBClient, Provider, ComCtrls, JvExComCtrls, JvProgressBar;

type
  TfEstoqueCorrige = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    JvDateEdit1: TJvDateEdit;
    Label5: TLabel;
    JvDateEdit2: TJvDateEdit;
    Label7: TLabel;
    sqlQ: TSQLQuery;
    Button2: TButton;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    cds: TClientDataSet;
    JvProgressBar1: TJvProgressBar;
    sdsA: TSQLDataSet;
    dspA: TDataSetProvider;
    cdsA: TClientDataSet;
    SQLDataSet2: TSQLDataSet;
    DataSetProvider2: TDataSetProvider;
    cdsB: TClientDataSet;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEstoqueCorrige: TfEstoqueCorrige;

implementation

uses UDm, UDMNF, uEstoque;

{$R *.dfm}

procedure TfEstoqueCorrige.Button1Click(Sender: TObject);
var
  TD: TTransactionDesc;
  Save_Cursor:TCursor;
  codPro1, codPro2 : integer;
Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  if (sqlQ.Active) then
    sqlQ.close;
  sqlQ.SQL.Add('SELECT CODPRODUTO FROM PRODUTOS WHERE CODPRO = ' +
    QuotedStr(Edit1.Text));
  sqlQ.Open;
  codPro1 := sqlQ.Fields[0].AsInteger;
  if (sqlQ.Active) then
    sqlQ.close;
  sqlQ.SQL.Clear;
  sqlQ.SQL.Add('SELECT CODPRODUTO FROM PRODUTOS WHERE CODPRO = ' +
    QuotedStr(Edit2.Text));
  sqlQ.Open;
  if (sqlQ.IsEmpty) then
    codPro2 := StrTOInt(Edit2.Text)
  else
    codPro2 := sqlQ.Fields[0].AsInteger;
  sqlQ.Close;
  try
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    try
      dm.sqlsisAdimin.StartTransaction(TD);

      dm.sqlsisAdimin.ExecuteDirect('execute procedure CORRIGEESTOQUE(' +
        IntToStr(codPro1) + ', ' + IntToStr(codPro2) +
        ', ' + QuotedStr(Formatdatetime('mm/dd/yyyy', StrToDate(JvDateEdit1.Text))) +
        ', ' + QuotedStr(Formatdatetime('mm/dd/yyyy', StrToDate(JvDateEdit2.Text))) +
        ', ' + QuotedStr('N') +')');
      dm.sqlsisAdimin.Commit(TD);
      MessageDlg('Estoque atualizado com sucesso.', mtInformation, [mbOK], 0);
    except
      dm.sqlsisAdimin.Rollback(TD);
      MessageDlg('Erro para atualizar estoque.', mtError, [mbOK], 0);
      exit;
    end;
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

procedure TfEstoqueCorrige.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfEstoqueCorrige.Button2Click(Sender: TObject);
var str: string;
  FEstoque : TEstoque;
  Save_Cursor:TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Try
    Screen.Cursor := crHourGlass;
    FEstoque := TEstoque.Create;

    if (cdsB.Active) then
      cdsB.Close;
    str := 'SELECT DISTINCT md.CODPRODUTO';
    str := str + '  FROM MOVIMENTO m';
    str := str + ' INNER JOIN MOVIMENTODETALHE md on md.CODMOVIMENTO = m.CODMOVIMENTO';
    str := str + ' INNER JOIN PRODUTOS prod on prod.CODPRODUTO = md.CODPRODUTO';
    str := str + '  LEFT OUTER JOIN VENDA  V ON V.CODMOVIMENTO = M.CODMOVIMENTO';
    str := str + '  LEFT OUTER JOIN COMPRA C ON C.CODMOVIMENTO = M.CODMOVIMENTO';
    str := str + ' WHERE md.BAIXA is not null ' ;
    str := str + '   AND m.CODNATUREZA < 5' ;
    str := str + '   AND m.DATAMOVIMENTO BETWEEN ';
    str := str + QuotedStr(Formatdatetime('mm/dd/yyyy', StrToDate(JvDateEdit1.Text)));
    str := str + '   AND ' ;
    str := str + QuotedStr(Formatdatetime('mm/dd/yyyy', StrToDate(JvDateEdit2.Text)));
    if ((Edit1.Text <> '') and (Edit2.Text <> '')) then
    begin
      str := str + '   AND ' ;
      str := str + '   prod.CODPRO BETWEEN ' + QuotedStr(Edit1.Text) + ' AND ' +  QuotedStr(Edit2.Text);
    end;
    str := str + ' ORDER BY  1';
    cdsB.CommandText := str;
    cdsB.Open;

    While not cdsB.Eof do
    begin

    if (cds.Active) then
      cds.Close;
    str := 'SELECT FIRST 1 md.CODDETALHE, m.CODNATUREZA, md.STATUS,';
    str := str + '  CASE WHEN m.CODNATUREZA < 3 THEN m.DATAMOVIMENTO';
    str := str + '  WHEN m.CODNATUREZA = 3 THEN V.DATAVENDA';
    str := str + '  WHEN m.CODNATUREZA = 4 THEN C.DATACOMPRA END DATAMOVIMENTO,';
    str := str + '  md.QUANTIDADE, md.PRECO,';
    str := str + '  md.LOTE, m.CODALMOXARIFADO, md.CODPRODUTO';
    str := str + '  FROM MOVIMENTO m';
    str := str + ' INNER JOIN MOVIMENTODETALHE md on md.CODMOVIMENTO = m.CODMOVIMENTO';
    str := str + ' INNER JOIN PRODUTOS prod on prod.CODPRODUTO = md.CODPRODUTO';
    str := str + '  LEFT OUTER JOIN VENDA  V ON V.CODMOVIMENTO = M.CODMOVIMENTO';
    str := str + '  LEFT OUTER JOIN COMPRA C ON C.CODMOVIMENTO = M.CODMOVIMENTO';
    str := str + ' WHERE md.BAIXA is not null ' ;
    str := str + '   AND m.CODNATUREZA < 5' ;
    str := str + '   AND m.DATAMOVIMENTO BETWEEN ';
    str := str + QuotedStr(Formatdatetime('mm/dd/yyyy', StrToDate(JvDateEdit1.Text)));
    str := str + '   AND ' ;
    str := str + QuotedStr(Formatdatetime('mm/dd/yyyy', StrToDate(JvDateEdit2.Text)));
    str := str + '   AND md.CODPRODUTO = ' + InttoStr(cdsB.FieldByName('CODPRODUTO').asInteger);
    str := str + ' ORDER BY 9, 4 DESC, 1';
    cds.CommandText := str;
    cds.Open;
    str := IntToStr(cds.RecordCount);
    while not cds.Eof do
    begin

      str := 'select * FROM SPESTOQUEFILTRO('  + QuotedStr(Formatdatetime('mm/dd/yyyy', StrToDate(JvDateEdit1.Text)));
      str := str + ', ';
      str := str + QuotedStr(Formatdatetime('mm/dd/yyyy', StrToDate(JvDateEdit2.Text)));
      str := str + ', ';
      str := str + IntToStr(cds.FieldByName('CODPRODUTO').AsInteger) + ' ,' ;
      str := str + IntToStr(cds.FieldByName('CODPRODUTO').AsInteger);
      str := str + ',''TODOS SUBGRUPOS DO CADASTRO CATEGORIA''';
      str := str + ', 100';
      str := str + ', 1';
      str := str + ', ''TODAS AS MARCAS CADASTRADAS NO SISTEMA''';
      str := str + ', ''TODOS OS LOTES CADASTRADOS NO SISTEMA''';
      str := str + ',''TODOS OS GRUPOS CADASTRADOS NO SISTEMA'')';
      if (cdsA.Active) then
        cdsA.Close;
      cdsA.CommandText := str;
      cdsA.Open;

      JvProgressBar1.Max := cdsA.RecordCount;
      JvProgressBar1.Position := 0;

      While not cdsA.Eof do
      begin
        JvProgressBar1.Position := cdsA.RecNo;
        cdsA.Last;  // So interessa a ultima linha

        if ((cds.FieldByName('STATUS').IsNull) and (cdsA.FieldByName('SALDOFIMACUM').AsFloat <> 0)) then
        begin
          if (cdsA.FieldByName('SALDOFIMACUM').AsFloat > 0) then
          begin
            FEstoque.QtdeEntrada  := cdsA.FieldByName('SALDOFIMACUM').AsFloat;
            FEstoque.PrecoCompra  := cdsA.FieldByName('PRECOUNIT').AsFloat;
          end;
          if (cdsA.FieldByName('SALDOFIMACUM').AsFloat < 0) then
          begin
            FEstoque.QtdeSaida    := cdsA.FieldByName('SALDOFIMACUM').AsFloat;
          end;

          FEstoque.CodProduto  := cds.FieldByName('CODPRODUTO').AsInteger;
          FEstoque.Lote        := cds.FieldByName('LOTE').AsString;
          FEstoque.CentroCusto := cds.FieldByName('CODALMOXARIFADO').AsInteger;
          FEstoque.MesAno      := cds.FieldByName('DATAMOVIMENTO').AsDateTime;

          FEstoque.CodDetalhe  := cds.FieldByName('CODDETALHE').AsInteger;
          FEstoque.Status      := '9';
          FEstoque.inserirMes;
          FEstoque.QtdeCompra  := 0;
          FEstoque.QtdeVenda   := 0;
          FEstoque.QtdeEntrada := 0;
          FEstoque.QtdeSaida   := 0;
          FEstoque.PrecoCompra := 0;
          FEstoque.PrecoVenda  := 0;
          FEstoque.Lote        := '';
          FEstoque.CentroCusto := 0;
        end;
        cdsA.Next;
      end;
      cds.Next;
    end;
    cdsb.next;
    end;
    MessageDlg('Estoque atualizado com sucesso.', mtInformation, [mbOK], 0);
    Finally
      Screen.Cursor := Save_Cursor;  { Always restore to normal }
      FEstoque.Free;
    end;
end;

end.
