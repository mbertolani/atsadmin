unit uPainelControle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DBClient, Provider, DB, SqlExpr, ExtCtrls, TeeProcs,
  TeEngine, Chart, DbChart, StdCtrls, Series, Menus, DateUtils;

type
  TfPainelControle = class(TForm)
    GroupBox1: TGroupBox;
    DBChart1: TDBChart;
    sdsVenda: TSQLDataSet;
    dspVenda: TDataSetProvider;
    cdsVenda: TClientDataSet;
    Series1: TBarSeries;
    cdsVendaVENDA: TFloatField;
    cdsVendaMES: TStringField;
    cdsVendaUDF_MONTH: TSmallintField;
    GroupBox2: TGroupBox;
    DBChart2: TDBChart;
    BarSeries1: TBarSeries;
    sdsCompras: TSQLDataSet;
    dspCompras: TDataSetProvider;
    cdsCompras: TClientDataSet;
    StringField1: TStringField;
    SmallintField1: TSmallintField;
    sdsPedidoVenda: TSQLDataSet;
    dspPedidoVenda: TDataSetProvider;
    cdsPedidoVenda: TClientDataSet;
    GroupBox3: TGroupBox;
    DBChart3: TDBChart;
    BarSeries2: TBarSeries;
    cdsComprasCOMPRA: TFloatField;
    cdsPedidoVendaMESANO: TStringField;
    cdsPedidoVendaVALORVENDA: TFloatField;
    cdsPedidoVendaVALORPEDIDO: TFloatField;
    Series2: TBarSeries;
    cdsPedidoVendaMESANOV: TIntegerField;
    GroupBox4: TGroupBox;
    DBChart4: TDBChart;
    BarSeries3: TBarSeries;
    BarSeries4: TBarSeries;
    sdsPedidoCompra: TSQLDataSet;
    dspPedidoCompra: TDataSetProvider;
    cdsPedidoCompra: TClientDataSet;
    StringField2: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    IntegerField1: TIntegerField;
    PopupMenu1: TPopupMenu;
    MudarPerododesteGrfico1: TMenuItem;
    MudarPerododeTodososGrficos1: TMenuItem;
    AtualizarGrficos1: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    PopupMenu3: TPopupMenu;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    PopupMenu4: TPopupMenu;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure DBChart1DblClick(Sender: TObject);
    procedure AtualizarGrficos1Click(Sender: TObject);
    procedure MudarPerododesteGrfico1Click(Sender: TObject);
    procedure MudarPerododeTodososGrficos1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
  private
    dataInicio, dataFinal : TDateTime;
    procedure AbreGrafico1(DataIni: TDateTime; DataFim : TDateTime);
    procedure AbreGrafico2(DataIni: TDateTime; DataFim : TDateTime);
    procedure AbreGrafico3(DataIni: TDateTime; DataFim : TDateTime);
    procedure AbreGrafico4(DataIni: TDateTime; DataFim : TDateTime);
    procedure trocaPeriodo;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPainelControle: TfPainelControle;

implementation

uses UDm, uPeriodo;

{$R *.dfm}

procedure TfPainelControle.AbreGrafico1(DataIni: TDateTime; DataFim : TDateTime);
begin
  if (cdsVenda.Active) then
    cdsVenda.Close;
  cdsVenda.Params.ParamByName('dataIni').asDateTime := DataIni;
  cdsVenda.Params.ParamByName('dataFim').asDateTime := DataFim;
  cdsVenda.Open;
end;

procedure TfPainelControle.AbreGrafico2(DataIni: TDateTime; DataFim : TDateTime);
begin
  if (cdsPedidoVenda.Active) then
    cdsPedidoVenda.Close;
  cdsPedidoVenda.Params.ParamByName('dataIni').asDateTime := DataIni;
  cdsPedidoVenda.Params.ParamByName('dataFim').asDateTime := DataFim;
  cdsPedidoVenda.Open;
end;

procedure TfPainelControle.AbreGrafico3(DataIni: TDateTime; DataFim : TDateTime);
begin
  if (cdsCompras.Active) then
    cdsCompras.Close;
  cdsCompras.Params.ParamByName('dataIni').asDateTime := DataIni;
  cdsCompras.Params.ParamByName('dataFim').asDateTime := DataFim;
  cdsCompras.Open;
end;

procedure TfPainelControle.AbreGrafico4(DataIni: TDateTime; DataFim : TDateTime);
begin
  if (cdsPedidoCompra.Active) then
    cdsPedidoCompra.Close;
  cdsPedidoCompra.Params.ParamByName('dataIni').asDateTime := DataIni;
  cdsPedidoCompra.Params.ParamByName('dataFim').asDateTime := DataFim;
  cdsPedidoCompra.Open;
end;

procedure TfPainelControle.FormShow(Sender: TObject);
begin
  dataInicio := StrToDate('01/01/' + IntToStr(YearOf(Today)));
  dataFinal  := StrToDate('31/12/' + InttoStr(YearOf(Today)));
  // Abre Graficos
  AtualizarGrficos1.Click;
end;

procedure TfPainelControle.DBChart1DblClick(Sender: TObject);
begin
  fPeriodo := TfPeriodo.Create(Application);
  try
    fPeriodo.ShowModal;
    dataInicio := fPeriodo.DataIni;
    dataFinal  := fPeriodo.DataFim;
  finally
    fPeriodo.Free;
  end;
end;

procedure TfPainelControle.AtualizarGrficos1Click(Sender: TObject);
begin
  AbreGrafico1(dataInicio, dataFinal);
  AbreGrafico2(dataInicio, dataFinal);
  AbreGrafico3(dataInicio, dataFinal);
  AbreGrafico4(dataInicio, dataFinal);
end;

procedure TfPainelControle.MudarPerododesteGrfico1Click(Sender: TObject);
begin
  trocaPeriodo;
  AbreGrafico1(dataInicio, dataFinal);
end;

procedure TfPainelControle.MudarPerododeTodososGrficos1Click(
  Sender: TObject);
begin
  trocaPeriodo;
  AtualizarGrficos1.Click;
end;

procedure TfPainelControle.trocaPeriodo;
begin
  fPeriodo := TfPeriodo.Create(Application);
  try
    fPeriodo.ShowModal;
    dataInicio := fPeriodo.DataIni;
    dataFinal  := fPeriodo.DataFim;
  finally
    fPeriodo.Free;
  end;
end;

procedure TfPainelControle.MenuItem1Click(Sender: TObject);
begin
  trocaPeriodo;
  AbreGrafico2(dataInicio, dataFinal);
end;

procedure TfPainelControle.MenuItem4Click(Sender: TObject);
begin
  trocaPeriodo;
  AbreGrafico3(dataInicio, dataFinal);
end;

procedure TfPainelControle.MenuItem7Click(Sender: TObject);
begin
  trocaPeriodo;
  AbreGrafico4(dataInicio, dataFinal);
end;

end.
