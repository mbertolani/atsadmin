program prjAcademia;

uses
  Forms,
  uAcademia in 'uAcademia.pas' {fAcademia},
  uTurma in 'uTurma.pas',
  uDmAcademia in 'uDmAcademia.pas' {dmAcademia: TDataModule},
  UDm in '..\comercial\src\UDm.pas' {DM: TDataModule},
  uPai_new in '..\comercial\src\uPai_new.pas' {fPai_new},
  uCadastroTurma in 'uCadastroTurma.pas' {fTurmaCadastro},
  uUtils in '..\comercial\src\uUtils.pas',
  uAcademiaFrequencia in 'uAcademiaFrequencia.pas' {fAcademiaFrequencia},
  uTurmaAluno in 'uTurmaAluno.pas' {fTurmaAluno},
  uClienteCadastro in '..\comercial\src\uClienteCadastro.pas',
  uPai in '..\comercial\src\uPai.pas' {fPai},
  UDmSaude in '..\comercial\src\UDmSaude.pas' {DMSaude: TDataModule},
  md5 in '..\..\Arquivos de programas\Borland\Delphi7\Componentes\UserControl2.30RC3\Source\md5.pas',
  uRegiaoCadastro in '..\comercial\src\uRegiaoCadastro.pas' {fRegiaoCadastro},
  uCrTituloInclui in 'uCrTituloInclui.pas' {fcrTituloInclui},
  uprocurarAcademia in 'uprocurarAcademia.pas' {fProcurarAcademia},
  uListaClientes in '..\comercial\src\uListaClientes.pas' {fListaClientes},
  uPlanos in '..\comercial\src\uPlanos.pas' {fPlanos},
  uCheques_bol in '..\comercial\src\uCheques_bol.pas' {fCheques_bol},
  uFiltro_forn_plano in '..\comercial\src\uFiltro_forn_plano.pas' {fFiltro_forn_plano},
  ufcr in '..\comercial\src\ufcr.pas' {fcrproc},
  uAtsAdmin in '..\comercial\src\uAtsAdmin.pas' {fAtsAdmin},
  uFreqRel in 'uFreqRel.pas' {fFreqRel};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TdmAcademia, dmAcademia);
  Application.CreateForm(TfAcademia, fAcademia);
  Application.CreateForm(TfTurmaAluno, fTurmaAluno);
  Application.CreateForm(TfRegiaoCadastro, fRegiaoCadastro);
  Application.CreateForm(TfListaClientes, fListaClientes);
  DM.formusercontrol := 'formreceitas';
  Application.CreateForm(TfcrTituloInclui, fcrTituloInclui);
  Application.CreateForm(TfFiltro_forn_plano, fFiltro_forn_plano);
  Application.CreateForm(TfCheques_bol, fCheques_bol);
  Application.Run;
end.
