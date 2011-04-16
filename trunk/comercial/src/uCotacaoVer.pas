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
    sql1: TSQLQuery;
    dsp1: TDataSetProvider;
    cds1: TClientDataSet;
    ds1: TDataSource;
    gb2: TGroupBox;
    JvDBGrid2: TJvDBGrid;
    GroupBox1: TGroupBox;
    JvDBGrid3: TJvDBGrid;
    GroupBox2: TGroupBox;
    JvDBGrid4: TJvDBGrid;
    GroupBox3: TGroupBox;
    JvDBGrid5: TJvDBGrid;
    GroupBox4: TGroupBox;
    JvDBGrid6: TJvDBGrid;
    cds1COTACAO_CODIGO: TIntegerField;
    cds1COTACAO_DATA: TDateField;
    cds1COTACAO_FORNEC: TIntegerField;
    cds1COTACAO_SOLICIT: TStringField;
    cds1COTACAO_ITEM: TStringField;
    cds1COTACAO_ITEMDESCRICAO: TStringField;
    cds1COTACAO_SITUACAO: TStringField;
    cds1COTACAO_QTDE: TFloatField;
    cds1COTACAO_PRECO: TFloatField;
    cds1COTACAO_USER: TStringField;
    cds1COTACAO_DTENTREGA: TDateField;
    cds1COTACAO_PRAZO: TStringField;
    cds1COTACAO_OBSERVACAO: TStringField;
    cds1COTACAO_TIPO: TStringField;
    cds1COTACAO_CODSOLIC: TIntegerField;
    cds1FORNECEDOR: TStringField;
    SQLQuery1: TSQLQuery;
    DataSetProvider1: TDataSetProvider;
    cds2: TClientDataSet;
    IntegerField1: TIntegerField;
    DateField1: TDateField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    StringField5: TStringField;
    DateField2: TDateField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    IntegerField3: TIntegerField;
    StringField9: TStringField;
    DataSource1: TDataSource;
    SQLQuery2: TSQLQuery;
    DataSetProvider2: TDataSetProvider;
    cds3: TClientDataSet;
    IntegerField4: TIntegerField;
    DateField3: TDateField;
    IntegerField5: TIntegerField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    StringField14: TStringField;
    DateField4: TDateField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    IntegerField6: TIntegerField;
    StringField18: TStringField;
    DataSource2: TDataSource;
    SQLQuery3: TSQLQuery;
    DataSetProvider3: TDataSetProvider;
    cds4: TClientDataSet;
    IntegerField7: TIntegerField;
    DateField5: TDateField;
    IntegerField8: TIntegerField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    StringField23: TStringField;
    DateField6: TDateField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    IntegerField9: TIntegerField;
    StringField27: TStringField;
    DataSource3: TDataSource;
    SQLQuery4: TSQLQuery;
    DataSetProvider4: TDataSetProvider;
    cds5: TClientDataSet;
    IntegerField10: TIntegerField;
    DateField7: TDateField;
    IntegerField11: TIntegerField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    StringField31: TStringField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    StringField32: TStringField;
    DateField8: TDateField;
    StringField33: TStringField;
    StringField34: TStringField;
    StringField35: TStringField;
    IntegerField12: TIntegerField;
    StringField36: TStringField;
    DataSource4: TDataSource;
    SQLQuery5: TSQLQuery;
    DataSetProvider5: TDataSetProvider;
    cds6: TClientDataSet;
    IntegerField13: TIntegerField;
    DateField9: TDateField;
    IntegerField14: TIntegerField;
    StringField37: TStringField;
    StringField38: TStringField;
    StringField39: TStringField;
    StringField40: TStringField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    StringField41: TStringField;
    DateField10: TDateField;
    StringField42: TStringField;
    StringField43: TStringField;
    StringField44: TStringField;
    IntegerField15: TIntegerField;
    StringField45: TStringField;
    DataSource5: TDataSource;
    procedure btnProcurarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    solic : integer;
    { Public declarations }
  end;

var
  fCotacaoVer: TfCotacaoVer;

implementation

uses UDm;

{$R *.dfm}

procedure TfCotacaoVer.btnProcurarClick(Sender: TObject);
begin
  //inherited;

end;

procedure TfCotacaoVer.FormShow(Sender: TObject);
begin
  //inherited;
  if (cds1.Active) then
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

end;

procedure TfCotacaoVer.FormCreate(Sender: TObject);
begin
  //inherited;

end;

end.
