unit uBancoDePara;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, FMTBcd, DBClient, Provider, SqlExpr, DBCtrls, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid;

type
  TfBancoDePara = class(TfPai_new)
    sdsBancoDePara: TSQLDataSet;
    dspDePara: TDataSetProvider;
    cdsBancoDePara: TClientDataSet;
    Label4: TLabel;
    cbConta: TDBLookupComboBox;
    ds_conta: TDataSource;
    JvDBUltimGrid1: TJvDBUltimGrid;
    cdsBancoDeParaCAIXA: TIntegerField;
    cdsBancoDeParaCONTA: TIntegerField;
    cdsBancoDeParaEXTRATODOC: TStringField;
    cdsBancoDeParaEXTRATOTIPO: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBancoDePara: TfBancoDePara;

implementation

uses UDm;

{$R *.dfm}

procedure TfBancoDePara.FormShow(Sender: TObject);
begin
  inherited;
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

procedure TfBancoDePara.FormCreate(Sender: TObject);
begin
  //inherited;

end;

end.
