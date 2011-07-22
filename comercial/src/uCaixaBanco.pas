unit uCaixaBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvExDBGrids, JvDBGrid, DB, Mask, JvExMask,
  JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, StdCtrls,
  Buttons, dbxpress;

type
  TfCaixaBanco = class(TForm)
    JvDBGrid1: TJvDBGrid;
    DataSource1: TDataSource;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    edCaixa: TEdit;
    Label3: TLabel;
    dta1: TJvDatePickerEdit;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure JvDBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCaixaBanco: TfCaixaBanco;

implementation

uses UDm;

{$R *.dfm}

procedure TfCaixaBanco.FormShow(Sender: TObject);
begin
   // Listo as Contas Caixa
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CAIXA_BANCO';
  dm.cds_parametro.Open;
  if not dm.cds_7_contas.Active then
  begin
    dm.cds_7_contas.Params[0].AsString := dm.cds_parametroDADOS.AsString;
    dm.cds_7_contas.Open;
  end;
  dm.cds_parametro.Close;
end;

procedure TfCaixaBanco.BitBtn1Click(Sender: TObject);
  var str: String;
    TD: TTransactionDesc;
begin
  if (ComboBox1.ItemIndex < 0) then
  begin
    MessageDlg('Não foi informado a situação do Caixa/Banco.', mtError, [mbOK], 0);
    ComboBox1.SetFocus;
    exit;
  end;
  if (dm.sqlBusca.Active) then
    dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT IDCAIXACONTROLE FROM CAIXA_CONTROLE WHERE CODCAIXA = ' +
    IntToStr(dm.cds_7_contasCODIGO.AsInteger));
  dm.sqlBusca.Open;
  if (dm.sqlBusca.IsEmpty) then
  begin
    str := 'INSERT INTO CAIXA_CONTROLE (IDCAIXACONTROLE, CODCAIXA, CODUSUARIO, ' +
      ' DATAFECHAMENTO, SITUACAO)  VALUES (' + IntToStr(dm.cds_7_contasCODIGO.AsInteger);
    str := str + ', ' + IntToStr(dm.cds_7_contasCODIGO.AsInteger);
    str := str + ', 1, '  + QuotedStr(FormatDateTime('mm/dd/yyyy', dta1.Date));
    if (ComboBox1.ItemIndex = 0) then
      str := str + ', ' + QuotedStr('F');
    if (ComboBox1.ItemIndex = 1) then
      str := str + ', ' + QuotedStr('A');
    str := str + ')';
  end
  else begin
    str := 'UPDATE CAIXA_CONTROLE SET DATAFECHAMENTO = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', dta1.Date));
    if (ComboBox1.ItemIndex = 0) then
      str := str + ', SITUACAO = ' + QuotedStr('F');
    if (ComboBox1.ItemIndex = 1) then
      str := str + ', SITUACAO = ' + QuotedStr('A');
    str := str + ' WHERE CODCAIXA = ' + IntToStr(dm.cds_7_contasCODIGO.AsInteger);
  end;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  Try
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(str);
    dm.sqlsisAdimin.Commit(TD);
    MessageDlg('Caixa/Banco modificado com sucesso.', mtInformation, [mbOK], 0);
  except
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro para Alterar Caixa/Banco.', mtError, [mbOK], 0);
  end;
end;

procedure TfCaixaBanco.JvDBGrid1CellClick(Column: TColumn);
begin
  dta1.Clear;
  ComboBox1.ItemIndex := -1;
  edCaixa.Text := dm.cds_7_contasNOME.AsString;
  if (dm.sqlBusca.Active) then
    dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT DATAFECHAMENTO, SITUACAO FROM CAIXA_CONTROLE WHERE CODCAIXA = ' +
    IntToStr(dm.cds_7_contasCODIGO.AsInteger));
  dm.sqlBusca.Open;
  if (not dm.sqlBusca.IsEmpty) then
  begin
    dta1.Date := dm.sqlBusca.FieldByName('DATAFECHAMENTO').AsDateTime;
    if (dm.sqlBusca.FieldByName('SITUACAO').AsString = 'F') then
      ComboBox1.ItemIndex := 0;
    if (dm.sqlBusca.FieldByName('SITUACAO').AsString = 'A') then
      ComboBox1.ItemIndex := 1;
    if ((dm.sqlBusca.FieldByName('SITUACAO').AsString <> 'F') and (dm.sqlBusca.FieldByName('SITUACAO').AsString <> 'A')) then
      ComboBox1.ItemIndex := -1;
  end;
end;

end.
