unit U_AlteraPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExStdCtrls, JvEdit, JvValidateEdit, StdCtrls, Mask, DBCtrls,
  JvSpeedButton, JvExControls, JvLabel, ExtCtrls, MMJPanel;

type
  TF_AlteraPedido = class(TForm)
    MMJPanel8: TMMJPanel;
    JvLabel1: TJvLabel;
    MMJPanel5: TMMJPanel;
    MMJPanel1: TMMJPanel;
    JvSpeedButton4: TJvSpeedButton;
    JvSpeedButton5: TJvSpeedButton;
    DBEdit2: TDBEdit;
    JvLabel2: TJvLabel;
    JvQtde: TJvValidateEdit;
    JvUnitario: TJvValidateEdit;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    procedure JvSpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_AlteraPedido: TF_AlteraPedido;

implementation

uses UDM_MOV;

{$R *.dfm}

procedure TF_AlteraPedido.JvSpeedButton4Click(Sender: TObject);
begin
  DM_MOV.c_movdetQUANTIDADE.AsFloat := JvQtde.AsFloat;
  DM_MOV.c_movdetPRECO.AsFloat := JvUnitario.AsFloat;
  DM_MOV.c_movdetvalortotal.AsFloat := DM_MOV.c_movdetQUANTIDADE.AsFloat * DM_MOV.c_movdetPRECO.AsFloat;
  DM_MOV.c_movdet.ApplyUpdates(0);
  close;
end;

end.
