unit uCallCenter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, Buttons, DB, ExtCtrls, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, SqlExpr, DBClient, Provider, Mask, DBCtrls, jpeg,
  JvExMask, JvToolEdit;

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
    edtStatus: TEdit;
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
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCallCenter: TfCallCenter;
  textoSQL : string;

implementation

uses UDm;

{$R *.dfm}

procedure TfCallCenter.BitBtn1Click(Sender: TObject);
var
  sqlTexto, datastr : string;

begin
   textoSQL := 'select PROTOCOLO, DATA_ATENDIMENTO, NOME, CIDADE, CEP, UF,  ' +
       'TELEFONE, N_QUADRO, N_SERIE, MODELOBIKE, TIPO_ATENDIMENTO,  ' +
       'STATUS_ATENDIMENTO from CALLCENTER ';

  datastr:='  /  /  ';
  //------------------------------------------------------------------------------
  //Verifica se a data de emissão foi preenchido
  //------------------------------------------------------------------------------
  try
    if (JvDateEdit1.Text<>datastr) then
      StrToDate(JvDateEdit1.Text);
    if (JvDateEdit1.Text<>datastr) then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' WHERE DATA_ATENDIMENTO ' +
         QuotedStr(formatdatetime('mm/dd/yy', StrToDate(JvDateEdit1.Text)));
    end;
  except
    on EConvertError do
    begin
      ShowMessage ('Data Inválida! dd/mm/aa');
      JvDateEdit1.SetFocus;
    end;
  end;
  //------------------------------------------------------------------------------
  if (Edit1.Text <> '') then // Nº Protocolo
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' WHERE PROTOCOLO = '
    else
      sqlTexto := sqlTexto + ' AND PROTOCOLO = ';
    sqlTexto := sqlTexto + QuotedStr(Edit1.Text);
  end;

  if (edtNome.Text <> '') then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' WHERE NOME = '
    else
      sqlTexto := sqlTexto + ' AND NOME = ';
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
  if (cCallCenterDet.Active) then
     cCallCenterDet.Close;
  cCallCenterDet.Params[0].AsString := cCallCenterPROTOCOLO.AsString;
  cCallCenterDet.Open;
     
end;

procedure TfCallCenter.BitBtn2Click(Sender: TObject);
var
  dia, mes, ano : word;
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

  DecodeDate(ano, mes, dia, now);
  // gera PROTOCOLO
  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(gen_callcenter, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  if (not cCallCenter.Active) then
     cCallCenter.Open;
  cCallCenter.Append;
  cCallCenterPROTOCOLO.AsString := IntToStr(ano) + IntToStr(mes) + IntToStr(dia) + IntToStr(dm.c_6_genidCODIGO.AsInteger);
  dm.c_6_genid.Close;
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
  cCallCenter.ApplyUpdates(0);

  if (not cCallCenterDet.Active) then
     cCallCenterDet.Open;
  cCallCenterDet.ApplyUpdates(0);
  cCallCenterDetID.AsDateTime := Now;
  cCallCenterDetID_USUARIO.AsInteger := usulog;
  cCallCenterDetATENDIMENTO.AsString := edtAtendimento.Text;
  cCallCenterDetPROTOCOLO.AsString := cCallCenterPROTOCOLO.AsString;
  cCallCenterDet.ApplyUpdates(0);
  BitBtn1.Click;
 { TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
    try
      dm.sqlsisAdimin.StartTransaction(TD);
      dm.sqlsisAdimin.ExecuteDirect('INSERT INTO ATUALIZA(CODATUALIZA, VERSAO) ' +
        ' VALUES(5000, ' + QuotedStr('1.0.0.11') + ')');
      dm.sqlsisAdimin.Commit(TD);
      versaoSistema := '1.0.0.11';
    except
      dm.sqlsisAdimin.Rollback(TD);
    end;
    }
end;

end.
