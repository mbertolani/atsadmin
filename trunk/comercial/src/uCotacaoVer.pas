unit uCotacaoVer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, FMTBcd, DBClient, Provider, SqlExpr, Grids, DBGrids,
  JvExDBGrids, JvDBGrid;

type
  TfCotacaoVer = class(TfPai_new)
    gb1: TGroupBox;
    JvDBGrid1: TJvDBGrid;
    dsp1: TDataSetProvider;
    cds1: TClientDataSet;
    ds1: TDataSource;
    gb2: TGroupBox;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    sql2: TSQLQuery;
    dsp2: TDataSetProvider;
    cds2: TClientDataSet;
    ds2: TDataSource;
    SQLQuery2: TSQLQuery;
    DataSetProvider2: TDataSetProvider;
    cds3: TClientDataSet;
    DataSource2: TDataSource;
    SQLQuery3: TSQLQuery;
    DataSetProvider3: TDataSetProvider;
    cds4: TClientDataSet;
    DataSource3: TDataSource;
    SQLQuery4: TSQLQuery;
    DataSetProvider4: TDataSetProvider;
    cds5: TClientDataSet;
    DataSource4: TDataSource;
    SQLQuery5: TSQLQuery;
    DataSetProvider5: TDataSetProvider;
    cds6: TClientDataSet;
    DataSource5: TDataSource;
    SQLQuery1: TSQLQuery;
    DataSetProvider1: TDataSetProvider;
    cdsFornec: TClientDataSet;
    SQLDataSet1: TSQLDataSet;
    cds1ITEM: TStringField;
    cds1DESCRICAO: TStringField;
    cds1PRECO: TFloatField;
    cds2ITEM: TStringField;
    cds2DESCRICAO: TStringField;
    cds2PRECO: TFloatField;
    JvDBGrid2: TJvDBGrid;
    JvDBGrid3: TJvDBGrid;
    JvDBGrid4: TJvDBGrid;
    JvDBGrid5: TJvDBGrid;
    cds3ITEM: TStringField;
    cds3DESCRICAO: TStringField;
    cds3PRECO: TFloatField;
    cds4ITEM: TStringField;
    cds4DESCRICAO: TStringField;
    cds4PRECO: TFloatField;
    cds5ITEM: TStringField;
    cds5DESCRICAO: TStringField;
    cds5PRECO: TFloatField;
    JvDBGrid6: TJvDBGrid;
    cds6ITEM: TStringField;
    cds6DESCRICAO: TStringField;
    cds6PRECO: TFloatField;
    procedure btnProcurarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    solic : integer;
    item  : string;
    { Public declarations }
  end;

var
  fCotacaoVer: TfCotacaoVer;

implementation

uses UDm;

{$R *.dfm}

procedure TfCotacaoVer.btnProcurarClick(Sender: TObject);
var sql, ordem: string;
  i : integer;
begin
  i := 1;
  sql := 'select c.COTACAO_ITEM ITEM, UDF_LEFT(c.COTACAO_ITEMDESCRICAO, 60) DESCRICAO, ' +
    ' c.COTACAO_PRECO PRECO from COMPRA_COTACAO c ' +
    ' where c.COTACAO_SITUACAO = ' + QuotedStr('P') +
    '   and c.COTACAO_FORNEC   = ';

  ordem := ' ORDER BY c.COTACAO_ITEM';

  if (cdsFornec.Active) then
    cdsFornec.Close;
  cdsFornec.CommandText := 'select c.COTACAO_FORNEC from COMPRA_COTACAO c' +
    ' where c.COTACAO_ITEM = ' + QuotedStr(item) + ' AND c.COTACAO_SITUACAO = ' +
    QuotedStr('P');
  cdsFornec.Open;

  if (cds1.Active) then
    cds1.Close;

  if (cds2.Active) then
    cds2.Close;

  if (cds3.Active) then
    cds3.Close;

  if (cds4.Active) then
    cds4.Close;

  if (cds5.Active) then
    cds5.Close;

  if (cds6.Active) then
    cds6.Close;

  cds1.CommandText := 'select COTACAO_ITEM ITEM, UDF_LEFT(COTACAO_ITEMDESCRICAO, 60) ' +
    'DESCRICAO, COTACAO_PRECO PRECO FROM COMPRA_COTACAO WHERE COTACAO_CODIGO = 0';

  cds2.CommandText := cds1.CommandText;
  cds3.CommandText := cds1.CommandText;
  cds4.CommandText := cds1.CommandText;
  cds5.CommandText := cds1.CommandText;
  cds6.CommandText := cds1.CommandText;
  
  While not cdsFornec.Eof do
  begin
    if (i = 1) then
      cds1.CommandText := sql + IntToStr(cdsFornec.Fields[0].AsInteger) + ordem;

    if (i = 2) then
      cds2.CommandText := sql + IntToStr(cdsFornec.Fields[0].AsInteger) + ordem;

    if (i = 3) then
      cds3.CommandText := sql + IntToStr(cdsFornec.Fields[0].AsInteger) + ordem;

    if (i = 4) then
      cds4.CommandText := sql + IntToStr(cdsFornec.Fields[0].AsInteger) + ordem;

    if (i = 5) then
      cds5.CommandText := sql + IntToStr(cdsFornec.Fields[0].AsInteger) + ordem;

    if (i = 6) then
      cds6.CommandText := sql + IntToStr(cdsFornec.Fields[0].AsInteger) + ordem;

    i := i + 1;
    cdsFornec.Next;
  end;
  cds1.Open;
  cds2.Open;
  cds3.Open;
  cds4.Open;
  cds5.Open;
  cds6.Open;

end;

procedure TfCotacaoVer.FormShow(Sender: TObject);
begin
  //inherited;
  {if (cds1.Active) then
    cds1.Close;
  cds1.Params[0].AsInteger := solic;
  cds1.Open;

  if (cds2.Active) then
    cds2.Close;
  cds2.Params[0].AsInteger := solic;
  cds2.Open;

    if (cds3.Active) then
    cds3.Close;
  cds3.Params[0].AsInteger := solic;
  cds3.Open;

  if (cds4.Active) then
    cds4.Close;
  cds4.Params[0].AsInteger := solic;
  cds4.Open;

  if (cds5.Active) then
    cds5.Close;
  cds5.Params[0].AsInteger := solic;
  cds5.Open;

  if (cds6.Active) then
    cds6.Close;
  cds6.Params[0].AsInteger := solic;
  cds6.Open;
  }
end;

procedure TfCotacaoVer.FormCreate(Sender: TObject);
begin
  //inherited;

end;

end.
