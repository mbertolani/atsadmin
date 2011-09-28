unit U_TerminalFinaliza;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvGroupHeader, StdCtrls, Buttons, JvExStdCtrls, JvCombobox,
  Mask, DBCtrls, JvExControls, JvSpeedButton, ExtCtrls, MMJPanel, U_Terminal,
  FMTBcd, DB, SqlExpr, uUtils, DBxPress, Provider, DBClient, DBLocal,
  DBLocalS, JvExButtons, JvBitBtn, JvEdit, JvValidateEdit, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, Menus;

type
  TF_TerminalFinaliza = class(TForm)
    MMJPanel1: TMMJPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    btnUsuarioProcura: TJvSpeedButton;
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
    Label5: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
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
    MMJPanel2: TMMJPanel;
    scds_serie_proc: TSQLClientDataSet;
    scds_serie_procCODSERIE: TStringField;
    scds_serie_procSERIE: TStringField;
    scds_serie_procULTIMO_NUMERO: TIntegerField;
    scds_serie_procNOTAFISCAL: TSmallintField;
    btnIncluir: TJvBitBtn;
    JvBitBtn1: TJvBitBtn;
    JvBitBtn2: TJvBitBtn;
    btnNotaFiscal: TJvBitBtn;
    JvBitBtn4: TJvBitBtn;
    JvBitBtn5: TJvBitBtn;
    sqsTitulo: TSQLDataSet;
    sqsTituloSTATUS: TStringField;
    jvTotal: TJvValidateEdit;
    jvDesconto: TJvValidateEdit;
    jvAcrescimo: TJvValidateEdit;
    jvApagar: TJvValidateEdit;
    jvPago: TJvValidateEdit;
    jvTroco: TJvValidateEdit;
    JvDBGrid1: TJvDBGrid;
    JvGroupHeader5: TJvGroupHeader;
    PopupMenu1: TPopupMenu;
    AlterarItendoPedido1: TMenuItem;
    F7ExcluirPedido1: TMenuItem;
    F9Sair1: TMenuItem;
    sql_rec: TSQLDataSet;
    procedure btnUsuarioProcuraClick(Sender: TObject);
    procedure JvSpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure dbeUsuarioExit(Sender: TObject);
    procedure dbeSerieExit(Sender: TObject);
    procedure cbPrazoChange(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure JvBitBtn5Click(Sender: TObject);
  private
    TD: TTransactionDesc;
    usaMateriaPrima, tipo_origem, c_f, RESULTADO : String;
    prazo, codrec : Double;
    desconto : Double;
    vrr, nparc : double;
    Cod_orig, cod_cli_forn, codigo_cliente, COD_VENDA : Integer;
    procedure baixaestoque(Tipo: string);
    procedure INSEREVEDA;
    procedure ALTERAVENDA;
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

procedure TF_TerminalFinaliza.btnUsuarioProcuraClick(Sender: TObject);
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
    jvApagar.Value :=  DM_MOV.c_vendaVALOR.Value;
    jvTotal.Value := DM_MOV.c_vendaVALOR.Value;
    jvDesconto.Value := DM_MOV.c_vendaDESCONTO.Value;;
    jvAcrescimo.Value := DM_MOV.c_vendaMULTA_JUROS.Value;;
    jvPago.Value := DM_MOV.c_vendaENTRADA.Value;;
    jvTroco.Value := DM_MOV.c_vendaTROCO.Value;;


    if (DM_MOV.c_vendaFORMARECEBIMENTO.asString <> '') then
    begin
        utilcrtitulo := Tutils.Create;
        ComboBox1.ItemIndex := utilcrtitulo.retornaForma(DM_MOV.c_vendaFORMARECEBIMENTO.asString);
    end;

    if (dm.cds_7_contas.Locate('CODIGO', DM_MOV.c_vendaCAIXA.AsInteger, [loCaseInsensitive])) then
      cbConta.Text := dm.cds_7_contas.Fields[2].asString;

    cbPrazo.Text := DM_MOV.c_vendaPRAZO.AsString;
    if (scdsCr_proc.Active) then
        scdsCr_proc.Close;
    scdsCr_proc.Params[0].AsInteger := DM_MOV.c_vendaCODVENDA.AsInteger;
    scdsCr_proc.Open;

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
var texto : string;
begin
  DM_MOV.c_venda.Append;

  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENVENDA, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  COD_VENDA := dm.c_6_genid.Fields[0].AsInteger;
  dm.c_6_genid.Close;
  DM_MOV.c_vendaCODVENDA.AsInteger := COD_VENDA;
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
  DM_MOV.c_vendaCODVENDEDOR.AsInteger := StrToInt(dm.cds_parametroDADOS.AsString);
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

  jvApagar.Value :=  DM_MOV.c_movdettotalpedido.Value;
  jvTotal.Value := DM_MOV.c_movdettotalpedido.Value;
  jvDesconto.Value := 0;
  jvAcrescimo.Value := 0;
  jvPago.Value := 0;
  jvTroco.Value := 0;
  DM_MOV.c_vendaDATAVENDA.AsDateTime := Now;
  DM_MOV.c_vendaDATASISTEMA.AsDateTime := Now;
  cbConta.ItemIndex := 1;
  ComboBox1.ItemIndex := 0;
  cbPrazo.ItemIndex := 0;
  
end;

procedure TF_TerminalFinaliza.dbeUsuarioExit(Sender: TObject);
begin
  if dbeUsuario.Text = '' then
    exit;
  if DM_MOV.d_venda.State = dsInsert then
  begin
    if dm.scds_usuario_proc.Active then
    dm.scds_usuario_proc.Close;
    dm.scds_usuario_proc.Params[0].Clear;
    dm.scds_usuario_proc.Params[1].AsInteger:=StrToInt(dbeUsuario.Text);
    dm.scds_usuario_proc.Params.ParamByName('pPerfil').AsString := 'VENDEDOR';
    dm.scds_usuario_proc.Params.ParamByName('pPerfil1').AsString := 'AMBOS';
    dm.scds_usuario_proc.Open;
    if dm.scds_usuario_proc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      btnUsuarioProcura.Click;
      exit;
    end;
    DM_MOV.c_vendaCODVENDEDOR.AsInteger := dm.scds_usuario_procCODUSUARIO.AsInteger;
    DM_MOV.c_vendaNOMEUSUARIO.AsString := dm.scds_usuario_procNOMEUSUARIO.AsString;
    dm.scds_usuario_proc.Close;
  end
  else
  if dbeUsuario.Field.OldValue<>dbeUsuario.Field.NewValue then
  begin
    if dm.scds_usuario_proc.Active then
    dm.scds_usuario_proc.Close;
    dm.scds_usuario_proc.Params[0].Clear;
    dm.scds_usuario_proc.Params[1].AsInteger:=StrToInt(dbeUsuario.Text);
    dm.scds_usuario_proc.Open;
    if dm.scds_usuario_proc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      btnUsuarioProcura.Click;
      exit;
    end;
    DM_MOV.c_vendaCODVENDEDOR.AsInteger := dm.scds_usuario_procCODUSUARIO.AsInteger;
    DM_MOV.c_vendaNOMEUSUARIO.AsString := dm.scds_usuario_procNOMEUSUARIO.AsString;
    dm.scds_usuario_proc.Close;
  end;
end;

procedure TF_TerminalFinaliza.dbeSerieExit(Sender: TObject);
begin
  if DM_MOV.d_venda.State in [dsInsert,dsEdit] then
  begin
    if dbeSerie.Text='' then exit;
    if dbeSerie.Field.OldValue<>dbeSerie.Field.NewValue then  begin
      if scds_serie_proc.Active then
        scds_serie_proc.Close;
      scds_serie_proc.Params[0].AsString := dbeSerie.Text;
      scds_serie_proc.Open;
      if scds_serie_proc.IsEmpty then begin
        MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
        [mbOk], 0);
        btnSerie.Click;
        exit;
      end;
      DM_MOV.c_vendaSERIE.AsString := scds_serie_procSERIE.AsString;
      //É nota fiscal ?
      if scds_serie_procNOTAFISCAL.AsInteger=0 then
      begin
        //    btnImprimir.Enabled:=False;
        btnNotaFiscal.Enabled:=True;
        end
        else
        begin
        //    btnImprimir.Enabled:=True;
        btnNotaFiscal.Enabled:=False;
      end;
      DM_MOV.c_vendaNOTAFISCAL.AsInteger := scds_serie_procULTIMO_NUMERO.AsInteger + 1;
    end;
  end;


end;

procedure TF_TerminalFinaliza.cbPrazoChange(Sender: TObject);
begin
  if (not dm.cdsPrazo.Active) then
    dm.cdsPrazo.Open;
  if (dm.cdsPrazo.Locate('PARAMETRO', cbPrazo.Text, [loCaseinsensitive])) then
    DM_MOV.c_vendaN_PARCELA.asInteger := StrToInt(FloatToStr(dm.cdsPrazoValor.asFloat));
end;

procedure TF_TerminalFinaliza.JvBitBtn1Click(Sender: TObject);
var  strSql, strTit, tipoMov: String;
     diferenca : double;
     utilcrtitulo : Tutils;
begin
  if (cbPrazo.Visible = True) then
  begin
    if (not dm.cdsPrazo.Locate('PARAMETRO', cbPrazo.Text, [loCaseinsensitive])) then
    begin
      MessageDlg('Escolha o prazo de pagamento.', mtError, [mbOK], 0);
      cbPrazo.SetFocus;
      exit;
    end;
  end;

  if DM_MOV.d_venda.State in [dsInsert] then
  begin
    if (dbeSerie.Text = '') then
    begin
      MessageDlg('Informe uma Série.', mtError, [mbOK], 0);
      dbeSerie.SetFocus;
      exit;
    end;

    INSEREVEDA;

    if (DM_MOV.c_venda.Active) then
        DM_MOV.c_venda.Close;
    DM_MOV.c_venda.Params[0].AsInteger := DM_MOV.c_movimentoCODMOVIMENTO.AsInteger;
    DM_MOV.c_venda.Open;

    cbPrazo.Text := DM_MOV.c_vendaPRAZO.AsString;
    if (scdsCr_proc.Active) then
        scdsCr_proc.Close;
    scdsCr_proc.Params[0].AsInteger := DM_MOV.c_vendaCODVENDA.AsInteger;
    scdsCr_proc.Open;


    strTit := IntToStr(DM_MOV.c_vendaNOTAFISCAL.AsInteger) + '-' + DM_MOV.c_vendaSERIE.AsString;

  end
  else
  begin
     if DM_MOV.d_venda.State in [dsEdit] then
     begin
       ALTERAVENDA;
     end;
  end;



  btnIncluir.Visible:=False;
  //  btnImprimir.SetFocus;
  //Gravando o numero sequencial
  if not scds_serie_proc.Active then
  begin
     scds_serie_proc.Params[0].AsString := dbeSerie.Text;
     scds_serie_proc.Open;
  end;
  if (DM_MOV.c_vendaNOTAFISCAL.AsInteger > scds_serie_procULTIMO_NUMERO.AsInteger) then
  begin
    scds_serie_proc.Edit;
    scds_serie_procULTIMO_NUMERO.AsInteger := DM_MOV.c_vendaNOTAFISCAL.AsInteger;
    scds_serie_proc.ApplyUpdates(0);
  end;
  scds_serie_proc.Close;

  scdsCr_proc.Close;
  scdsCr_proc.Params[0].AsInteger := DM_MOV.c_vendaCODVENDA.AsInteger;
  scdsCr_proc.Open;

  codrec := scdsCr_procCODRECEBIMENTO.AsInteger;
  Cod_orig := DM_MOV.c_vendaCODVENDA.AsInteger;
  tipo_origem := 'VENDA';
  cod_cli_forn := DM_MOV.c_vendaCODCLIENTE.AsInteger;
  c_f := 'C'; // C=Cliente

  if DM_MOV.d_venda.State in [dsInsert, dsEdit] then
     DM_MOV.c_venda.ApplyUpdates(0); // btnGravar.Click;

  if (usaMateriaPrima = 'S') then
  begin
    //BitBtn1.Click;
     baixaestoque('BAIXAAUTOMATICA');
  end;

   strSql := 'UPDATE RECEBIMENTO SET DP = 1 where CODVENDA = ' + IntToStr(DM_MOV.c_vendaCODVENDA.AsInteger);
   dm.sqlsisAdimin.StartTransaction(TD);
   dm.sqlsisAdimin.ExecuteDirect(strSql);
    Try
       dm.sqlsisAdimin.Commit(TD);
    except
       dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
       MessageDlg('Erro ao grava campo DP para imprimir boleto .', mtError,
           [mbOk], 0);
    end;

   if (dmnf.baixouEstoque(DM_MOV.c_vendaCODMOVIMENTO.AsInteger) = False) then
   begin
     Try
       dmnf.baixaEstoque(DM_MOV.c_vendaCODMOVIMENTO.AsInteger, DM_MOV.c_vendaDATAVENDA.AsDateTime, 'VENDA');
     Except
       MessageDlg('Processo de Baixa no Estoque não realizado CORRETAMENTE.', mtWarning, [mbOK], 0);
     end;
   end;

end;

procedure TF_TerminalFinaliza.baixaestoque(Tipo: string);
begin
{  codigo_cliente :=  DM_MOV.c_movimentoCODCLIENTE.AsInteger;
  data_movimento :=  DateToStr(fVendas.cds_MovimentoDATAMOVIMENTO.AsDateTime);
  codigo_moviemento := fVendas.cds_MovimentoCODMOVIMENTO.AsInteger;

  //** adiciono um novo movimento
  fVendas.btnIncluir.Click;
  fVendas.cds_MovimentoCODCLIENTE.AsInteger := DM_MOV.c_movimentoCODCLIENTE.AsInteger;;
  fVendas.cds_MovimentoCODPEDIDO.AsInteger  := codigo_moviemento;

  fVendas.cds_MovimentoDATAMOVIMENTO.AsDateTime := StrToDate(data_movimento);
  // Natureza = 'Saída'
  fVendas.cds_MovimentoCODNATUREZA.AsInteger := 2;
  //fVendas.cds_MovimentoCONTROLE.AsString := IntToStr(codigo_moviemento);
  fVendas.btnGravar.Click;

  //Executa rotina para inserir materias primas
  fVendas.baixamatprimas(Tipo, codigo_moviemento);

  //close;

  if (fVendas.cds_Movimento.Active) then
    fVendas.cds_Movimento.Close;
  fVendas.cds_Mov_det.Params[0].Clear;
  fVendas.cds_Movimento.Params[0].AsInteger := codigo_moviemento;
  fVendas.cds_Movimento.Open;

  if (fVendas.cds_Mov_det.Active) then
    fVendas.cds_Mov_det.Close;
  fVendas.cds_Mov_det.Params[0].Clear;
  fVendas.cds_Mov_det.Params[1].AsInteger := codigo_moviemento;
  fVendas.cds_Mov_det.Open;
    }
end;

procedure TF_TerminalFinaliza.INSEREVEDA;
var strSql, usuario_venda: string;
    Caixa : integer;
    total, vApagar, Valor : Double;
begin
    strSql := 'INSERT INTO VENDA (CODVENDA, CODMOVIMENTO, CODCLIENTE, DATAVENDA';
    strSql := strSql + ',DATAVENCIMENTO ,BANCO ,CODVENDEDOR ,STATUS ,CODUSUARIO';
    strSql := strSql + ',VALOR ,NOTAFISCAL ,SERIE, DESCONTO, CODCCUSTO, N_PARCELA'; //
    strSql := strSql + ',FORMARECEBIMENTO, ENTRADA, CAIXA, MULTA_JUROS, APAGAR ';
    strSql := strSql + ') VALUES (';
    strSql := strSql + IntToStr(COD_VENDA);
    strSql := strSql + ',' + IntToStr(DM_MOV.c_movimentoCODMOVIMENTO.AsInteger);
    strSql := strSql + ',' + IntToStr(DM_MOV.c_movimentoCODCLIENTE.AsInteger);
    strSql := strSql + ',''' + formatdatetime('mm/dd/yyyy', DM_MOV.c_movimentoDATAMOVIMENTO.AsDateTime) + '''';
    strSql := strSql + ',''' + formatdatetime('mm/dd/yyyy', DM_MOV.c_movimentoDATAMOVIMENTO.AsDateTime) + '''';
    strSql := strSql + ',1'; //Banco
    strSql := strSql + ', ' + dbeUsuario.Text; //CodVendedor
    strSql := strSql + ',0'; //status
    strSql := strSql + ', ' + dbeUsuario.Text; //codusuario

    //total := StrToFloat(DBEdit6.Text);
    //vApagar := StrToFloat(DBEdit11.Text);
    DecimalSeparator := '.';
    ThousandSeparator := ',';
    strSql := strSql + ',' + FloatToStr(jvTotal.Value); //valor
    strSql := strSql + ',' + DBEdit2.Text; //notafiscal
    strSql := strSql + ',''' + dbeSerie.Text + ''''; //serie
    DecimalSeparator := '.';
    ThousandSeparator := ',';
    strSql := strSql + ',' + FloatToStr(jvDesconto.Value); //DEsconto
   // strSql := strSql + ',0'; //desconto
    strSql := strSql + ',' + IntToStr(DM_MOV.c_movimentoCODALMOXARIFADO.AsInteger);//CODCUSTO
    strSql := strSql + ', ' + DBEdit5.Text + ',';
    utilcrtitulo := Tutils.Create;
    strSql := strSql + QuotedStr(utilcrtitulo.pegaForma(ComboBox1.Text));
    DecimalSeparator := '.';
    ThousandSeparator := ',';
    strSql := strSql + ',' + FloatToStr(jvPago.Value);
    if (dm.cds_7_contas.Locate('NOME', cbConta.Text, [loCaseInsensitive])) then
      caixa := dm.cds_7_contas.Fields[0].asInteger;
    strSql := strSql + ', ' + IntToStr(Caixa); //Caixa
    DecimalSeparator := '.';
    ThousandSeparator := ',';
    strSql := strSql + ',' + FloatToStr(jvAcrescimo.Value); //Multa_juros
    DecimalSeparator := '.';
    ThousandSeparator := ',';
    strSql := strSql + ',' + FloatToStr(jvApagar.Value);
    strSql := strSql + ')';

    DM_MOV.c_venda.Cancel;
    DM_MOV.c_venda.Close;

    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(strSql);
    Try
       dm.sqlsisAdimin.Commit(TD);
    except
       dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
       MessageDlg('Erro no sistema, a venda não foi gravada.', mtError,
           [mbOk], 0);
    end;
    DecimalSeparator := ',';
    ThousandSeparator := '.';

    Try
      dm.sqlsisAdimin.StartTransaction(TD);
      dmnf.baixaEstoque(DM_MOV.c_movimentoCODMOVIMENTO.AsInteger, DM_MOV.c_movimentoDATAMOVIMENTO.AsDateTime, 'VENDA');
      dm.sqlsisAdimin.Commit(TD);
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
      end;
    end;
end;

procedure TF_TerminalFinaliza.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (DM_MOV.c_movimento.Active) then
     DM_MOV.c_movimento.Close;
  if (DM_MOV.c_comanda.Active) then
     DM_MOV.c_comanda.Close;
  if (DM_MOV.c_movdet.Active) then
     DM_MOV.c_movdet.Close;
  if (DM_MOV.c_venda.Active) then
     DM_MOV.c_venda.Close;
  if (DM_MOV.c_movimento.Active) then
     DM_MOV.c_movimento.Close;
  close;
end;

procedure TF_TerminalFinaliza.JvBitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TF_TerminalFinaliza.ALTERAVENDA;
var texto : string;
begin
   texto := 'select r.STATUS from RECEBIMENTO r ' +
            'where r.CODVENDA = ' +  IntToStr(DM_MOV.c_vendaCODVENDA.AsInteger);
   texto := texto + ' and r.STATUS = ' + QuotedStr('7-');

   if (sql_rec.Active) then
     sql_rec.close;
   sql_rec.CommandText := texto;
   sql_rec.Open;
   if (not sql_rec.IsEmpty) then
   begin
      RESULTADO := 'TRUE';
      ShowMessage('Não é permitido Alterar Venda com Titulos STATUS = RECEBIDO !');
      sql_rec.Close;
      exit;
   end;
   sql_rec.Close;

   texto := 'UPDATE VENDA set ';

   dm.sqlsisAdimin.StartTransaction(TD);
   dm.sqlsisAdimin.ExecuteDirect(texto);
   Try
      dm.sqlsisAdimin.Commit(TD);
   except
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
       MessageDlg('Erro no sistema, a venda não foi gravada.', mtError,
           [mbOk], 0);
   end;

end;

end.
