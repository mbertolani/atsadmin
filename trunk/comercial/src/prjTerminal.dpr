program prjTerminal;

uses
  Forms,
  uTerminal2 in 'uTerminal2.pas' {fTerminal2},
  UDm in 'UDm.pas' {DM: TDataModule},
  UDM_MOV in 'UDM_MOV.pas' {DM_MOV: TDataModule},
  uFiltroMovimento in 'uFiltroMovimento.pas' {fFiltroMovimento},
  U_AlteraPedido in 'U_AlteraPedido.pas' {F_AlteraPedido},
  U_RelTerminal in 'U_RelTerminal.pas' {F_RelTerminal},
  uOsFinaliza in 'uOsFinaliza.pas' {fOsFinaliza},
  U_Entrada in 'U_Entrada.pas' {F_Entrada},
  U_MudaMesa in 'U_MudaMesa.pas' {F_MudaMesa},
  u_mesas in 'u_mesas.pas' {F_MESAS};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TDM_MOV, DM_MOV);
  Application.CreateForm(TfTerminal2, fTerminal2);
  Application.CreateForm(TfFiltroMovimento, fFiltroMovimento);
  Application.CreateForm(TF_AlteraPedido, F_AlteraPedido);
  Application.CreateForm(TF_RelTerminal, F_RelTerminal);
  Application.CreateForm(TfOsFinaliza, fOsFinaliza);
  Application.CreateForm(TF_Entrada, F_Entrada);
  Application.CreateForm(TF_MudaMesa, F_MudaMesa);
  Application.CreateForm(TF_MESAS, F_MESAS);
  Application.Run;
end.
