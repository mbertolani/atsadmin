unit uNaturezaOperacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, FMTBcd,
  DBClient, Provider, SqlExpr, DBCtrls, Mask;

type
  TfNaturezaOperacao = class(TfPai_new)
    JvDBUltimGrid1: TJvDBUltimGrid;
    sdsNat: TSQLDataSet;
    dspNat: TDataSetProvider;
    cdsNat: TClientDataSet;
    cdsNatCODNATUREZA: TSmallintField;
    cdsNatDESCNATUREZA: TStringField;
    cdsNatGERATITULO: TSmallintField;
    cdsNatTIPOTITULO: TSmallintField;
    cdsNatTIPOMOVIMENTO: TSmallintField;
    cdsNatBAIXAMOVIMENTO: TSmallintField;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    cdsNatGERARTITULOS: TStringField;
    cdsNatTIPOMOVIMENTOS: TStringField;
    cdsNatBAIXAMOVIMENTOS: TStringField;
    sdsNatCODNATUREZA: TSmallintField;
    sdsNatDESCNATUREZA: TStringField;
    sdsNatGERATITULO: TSmallintField;
    sdsNatTIPOTITULO: TSmallintField;
    sdsNatTIPOMOVIMENTO: TSmallintField;
    sdsNatBAIXAMOVIMENTO: TSmallintField;
    sdsNatGERARTITULOS: TStringField;
    sdsNatTIPOMOVIMENTOS: TStringField;
    sdsNatBAIXAMOVIMENTOS: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure JvDBUltimGrid1CellClick(Column: TColumn);
    procedure btnIncluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNaturezaOperacao: TfNaturezaOperacao;

implementation

uses UDm;

{$R *.dfm}

procedure TfNaturezaOperacao.FormShow(Sender: TObject);
begin
  //inherited;
  if (not cdsNat.Active) then
    cdsNat.Open;
end;

procedure TfNaturezaOperacao.FormCreate(Sender: TObject);
begin
  //inherited;

end;

procedure TfNaturezaOperacao.JvDBUltimGrid1CellClick(Column: TColumn);
begin
  inherited;
  if (cdsNat.State in [dsBrowse, dsInactive]) then
    cdsNat.edit;
  if (cdsNatBAIXAMOVIMENTO.IsNull) then
  begin
    cdsNatBAIXAMOVIMENTO.AsInteger := 9;
    cdsNat.ApplyUpdates(0);
  end;  
end;

procedure TfNaturezaOperacao.btnIncluirClick(Sender: TObject);
begin
  inherited;
  cdsNatTIPOTITULO.AsInteger := 0;
end;

end.
