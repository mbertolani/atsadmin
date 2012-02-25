unit uBancoExtrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, DBCtrls, FMTBcd, DBClient, Provider, SqlExpr, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid;

type
  TfBancoExtrato = class(TfPai_new)
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    ds_conta: TDataSource;
    JvDBUltimGrid1: TJvDBUltimGrid;
    sdsExtrato: TSQLDataSet;
    dspExtrato: TDataSetProvider;
    cdsExtrato: TClientDataSet;
    procedure btnProcurarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBancoExtrato: TfBancoExtrato;

implementation

uses uBancoOFX, UDm;

{$R *.dfm}

procedure TfBancoExtrato.btnProcurarClick(Sender: TObject);
var
  BancoOFX1: TBancoOFX;
  i:integer;
begin
  BancoOFX1 := TBancoOFX.create(self);
  BancoOFX1.OFXFile := 'C:\Home\2012_02.ofx';
  BancoOFX1.Process;
  ListBox1.Clear;
  for i := 0 to BancoOFX1.Count-1 do
  begin
    ListBox1.Items.Add(BancoOFX1.Get(i).Desc + ' ' +
                       FloatToStr(BancoOFX1.Get(i).Value) + ' ' +
                       BancoOFX1.Get(i).MovType + ' ' +
                       dateToStr(BancoOFX1.Get(i).MovDate) + ' ' +
                       BancoOFX1.Get(i).ID + ' ' +
                       BancoOFX1.Get(i).Document + ' '  );
  end;
end;

procedure TfBancoExtrato.FormCreate(Sender: TObject);
begin
  //inherited;

end;

procedure TfBancoExtrato.FormShow(Sender: TObject);
begin
   // Listo as Contas Caixa
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CAIXA_BANCO';
  dm.cds_parametro.Open;
  if not dm.cds_7_contas.Active then
  begin
    dm.cds_7_contas.Params[0].AsString := dm.cds_parametroDADOS.AsString;
    dm.cds_7_contas.Open;
  end;
  dm.cds_parametro.Close;

end;

end.
