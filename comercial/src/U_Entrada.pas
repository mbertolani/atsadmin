unit U_Entrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvLabel, StdCtrls, JvExStdCtrls, JvEdit,
  JvValidateEdit, ExtCtrls, MMJPanel;

type
  TF_Entrada = class(TForm)
    MMJPanel2: TMMJPanel;
    JvVale: TJvValidateEdit;
    JvLabel7: TJvLabel;
    JvCartaoDBT: TJvValidateEdit;
    JvLabel6: TJvLabel;
    JvCartaoCDT: TJvValidateEdit;
    JvLabel5: TJvLabel;
    JvChequePre: TJvValidateEdit;
    JvLabel4: TJvLabel;
    JvCheque: TJvValidateEdit;
    JvLabel2: TJvLabel;
    jvDinheiro: TJvValidateEdit;
    JvLabel1: TJvLabel;
    JvValidateEdit1: TJvValidateEdit;
    JvLabel3: TJvLabel;
    JvCartaoCDT1: TJvValidateEdit;
    JvLabel8: TJvLabel;
    JvValidateEdit2: TJvValidateEdit;
    JvLabel9: TJvLabel;
    cbCartaoCDT1: TComboBox;
    cbCartaoDBT2: TComboBox;
    cbCartaoDBT1: TComboBox;
    cbCartaoCDT2: TComboBox;
    cbOutros: TComboBox;
    ObsCheque: TEdit;
    ObsChequePre: TEdit;
    ObsVale: TEdit;
    cbDinheiro: TComboBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Entrada: TF_Entrada;

implementation

uses UDm;

{$R *.dfm}

procedure TF_Entrada.FormCreate(Sender: TObject);
begin
  // Listo as Contas Caixa
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CAIXA_BANCO';
  dm.cds_parametro.Open;
  if dm.cds_7_contas.Active then
    dm.cds_7_contas.Close;
  dm.cds_7_contas.Params[0].AsString := dm.cds_parametroDADOS.AsString;
  dm.cds_7_contas.Open;

  while not dm.cds_7_contas.Eof do
  begin
    cbDinheiro.Items.Add(dm.cds_7_contas.Fields[2].asString);
    cbCartaoCDT1.Items.Add(dm.cds_7_contas.Fields[2].asString);
    cbCartaoCDT2.Items.Add(dm.cds_7_contas.Fields[2].asString);
    cbCartaoDBT1.Items.Add(dm.cds_7_contas.Fields[2].asString);
    cbCartaoDBT2.Items.Add(dm.cds_7_contas.Fields[2].asString);
    cbOutros.Items.Add(dm.cds_7_contas.Fields[2].asString);
    dm.cds_7_contas.Next;
  end;
  cbDinheiro.ItemIndex := 1;
end;

end.
