unit uCompraSolicProc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, Grids, DBGrids, JvExDBGrids, JvDBGrid, FMTBcd, DBClient,
  Provider, SqlExpr, Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit;

type
  TfCompraSolicProc = class(TfPai_new)
    rgSit: TRadioGroup;
    JvDBGrid1: TJvDBGrid;
    sdsSol: TSQLDataSet;
    dspSol: TDataSetProvider;
    cdsSol: TClientDataSet;
    cdsSolSOLIC_CODIGO: TIntegerField;
    cdsSolSOLIC_DATA: TDateField;
    cdsSolSOLIC_QUANTIDADE: TFloatField;
    cdsSolSOLIC_SITUACAO: TStringField;
    cdsSolSOLIC_DATAAPROV: TDateField;
    cdsSolSOLIC_DESCRICAO: TStringField;
    cdsSolSOLIC_TIPO: TStringField;
    cdsSolSOLIC_PRODUTO: TStringField;
    cdsSolSOLIC_SOLICITANTE: TStringField;
    cdsSolSOLIC_APROVACAO: TStringField;
    cdsSolSOLIC_DTNECESSIT: TDateField;
    cdsSolSOLIC_OBSERVACAO: TStringField;
    cdsSolUNIDADEMEDIDA: TStringField;
    GroupBox1: TGroupBox;
    dtSolic: TJvDatePickerEdit;
    dtSolic2: TJvDatePickerEdit;
    Label1: TLabel;
    btnStatus: TBitBtn;
    btnAprovar: TBitBtn;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    dtNece: TJvDatePickerEdit;
    dtNece2: TJvDatePickerEdit;
    procedure rgSitClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnStatusClick(Sender: TObject);
    procedure JvDBGrid1CellClick(Column: TColumn);
    procedure JvDBGrid1TitleClick(Column: TColumn);
  private
    procedure listaSolicitacao;
    procedure atualizaSolic;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCompraSolicProc: TfCompraSolicProc;

implementation

uses UDm, uAtsAdmin;

{$R *.dfm}

procedure TfCompraSolicProc.listaSolicitacao;
var sit, str, cond: string;
begin
  cond := '';
  sit := '';
  case rgSit.ItemIndex of
    0 : sit := 'P';
    1 : sit := 'A';
    2 : sit := 'C';
  end;

  // Busca Solicitacao
  if (cdsSol.Active) then
    cdsSol.Close;
  str := 'SELECT * FROM COMPRA_SOLIC, produtos' ;
  if (sit <> '') then
    cond := cond + ' WHERE SOLIC_SITUACAO =' + QuotedStr(sit) +
     ' and codpro = SOLIC_PRODUTO'
  else
    cond := cond + ' WHERE codpro = SOLIC_PRODUTO AND SOLIC_SITUACAO <> ' + QuotedStr('C');
  if( ( not dtSolic.IsEmpty) and ( not dtSolic2.IsEmpty)) then
    cond := cond + ' and SOLIC_DATA between ' +
    QuotedStr(FormatDateTime('mm/dd/yyyy' , StrToDate(dtSolic.Text))) + ' and ' +
    QuotedStr(FormatDateTime('mm/dd/yyyy' , StrToDate(dtSolic2.Text)));
  if( ( not dtNece.IsEmpty) and ( not dtNece2.IsEmpty)) then
    cond := cond + ' and SOLIC_DTNECESSIT between ' +
    QuotedStr(FormatDateTime('mm/dd/yyyy' , StrToDate(dtNece.Text))) + ' and ' +
    QuotedStr(FormatDateTime('mm/dd/yyyy' , StrToDate(dtNece2.Text)));

  cdsSol.CommandText := str + cond;
  cdsSol.Open;
end;

procedure TfCompraSolicProc.rgSitClick(Sender: TObject);
begin
  case rgSit.ItemIndex of
    0 : btnAprovar.Enabled := True;
    1 : btnAprovar.Enabled := False;
    2 : btnAprovar.Enabled := False;
  end;
  listaSolicitacao;
end;

procedure TfCompraSolicProc.btnProcurarClick(Sender: TObject);
begin
  //inherited;
  listaSolicitacao;
end;

procedure TfCompraSolicProc.btnIncluirClick(Sender: TObject);
//var situa: string;
begin
  if (cdsSolSOLIC_SITUACAO.AsString = 'C') then
  begin
    MessageDlg('Solicitação Cancelada, altere a situação para Pendente.'+#13+#10+'Para poder aprova-la.', mtWarning, [mbOK], 0);
    exit;
  end;

  // Ver se o usuario q esta aprovando e a pessoa responsavel
  if (fAtsAdmin.UserControlComercial.CurrentUser.UserLogin = cdsSolSOLIC_APROVACAO.AsString) then
  begin
    dm.sqlsisAdimin.ExecuteDirect('UPDATE COMPRA_SOLIC SET SOLIC_SITUACAO = ' +
      QuotedStr('A') + ', SOLIC_DATAAPROV = CURRENT_DATE'  +
        ' WHERE SOLIC_CODIGO = ' + IntToStr(cdsSolSOLIC_CODIGO.AsInteger));
    atualizaSolic;
  end
  else begin
    MessageDlg('Responsável pela aprovação diferente do usuário atual;', mtWarning, [mbOK], 0);
  end;
end;

procedure TfCompraSolicProc.FormCreate(Sender: TObject);
begin
  //inherited;

end;

procedure TfCompraSolicProc.btnStatusClick(Sender: TObject);
begin
  // inherited;
  //Cancela Solicitacao
  if (cdsSolSOLIC_SITUACAO.AsString = 'P') then
  begin
    dm.sqlsisAdimin.ExecuteDirect('UPDATE COMPRA_SOLIC SET SOLIC_SITUACAO = ' +
      QuotedStr('C') + ', SOLIC_DATAAPROV = CURRENT_DATE'  +
        ' WHERE SOLIC_CODIGO = ' + IntToStr(cdsSolSOLIC_CODIGO.AsInteger));
    atualizaSolic;
  end;
  if ((cdsSolSOLIC_SITUACAO.AsString = 'C') or (cdsSolSOLIC_SITUACAO.AsString = 'A')) then
  begin
    dm.sqlsisAdimin.ExecuteDirect('UPDATE COMPRA_SOLIC SET SOLIC_SITUACAO = ' +
      QuotedStr('P') + ', SOLIC_DATAAPROV = CURRENT_DATE'  +
        ' WHERE SOLIC_CODIGO = ' + IntToStr(cdsSolSOLIC_CODIGO.AsInteger));
    atualizaSolic;
  end;
end;

procedure TfCompraSolicProc.JvDBGrid1CellClick(Column: TColumn);
begin
  //inherited;
  if (cdsSolSOLIC_SITUACAO.AsString = 'P') then
  begin
    btnStatus.Caption := 'Cancelar';
  end;
  if (cdsSolSOLIC_SITUACAO.AsString = 'C') then
  begin
    btnStatus.Caption := 'Pendente';
  end;

end;

procedure TfCompraSolicProc.atualizaSolic;
var numLinha : Integer;
begin
  cdsSol.DisableControls;
  numLinha := cdsSol.RecNo;
  if (cdsSol.Active) then
    cdsSol.Close;
  cdsSol.Open;
  if (cdsSol.RecordCount >= numLinha) then
    cdsSol.RecNo := numLinha
  else
    cdsSol.RecNo := numLinha - 1;
  cdsSol.EnableControls;
end;

procedure TfCompraSolicProc.JvDBGrid1TitleClick(Column: TColumn);
var
  enum_IndexOption: TIndexOptions;
  str_IndexAsc,
  str_IndexDesc,
  str_IndexName: String;
begin
  if (Column.Field.FieldKind = fkData) then
  begin
    str_IndexAsc := Concat('asc_',Column.FieldName);
    str_IndexDesc := Concat('desc_',Column.FieldName);

    str_IndexName := '';
    enum_IndexOption := [];

    if (cdsSol.IndexName = str_IndexAsc) then
    begin
    str_IndexName := str_IndexDesc;
    enum_IndexOption := [ixDescending];
    end
    else if (cdsSol.IndexName = str_IndexDesc) then
    begin
    str_IndexName := str_IndexAsc;
    end
    else
    begin
    str_IndexName := str_IndexAsc;
    end;

    cdsSol.IndexDefs.Clear;

    cdsSol.IndexDefs.Add(str_IndexName,Column.FieldName,enum_IndexOption);
    cdsSol.IndexName := str_IndexName;
  end;
end;

end.
