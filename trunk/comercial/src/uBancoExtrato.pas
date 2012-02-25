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
    cbConta: TDBLookupComboBox;
    ds_conta: TDataSource;
    JvDBUltimGrid1: TJvDBUltimGrid;
    sdsExtrato: TSQLDataSet;
    dspExtrato: TDataSetProvider;
    cdsExtrato: TClientDataSet;
    cdsExtratoEXTRATODATA: TDateField;
    cdsExtratoCAIXA: TIntegerField;
    cdsExtratoEXTRATODOC: TStringField;
    cdsExtratoEXTRATOTIPO: TStringField;
    cdsExtratoEXTRATOVALOR: TFloatField;
    cdsExtratoEXTRATOCOD: TStringField;
    cdsExtratoSEL: TStringField;
    procedure btnProcurarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbContaClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBancoExtrato: TfBancoExtrato;

implementation

uses uBancoOFX, UDm, uBancoDePara;

{$R *.dfm}

procedure TfBancoExtrato.btnProcurarClick(Sender: TObject);
var
  BancoOFX1: TBancoOFX;
  i:integer;
begin
  BancoOFX1 := TBancoOFX.create(self);
  BancoOFX1.OFXFile := 'C:\Home\2012_02.ofx';
  BancoOFX1.Process;
  //ListBox1.Clear;
  for i := 0 to BancoOFX1.Count-1 do
  begin
    if (cdsExtrato.State in [dsBrowse]) then
      cdsExtrato.Append;
    cdsExtratoEXTRATOCOD.AsString    := BancoOFX1.Get(i).ID;
    cdsExtratoEXTRATODATA.AsDateTime := BancoOFX1.Get(i).MovDate;
    cdsExtratoCAIXA.AsInteger        := dm.cds_7_contasCODIGO.AsInteger;
    cdsExtratoEXTRATODOC.AsString    := BancoOFX1.Get(i).Desc + ' - ' + BancoOFX1.Get(i).Document;
    cdsExtratoEXTRATOTIPO.AsString   := BancoOFX1.Get(i).MovType;
    cdsExtratoEXTRATOVALOR.AsFloat   := BancoOFX1.Get(i).Value;
    cdsExtrato.ApplyUpdates(0);

    {ListBox1.Items.Add(BancoOFX1.Get(i).Desc + ' ' +
                       FloatToStr(BancoOFX1.Get(i).Value) + ' ' +
                       BancoOFX1.Get(i).MovType + ' ' +
                       dateToStr(BancoOFX1.Get(i).MovDate) + ' ' +
                       BancoOFX1.Get(i).ID + ' ' +
                       BancoOFX1.Get(i).Document + ' '  );}
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

procedure TfBancoExtrato.cbContaClick(Sender: TObject);
begin
  //inherited;
 
end;

procedure TfBancoExtrato.btnIncluirClick(Sender: TObject);
begin
  //inherited;
  if (cdsExtrato.Active) then
    cdsExtrato.Close;
  cdsExtrato.Params.ParamByName('CAIXA').AsInteger := dm.cds_7_contasCODIGO.AsInteger;
  cdsExtrato.Open;
end;

procedure TfBancoExtrato.btnExcluirClick(Sender: TObject);
begin
  //inherited;
  fBancoDePara.ShowModal;
end;

end.
