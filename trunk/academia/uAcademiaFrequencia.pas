unit uAcademiaFrequencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, JvExExtCtrls, JvExtComponent, JvDBRadioPanel,
  StdCtrls, JvExStdCtrls, JvCombobox, JvDBSearchComboBox, Mask, JvExMask,
  JvToolEdit, JvMaskEdit, JvDBFindEdit, Menus, XPMenu, DB, Buttons,
  ExtCtrls, MMJPanel, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, DateUtils,
  JvCheckedMaskEdit, JvDatePickerEdit, JvCheckBox, DBCtrls, ImgList;

type
  TfAcademiaFrequencia = class(TfPai_new)
    JvDBFindEdit1: TJvDBFindEdit;
    Label1: TLabel;
    JvDBSearchComboBox1: TJvDBSearchComboBox;
    rpTurma: TJvDBRadioPanel;
    DbGrid1: TJvDBUltimGrid;
    Label2: TLabel;
    cbNomeTurma: TJvDBSearchComboBox;
    JvDatePickerEdit1: TJvDatePickerEdit;
    ImageList1: TImageList;
    procedure FormShow(Sender: TObject);
    procedure JvDBSearchComboBox1Exit(Sender: TObject);
    procedure JvDBFindEdit1Exit(Sender: TObject);
    procedure rpTurmaClick(Sender: TObject);
    procedure cbNomeTurmaChange(Sender: TObject);
    procedure DbGrid1DrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DbGrid1CellClick(Column: TColumn);
    procedure DbGrid1ColEnter(Sender: TObject);
    procedure DbGrid1ColExit(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
  private
    buscouAluno: Boolean;
    { Private declarations }
    procedure BuscaTurma;
    procedure entradaAluno;
    procedure saidaAluno;

  public
    { Public declarations }
  end;

var
  fAcademiaFrequencia: TfAcademiaFrequencia;

implementation

uses uDmAcademia, uUtils;

{$R *.dfm}

{ TfAcademiaFrequencia }

procedure TfAcademiaFrequencia.BuscaTurma;
begin
  // Busca o Aluno e as Turmas onde este esta cadastrado
  // Caso tenha mais que 1 turma , então o usuário tem que
  // selecionar a turma que o aluno vai frequentar
  if (dmAcademia.cdsTurmaBusca.Active) then
    dmAcademia.cdsTurmaBusca.Close;
  dmAcademia.cdsTurmaBusca.Params.ParamByName('pTurma').AsInteger := 0;
  dmAcademia.cdsTurmaBusca.Params.ParamByName('pALUNO').AsInteger := dmAcademia.cdsAlunoCodCliente.asInteger;
  //dmAcademia.cdsTurmaBusca.Params.ParamByName('pEnt1').AsDateTime := Time - 0.5;
  //dmAcademia.cdsTurmaBusca.Params.ParamByName('pEnt2').AsDateTime := Time + 0.5;

  dmAcademia.cdsTurmaBusca.Open;
  rpTurma.Items.Clear;
  //rpTurma.Columns := dmAcademia.cdsTurmaBusca.RecordCount;
  While not dmAcademia.cdsTurmaBusca.Eof do
  begin
    rpTurma.Items.Add(dmAcademia.cdsTurmaBuscaTURMA.AsString);
    dmAcademia.cdsTurmaBusca.Next;
  end;
  dmAcademia.cdsTurmaBusca.First;
  // Se existe só uma turma para este aluno então Mostra os Alunos já presente nesta turma
  if (dmAcademia.cdsTurmaBusca.RecordCount = 1) then
  begin
    rpTurma.ItemIndex := 0;
    //if (dmAcademia.cdsTurmaBusca.Active) then
    //  dmAcademia.cdsTurmaBusca.Close;
    //dmAcademia.cdsTurmaBusca.Params.ParamByName('pTurma').AsInteger := dmAcademia.cdsTurmaBuscaCODTURMA.asInteger;
    //dmAcademia.cdsTurmaBusca.Params.ParamByName('pALUNO').AsInteger := 0;
    //dmAcademia.cdsTurmaBusca.Open;
    // Vejo se a tabela FREQUENCIA esta ABERTA
    if (DtSrc.DataSet.Active) then
      dmAcademia.cdsFrequencia.Close;
    dmAcademia.cdsFrequencia.Params.ParamByName('pData').AsDate := Now;
    dmAcademia.cdsFrequencia.Params.ParamByName('pTurma').AsInteger := dmAcademia.cdsTurmaBuscaCODTURMA.asInteger;
    //dmAcademia.cdsFrequencia.Params.ParamByName('pEnt1').AsDateTime := Time - 0.5;
    //dmAcademia.cdsFrequencia.Params.ParamByName('pEnt2').AsDateTime := Time + 0.5;
    dmAcademia.cdsFrequencia.Open;

    // Vejo se o Aluno já deu ENTRADA, se sim então é SAIDA
    if (dmAcademia.cdsFrequencia.Locate('CODCLIENTE', dmAcademia.cdsAlunoCodCliente.asInteger, [loCaseInsensitive])) then
    begin
      //if (HourOf(IncMinute(dmAcademia.cdsFrequenciaHORARIOENTRADA.AsDateTime,10)) < HourOf(now)) then
        if  MessageDlg('Confirma a Saída deste aluno ? ',
          mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
      saidaAluno;
    end
    else begin
      entradaAluno;
    end
  end;

end;

procedure TfAcademiaFrequencia.FormShow(Sender: TObject);
begin
  inherited;
  if (not dmAcademia.cdsAluno.Active) then
    dmAcademia.cdsAluno.Open;
  if (dmAcademia.cdsTurma.Active) then
    dmAcademia.cdsTurma.Close;
  dmAcademia.cdsTurma.Params.ParamByName('pTurma').AsInteger := 0;
  dmAcademia.cdsTurma.Open;
end;

procedure TfAcademiaFrequencia.entradaAluno;
var t : TUtils;
begin
  // Usado para Inserir a Turma na Tabela Frequencia de Cada Dia.
  t := TUTils.Create;
  btnIncluir.Click;
  dmAcademia.cdsFrequenciaCODFREQUENCIA.AsInteger := StrToInt(t.buscaChave('GEN_ACADEMIAFREQUENCIA'));
  t.Destroy;
  dmAcademia.cdsFrequenciaDATAFREQUENCIA.AsDateTime := JvDatePickerEdit1.Date;
  dmAcademia.cdsFrequenciaCODCLIENTE.AsInteger := dmAcademia.cdsTurmaBuscaCODCLIENTE.asInteger;
  dmAcademia.cdsFrequenciaCODTURMA.AsInteger := dmAcademia.cdsTurmaBuscaCODTURMA.asInteger;
  //dmAcademia.cdsFrequenciaHORARIOENTRADA.AsDateTime := Time;
  dmacademia.cdsFrequenciaNOMECLIENTE.AsString := dmAcademia.cdsTurmaBuscaALUNO.asString;
  dmacademia.cdsFrequenciaNOMETURMA.AsString := dmAcademia.cdsTurmaBuscaTURMA.asString;
  btnGravar.Click;
end;

procedure TfAcademiaFrequencia.saidaAluno;
begin
  DtSrc.DataSet.Edit;
  dmAcademia.cdsFrequenciaHORARIOSAIDA.AsDateTime := Time;
  btnGravar.Click;
end;

procedure TfAcademiaFrequencia.JvDBSearchComboBox1Exit(Sender: TObject);
begin
  inherited;
  if (BuscouAluno = False) then
  begin
    BuscaTurma;
    buscouAluno := True;
  end
  else
    buscouAluno := False;
end;

procedure TfAcademiaFrequencia.JvDBFindEdit1Exit(Sender: TObject);
begin
  inherited;
  if (BuscouAluno = False) then
  begin
    BuscaTurma;
    buscouAluno := True;
  end
  else
    buscouAluno := False;
end;

procedure TfAcademiaFrequencia.rpTurmaClick(Sender: TObject);
begin
  inherited;
  if (rpTurma.ControlCount > 1) then
  begin
    // Vejo se o Aluno já deu ENTRADA, se sim então é SAIDA
    if (dmAcademia.cdsFrequencia.Locate('CODCLIENTE', dmAcademia.cdsAlunoCodCliente.asInteger, [loCaseInsensitive])) then
    begin
      //if (HourOf(IncMinute(dmAcademia.cdsFrequenciaHORARIOENTRADA.AsDateTime,10)) < HourOf(now)) then
      if  MessageDlg('Confirma a Saída deste aluno ? ',
         mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
      saidaAluno;
    end
    else begin
      entradaAluno;
    end;
  end;
end;

procedure TfAcademiaFrequencia.cbNomeTurmaChange(Sender: TObject);
begin
  inherited;
  if (dmAcademia.cdsTurmaBusca.Active) then
    dmAcademia.cdsTurmaBusca.Close;
  dmAcademia.cdsTurmaBusca.Params.ParamByName('pAluno').AsInteger := 0;
  dmAcademia.cdsTurmaBusca.Params.ParamByName('pTurma').AsInteger := dmAcademia.cdsTurmaCODTURMA.asInteger;
  dmAcademia.cdsTurmaBusca.Open;

  if (DtSrc.DataSet.Active) then
    dmAcademia.cdsFrequencia.Close;
  dmAcademia.cdsFrequencia.Params.ParamByName('pData').AsDate := JvDatePickerEdit1.Date;
  dmAcademia.cdsFrequencia.Params.ParamByName('pTurma').AsInteger := dmAcademia.cdsTurmaCODTURMA.asInteger;
  dmAcademia.cdsFrequencia.Open;

  if (dmAcademia.cdsFrequencia.IsEmpty) then
  begin
    While (not dmAcademia.cdsTurmaBusca.Eof) do
    begin
      entradaAluno;
      dmAcademia.cdsTurmaBusca.Next;
    end;
  end;
end;

procedure TfAcademiaFrequencia.DbGrid1DrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  X, Y, Index: integer;
  Field: TField;
begin
  Field := Column.Field;
  if (Field <> nil) and (Field.Name = 'cdsFrequenciaPRESENTE') then begin
    DBGrid1.Canvas.FillRect(Rect);
    case Column.Alignment of
    taRightJustify:
      X := Rect.Right - 2 - 16;
    taCenter:
      X := (Rect.Right - Rect.Left - 16) div 2 + Rect.Left;
    else // taLeftJustify:
      X := Rect.Left + 2;
    end;
    Y := (Rect.Bottom - Rect.Top - 16) div 2 + Rect.Top;
    if dmAcademia.cdsFrequenciaPRESENTE.AsString = 'F' then
      Index := 1
    else if dmAcademia.cdsFrequenciaPRESENTE.AsString = 'P' then
      Index := 0
    else Index := -1;
      ImageList1.Draw(DBGrid1.Canvas, X, Y, Index);
  end else // Default drawing
    DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfAcademiaFrequencia.DbGrid1CellClick(Column: TColumn);
var
  Field: TField;
begin
  Field := Column.Field;
  if (Field <> nil) and (Field.Name = 'cdsFrequenciaPRESENTE')
      and Field.CanModify and not Column.ReadOnly then
    with Field.Dataset do begin
      if State = dsBrowse then
        Edit;
      if (dmAcademia.cdsFrequenciaPRESENTE.AsString = 'P') then
      begin
        //dbGrid1.SelectedRows.CurrentRowSelected := True;
        //dbgrid1.Refresh;
        dmAcademia.cdsFrequenciaPRESENTE.AsString := 'F';
        btnGravar.Click;
      end
      else begin
        dmAcademia.cdsFrequenciaPRESENTE.AsString := 'P';
        btnGravar.Click;
      end;
    end;
end;

procedure TfAcademiaFrequencia.DbGrid1ColEnter(Sender: TObject);
var
  Field: TField;
begin
  Field := DBGrid1.SelectedField;
  if (Field <> nil) and (Field.Name = 'cdsFrequenciaPRESENTE') then
    DBGrid1.Options := DBGrid1.Options - [dgEditing];
end;

procedure TfAcademiaFrequencia.DbGrid1ColExit(Sender: TObject);
var
  Field: TField;
begin
  Field := DBGrid1.SelectedField;
  if (Field <> nil) and (Field.Name = 'cdsFrequenciaPRESENTE') then
    DBGrid1.Options := DBGrid1.Options - [dgEditing];
end;

procedure TfAcademiaFrequencia.DtSrcStateChange(Sender: TObject);
begin
  //inherited;

end;

end.
