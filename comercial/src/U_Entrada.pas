unit U_Entrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvLabel, StdCtrls, JvExStdCtrls, JvEdit,
  JvValidateEdit, ExtCtrls, MMJPanel, FMTBcd, DBClient, Provider, DB,
  SqlExpr, Buttons, JvExButtons, JvBitBtn, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, Mask, DBCtrls, U_Terminal, DBLocal, DBLocalS;

type
  TF_Entrada = class(TForm)
    MMJPanel2: TMMJPanel;
    JvVale: TJvValidateEdit;
    JvLabel7: TJvLabel;
    JvCartaoDBT: TJvValidateEdit;
    JvLabel6: TJvLabel;
    JvCartaoCDT: TJvValidateEdit;
    JvLabel5: TJvLabel;
    JvChequePre: TJvValidateEdit;
    JvLabel4: TJvLabel;
    JvCheque: TJvValidateEdit;
    JvLabel2: TJvLabel;
    jvDinheiro: TJvValidateEdit;
    JvLabel1: TJvLabel;
    JvOutros: TJvValidateEdit;
    JvLabel9: TJvLabel;
    cbCartaoCDT1: TComboBox;
    cbCartaoDBT1: TComboBox;
    cbOutros: TComboBox;
    ObsCheque: TEdit;
    ObsChequePre: TEdit;
    cbDinheiro: TComboBox;
    s_forma: TSQLDataSet;
    p_forma: TDataSetProvider;
    c_forma: TClientDataSet;
    JvDBGrid1: TJvDBGrid;
    DataSource1: TDataSource;
    MMJPanel1: TMMJPanel;
    JvGravar: TJvBitBtn;
    JvExcluir: TJvBitBtn;
    JvSair: TJvBitBtn;
    s_formaCOD_VENDA: TIntegerField;
    s_formaID_ENTRADA: TIntegerField;
    s_formaCAIXA: TSmallintField;
    s_formaN_DOC: TStringField;
    c_formaCOD_VENDA: TIntegerField;
    c_formaID_ENTRADA: TIntegerField;
    c_formaCAIXA: TSmallintField;
    c_formaN_DOC: TStringField;
    btnIncluir: TJvBitBtn;
    s_formaFORMA_PGTO: TStringField;
    c_formaFORMA_PGTO: TStringField;
    cbVale: TComboBox;
    s_formaVALOR_PAGO: TFloatField;
    c_formaVALOR_PAGO: TFloatField;
    s_formaFORMA: TStringField;
    c_formaFORMA: TStringField;
    s_formaNOME: TStringField;
    c_formaNOME: TStringField;
    c_formatotal: TAggregateField;
    DBEdit1: TDBEdit;
    JvPedido: TJvValidateEdit;
    JvLabel3: TJvLabel;
    JvLabel8: TJvLabel;
    JvFinalizar: TJvBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure JvGravarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure JvExcluirClick(Sender: TObject);
    procedure JvSairClick(Sender: TObject);
    procedure JvFinalizarClick(Sender: TObject);
  private
    { Private declarations }
  public
     var_codVenda : Integer;
    { Public declarations }
  end;

var
  F_Entrada: TF_Entrada;

implementation

uses UDm, UDM_MOV;

{$R *.dfm}

procedure TF_Entrada.FormCreate(Sender: TObject);
begin
  // Listo as Contas Caixa
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CAIXA_BANCO';
  dm.cds_parametro.Open;
  if dm.cds_7_contas.Active then
    dm.cds_7_contas.Close;
  dm.cds_7_contas.Params[0].AsString := dm.cds_parametroDADOS.AsString;
  dm.cds_7_contas.Open;

  while not dm.cds_7_contas.Eof do
  begin
    cbDinheiro.Items.Add(dm.cds_7_contas.Fields[2].asString);
    cbCartaoCDT1.Items.Add(dm.cds_7_contas.Fields[2].asString);
    cbCartaoDBT1.Items.Add(dm.cds_7_contas.Fields[2].asString);
    cbVale.Items.Add(dm.cds_7_contas.Fields[2].asString);
    cbOutros.Items.Add(dm.cds_7_contas.Fields[2].asString);
    dm.cds_7_contas.Next;
  end;
  cbDinheiro.ItemIndex := 1;
end;

procedure TF_Entrada.JvGravarClick(Sender: TObject);
var total_parcial : double;
begin
  total_parcial := jvDinheiro.Value + JvCheque.Value + JvChequePre.Value +
                   JvCartaoCDT.Value + JvCartaoDBT.Value + JvVale.Value + JvOutros.Value;
  if (c_formatotal.IsNull) then
     total_parcial := total_parcial
  else
     total_parcial := total_parcial + c_formatotal.Value;

  if (total_parcial > JvPedido.Value) then
  begin
     ShowMessage('Valor Informado maior que total do Pedido');
     Exit;
  end;

  if (jvDinheiro.Value > 0) then
  begin
    if (c_forma.Active) then
      c_forma.close;
    c_forma.Params[0].Clear;
    c_forma.Open;
    c_forma.Append;
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(gen_entrada, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    c_formaID_ENTRADA.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    c_formaCOD_VENDA.AsInteger := DM_MOV.ID_DO_MOVIMENTO;
    dm.c_6_genid.Close;
    c_formaFORMA_PGTO.AsString := '0';
    c_formaVALOR_PAGO.Value := jvDinheiro.Value;
    if (dm.cds_7_contas.Locate('NOME', cbDinheiro.Text, [loCaseInsensitive])) then
      c_formaCAIXA.AsInteger := dm.cds_7_contas.Fields[0].asInteger;
    c_forma.ApplyUpdates(0);
  end;

  if (JvCheque.Value > 0) then
  begin
    if (c_forma.Active) then
      c_forma.close;
    c_forma.Params[0].Clear;
    c_forma.Open;
    c_forma.Append;
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(gen_entrada, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    c_formaID_ENTRADA.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    c_formaCOD_VENDA.AsInteger := DM_MOV.ID_DO_MOVIMENTO;
    dm.c_6_genid.Close;
    c_formaFORMA_PGTO.AsString := '1';
    c_formaVALOR_PAGO.Value := JvCheque.Value;
    if (dm.cds_7_contas.Locate('NOME', cbDinheiro.Text, [loCaseInsensitive])) then
      c_formaCAIXA.AsInteger := dm.cds_7_contas.Fields[0].asInteger;
    c_formaN_DOC.AsString := ObsCheque.Text;
    c_forma.ApplyUpdates(0);
  end;

  if (JvChequePre.Value > 0) then
  begin
    if (c_forma.Active) then
      c_forma.close;
    c_forma.Params[0].Clear;
    c_forma.Open;
    c_forma.Append;
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(gen_entrada, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    c_formaID_ENTRADA.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    c_formaCOD_VENDA.AsInteger := DM_MOV.ID_DO_MOVIMENTO;
    dm.c_6_genid.Close;
    c_formaFORMA_PGTO.AsString := '2';
    c_formaVALOR_PAGO.Value := JvChequePre.Value;
    if (dm.cds_7_contas.Locate('NOME', cbDinheiro.Text, [loCaseInsensitive])) then
      c_formaCAIXA.AsInteger := dm.cds_7_contas.Fields[0].asInteger;
    c_formaN_DOC.AsString := ObsChequePre.Text;
    c_forma.ApplyUpdates(0);
  end;

  if (JvCartaoCDT.Value > 0) then
  begin
    if (c_forma.Active) then
      c_forma.close;
    c_forma.Params[0].Clear;
    c_forma.Open;
    c_forma.Append;
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(gen_entrada, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    c_formaID_ENTRADA.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    c_formaCOD_VENDA.AsInteger := DM_MOV.ID_DO_MOVIMENTO;
    dm.c_6_genid.Close;
    c_formaFORMA_PGTO.AsString := '5';
    c_formaVALOR_PAGO.Value := JvCartaoCDT.Value;
    if (dm.cds_7_contas.Locate('NOME', cbCartaoCDT1.Text, [loCaseInsensitive])) then
      c_formaCAIXA.AsInteger := dm.cds_7_contas.Fields[0].asInteger;
    c_forma.ApplyUpdates(0);
  end;


  if (JvCartaoDBT.Value > 0) then
  begin
    if (c_forma.Active) then
      c_forma.close;
    c_forma.Params[0].Clear;
    c_forma.Open;
    c_forma.Append;
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(gen_entrada, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    c_formaID_ENTRADA.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    c_formaCOD_VENDA.AsInteger := DM_MOV.ID_DO_MOVIMENTO;
    dm.c_6_genid.Close;
    c_formaFORMA_PGTO.AsString := '6';
    c_formaVALOR_PAGO.Value := JvCartaoDBT.Value;
    if (dm.cds_7_contas.Locate('NOME', cbCartaoDBT1.Text, [loCaseInsensitive])) then
      c_formaCAIXA.AsInteger := dm.cds_7_contas.Fields[0].asInteger;
    c_forma.ApplyUpdates(0);
  end;

  if (JvVale.Value > 0) then
  begin
    if (c_forma.Active) then
      c_forma.close;
    c_forma.Params[0].Clear;
    c_forma.Open;
    c_forma.Append;
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(gen_entrada, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    c_formaID_ENTRADA.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    c_formaCOD_VENDA.AsInteger := DM_MOV.ID_DO_MOVIMENTO;
    dm.c_6_genid.Close;
    c_formaFORMA_PGTO.AsString := 'G';
    c_formaVALOR_PAGO.Value := JvVale.Value;
    if (dm.cds_7_contas.Locate('NOME', cbVale.Text, [loCaseInsensitive])) then
      c_formaCAIXA.AsInteger := dm.cds_7_contas.Fields[0].asInteger;
    c_forma.ApplyUpdates(0);
  end;

  if (JvOutros.Value > 0) then
  begin
    if (c_forma.Active) then
      c_forma.close;
    c_forma.Params[0].Clear;
    c_forma.Open;
    c_forma.Append;
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(gen_entrada, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    c_formaID_ENTRADA.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    c_formaCOD_VENDA.AsInteger := DM_MOV.ID_DO_MOVIMENTO;
    dm.c_6_genid.Close;
    c_formaFORMA_PGTO.AsString := 'H';
    c_formaVALOR_PAGO.Value := JvOutros.Value;    
    if (dm.cds_7_contas.Locate('NOME', cbOutros.Text, [loCaseInsensitive])) then
      c_formaCAIXA.AsInteger := dm.cds_7_contas.Fields[0].asInteger;
    c_forma.ApplyUpdates(0);
  end;

  jvDinheiro.Value := 0;
  JvCheque.Value := 0;
  JvChequePre.Value := 0;
  JvCartaoCDT.Value := 0;
  JvCartaoDBT.Value := 0;
  JvVale.Value := 0;
  JvOutros.Value := 0;
  ObsCheque.Text := '';
  ObsChequePre.Text := '';
  cbCartaoCDT1.Text := '';
  cbCartaoDBT1.Text := '';
  cbVale.Text := '';
  cbOutros.Text := '';  

  if (c_forma.Active) then
      c_forma.close;
   c_forma.Params[0].Clear;
  c_forma.Params[0].AsInteger := DM_MOV.ID_DO_MOVIMENTO;
  c_forma.Open;

 
end;

procedure TF_Entrada.btnIncluirClick(Sender: TObject);
begin
  if (c_forma.State <> dsInsert) then
     c_forma.Append;
  jvDinheiro.SetFocus;   
end;

procedure TF_Entrada.JvExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     DataSource1.DataSet.Delete;
     (DataSource1.DataSet as TClientDataSet).ApplyUpdates(0);
  end
  else
    Abort;

  if (c_forma.Active) then
      c_forma.close;
   c_forma.Params[0].Clear;
  c_forma.Params[0].AsInteger := DM_MOV.ID_DO_MOVIMENTO;
  c_forma.Open;

end;

procedure TF_Entrada.JvSairClick(Sender: TObject);
begin
  if (c_forma.Active) then
    c_forma.Close;
  close;
end;

procedure TF_Entrada.JvFinalizarClick(Sender: TObject);
begin
  // INSERIR VENDA

  // INSERIR RECEBIMENTO

  // IMPRIMIR RECIBO

end;

end.

