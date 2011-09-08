unit U_TerminalFinaliza;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvGroupHeader, StdCtrls, Buttons, JvExStdCtrls, JvCombobox,
  Mask, DBCtrls, JvExControls, JvSpeedButton, ExtCtrls, MMJPanel, U_Terminal,
  FMTBcd, DB, SqlExpr, uUtils, DBxPress, Provider, DBClient;

type
  TF_TerminalFinaliza = class(TForm)
    MMJPanel1: TMMJPanel;
    MMJPanel2: TMMJPanel;
    JvSpeedButton1: TJvSpeedButton;
    JvSpeedButton2: TJvSpeedButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    JvSpeedButton4: TJvSpeedButton;
    Label3: TLabel;
    DBEdit14: TDBEdit;
    Label4: TLabel;
    JvSpeedButton3: TJvSpeedButton;
    Label11: TLabel;
    DBEdit5: TDBEdit;
    cbPrazo: TJvComboBox;
    Label10: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    btnSerie: TBitBtn;
    dbeSerie: TDBEdit;
    Label7: TLabel;
    Label13: TLabel;
    cbConta: TComboBox;
    ComboBox1: TComboBox;
    Label24: TLabel;
    DBEdit3: TDBEdit;
    DBEdit1: TDBEdit;
    Label20: TLabel;
    JvGroupHeader2: TJvGroupHeader;
    dbeUsuario: TDBEdit;
    JvGroupHeader1: TJvGroupHeader;
    JvGroupHeader3: TJvGroupHeader;
    Label2: TLabel;
    JvGroupHeader4: TJvGroupHeader;
    DBEdit6: TDBEdit;
    Label5: TLabel;
    DBEdit9: TDBEdit;
    Label6: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    Label14: TLabel;
    DBEdit11: TDBEdit;
    Label15: TLabel;
    DBEdit12: TDBEdit;
    Label16: TLabel;
    DBEdit13: TDBEdit;
    btnIncluir: TJvSpeedButton;
    sqs_tit: TSQLDataSet;
    ds_Cr: TDataSource;
    scdsCr_proc: TClientDataSet;
    scdsCr_procTITULO: TStringField;
    scdsCr_procEMISSAO: TDateField;
    scdsCr_procDATAVENCIMENTO: TDateField;
    scdsCr_procCAIXA: TSmallintField;
    scdsCr_procSTATUS: TStringField;
    scdsCr_procVIA: TStringField;
    scdsCr_procN_DOCUMENTO: TStringField;
    scdsCr_procVALORRECEBIDO: TFloatField;
    scdsCr_procVALOR_RESTO: TFloatField;
    scdsCr_procVALORTITULO: TFloatField;
    scdsCr_procNOMECLIENTE: TStringField;
    scdsCr_procVALORREC: TFloatField;
    scdsCr_procCODRECEBIMENTO: TIntegerField;
    scdsCr_procDP: TIntegerField;
    scdsCr_procVALOR_PRIM_VIA: TFloatField;
    scdsCr_procCODCLIENTE: TIntegerField;
    scdsCr_procTIT: TStringField;
    scdsCr_procSITUACAO: TStringField;
    scdsCr_procFORMARECEBIMENTO: TStringField;
    scdsCr_procDATARECEBIMENTO: TDateField;
    scdsCr_procTRecebido: TAggregateField;
    scdsCr_procTotal_resto: TAggregateField;
    scdsCr_procTotalTitulo: TAggregateField;
    DataSetProvider1: TDataSetProvider;
    SQLDataSet1: TSQLDataSet;
    SQLDataSet1TITULO: TStringField;
    SQLDataSet1DATAVENCIMENTO: TDateField;
    SQLDataSet1CAIXA: TSmallintField;
    SQLDataSet1STATUS: TStringField;
    SQLDataSet1VIA: TStringField;
    SQLDataSet1N_DOCUMENTO: TStringField;
    SQLDataSet1VALORRECEBIDO: TFloatField;
    SQLDataSet1VALOR_RESTO: TFloatField;
    SQLDataSet1VALORTITULO: TFloatField;
    SQLDataSet1VALORREC: TFloatField;
    SQLDataSet1CODRECEBIMENTO: TIntegerField;
    SQLDataSet1NOMECLIENTE: TStringField;
    SQLDataSet1DP: TIntegerField;
    SQLDataSet1EMISSAO: TDateField;
    SQLDataSet1VALOR_PRIM_VIA: TFloatField;
    SQLDataSet1CODCLIENTE: TIntegerField;
    SQLDataSet1TIT: TStringField;
    SQLDataSet1SITUACAO: TStringField;
    SQLDataSet1FORMARECEBIMENTO: TStringField;
    SQLDataSet1DATARECEBIMENTO: TDateField;
    procedure JvSpeedButton4Click(Sender: TObject);
    procedure JvSpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
  private
    usaMateriaPrima: String;
    prazo, codrec : Double;
    desconto : Double;
    vrr, nparc : double;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_TerminalFinaliza: TF_TerminalFinaliza;
  utilcrtitulo : Tutils;

implementation

uses UDM_MOV, uProcurar, uProcurar_nf, UDMNF, UDm, ufprocura_prod;

{$R *.dfm}

procedure TF_TerminalFinaliza.JvSpeedButton4Click(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,dm.scds_usuario_proc);
  fProcurar.usuarioproc := 'VENDEDOR';
  fProcurar.BtnProcurar.Click;
  fProcurar.EvDBFind1.DataField := 'NOMEUSUARIO';
  try
    if fProcurar.ShowModal=mrOk then
    begin
      if (DM_MOV.c_venda.State = dsBrowse) then
        DM_MOV.c_venda.Edit;
      DM_MOV.c_vendaCODVENDEDOR.AsInteger := dm.scds_usuario_ProcCODusuario.AsInteger;
      DM_MOV.c_vendaNOMEUSUARIO.AsString :=  dm.scds_usuario_procNOMEUSUARIO.AsString;
    end;
  finally
    dm.scds_usuario_proc.Close;
    fProcurar.Free;
  end;
end;

procedure TF_TerminalFinaliza.JvSpeedButton3Click(Sender: TObject);
begin
  DM.varNomeCliente := '';
  dm.codcli := 0;
  fProcurar_nf := TfProcurar_nf.Create(self,dmnf.scds_cli_proc);
  fProcurar_nf.BtnProcurar.Click;
  fProcurar_nf.EvDBFind1.DataField := 'NOMECLIENTE';
  fProcurar_nf.btnIncluir.Visible := True;
  try
    if (fProcurar_nf.ShowModal = mrOK) then
      if dmnf.scds_cli_procSTATUS.AsInteger = 2 then
      begin
        MessageDlg('Cliente com status "INATIVO" para efetuar uma venda para '+#13+#10+'esse cliente, antes vc terá que mudar seu status para "ATIVO".', mtError, [mbOK], 0);
        exit;
      end;
      if dmnf.scds_cli_procBLOQUEIO.AsString = 'S' then
      begin
        MessageDlg('Cliente com cadastro "BLOQUEADO",  venda não permitida.', mtError, [mbOK], 0);
        exit;
      end;
    prazo := dmnf.scds_cli_procPRAZORECEBIMENTO.AsFloat;
    desconto := DMNF.scds_cli_procDESCONTO.AsFloat;
  finally
   dmnf.scds_cli_proc.Close;
   fProcurar_nf.Free;
  end;
{
  if (DM_MOV.c_movimento.State = dsBrowse) then
    DM_MOV.c_movimento.Edit;
  DM_MOV.c_movimentoCODCLIENTE.AsInteger := dm.codcli;//fListaClientes.cdsCODCLIENTE.AsInteger;
  DM_MOV.c_movimento.ApplyUpdates(0);
 }
  DM_MOV.c_vendaCODCLIENTE.AsInteger := dm.codcli;//fListaClientes.cdsCODCLIENTE.AsInteger;
  DM_MOV.c_vendaNOMECLIENTE.AsString := dm.varNomeCliente;//fListaClientes.cdsNOMECLIENTE.AsString;

end;

procedure TF_TerminalFinaliza.FormCreate(Sender: TObject);
var i, j : integer;
begin
  nparc := 1;

  {------Pesquisando na tab Parametro se usa consumo Materia Prima na Venda ---}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'BAIXAAUTOMATICA';
  dm.cds_parametro.Open;
  usaMateriaPrima := dm.cds_parametroCONFIGURADO.AsString;

  if (not dm.parametro.Active) then
    dm.parametro.Open;

  if (dm.parametro.locate('PARAMETRO', 'NOTAFISCALDESATIVADO', [loCaseInsensitive])) then
    if (dm.parametroCONFIGURADO.AsString = 'S') then
    begin
      DbEdit2.ReadOnly := True;
    end;

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
    cbConta.Items.Add(dm.cds_7_contas.Fields[2].asString);
    dm.cds_7_contas.Next;
  end;

  utilcrtitulo := Tutils.Create;
  // Popula Status
  j := utilcrtitulo.Forma.Count;
  for i := 0 to j - 1 do
  begin
    combobox1.Items.Add(utilcrtitulo.Forma.Strings[i]);
  end;

end;

procedure TF_TerminalFinaliza.FormShow(Sender: TObject);
begin
  DecimalSeparator := ',';
  codrec := 0;

  if (not dm.parametro.Active) then
    dm.parametro.Open;
  if (dm.parametro.locate('DADOS', 'PRAZO', [loCaseInsensitive])) then
  begin
      if (not dm.cdsPrazo.Active) then
        dm.cdsPrazo.open;
      if (not dm.cdsPrazo.IsEmpty) then
      begin
        dm.CdsPrazo.first;
        nparc := dm.CdsPrazoVALOR.asFloat;
        cbPrazo.Items.clear;
        while not dm.CdsPrazo.eof do
        begin
          cbPrazo.Items.Add(dm.cdsPrazoPARAMETRO.asString);
          dm.cdsPrazo.next;
        end;
      end;
  end;

  if (DM_MOV.c_venda.Active) then
    DM_MOV.c_venda.Close;

  if (DM_MOV.PAGECONTROL = 'PDV') then
    DM_MOV.c_venda.Params[0].AsInteger:= DM_MOV.c_movimentoCODMOVIMENTO.AsInteger;

  if (DM_MOV.PAGECONTROL = 'COMANDA') then
    DM_MOV.c_venda.Params[0].AsInteger:= DM_MOV.c_comandaCODMOVIMENTO.AsInteger;

 { if (DM_MOV.PAGECONTROL = 'DELIVERY') then
    DM_MOV.c_venda.Params[0].AsInteger:= DM_MOV.c_comandaCODMOVIMENTO.AsInteger;
  }
  DM_MOV.c_venda.Open;
  if (DM_MOV.c_venda.IsEmpty) then
  begin
    btnIncluir.Click;
    dbeSerie.SetFocus;
    scdsCr_proc.Close;
  end
  else
  begin
     {
     DM_MOV.c_venda.Edit;

      if (sqs_tit.Active) then
        sqs_tit.Close;

      if (sqs_tit.Active) then
        sqs_tit.Close;

      sqs_tit.CommandText := 'SELECT SUM((QUANTIDADE * PRECO) - ((QTDE_ALT/100)*(QUANTIDADE * PRECO))) FROM MOVIMENTODETALHE' +
                           ' WHERE CODMOVIMENTO = ' + IntToStr(DM_MOV.c__MovimentoCODMOVIMENTO.asInteger);
      sqs_tit.Open;

      DM_MOV.c_vendaVALOR.AsCurrency := FloatToCurr(sqs_tit.Fields[0].AsFloat + (cdsVALOR_ICMS.Value +
            cdsVALOR_FRETE.Value + cdsVALOR_SEGURO.Value + cdsVALOR_IPI.Value + cdsOUTRAS_DESP.Value +
            cdsMULTA_JUROS.Value));
      cdsVALOR_PAGAR.AsCurrency := FloatToCurr(sqs_tit.Fields[0].AsFloat + (cdsVALOR_ICMS.Value +
      cdsVALOR_FRETE.Value + cdsVALOR_SEGURO.Value + cdsVALOR_IPI.Value + cdsOUTRAS_DESP.Value +
      cdsMULTA_JUROS.Value));

      vrr := FloatToCurr(sqs_tit.Fields[0].AsFloat);
      sqs_tit.Close;
      cds.ApplyUpdates(0);
      }
    end;

    if (DM_MOV.c_vendaFORMARECEBIMENTO.asString <> '') then
    begin
        utilcrtitulo := Tutils.Create;
        ComboBox1.ItemIndex := utilcrtitulo.retornaForma(DM_MOV.c_vendaFORMARECEBIMENTO.asString);
    end;
    if (dm.cds_7_contas.Locate('CODIGO', DM_MOV.c_vendaCAIXA.AsInteger, [loCaseInsensitive])) then
      cbConta.Text := dm.cds_7_contas.Fields[2].asString;

{
  scdsCr_proc.Close;
  scdsCr_proc.Params[0].AsInteger := cdsCODVENDA.AsInteger;
  scdsCr_proc.Open;
 }
end;

procedure TF_TerminalFinaliza.btnIncluirClick(Sender: TObject);
begin
  DM_MOV.c_venda.Append;

  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENVENDA, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  DM_MOV.c_vendaCODVENDA.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
  dm.c_6_genid.Close;

  {------Pesquisando na tab Parametro o valor padrão para a Natureza Operação ---------}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'SERIEPADRAO';
  dm.cds_parametro.Open;
  dbeSerie.Text := dm.cds_parametroDADOS.AsString;
  DM_MOV.c_vendaSERIE.AsString := dm.cds_parametroDADOS.AsString;
  dm.cds_parametro.Close;
  { 006 ------Pesquisando na tab Parametro o Vendedor padrão ---- 09-05-2005 -----}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'VENDEDORPADRAO';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
    dbeUsuario.Text := dm.cds_parametroDADOS.AsString;
  dm.cds_parametro.Close;
  { ---- 06 ----}
  dbeUsuario.SetFocus;
  if (DM_MOV.PAGECONTROL = 'PDV') then
  begin
    DM_MOV.c_vendaCODMOVIMENTO.AsInteger := DM_MOV.c_movimentoCODMOVIMENTO.AsInteger;
    DM_MOV.c_vendaCODCLIENTE.AsInteger := DM_MOV.c_movimentoCODCLIENTE.AsInteger;
    DM_MOV.c_vendaNOMECLIENTE.AsString := DM_MOV.c_movimentoNOMECLIENTE.AsString;
  end;

  if (DM_MOV.PAGECONTROL = 'COMANDA') then
  begin
    DM_MOV.c_vendaCODMOVIMENTO.AsInteger := DM_MOV.c_comandaCODMOVIMENTO.AsInteger;
    DM_MOV.c_vendaCODCLIENTE.AsInteger := DM_MOV.c_comandaCODCLIENTE.AsInteger;
    DM_MOV.c_vendaNOMECLIENTE.AsString := DM_MOV.c_comandaNOMECLIENTE.AsString;
  end;
 {
  if (DM_MOV.PAGECONTROL = 'DELIVERY') then
  begin
    DM_MOV.c_vendaCODMOVIMENTO.AsInteger := DM_MOV.c_movimentoCODMOVIMENTO.AsInteger;
    DM_MOV.c_vendaCODCLIENTE.AsInteger := DM_MOV.c_movimentoCODCLIENTE.AsInteger;
  end;
  }
  //DM_MOV.c_vendaNOMECLIENTE.AsInteger := DM_MOV.c_movimentonCODCLIENTE.AsInteger;
end;

end.
