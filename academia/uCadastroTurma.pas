unit uCadastroTurma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, Grids, DBGrids, JvExDBGrids, JvDBGrid, Mask, DBCtrls, JvExMask,
  JvToolEdit, JvDBControls, JvExStdCtrls, JvCombobox, JvDBSearchComboBox;

type
  TfTurmaCadastro = class(TfPai_new)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    JvDBGrid1: TJvDBGrid;
    DBComboBox1: TDBComboBox;
    Label4: TLabel;
    JvDBComboEdit1: TJvDBComboEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    cbDia: TComboBox;
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure JvDBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTurmaCadastro: TfTurmaCadastro;

implementation

uses uDmAcademia, uUtils;

{$R *.dfm}

procedure TfTurmaCadastro.btnGravarClick(Sender: TObject);
  Var util : TUtils;
begin
  if (DtSrc.State in [dsInsert]) then
  begin
    util := TUtils.Create;
    dmAcademia.cdsTurmaCODTURMA.AsInteger := StrToInt(util.buscaChave('GEN_ACADEMIATURMA'));
    util.Destroy;
  end;
  dmAcademia.cdsTurmaDIASEMANA.AsInteger := cbDia.ItemIndex + 1;
  inherited;
end;

procedure TfTurmaCadastro.FormShow(Sender: TObject);
begin
  inherited;
  dmAcademia.cdsTurma.Params.ParamByName('pTurma').AsInteger := 0;
  dmAcademia.cdsTurma.Open;
end;

procedure TfTurmaCadastro.FormCreate(Sender: TObject);
begin
  inherited;
  cbdia.Items.Add('1-DOMINGO');
  cbdia.Items.Add('2-SEGUNDA-FEIRA');
  cbdia.Items.Add('3-TERÇA-FEIRA');
  cbdia.Items.Add('4-QUARTA-FEIRA');
  cbdia.Items.Add('5-QUINTA-FEIRA');
  cbdia.Items.Add('6-SEXTA-FEIRA');
end;

procedure TfTurmaCadastro.JvDBGrid1CellClick(Column: TColumn);
begin
  inherited;
  cbDia.ItemIndex := dmAcademia.cdsTurmaDIASEMANA.AsInteger - 1;
end;

end.
