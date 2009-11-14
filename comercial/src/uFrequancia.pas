unit uFrequancia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, Mask, StdCtrls, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, Buttons, DB, DBClient, Provider,
  SqlExpr, ExtCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, ComCtrls, Menus;

type
  TfFrequencia = class(TForm)
    Panel1: TPanel;
    sFrequencia: TSQLDataSet;
    dFrequencia: TDataSetProvider;
    cFrequencia: TClientDataSet;
    DtSrc: TDataSource;
    cFrequenciaCOD_FREQUENCIA: TIntegerField;
    cFrequenciaCOD_FUNCIONARIO: TIntegerField;
    cFrequenciaDATA: TDateField;
    cFrequenciaHORAINICIO: TSQLTimeStampField;
    cFrequenciaHORASAIDA: TSQLTimeStampField;
    cFrequenciaNOME_FUNCIONARIO: TStringField;
    sFrequenciaCOD_FREQUENCIA: TIntegerField;
    sFrequenciaCOD_FUNCIONARIO: TIntegerField;
    sFrequenciaDATA: TDateField;
    sFrequenciaHORAINICIO: TSQLTimeStampField;
    sFrequenciaHORASAIDA: TSQLTimeStampField;
    sFrequenciaNOME_FUNCIONARIO: TStringField;
    ComboBox1: TComboBox;
    data1: TJvDatePickerEdit;
    horaentrada: TMaskEdit;
    sFuncionarios: TSQLDataSet;
    sFuncionariosCOD_FUNCIONARIO: TIntegerField;
    sFuncionariosNOME_FUNCIONARIO: TStringField;
    Timer1: TTimer;
    sdsFrequencia: TSQLDataSet;
    dspFrequencia: TDataSetProvider;
    cdsFrequencia: TClientDataSet;
    cdsFrequenciaCOD_FREQUENCIA: TIntegerField;
    cdsFrequenciaCOD_FUNCIONARIO: TIntegerField;
    cdsFrequenciaDATA: TDateField;
    cdsFrequenciaHORAINICIO: TSQLTimeStampField;
    cdsFrequenciaHORASAIDA: TSQLTimeStampField;
    sdsFrequenciaCOD_FREQUENCIA: TIntegerField;
    sdsFrequenciaCOD_FUNCIONARIO: TIntegerField;
    sdsFrequenciaDATA: TDateField;
    sdsFrequenciaHORAINICIO: TSQLTimeStampField;
    sdsFrequenciaHORASAIDA: TSQLTimeStampField;
    sAusentes: TSQLDataSet;
    dAusentes: TDataSetProvider;
    cAusentes: TClientDataSet;
    dtsrcAusentes: TDataSource;
    sAusentesCODIGO: TIntegerField;
    sAusentesNOME: TStringField;
    cAusentesCODIGO: TIntegerField;
    cAusentesNOME: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    JvDBGrid1: TJvDBGrid;
    JvDBGrid2: TJvDBGrid;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    sColaborador: TSQLDataSet;
    sColaboradorCOD_FUNCIONARIO: TIntegerField;
    sColaboradorNOME_FUNCIONARIO: TStringField;
    PopupMenu1: TPopupMenu;
    Entrada1: TMenuItem;
    Saida1: TMenuItem;
    Excluir1: TMenuItem;
    Consulta1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    procedure buscafrequencia;
  public
    { Public declarations }
  end;

var
  fFrequencia: TfFrequencia;

implementation

uses UDm;

{$R *.dfm}

procedure TfFrequencia.FormCreate(Sender: TObject);
begin
  if (not sFuncionarios.Active) then
    sFuncionarios.Open;
  sFuncionarios.First;
  while not sFuncionarios.Eof do
  begin
     ComboBox1.Items.Add(sFuncionariosNOME_FUNCIONARIO.AsString);
     sFuncionarios.Next;
  end;
  sFuncionarios.Close;
end;

procedure TfFrequencia.Timer1Timer(Sender: TObject);
begin
 data1.Text := TimetoStr(Time);
end;

procedure TfFrequencia.BitBtn1Click(Sender: TObject);
begin
   // verificar se Colaborador ja entrou
   if (sColaborador.Active) then
     sColaborador.Close;
   sColaborador.Params[0].AsString := ComboBox1.Text;
   sColaborador.Params[1].AsDate := data1.Date;
   sColaborador.Open;
   if (not sColaborador.IsEmpty) then
   begin
     MessageDlg('Funcionário/Colaborador ja Lançado nessa data.', mtWarning, [mbOK], 0);
     sColaborador.Close;
     ComboBox1.SetFocus;
     exit;
   end;
   if (horaentrada.Text = '  :  ') then
   begin
     MessageDlg('Preencha o campo Hora.', mtWarning, [mbOK], 0);
     horaentrada.SetFocus;
     exit;
   end;
   if (not cdsFrequencia.Active) then
     cdsFrequencia.Open;
   cdsFrequencia.Append;
   if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
   dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_FREQUENCIA, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
   dm.c_6_genid.Open;
   cdsFrequenciaCOD_FREQUENCIA.AsInteger := dm.c_6_genidCODIGO.AsInteger;
   dm.c_6_genid.Close;
   sFuncionarios.Open;
   if (sFuncionarios.Locate('NOME_FUNCIONARIO',ComboBox1.Text, [loCaseInsensitive])) then
      cdsFrequenciaCOD_FUNCIONARIO.AsInteger := sFuncionariosCOD_FUNCIONARIO.AsInteger
   else
   begin
      MessageDlg('Funcionario não cadastrado', mtWarning, [mbOK], 0);
      cdsFrequencia.Cancel;
      exit;
   end;
   cdsFrequenciaDATA.AsDateTime := StrToDateTime(data1.Text);
   cdsFrequenciaHORAINICIO.AsDateTime := StrToDateTime(horaentrada.Text);
   cdsFrequencia.ApplyUpdates(0);
   // Atualiza o gride de Frequencia
   buscafrequencia;
end;

procedure TfFrequencia.BitBtn4Click(Sender: TObject);
begin
  buscafrequencia;
end;

procedure TfFrequencia.buscafrequencia;
var
  str, str_sql : string;
begin
  str := '';
  str := 'select  f.*, u.NOME_FUNCIONARIO from FREQUENCIA f inner join  FUNCIONARIO u ' +
          'on u.COD_FUNCIONARIO = f.COD_FUNCIONARIO ';
  str := str + ' where f.DATA = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDateTime(data1.Text)));
  str := str + ' and u.STATUS = ' + QuotedStr('S') + ' order by u.NOME_FUNCIONARIO';
  if (cFrequencia.Active) then
    cFrequencia.Close;
  cFrequencia.CommandText := str;
  cFrequencia.Open;

  if (cAusentes.Active) then
    cAusentes.Close;
  cAusentes.Params[0].AsDate := StrToDate(data1.Text);
  cAusentes.Open;
end;

procedure TfFrequencia.BitBtn3Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation, [mbYes,mbNo],0) = mrYes then
  begin
     DtSrc.DataSet.Delete;
     (DtSrc.DataSet as TClientDataSet).ApplyUpdates(0);
     buscafrequencia;
  end
  else
    Abort;

end;

procedure TfFrequencia.BitBtn2Click(Sender: TObject);
begin
   if (cdsFrequencia.State in [dsBrowse]) then
     cdsFrequencia.Edit;
   cdsFrequenciaHORASAIDA.AsDateTime := StrToDateTime(horaentrada.Text);
   cdsFrequencia.ApplyUpdates(0);
   // Atualiza o gride de Frequencia
   buscafrequencia;
end;

end.
