unit uAcademia;

{ Qdo abrir form do /comercial/src  fazer as alterações e fechar antes de rodar o sistema
  , alterar o UCHist_Base.pas  descomentar a linha 103, acrescentar na USES ", uAcademia"}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, StdActns, ActnList, XPStyleActnCtrls,
  ActnMan, JvExControls, JvOutlookBar, JvComponentBase, JvFormAutoSize, DateUtils,
  FMTBcd, DBClient, Provider, DB, SqlExpr, uUtils, Mask, JvExMask,
  JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvExStdCtrls, JvCombobox, JvDBSearchComboBox, ExtCtrls, rpcompobase,
  rpvclreport, ImgList, UCBase, Menus;

type
  TfAcademia = class(TForm)
    ActionManager1: TActionManager;
    acAlunoTurma: TAction;
    acAlunos: TAction;
    acFrequencia: TAction;
    acCadastroTurma: TAction;
    acRel: TAction;
    acAluno: TAction;
    asRelFreq: TAction;
    acRelTurma: TAction;
    JvOutlookBar1: TJvOutlookBar;
    acReceber: TAction;
    sdsPresenca: TSQLDataSet;
    dspPresenca: TDataSetProvider;
    cdsPresenca: TClientDataSet;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    JvDatePickerEdit1: TJvDatePickerEdit;
    sdsPresencaCODTURMAALUNO: TIntegerField;
    sdsPresencaCODCLIENTE: TIntegerField;
    sdsPresencaCODTURMA: TIntegerField;
    sdsPresencaALUNO: TStringField;
    sdsPresencaTURMA: TStringField;
    sdsPresencaSEG: TStringField;
    sdsPresencaTER: TStringField;
    sdsPresencaQUA: TStringField;
    sdsPresencaQUI: TStringField;
    sdsPresencaSEX: TStringField;
    sdsPresencaSAB: TStringField;
    sdsPresencaDOM: TStringField;
    cdsPresencaCODTURMAALUNO: TIntegerField;
    cdsPresencaCODCLIENTE: TIntegerField;
    cdsPresencaCODTURMA: TIntegerField;
    cdsPresencaALUNO: TStringField;
    cdsPresencaTURMA: TStringField;
    cdsPresencaSEG: TStringField;
    cdsPresencaTER: TStringField;
    cdsPresencaQUA: TStringField;
    cdsPresencaQUI: TStringField;
    cdsPresencaSEX: TStringField;
    cdsPresencaSAB: TStringField;
    cdsPresencaDOM: TStringField;
    cbReposicao: TCheckBox;
    cbNomeTurma: TJvDBSearchComboBox;
    Label4: TLabel;
    btnIncluir: TBitBtn;
    acGrade: TAction;
    Panel1: TPanel;
    JvDatePickerEdit2: TJvDatePickerEdit;
    JvDatePickerEdit3: TJvDatePickerEdit;
    Label5: TLabel;
    Label6: TLabel;
    btnProcurar: TBitBtn;
    rep: TVCLReport;
    ImageList1: TImageList;
    acPlanos: TAction;
    acFechar: TAction;
    UserControlFinanceiro: TUserControl;
    acUser: TAction;
    acTrocaSenha: TAction;
    acTrocaUsuario: TAction;
    PopupMenu1: TPopupMenu;
    Usuarios1: TMenuItem;
    rocarSenha1: TMenuItem;
    rocaUsuario1: TMenuItem;
    procedure acCadastroTurmaExecute(Sender: TObject);
    procedure acAlunoTurmaExecute(Sender: TObject);
    procedure acAlunosExecute(Sender: TObject);
    procedure acFrequenciaExecute(Sender: TObject);
    procedure acReceberExecute(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure cbReposicaoClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure acGradeExecute(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure acPlanosExecute(Sender: TObject);
    procedure acFecharExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure asRelFreqExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAcademia: TfAcademia;

implementation

uses uCadastroTurma, uAcademiaFrequencia, uTurmaAluno, uAlunoCadastro,
  uCrTituloInclui, UDm, uDmAcademia, uprocurarAcademia, uPlanos,
  uCheques_bol, uFiltro_forn_plano, ufcr,
  uFreqRel,
  uListaAlunos;

{$R *.dfm}

procedure TfAcademia.acCadastroTurmaExecute(Sender: TObject);
begin
  fTurmaCadastro := TfTurmaCadastro.Create(Application);
  try
    fTurmaCadastro.ShowModal;
  finally
    fTurmaCadastro.Free;
  end;
end;

procedure TfAcademia.acAlunoTurmaExecute(Sender: TObject);
begin
  fTurmaAluno.ShowModal;
end;

procedure TfAcademia.acAlunosExecute(Sender: TObject);
begin
  //Cadastro de Alunos
  fListaAlunos.ShowModal;
end;

procedure TfAcademia.acFrequenciaExecute(Sender: TObject);
begin
  fAcademiaFrequencia := TfAcademiaFrequencia.Create(Application);
  try
    fAcademiaFrequencia.ShowModal;
  finally
    fAcademiaFrequencia.Free;
  end;

end;

procedure TfAcademia.acReceberExecute(Sender: TObject);
begin
  fProcurarAcademia := TfProcurarAcademia.Create(self, dmAcademia.cdsProcCli);
  try
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params.ParamByName('pPARAM').AsString := 'CONTASRECEITAS';
    dm.cds_parametro.Open;
    fProcurarAcademia.btnImprimir.Visible := true;
    fProcurarAcademia.RadioGroup1.Visible := true;
    fProcurarAcademia.BtnProcurar.Click;
    fProcurarAcademia.EvDBFind1.DataField := 'ALUNO';
    if (fProcurarAcademia.ShowModal = mrOk) then
    begin
      // Abre a tela para inserir recceita
      fcrTituloInclui.btnIncluir.Visible := True;
      fcrTituloInclui.origem := 'ACADEMIA';
      fcrTituloInclui.btnIncluir.Click;
      dm.cds_crEMISSAO.AsDateTime := Today;
      dm.cds_crDATAVENCIMENTO.AsDateTime := dmAcademia.cdsProcCliDATAVENCIMENTO.AsDateTime;
      dm.cds_crDATABAIXA.AsDateTime := Today;
      dm.cds_crDATARECEBIMENTO.AsDateTime := Today;
      dm.cds_crDATACONSOLIDA.AsDateTime := Today;
      fcrTituloInclui.edtcodred.Text := dm.cds_parametroD1.AsString;
      fcrTituloInclui.edtconta.Text := dm.cds_parametroD2.AsString;
      dm.cds_crCONTACREDITO.AsInteger := StrToInt(dm.cds_parametroDADOS.AsString);
      dm.cds_crCODCLIENTE.AsInteger := dmAcademia.cdsProcCli.Fields[0].AsInteger;
      dm.cds_crNOMECLIENTE.AsString := dmAcademia.cdsProcCli.Fields[1].AsString;
      dm.cds_crVALOR_RESTO.AsFloat := dmAcademia.cdsProcCliVALORPARCELA.AsFloat -
        (dmAcademia.cdsProcCliVALORPARCELA.AsFloat * (dmAcademia.cdsProcCliDESCONTO.AsFloat/100));
      dm.cds_crVALOR_PRIM_VIA.AsFloat := dm.cds_crVALOR_RESTO.AsFloat;
      dm.cds_crVALORTITULO.AsFloat := dm.cds_crVALOR_RESTO.AsFloat;
      dm.cds_crVALORRECEBIDO.AsFloat := dm.cds_crVALOR_RESTO.AsFloat;
      dm.cds_crCAIXA.AsInteger := 33;
      dm.cds_crTITULO.AsString := IntToStr(dmAcademia.cdsProcCli.Fields[0].AsInteger) +
        '-' + FormatDateTime('mmyyyy', dmAcademia.cdsProcCliDATAVENCIMENTO.AsDateTime);
      fcrtituloInclui.ComboBox1.ItemIndex := 1;
      fCrTituloInclui.ShowModal;
    end;
  finally
    dmAcademia.cdsProcCli.Close;
    fProcurarAcademia.Free;
  end;
end;

procedure TfAcademia.Edit1KeyPress(Sender: TObject; var Key: Char);
var t : TUtils;
   diaSemana: Word;
   str :string;
begin
  if (key = #13) then
  if (cbReposicao.Checked = False) then
  begin
   if (cdsPresenca.Active) then
     cdsPresenca.Close;
    str := 'select ata.CODTURMAALUNO, ata.CODCLIENTE, ' +
      'ata.CODTURMA, a.NOMECLIENTE as ALUNO, t.NOMETURMA as TURMA, ' +
      'ata.SEG, ata.TER, ata.QUA, ata.QUI, ata.SEX, ata.SAB, ata.DOM '+
      'from ACADEMIATURMAALUNO ata ' +
      'inner join ACADEMIATURMA t on t.CODTURMA = ata.CODTURMA '+
      'inner join CLIENTES a on a.CODCLIENTE = ata.CODCLIENTE ' +
      'where (a.STATUS = 1) and (ata.CODCLIENTE = CAST(' + Edit1.Text + ' as INTEGER)) ' +
      'and (t.HORARIOINICIAL IS NOT NULL) and ' +
      '(UDF_HOURSPAN(current_time, t.HORARIOINICIAL) between 0 and 0.5)' +
      ' and ((t.DIASEMANA = 0) or (t.DIASEMANA = (UDF_WEEKDAY(CURRENT_DATE)+1)))';

   {diaSemana := DayOfWeek(JvDatePickerEdit1.Date);
   case diaSemana of
     1 : str := str + ' and (ata.DOM = ' + QuotedStr('T') + ')';
     2 : str := str + ' and (ata.SEG = ' + QuotedStr('T') + ')';
     3 : str := str + ' and (ata.TER = ' + QuotedStr('T') + ')';
     4 : str := str + ' and (ata.QUA = ' + QuotedStr('T') + ')';
     5 : str := str + ' and (ata.QUI = ' + QuotedStr('T') + ')';
     6 : str := str + ' and (ata.SEX = ' + QuotedStr('T') + ')';
     7 : str := str + ' and (ata.SAB = ' + QuotedStr('T') + ')';
   end;}
   cdsPresenca.CommandText := str;
   // Faz a busca por aluno no período entre 30 min acima e abaixo
   // do horário entrada turma

   cdsPresenca.Open;
   if (cdsPresenca.IsEmpty) then // Não achou na busca acima, faz outra busca
   begin
     // Busca sem horário de entrada
     if (cdsPresenca.Active) then
       cdsPresenca.Close;
     cdsPresenca.CommandText := 'select ata.CODTURMAALUNO, ata.CODCLIENTE, ' +
       'ata.CODTURMA, a.NOMECLIENTE as ALUNO, t.NOMETURMA as TURMA, ' +
       'ata.SEG, ata.TER, ata.QUA, ata.QUI, ata.SEX, ata.SAB, ata.DOM '+
       'from ACADEMIATURMAALUNO ata ' +
       'inner join ACADEMIATURMA t on t.CODTURMA = ata.CODTURMA '+
       'inner join CLIENTES a on a.CODCLIENTE = ata.CODCLIENTE ' +
       'where (a.STATUS = 1) and (ata.CODCLIENTE = ' + Edit1.Text + ') and (t.HORARIOINICIAL IS NULL)'  ;
     cdsPresenca.Open;
     if (cdsPresenca.IsEmpty) then // Não achou na busca acima, faz outra busca
     begin
       MessageDlg('Aluno não localizado na turma.', mtWarning, [mbOK], 0);
       Edit1.Text := '';
       Exit;
     end;
   end;
   // Verifica se o Aluno já tem presença na aula de hoje
   if (dmAcademia.cdsFrequencia.Active) then
     dmAcademia.cdsFrequencia.Close;
   dmAcademia.cdsFrequencia.Params.ParamByName('pData').AsDate := JvDatePickerEdit1.Date;
   dmAcademia.cdsFrequencia.Params.ParamByName('pTurma').AsInteger := cdsPresencaCODTURMA.asInteger;
   dmAcademia.cdsFrequencia.Open;
   if (dmAcademia.cdsFrequencia.Locate('CODCLIENTE', StrToInt(Edit1.Text), [loCaseInsensitive])) then
   begin
     label1.Caption := cdsPresencaALUNO.asString;
     label2.Caption := cdsPresencaTURMA.asString;
     label3.Caption := FormatDateTime('hh:mm', dmAcademia.cdsFrequenciaHORARIOENTRADA.AsDateTime);
     MessageDlg('Presença já registrada.', mtInformation, [mbOK], 0);
     Edit1.Text := '';
     Exit;
   end;

   t := TUTils.Create;
   dmAcademia.cdsFrequencia.Append;
   dmAcademia.cdsFrequenciaCODFREQUENCIA.AsInteger := StrToInt(t.buscaChave('GEN_ACADEMIAFREQUENCIA'));
   t.Destroy;
   dmAcademia.cdsFrequenciaDATAFREQUENCIA.AsDateTime := JvDatePickerEdit1.Date;
   dmAcademia.cdsFrequenciaCODCLIENTE.AsInteger := cdsPresencaCODCLIENTE.asInteger;
   dmAcademia.cdsFrequenciaCODTURMA.AsInteger := cdsPresencaCODTURMA.asInteger;
   dmAcademia.cdsFrequenciaHORARIOENTRADA.AsDateTime := Time;
   dmacademia.cdsFrequenciaNOMECLIENTE.AsString := cdsPresencaALUNO.asString;
   dmacademia.cdsFrequenciaNOMETURMA.AsString := cdsPresencaTURMA.asString;
   dmAcademia.cdsFrequenciaPRESENTE.AsString := 'P';
   dmAcademia.cdsFrequencia.ApplyUpdates(0);
   label1.Caption := cdsPresencaALUNO.asString;
   label2.Caption := cdsPresencaTURMA.asString;
   label3.Caption := FormatDateTime('hh:mm',Time);
   MessageDlg('Presença Confirmada.', mtConfirmation, [mbOK], 0);
   cdsPresenca.Close;
   Edit1.Text := '';
  end;
end;

procedure TfAcademia.cbReposicaoClick(Sender: TObject);
begin
  if (cbReposicao.Checked) then
  begin
    if (dmAcademia.cdsTurma.Active) then
      dmAcademia.cdsTurma.Close;
    dmAcademia.cdsTurma.Params.ParamByName('pTurma').AsInteger := 0;
    dmAcademia.cdsTurma.Open;

    cbNomeTurma.Visible := True;
    Label4.Visible := True;
    btnIncluir.Visible := True;
    label1.Caption := '';
    label2.Caption := '';
    label3.Caption := '';
  end
  else begin
    cbNomeTurma.Visible := False;
    Label4.Visible := False;
    btnIncluir.Visible := False;
  end;
end;

procedure TfAcademia.btnIncluirClick(Sender: TObject);
var r : TUtils;
begin
   dmAcademia.cdsTurma.Locate('NOMETURMA', cbNomeTurma.Text, [loCaseInsensitive]);
   if (dmAcademia.cdsFrequencia.Active) then
     dmAcademia.cdsFrequencia.Close;
   dmAcademia.cdsFrequencia.Params.ParamByName('pData').AsDate := JvDatePickerEdit1.Date;
   dmAcademia.cdsFrequencia.Params.ParamByName('pTurma').AsInteger := dmAcademia.cdsTurmaCODTURMA.asInteger;
   dmAcademia.cdsFrequencia.Open;
   if (dmAcademia.cdsFrequencia.Locate('CODCLIENTE', StrToInt(Edit1.Text), [loCaseInsensitive])) then
   begin
     label1.Caption := Edit1.Text;
     label2.Caption := dmAcademia.cdsTurmaNOMETURMA.asString;
     label3.Caption := FormatDateTime('hh:mm', dmAcademia.cdsFrequenciaHORARIOENTRADA.AsDateTime);
     MessageDlg('Reposição já registrada.', mtInformation, [mbOK], 0);
     Edit1.Text := '';
     Exit;
   end;

   r := TUTils.Create;
   dmAcademia.cdsFrequencia.Append;
   dmAcademia.cdsFrequenciaCODFREQUENCIA.AsInteger := StrToInt(r.buscaChave('GEN_ACADEMIAFREQUENCIA'));
   r.Destroy;
   dmAcademia.cdsFrequenciaDATAFREQUENCIA.AsDateTime := JvDatePickerEdit1.Date;
   dmAcademia.cdsFrequenciaCODCLIENTE.AsInteger := StrToInt(Edit1.text);
   dmAcademia.cdsFrequenciaCODTURMA.AsInteger := dmAcademia.cdsTurmaCODTURMA.asInteger;
   dmAcademia.cdsFrequenciaHORARIOENTRADA.AsDateTime := Time;
   dmacademia.cdsFrequenciaNOMECLIENTE.AsString := Edit1.Text;
   dmacademia.cdsFrequenciaNOMETURMA.AsString := dmAcademia.cdsTurmaNOMETURMA.asString;
   dmAcademia.cdsFrequenciaPRESENTE.AsString := 'R';
   dmAcademia.cdsFrequencia.ApplyUpdates(0);
   label1.Caption := Edit1.Text;
   label2.Caption := dmAcademia.cdsTurmaNOMETURMA.asString;
   label3.Caption := FormatDateTime('hh:mm',Time);
   MessageDlg('Reposição Confirmada.', mtConfirmation, [mbOK], 0);
   cdsPresenca.Close;
   Edit1.Text := '';
   cbReposicao.Checked := False;
end;

procedure TfAcademia.acGradeExecute(Sender: TObject);
begin
  // Exibe grade de Natação
  Panel1.Visible := True;
  JvDatePickerEdit2.Date := StartOfTheMonth(today);
  JvDatePickerEdit3.Date := EndOfTheMonth(today);
end;

procedure TfAcademia.btnProcurarClick(Sender: TObject);
begin
  // Ver o Relatorio
  Rep.Filename := str_relatorio + 'relGrade.rep';
  Rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  Rep.Report.Params.ParamByName('PDATA1').Value := JvDatePickerEdit2.Date;
  Rep.Report.Params.ParamByName('PDATA2').Value := JvDatePickerEdit3.Date;
  Rep.Report.Params.ParamByName('PGRUPO').Value := 'NATACAO';
  rep.execute;
end;

procedure TfAcademia.acPlanosExecute(Sender: TObject);
begin
  fPlanos := TfPlanos.Create(Application);
  try
    fPlanos.ShowModal;
  finally
    fPlanos.Free;
  end;
end;

procedure TfAcademia.acFecharExecute(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfAcademia.FormCreate(Sender: TObject);
begin
  dm.MODULOUSERCONTROL :=  'academia';
  //DM.MODULOUSERCONTROL := 'financeiro';
end;

procedure TfAcademia.asRelFreqExecute(Sender: TObject);
begin
  fFreqRel := TfFreqRel.Create(Application);
  try
    fFreqRel.ShowModal;
  finally
    fFreqRel.Free;
  end;
end;

end.
