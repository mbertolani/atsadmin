unit uCallCenter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, Buttons, DB, ExtCtrls, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, SqlExpr, DBClient, Provider, Mask, DBCtrls, jpeg,
  JvExMask, JvToolEdit, DBxPress;

type
  TfCallCenter = class(TForm)
    pCallCenter: TDataSetProvider;
    cCallCenter: TClientDataSet;
    DataSource1: TDataSource;
    sCallCenter: TSQLDataSet;
    JvDBGrid1: TJvDBGrid;
    Panel1: TPanel;
    DataSource2: TDataSource;
    pCallCenterDet: TDataSetProvider;
    cCallCenterDet: TClientDataSet;
    sCallCenterDet: TSQLDataSet;
    sCallCenterPROTOCOLO: TStringField;
    sCallCenterDATA_ATENDIMENTO: TSQLTimeStampField;
    sCallCenterNOME: TStringField;
    sCallCenterCIDADE: TStringField;
    sCallCenterCEP: TStringField;
    sCallCenterUF: TStringField;
    sCallCenterTELEFONE: TStringField;
    sCallCenterN_QUADRO: TStringField;
    sCallCenterN_SERIE: TStringField;
    sCallCenterMODELOBIKE: TStringField;
    sCallCenterTIPO_ATENDIMENTO: TStringField;
    sCallCenterSTATUS_ATENDIMENTO: TStringField;
    cCallCenterPROTOCOLO: TStringField;
    cCallCenterDATA_ATENDIMENTO: TSQLTimeStampField;
    cCallCenterNOME: TStringField;
    cCallCenterCIDADE: TStringField;
    cCallCenterCEP: TStringField;
    cCallCenterUF: TStringField;
    cCallCenterTELEFONE: TStringField;
    cCallCenterN_QUADRO: TStringField;
    cCallCenterN_SERIE: TStringField;
    cCallCenterMODELOBIKE: TStringField;
    cCallCenterTIPO_ATENDIMENTO: TStringField;
    cCallCenterSTATUS_ATENDIMENTO: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Panel2: TPanel;
    Label13: TLabel;
    Edit1: TEdit;
    JvDateEdit1: TJvDateEdit;
    edtNome: TEdit;
    edtCidade: TEdit;
    edtCep: TEdit;
    edtUF: TEdit;
    edttelefone: TEdit;
    edtQuadro: TEdit;
    edtSerie: TEdit;
    edtModelo: TEdit;
    edtTipo: TComboBox;
    edtAtendimento: TEdit;
    JvDBGrid2: TJvDBGrid;
    Image1: TImage;
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    cCallCenterDetID: TSQLTimeStampField;
    cCallCenterDetID_USUARIO: TIntegerField;
    cCallCenterDetATENDIMENTO: TStringField;
    sCallCenterDetID: TSQLTimeStampField;
    sCallCenterDetID_USUARIO: TIntegerField;
    sCallCenterDetATENDIMENTO: TStringField;
    sCallCenterDetPROTOCOLO: TStringField;
    cCallCenterDetPROTOCOLO: TStringField;
    sBuscaProtocolo: TSQLDataSet;
    BitBtn6: TBitBtn;
    edtStatus: TComboBox;
    procedure IncluiProtocolo;
    procedure EditaProtocolo;
    procedure LimpaEdit;
    procedure PreencherEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure JvDBGrid2DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure JvDBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure JvDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure edtNomeChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCallCenter: TfCallCenter;
  TD: TTransactionDesc;
  textoSQL : string;
  dia, mes, ano : word;
  PROTOCOLO, ATENDIMENTO : string;

implementation

uses UDm;

{$R *.dfm}

procedure TfCallCenter.BitBtn1Click(Sender: TObject);
var
  sqlTexto, PROTOCOLO : string;

begin
   textoSQL := 'select PROTOCOLO, DATA_ATENDIMENTO, NOME, CIDADE, CEP, UF,  ' +
       'TELEFONE, N_QUADRO, N_SERIE, MODELOBIKE, TIPO_ATENDIMENTO,  ' +
       'STATUS_ATENDIMENTO from CALLCENTER ';

    if (JvDateEdit1.Text <> '  /  /    ') then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' WHERE DATA_ATENDIMENTO ' +
         QuotedStr(formatdatetime('mm/dd/yy', StrToDate(JvDateEdit1.Text)));
    end;

  //------------------------------------------------------------------------------
  if (Edit1.Text <> '') then // Nº Protocolo
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' WHERE PROTOCOLO = '
    else
      sqlTexto := sqlTexto + ' AND PROTOCOLO = ';
    sqlTexto := sqlTexto + QuotedStr(Edit1.Text);
    PROTOCOLO := Edit1.Text;
  end;

  if (edtNome.Text <> '') then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' WHERE UDF_COLLATEBR(NOME) containing  '
    else
      sqlTexto := sqlTexto + ' AND UDF_COLLATEBR(NOME) containing ';
    sqlTexto := sqlTexto + QuotedStr(edtNome.Text);
  end;

  if (edtCidade.Text <> '') then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' WHERE CIDADE = '
    else
      sqlTexto := sqlTexto + ' AND CIDADE = ';
    sqlTexto := sqlTexto + QuotedStr(edtCidade.Text);
  end;

  if (edtCep.Text <> '') then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' WHERE CEP = '
    else
      sqlTexto := sqlTexto + ' AND CEP = ';
    sqlTexto := sqlTexto + QuotedStr(edtCep.Text);
  end;

  if (edtUF.Text <> '') then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' WHERE UF = '
    else
      sqlTexto := sqlTexto + ' AND UF = ';
    sqlTexto := sqlTexto + QuotedStr(edtUF.Text);
  end;

  if (edttelefone.Text <> '') then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' WHERE TELEFONE = '
    else
      sqlTexto := sqlTexto + ' AND TELEFONE = ';
    sqlTexto := sqlTexto + QuotedStr(edttelefone.Text);
  end;

  if (edtQuadro.Text <> '') then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' WHERE N_QUADRO = '
    else
      sqlTexto := sqlTexto + ' AND N_QUADRO = ';
    sqlTexto := sqlTexto + QuotedStr(edtUF.Text);
  end;

  if (edtSerie.Text <> '') then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' WHERE N_SERIE = '
    else
      sqlTexto := sqlTexto + ' AND N_SERIE = ';
    sqlTexto := sqlTexto + QuotedStr(edtSerie.Text);
  end;

  if (edtModelo.Text <> '') then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' WHERE MODELOBIKE = '
    else
      sqlTexto := sqlTexto + ' AND MODELOBIKE = ';
    sqlTexto := sqlTexto + QuotedStr(edtModelo.Text);
  end;

  if (edtTipo.Text <> '') then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' WHERE TIPO_ATENDIMENTO = '
    else
      sqlTexto := sqlTexto + ' AND TIPO_ATENDIMENTO = ';
    sqlTexto := sqlTexto + QuotedStr(edtTipo.Text);
  end;

  if (edtAtendimento.Text <> '') then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' WHERE STATUS_ATENDIMENTO = '
    else
      sqlTexto := sqlTexto + ' AND STATUS_ATENDIMENTO = ';
    sqlTexto := sqlTexto + QuotedStr(edtAtendimento.Text);
  end;

  cCallCenter.CommandText := '';
  cCallCenter.CommandText := textoSQL + sqlTexto;
  cCallCenter.Open;
  if (PROTOCOLO = '') then
     PROTOCOLO := cCallCenterPROTOCOLO.AsString;
  if (cCallCenterDet.Active) then
     cCallCenterDet.Close;
  cCallCenterDet.Params[0].AsString := PROTOCOLO;
  cCallCenterDet.Open;
  ATENDIMENTO := DateTimeToStr(cCallCenterDetID.AsDateTime);

end;

procedure TfCallCenter.LimpaEdit;
begin
  Edit1.Text := '';
  JvDateEdit1.Text := '  /  /    ';
  edtNome.Text := '';
  edtCidade.Text := '';
  edtCep.Text := '';
  edtUF.Text := '';
  edttelefone.Text := '';
  edtQuadro.Text := '';
  edtSerie.Text := '';
  edtModelo.Text := '';
  edtTipo.Text := '';
  edtStatus.Text := '';
  edtAtendimento.Text := '';
end;

procedure TfCallCenter.BitBtn5Click(Sender: TObject);
begin
  LimpaEdit;
  cCallCenter.Close;
  cCallCenterDet.Close;  
end;

procedure TfCallCenter.JvDBGrid1DblClick(Sender: TObject);
begin
  LimpaEdit;
  PreencherEdit;
end;

procedure TfCallCenter.DataSource1StateChange(Sender: TObject);
begin

{  if DataSource1.State in [dsInsert, dsEdit] then
  begin
    btnIncluir.Visible := False;
    btnexcluir.Visible := False;
    btngravar.Visible := True;
    btnGravar.Enabled := True;
    btnCancelar.Visible := True;
    btnCancelar.Enabled := True;    
  end;

  if DtSrc.State in [dsBrowse,dsInactive] then
  begin
    btnIncluir.Enabled := True;
    btnIncluir.Visible := True;
    btnexcluir.Visible := True;
    btnExcluir.Enabled := True;
    btngravar.Visible := False;
    btnCancelar.Visible := False;
  end;

         }
end;

procedure TfCallCenter.EditaProtocolo;
begin
{  PROTOCOLO := cCallCenterPROTOCOLO.AsString;
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  try
    textoSQL := 'UPDATE CALLCENTER SET ';
    textoSQL := textoSQL + 'DATA_ATENDIMENTO = ' + QuotedStr(JvDateEdit1.Text) + ', ';
    textoSQL := textoSQL + 'NOME ' + QuotedStr(edtNome.Text) + ', ';
    textoSQL := textoSQL + 'CIDADE ' + QuotedStr(edtCidade.Text) + ', ';
    textoSQL := textoSQL + 'CEP ' + QuotedStr(edtCep.Text) + ', ';
    textoSQL := textoSQL + 'UF ' + QuotedStr(edtUF.Text) + ', ';
    textoSQL := textoSQL + 'TELEFONE ' + QuotedStr(edttelefone.Text) + ', ';
    textoSQL := textoSQL + 'N_QUADRO ' + QuotedStr(edtQuadro.Text) + ', ';
    textoSQL := textoSQL + 'N_SERIE ' + QuotedStr(edtSerie.Text) + ', ';
    textoSQL := textoSQL + 'MODELOBIKE ' + QuotedStr(edtModelo.Text) + ', ';
    textoSQL := textoSQL + 'TIPO_ATENDIMENTO ' + QuotedStr(edtTipo.Text);
    textoSQL := textoSQL + ' where PROTOCOLO = ' + QuotedStr(PROTOCOLO);
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(textoSQL);
    dm.sqlsisAdimin.Commit(TD);
  except
    dm.sqlsisAdimin.Rollback(TD);
  end; }

{  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  try
    textoSQL := 'UPDATE CALLCENTERDET SET ';
    textoSQL := textoSQL + 'ATENDIMENTO = ' + QuotedStr(edtAtendimento.Text);
    textoSQL := textoSQL + ' where PROTOCOLO = ' + QuotedStr(PROTOCOLO);
    textoSQL := textoSQL + ' and ID = ' + QuotedStr(ATENDIMENTO);
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(textoSQL);
    dm.sqlsisAdimin.Commit(TD);
  except
    dm.sqlsisAdimin.Rollback(TD);
  end;                               }
  if (cCallCenter.Active) then
  begin
    cCallCenter.Edit;
    cCallCenterDATA_ATENDIMENTO.AsDateTime := JvDateEdit1.Date;
    cCallCenterNOME.AsString := edtNome.Text;
    cCallCenterCIDADE.AsString := edtCidade.Text;
    cCallCenterCIDADE.AsString := edtCidade.Text;
    cCallCenterCEP.AsString := edtCep.Text;
    cCallCenterUF.AsString := edtUF.Text;
    cCallCenterTELEFONE.AsString := edttelefone.Text;
    cCallCenterN_QUADRO.AsString := edtQuadro.Text;
    cCallCenterN_SERIE.AsString := edtSerie.Text;
    cCallCenterMODELOBIKE.AsString := edtModelo.Text;
    cCallCenterTIPO_ATENDIMENTO.AsString := edttelefone.Text;
    cCallCenterSTATUS_ATENDIMENTO.AsString := edtStatus.Text;
    cCallCenter.ApplyUpdates(0);
  end;

  if (cCallCenterDet.Active) then
  begin
      cCallCenterDet.Edit;
      cCallCenterDetATENDIMENTO.AsString := edtAtendimento.Text;
      cCallCenterDet.ApplyUpdates(0);
  end;

end;

procedure TfCallCenter.IncluiProtocolo;
begin
  if (JvDateEdit1.Text = '  /  /    ') then
  begin
    MessageDlg('Digite a data do atendimento', mtWarning, [mbOK], 0);
    JvDateEdit1.SetFocus;
    Exit;
  end;

  if (edtNome.Text = '') then
  begin
    MessageDlg('Digite o nome do Cliente', mtWarning, [mbOK], 0);
    edtNome.SetFocus;
    Exit;
  end;

  if (edtAtendimento.Text = '') then
  begin
    MessageDlg('Informe o campo Atendimento', mtWarning, [mbOK], 0);
    edtNome.SetFocus;
    Exit;
  end;

  DecodeDate(now, ano, mes, dia);
  // gera PROTOCOLO
  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(gen_callcenter, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  PROTOCOLO := IntToStr(ano) + IntToStr(mes) + IntToStr(dia) + IntToStr(dm.c_6_genidCODIGO.AsInteger);
  Edit1.Text := PROTOCOLO;
  dm.c_6_genid.Close;

  if (sBuscaProtocolo.Active) then // Verifico se Protocolo já existe
     sBuscaProtocolo.Close;
  sBuscaProtocolo.Params[0].AsString := PROTOCOLO;
  sBuscaProtocolo.Open;
  if (not sBuscaProtocolo.IsEmpty) then
  begin
    if MessageDlg('PROTOCOLO já foi Adicionado deseja alterar ?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin
      if (not cCallCenter.Active) then
        cCallCenter.Open;
      cCallCenter.Edit;
    end
    else
    begin
      LimpaEdit;
      exit;
    end;
  end
  else
  begin
    if (not cCallCenter.Active) then
       cCallCenter.Open;
    cCallCenter.Append;
  end;
  cCallCenterPROTOCOLO.AsString := PROTOCOLO;
  cCallCenterDATA_ATENDIMENTO.AsDateTime := JvDateEdit1.Date;
  cCallCenterNOME.AsString := edtNome.Text;
  cCallCenterCIDADE.AsString := edtCidade.Text;
  cCallCenterCIDADE.AsString := edtCidade.Text;
  cCallCenterCEP.AsString := edtCep.Text;
  cCallCenterUF.AsString := edtUF.Text;
  cCallCenterTELEFONE.AsString := edttelefone.Text;
  cCallCenterN_QUADRO.AsString := edtQuadro.Text;
  cCallCenterN_SERIE.AsString := edtSerie.Text;
  cCallCenterMODELOBIKE.AsString := edtModelo.Text;
  cCallCenterTIPO_ATENDIMENTO.AsString := edttelefone.Text;
  cCallCenterSTATUS_ATENDIMENTO.AsString := edtStatus.Text;
  cCallCenter.ApplyUpdates(0);

  if (not cCallCenterDet.Active) then
     cCallCenterDet.Open;
  cCallCenterDet.Append;
  cCallCenterDetID.AsDateTime := Now;
  cCallCenterDetID_USUARIO.AsInteger := usulog;
  cCallCenterDetATENDIMENTO.AsString := edtAtendimento.Text;
  cCallCenterDetPROTOCOLO.AsString := PROTOCOLO;
  cCallCenterDet.ApplyUpdates(0);
//  BitBtn1.Click;

end;

procedure TfCallCenter.BitBtn2Click(Sender: TObject);
begin
 if (cCallCenterSTATUS_ATENDIMENTO.AsString = 'F') then
 begin
   MessageDlg('Protocolo já finalizado', mtWarning, [mbOK], 0);
   exit;
 end;
  if (BitBtn2.Caption = 'Incluir') then
    IncluiProtocolo
  else
    EditaProtocolo;
  BitBtn2.Caption := 'Incluir';
end;

procedure TfCallCenter.BitBtn6Click(Sender: TObject);
begin
  if (not cCallCenter.Active) then
  begin
    MessageDlg('É preciso ter um Protocolo para depois adicionar atendimentos', mtWarning, [mbOK], 0);
    exit;
  end;
  if (not cCallCenterDet.Active) then
      cCallCenterDet.Open;
  cCallCenterDet.Append;
  cCallCenterDetID.AsDateTime := Now;
  cCallCenterDetID_USUARIO.AsInteger := usulog;
  cCallCenterDetATENDIMENTO.AsString := edtAtendimento.Text;
  cCallCenterDetPROTOCOLO.AsString := cCallCenterPROTOCOLO.AsString;
  cCallCenterDet.ApplyUpdates(0);
end;

procedure TfCallCenter.JvDBGrid2DblClick(Sender: TObject);
begin
  if (Edit1.Text <> '') then
  begin
    edtAtendimento.Text := cCallCenterDetATENDIMENTO.AsString;
    ATENDIMENTO := FormatDateTime('dd/mm/yyyy hh:MM:ss', cCallCenterDetID.AsDateTime);
  end
  else
  begin
    MessageDlg('Escolha um Protocolo', mtWarning, [mbOK], 0);
    Exit;
  end;
end;

procedure TfCallCenter.FormShow(Sender: TObject);
begin
  LimpaEdit;
  cCallCenter.Close;
  cCallCenterDet.Close;  
end;

procedure TfCallCenter.PreencherEdit;
begin
  if (cCallCenter.Active) then
     cCallCenter.Edit;
  BitBtn2.Caption := 'Alterar';
  Edit1.Text := cCallCenterPROTOCOLO.AsString;
  JvDateEdit1.Date := cCallCenterDATA_ATENDIMENTO.AsDateTime;
  edtNome.Text := cCallCenterNOME.AsString;
  edtCidade.Text := cCallCenterCIDADE.AsString;
  edtCep.Text := cCallCenterCEP.AsString;
  edtUF.Text := cCallCenterUF.AsString;
  edttelefone.Text := cCallCenterTELEFONE.AsString;
  edtQuadro.Text := cCallCenterN_QUADRO.AsString;
  edtSerie.Text := cCallCenterN_SERIE.AsString;
  edtModelo.Text := cCallCenterMODELOBIKE.AsString;
  if (cCallCenterSTATUS_ATENDIMENTO.AsString = 'A') then
    edtStatus.Text := 'Aberto';
  if (cCallCenterSTATUS_ATENDIMENTO.AsString = 'E') then
    edtStatus.Text := 'Em Espera';
  if (cCallCenterSTATUS_ATENDIMENTO.AsString = 'F') then
    edtStatus.Text := 'Finalizado';

  edtTipo.Text := cCallCenterTIPO_ATENDIMENTO.AsString;
 // edtStatus.Text := cCallCenterSTATUS_ATENDIMENTO.AsString;
  if (cCallCenterDet.Active) then
     cCallCenterDet.Close;
  cCallCenterDet.Params[0].AsString := cCallCenterPROTOCOLO.AsString;
  cCallCenterDet.Open;
  edtAtendimento.Text := cCallCenterDetATENDIMENTO.AsString;
end;

procedure TfCallCenter.JvDBGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  LimpaEdit;
  PreencherEdit;
end;

procedure TfCallCenter.JvDBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  LimpaEdit;
  PreencherEdit;
end;

procedure TfCallCenter.edtNomeChange(Sender: TObject);
begin
  if (cCallCenter.State in [dsBrowse]) then
    if (Edit1.Text <> '') then
    begin
      cCallCenter.Edit;
      if (BitBtn2.Caption = 'Incluir') then
          BitBtn2.Caption := 'Alterar';
    end;
end;

end.