unit U_TerminalFinaliza;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvGroupHeader, StdCtrls, Buttons, JvExStdCtrls, JvCombobox,
  Mask, DBCtrls, JvExControls, JvSpeedButton, ExtCtrls, MMJPanel, U_Terminal,
  FMTBcd, DB, SqlExpr, uUtils, DBxPress, Provider, DBClient, DBLocal,
  DBLocalS, JvExButtons, JvBitBtn, JvEdit, JvValidateEdit, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, Menus, Printers, rpcompobase, rpvclreport;

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
    JvGravar: TJvBitBtn;
    JvExcluir: TJvBitBtn;
    btnNotaFiscal: TJvBitBtn;
    JvBoleto: TJvBitBtn;
    JvSair: TJvBitBtn;
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
    btnAlteraRec: TBitBtn;
    btnCancelaBaixa: TBitBtn;
    sds_cr: TSQLDataSet;
    sds_crCODRECEBIMENTO: TIntegerField;
    sds_crTITULO: TStringField;
    sds_crEMISSAO: TDateField;
    sds_crCODCLIENTE: TIntegerField;
    sds_crDATAVENCIMENTO: TDateField;
    sds_crVALORRECEBIDO: TFloatField;
    sds_crDATARECEBIMENTO: TDateField;
    sds_crCAIXA: TSmallintField;
    sds_crCONTADEBITO: TIntegerField;
    sds_crCONTACREDITO: TIntegerField;
    sds_crSTATUS: TStringField;
    sds_crVIA: TStringField;
    sds_crFORMARECEBIMENTO: TStringField;
    sds_crDATABAIXA: TDateField;
    sds_crHISTORICO: TStringField;
    sds_crCODVENDA: TIntegerField;
    sds_crCODVENDEDOR: TSmallintField;
    sds_crCODUSUARIO: TSmallintField;
    sds_crDATASISTEMA: TSQLTimeStampField;
    sds_crN_DOCUMENTO: TStringField;
    sds_crALMOXARIFADO: TStringField;
    sds_crNOMEUSUARIO: TStringField;
    sds_crVENDEDOR: TStringField;
    sds_crNOMECLIENTE: TStringField;
    sds_crJUROS: TFloatField;
    sds_crDESCONTO: TFloatField;
    sds_crPERDA: TFloatField;
    sds_crTROCA: TFloatField;
    sds_crFUNRURAL: TFloatField;
    sds_crVALOR_PRIM_VIA: TFloatField;
    sds_crVALOR_RESTO: TFloatField;
    sds_crVALORTITULO: TFloatField;
    sds_crCODALMOXARIFADO: TIntegerField;
    sds_crOUTRO_CREDITO: TFloatField;
    sds_crOUTRO_DEBITO: TFloatField;
    sds_crPARCELAS: TSmallintField;
    sds_crDUP_REC_NF: TStringField;
    sds_crNF: TIntegerField;
    sds_crDP: TIntegerField;
    sds_crBL: TIntegerField;
    dsp_cr: TDataSetProvider;
    cds_cr: TClientDataSet;
    cds_crCODRECEBIMENTO: TIntegerField;
    cds_crTITULO: TStringField;
    cds_crEMISSAO: TDateField;
    cds_crCODCLIENTE: TIntegerField;
    cds_crDATAVENCIMENTO: TDateField;
    cds_crSTATUS: TStringField;
    cds_crVIA: TStringField;
    cds_crCODVENDA: TIntegerField;
    cds_crCODALMOXARIFADO: TIntegerField;
    cds_crCODVENDEDOR: TSmallintField;
    cds_crFORMARECEBIMENTO: TStringField;
    cds_crVALOR_PRIM_VIA: TFloatField;
    cds_crVALOR_RESTO: TFloatField;
    cds_crVALORTITULO: TFloatField;
    cds_crCONTACREDITO: TIntegerField;
    cds_crVALORRECEBIDO: TFloatField;
    cds_crDATARECEBIMENTO: TDateField;
    cds_crCONTADEBITO: TIntegerField;
    cds_crCAIXA: TSmallintField;
    cds_crDATABAIXA: TDateField;
    cds_crHISTORICO: TStringField;
    cds_crCODUSUARIO: TSmallintField;
    cds_crN_DOCUMENTO: TStringField;
    cds_crDATASISTEMA: TSQLTimeStampField;
    cds_crALMOXARIFADO: TStringField;
    cds_crNOMECLIENTE: TStringField;
    cds_crNOMEUSUARIO: TStringField;
    cds_crVENDEDOR: TStringField;
    cds_crJUROS: TFloatField;
    cds_crDESCONTO: TFloatField;
    cds_crPERDA: TFloatField;
    cds_crTROCA: TFloatField;
    cds_crFUNRURAL: TFloatField;
    cds_crOUTRO_CREDITO: TFloatField;
    cds_crOUTRO_DEBITO: TFloatField;
    cds_crPARCELAS: TSmallintField;
    cds_crDUP_REC_NF: TStringField;
    cds_crNF: TIntegerField;
    cds_crDP: TIntegerField;
    cds_crBL: TIntegerField;
    sqlBuscaNota: TSQLQuery;
    JvBitBtn1: TJvBitBtn;
    SaveDialog1: TSaveDialog;
    s_parametro: TSQLDataSet;
    s_parametroDESCRICAO: TStringField;
    s_parametroPARAMETRO: TStringField;
    s_parametroCONFIGURADO: TStringField;
    s_parametroDADOS: TStringField;
    s_parametroD1: TStringField;
    s_parametroD2: TStringField;
    s_parametroD3: TStringField;
    s_parametroD4: TStringField;
    s_parametroD5: TStringField;
    s_parametroD6: TStringField;
    s_parametroD7: TStringField;
    s_parametroD8: TStringField;
    s_parametroD9: TStringField;
    s_parametroINSTRUCOES: TStringField;
    s_parametroVALOR: TFloatField;
    VCLReport2: TVCLReport;
    procedure btnUsuarioProcuraClick(Sender: TObject);
    procedure JvSpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure dbeUsuarioExit(Sender: TObject);
    procedure dbeSerieExit(Sender: TObject);
    procedure cbPrazoChange(Sender: TObject);
    procedure JvGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure JvSairClick(Sender: TObject);
    procedure btnCancelaBaixaClick(Sender: TObject);
    procedure btnAlteraRecClick(Sender: TObject);
    procedure btnNotaFiscalClick(Sender: TObject);
    procedure NotaFiscal;
    procedure excluinf;
    procedure JvExcluirClick(Sender: TObject);
    procedure JvBoletoClick(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
  private
    TD: TTransactionDesc;
    usaMateriaPrima, tipo_origem, c_f, RESULTADO : String;
    prazo, codrec : Double;
    desconto : Double;
    vrr, nparc : double;
    Cod_orig, cod_cli_forn, codigo_cliente, COD_VENDA : Integer;
    excluiuNF : Boolean;
    procedure baixaestoque(Tipo: string);
    procedure INSEREVEDA;
    procedure ALTERAVENDA;
    procedure imprimeCupom;
    procedure imprimeRecibo;
    { Private declarations }
  public
    { Public declarations }
  end;

const
    cJustif = #27#97#51;
    cEject = #12;
    { Tamanho da fonte }
    c10cpi = #18;
    c12cpi = #27#77;
    c17cpi = #15;
    cIExpandido = #14;
    cFExpandido = #20;
    { Formatação da fonte }
    cINegrito = #27#71;
    cFNegrito = #27#72;
    cIItalico = #27#52;
    cFItalico = #27#53;

var
  F_TerminalFinaliza: TF_TerminalFinaliza;
  utilcrtitulo : Tutils;
  tipoImpressao : string;
  IMPRESSORA:TextFile;
  Texto,Texto1,Texto2,Texto3,Texto4,texto5, texto6,texto7, logradouro,cep,fone : string;//Para recortar parte da descrição do produto,nome
  total, porc, totgeral , desconto : double;
  porta : string;
  cliente, vNomeCliente, vEnderecoCliente, vFonecli : string;

implementation

uses UDM_MOV, uProcurar, uProcurar_nf, UDMNF, UDm, ufprocura_prod,
  ufCrAltera, uNotaf, uEstoque, uMovimento, U_Boletos;

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
        MessageDlg('Cliente com status "INATIVO" para efetuar uma venda para '+#13+#10+'esse cliente, antes vc ter?ue mudar seu status para "ATIVO".', mtError, [mbOK], 0);
        exit;
      end;
      if dmnf.scds_cli_procBLOQUEIO.AsString = 'S' then
      begin
        MessageDlg('Cliente com cadastro "BLOQUEADO",  venda n?permitida.', mtError, [mbOK], 0);
        exit;
      end;
    prazo := dmnf.scds_cli_procPRAZORECEBIMENTO.AsFloat;
    desconto := DMNF.scds_cli_procDESCONTO.AsFloat;
  finally
    DM_MOV.c_vendaCODCLIENTE.AsInteger := dmnf.scds_cli_procCODCLIENTE.AsInteger;
    DM_MOV.c_vendaNOMECLIENTE.AsString := dmnf.scds_cli_procNOMECLIENTE.AsString;
    dmnf.scds_cli_proc.Close;
    fProcurar_nf.Free;
  end;
{
  if (DM_MOV.c_movimento.State = dsBrowse) then
    DM_MOV.c_movimento.Edit;
  DM_MOV.c_movimentoCODCLIENTE.AsInteger := dm.codcli;//fListaClientes.cdsCODCLIENTE.AsInteger;
  DM_MOV.c_movimento.ApplyUpdates(0);
 }
//  DM_MOV.c_vendaCODCLIENTE.AsInteger := dm.codcli;//fListaClientes.cdsCODCLIENTE.AsInteger;
//  DM_MOV.c_vendaNOMECLIENTE.AsString := dm.varNomeCliente;//fListaClientes.cdsNOMECLIENTE.AsString;

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
  cbPrazo.ItemIndex := -1;
end;

procedure TF_TerminalFinaliza.btnIncluirClick(Sender: TObject);
begin
  DM_MOV.c_venda.Append;

  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENVENDA, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  COD_VENDA := dm.c_6_genid.Fields[0].AsInteger;
  dm.c_6_genid.Close;
  DM_MOV.c_vendaCODVENDA.AsInteger := COD_VENDA;
  {------Pesquisando na tab Parametro o valor padr?para a Natureza Opera? ---------}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'SERIEPADRAO';
  dm.cds_parametro.Open;
  dbeSerie.Text := dm.cds_parametroDADOS.AsString;
  DM_MOV.c_vendaSERIE.AsString := dm.cds_parametroDADOS.AsString;
  dm.cds_parametro.Close;
  { 006 ------Pesquisando na tab Parametro o Vendedor padr?---- 09-05-2005 -----}
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
      MessageDlg('Código não cadastrado, deseja cadastra-lo?', mtWarning,
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
      MessageDlg('Código não cadastrado, deseja cadastra-lo?', mtWarning,
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
        MessageDlg('Código não cadastrado, deseja cadastra-lo?', mtWarning,
        [mbOk], 0);
        btnSerie.Click;
        exit;
      end;
      DM_MOV.c_vendaSERIE.AsString := scds_serie_procSERIE.AsString;
      //?nota fiscal ?
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

procedure TF_TerminalFinaliza.JvGravarClick(Sender: TObject);
var  strSql, strTit, tipoMov: String;
     diferenca : double;
     utilcrtitulo : Tutils;
begin
  if (cbPrazo.Text = '01-A Vista') then
    if (jvPago.Text = 'R$ 0,00') then
       jvPago.Value := jvTotal.Value;

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

    if (scdsCr_proc.Active) then
        scdsCr_proc.Close;
    scdsCr_proc.Params[0].Clear;

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
       MessageDlg('Processo de Baixa no Estoque n?realizado CORRETAMENTE.', mtWarning, [mbOK], 0);
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
  // Natureza = 'Sa?'
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
var strSql, strSqlMov, usuario_venda: string;
    Caixa : integer;
    total, vApagar, Valor : Double;
begin
    caixa := 0;
    strSql := 'INSERT INTO VENDA (CODVENDA, CODMOVIMENTO, CODCLIENTE, DATAVENDA';
    strSql := strSql + ',DATAVENCIMENTO ,BANCO ,CODVENDEDOR ,STATUS ,CODUSUARIO';
    strSql := strSql + ',VALOR ,NOTAFISCAL ,SERIE, DESCONTO, CODCCUSTO, N_PARCELA'; //
    strSql := strSql + ',FORMARECEBIMENTO, ENTRADA, CAIXA, MULTA_JUROS, APAGAR, PRAZO ';
    strSql := strSql + ') VALUES (';
    strSql := strSql + IntToStr(COD_VENDA);
    strSql := strSql + ',' + IntToStr(DM_MOV.c_movimentoCODMOVIMENTO.AsInteger);
    strSql := strSql + ',' + IntToStr(DM_MOV.c_vendaCODCLIENTE.AsInteger);
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
    strSql := strSql + ',' + QuotedStr(cbPrazo.Text);
    strSql := strSql + ')';

    strSqlMov := 'UPDATE MOVIMENTO SET CODCLIENTE = ' + IntToStr(DM_MOV.c_vendaCODCLIENTE.AsInteger) +
    ' where CODMOVIMENTO = ' + IntToStr(DM_MOV.c_vendaCODMOVIMENTO.AsInteger);

    DM_MOV.c_venda.Cancel;
    DM_MOV.c_venda.Close;
    DM_MOV.c_venda.Params[0].Clear;
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(strSqlMov);    
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
  if (scdsCr_proc.Active) then
      scdsCr_proc.Close;
  scdsCr_proc.Params[0].AsInteger := DM_MOV.c_vendaCODVENDA.AsInteger;
  scdsCr_proc.Open;
 if (not scdsCr_proc.Eof) then
 begin
   if (DM_MOV.c_movimento.Active) then
      DM_MOV.c_movimento.Close;
   if (DM_MOV.c_comanda.Active) then
      DM_MOV.c_comanda.Close;
   if (DM_MOV.c_movdet.Active) then
      DM_MOV.c_movdet.Close;
   if (DM_MOV.c_venda.Active) then
      DM_MOV.c_venda.Close;
 end;
 scdsCr_proc.Close;
 close;
end;

procedure TF_TerminalFinaliza.JvSairClick(Sender: TObject);
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
      ShowMessage('Não Permitido Alterar Venda com Titulos STATUS = RECEBIDO !');
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
       MessageDlg('Erro no sistema, a venda n?foi gravada.', mtError,
           [mbOk], 0);
   end;

end;

procedure TF_TerminalFinaliza.btnCancelaBaixaClick(Sender: TObject);
var str :string;
begin

  if (DM_MOV.c_movimentoCODNATUREZA.AsInteger = 14) then //Cancelado
  begin
    if  MessageDlg('NF CANCELADA, confirma mudança do Status : ''' + scdscr_procTITULO.AsSTring + '''',
      mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
    Try
      if (scdsCr_proc.State in [dsBrowse, dsInactive]) then
        scdsCr_proc.Edit;
      scdsCr_procSTATUS.AsString := '5-';
      scdsCr_proc.ApplyUpdates(0);
      // NF ou Venda Cancelada
      if (DM_MOV.c_venda.State in [dsBrowse]) then
         DM_MOV.c_venda.Edit;
      DM_MOV.c_vendaSTATUS.AsInteger := 0;
      DM_MOV.c_venda.ApplyUpdates(0);
      if (DM_MOV.c_movimento.State in [dsBrowse]) then
         DM_MOV.c_movimento.edit;
      DM_MOV.c_movimentoCODNATUREZA.AsInteger := 3; //Venda
      DM_MOV.c_movimento.ApplyUpdates(0);

      MessageDlg('Status alterado com sucesso.', mtInformation, [mbOK], 0);
      scdsCr_proc.Refresh;
    Except
      MessageDlg('N?foi poss?l alterar STATUS.', mtError, [mbOK], 0);
    end;
  end
  else
  begin
    if  MessageDlg('Confirma o cancelamento da baixa do T?lo : ''' + scdscr_procTITULO.AsSTring + '''',
      mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
    Try
      if (scdsCr_proc.State in [dsBrowse, dsInactive]) then
        scdsCr_proc.Edit;
      scdsCr_procSTATUS.AsString := '5-';
      if( scdsCr_procSTATUS.AsString = '7-') then
        scdsCr_procVALOR_RESTO.AsFloat := scdsCr_procVALORRECEBIDO.asFloat;
      scdsCr_procVALORRECEBIDO.AsFloat := 0;
      scdsCr_procCAIXA.Clear;
      scdsCr_proc.ApplyUpdates(0);
      MessageDlg('Baixa cancelada com sucesso.', mtInformation, [mbOK], 0);

      DecimalSeparator := '.';
      str := 'Update RECEBIMENTO set DATARECEBIMENTO = null, DATACONSOLIDA = null';
      str := str + ' WHERE CODRECEBIMENTO = ' + IntToStr(scdsCr_procCODRECEBIMENTO.AsInteger);
      dm.sqlsisAdimin.ExecuteDirect(str);
      DecimalSeparator := ',';
      scdsCr_proc.Refresh;
    Except
      MessageDlg('Não foi possível cancelar a baixa.', mtError, [mbOK], 0);
    end;
  end;
end;

procedure TF_TerminalFinaliza.btnAlteraRecClick(Sender: TObject);
begin
  fCrAltera := TfCrAltera.Create(Application);
  try
    fCrAltera.ntitulo := scdsCr_procTITULO.AsString;
    fCrAltera.codcliente := scdsCr_procCODCLIENTE.AsInteger;
    fCrAltera.demissao := scdsCr_procEMISSAO.AsDateTime;


    if (fCrAltera.cds.Active) then
      fCrAltera.cds.Close;
    fCrAltera.cds.Params[0].AsString := scdsCr_procTITULO.AsString;
    fCrAltera.cds.Params[1].AsInteger := scdsCr_procCODCLIENTE.AsInteger;
    fCrAltera.cds.Params[2].AsDateTime := scdsCr_procEMISSAO.AsDateTime;
    fCrAltera.cds.Open;

    if (fCrAltera.cds1.Active) then
      fCrAltera.cds1.Close;
    fCrAltera.cds1.Params[0].AsString := scdsCr_procTITULO.AsString;
    fCrAltera.cds1.Params[1].AsInteger := scdsCr_procCODCLIENTE.AsInteger;
    fCrAltera.cds1.Params[2].AsDateTime := scdsCr_procEMISSAO.AsDateTime;
    fCrAltera.cds1.Open;

    fCrAltera.Label1.Caption := scdsCr_procTITULO.AsString;
    fCrAltera.Label2.Caption := scdsCr_procTITULO.AsString;
    fCrAltera.ShowModal;
    scdsCr_proc.Close;
    scdsCr_proc.Open;
  finally
    fCrAltera.Free;
  end;
end;

procedure TF_TerminalFinaliza.btnNotaFiscalClick(Sender: TObject);
var fatura_NF :string;
begin
  if DM_MOV.d_venda.State in [dsInsert] then
    JvGravar.Click;

  if (scdsCr_proc.RecordCount = 0) then
  begin
    MessageDlg('T?lo do Financeiro n?foi gerado.'+#13+#10+'Clique no bot?gravar, para gera-lo.', mtWarning, [mbOK], 0);
    exit;
  end;

  NotaFiscal;
end;

procedure TF_TerminalFinaliza.NotaFiscal;
var
  Save_Cursor:TCursor;
  codClienteNF: integer;
  str_sql : string;
begin
  if (sqlBuscaNota.Active) then
	sqlBuscaNota.Close;
  sqlBuscaNota.SQL.Clear;
  sqlBuscaNota.SQL.Add('select codMovimento, codCliente  from MOVIMENTO where ( (CODNATUREZA = 15) or (CODNATUREZA = 16) ) AND CONTROLE = ' +
    QuotedStr(IntToStr(DM_MOV.c_vendaCODMOVIMENTO.AsInteger)));
  sqlBuscaNota.Open;
  if (sqlBuscaNota.IsEmpty) then
  begin
    try
    codClienteNF := 0;
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crHourGlass;
    // Nota Fiscal
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
	try
	str_sql := 'EXECUTE PROCEDURE GERA_NF_VENDA(';
	str_sql := str_sql + IntToStr(DM_MOV.c_vendaCODCLIENTE.AsInteger);
        str_sql := str_sql + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', DM_MOV.c_vendaDATAVENDA.AsDateTime));
        str_sql := str_sql + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', DM_MOV.c_vendaDATAVENCIMENTO.AsDateTime));
        str_sql := str_sql + ', ' + QuotedStr(DM_MOV.c_vendaSERIE.AsString);
        str_sql := str_sql + ', ' + QuotedStr(inttostr(DM_MOV.c_vendaNOTAFISCAL.AsInteger));
        str_sql := str_sql + ', ' + IntToStr(DM_MOV.c_vendaCODMOVIMENTO.AsInteger) + ')';
        dm.sqlsisAdimin.ExecuteDirect(str_sql);
        dm.sqlsisAdimin.Commit(TD);
		except
        dm.sqlsisAdimin.Rollback(TD);
        MessageDlg('Erro para Gerar a nota.', mtError, [mbOK], 0);
        exit;
	end;
    if (sqlBuscaNota.Active) then
      sqlBuscaNota.Close;
    sqlBuscaNota.SQL.Clear;
    sqlBuscaNota.SQL.Add('select codMovimento, codCliente from MOVIMENTO where ( (CODNATUREZA = 15) or (CODNATUREZA = 16) ) AND CONTROLE = ' +
      QuotedStr(IntToStr(DM_MOV.c_vendaCODMOVIMENTO.AsInteger)));
    sqlBuscaNota.Open;
    finally
      Screen.Cursor := Save_Cursor;  { Always restore to normal }
    end;
end;

  fNotaf := TfNotaf.Create(Application);
  try
  fNotaF.codMovFin := sqlBuscaNota.Fields[0].AsInteger;
  fNotaF.codCliFin := sqlBuscaNota.Fields[1].AsInteger;

  if (not  dm.cds_empresa.Active) then
  dm.cds_empresa.open;
    fNotaf.cbFinanceiro.Checked := False;
    fNotaf.cbEstoque.Checked := False;
    fNotaf.ShowModal;
    if (dmnf.cds_nfSTATUS.AsString = 'S') then
	fNotaf.RadioGroup1.ItemIndex := 0
    else
      fNotaf.RadioGroup1.ItemIndex := 1;
    finally
	fNotaf.Free;
  end;
end;

procedure TF_TerminalFinaliza.JvExcluirClick(Sender: TObject);
var   FEstoque: TEstoque;
      dataVenda: TDateTime;
      FMov : TMovimento;      
begin
  dataVenda := DM_MOV.c_vendaDATAVENDA.AsDateTime;
  if scdscr_proc.Active then
       scdscr_proc.Close;
    scdscr_proc.Params[0].Clear;
    scdscr_proc.Params[0].AsInteger := DM_MOV.c_vendaCODVENDA.AsInteger;
    scdscr_proc.Open;
    if cds_cr.Active then
      cds_cr.Close;
    cds_cr.Params[0].AsInteger := scdscr_procCODRECEBIMENTO.AsInteger;
    cds_cr.Open;
    if (cds_crSTATUS.AsString = '5-') then
    begin
      if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                    [mbYes,mbNo],0) = mrYes then
      begin
        dmnf.cancelaEstoque(DM_MOV.c_vendaCODMOVIMENTO.AsInteger, DM_MOV.c_vendaDATAVENDA.AsDateTime, 'VENDA');
        excluinf;
         if excluiuNF then
         begin
           try
             dm.sqlsisAdimin.StartTransaction(TD);
             DM_MOV.d_venda.DataSet.Delete;
             (DM_MOV.d_venda.DataSet as TClientDataSet).ApplyUpdates(0);
             dmnf.cancelaEstoque(DM_MOV.c_vendaCODMOVIMENTO.AsInteger, DM_MOV.c_vendaDATAVENDA.AsDateTime, 'VENDA');
             dm.sqlsisAdimin.Commit(TD);
             ShowMessage('Venda Excluida com Sucesso');
           except
             on E : Exception do
             begin
               ShowMessage('Classe: '+ e.ClassName + chr(13) + 'Mensagem: '+ e.Message);
               dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
             end;
           end;
         end;
      end
      else if (cds_cr.IsEmpty) then
      begin
        if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                      [mbYes,mbNo],0) = mrYes then
        begin
           excluinf;
            Try
              dm.sqlsisAdimin.StartTransaction(TD);
              DM_MOV.d_venda.DataSet.Delete;
              (DM_MOV.d_venda.DataSet as TClientDataSet).ApplyUpdates(0);
              dmnf.cancelaEstoque(DM_MOV.c_vendaCODMOVIMENTO.AsInteger, DM_MOV.c_vendaDATAVENDA.AsDateTime, 'VENDA');
             if (usaMateriaPrima = 'S') then   // Usa Materia Prima ent?tem que excluir tbem;
             begin
               if (dm.sqlBusca.Active) then
                 dm.sqlBusca.Close;
               dm.sqlBusca.SQL.Clear;
               dm.sqlBusca.SQL.Add('SELECT CODMOVIMENTO, DATAMOVIMENTO FROM MOVIMENTO ' +
                 ' WHERE CODPEDIDO   = ' + IntToStr(codigo_moviemento) +
                 '   AND CODNATUREZA = 2'+
                 '   AND CODCLIENTE  = ' + IntToStr(codigo_cliente));
               dm.sqlBusca.Open;
               if (not dm.sqlBusca.IsEmpty) then
               begin
                 dmnf.cancelaEstoque(dm.sqlBusca.fieldByName('CODMOVIMENTO').AsInteger,  +
                   dm.sqlBusca.fieldByName('DATAMOVIMENTO').AsDateTime, 'VENDA');
               end;
             end;

              dm.sqlsisAdimin.Commit(TD);
            except
              on E : Exception do
              begin
                ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
                dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
			end;
		  end;
        end;
      end;

      {------Pesquisando na tab Parametro se usa consumo Materia Prima na Venda ---}
      if Dm.cds_parametro.Active then
         dm.cds_parametro.Close;
      dm.cds_parametro.Params[0].AsString := 'BAIXAAUTOMATICA';
      dm.cds_parametro.Open;
      if (dm.cds_parametroCONFIGURADO.AsString = 'S') then
      begin
        // Excluindo a baixa da materia Prima
        codigo_cliente :=  DM_MOV.c_movimentoCODCLIENTE.AsInteger;
        data_movimento :=  DateToStr(DM_MOV.c_movimentoDATAMOVIMENTO.AsDateTime);

        Try
          FEstoque := TEstoque.Create;
          // Gravando o Estoque
          with DM_MOV do begin
          c_movdet.First;
          While not c_movdet.Eof do
          begin
            if (c_movdetSTATUS.AsString = '9') then
            begin
              FEstoque.QtdeVenda   := (-1) * c_movdetQUANTIDADE.AsFloat;
              FEstoque.CodProduto  := c_movdetCODPRODUTO.AsInteger;
              FEstoque.Lote        := c_movdetLOTE.AsString;
              FEstoque.CentroCusto := c_movdetCODALMOXARIFADO.AsInteger;
              FEstoque.MesAno      := dataVenda;
              FEstoque.PrecoVenda  := c_movdetPRECO.AsFloat;
              FEstoque.CodDetalhe  := c_movdetCODDETALHE.AsInteger;
              FEstoque.Status      := '0';
              FEstoque.inserirMes;
            end;
            c_movdet.Next;
          end;
          end;
        Finally
          FEstoque.Free;
        end;

      end;

    end;
end;

procedure TF_TerminalFinaliza.excluinf;
var
  str_sql : string;
begin
  excluiuNF := True;
  if (sqlBuscaNota.Active) then
  sqlBuscaNota.Close;
  sqlBuscaNota.SQL.Clear;
  sqlBuscaNota.SQL.Add('select m.codMovimento, m.codCliente, v.CODVENDA  from MOVIMENTO m ' +
    ' inner join venda v on v.CODMOVIMENTO = m.CODMOVIMENTO where ' +
    ' m.CODNATUREZA = 15 and m.CONTROLE = ' +
  QuotedStr(IntToStr(DM_MOV.c_vendaCODMOVIMENTO.AsInteger)));
  sqlBuscaNota.Open;
  if (not sqlBuscaNota.IsEmpty) then
  begin
    // Nota Fiscal
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
    try
	str_sql := 'DELETE FROM NOTAFISCAL ';
	  str_sql := str_sql + ' where CODVENDA = ' + inttostr(sqlBuscaNota.Fields[2].AsInteger);
      dm.sqlsisAdimin.ExecuteDirect(str_sql);
      str_sql := 'DELETE FROM VENDA ';
	  str_sql := str_sql + ' where CODMOVIMENTO = ' + inttostr(sqlBuscaNota.Fields[0].AsInteger);
      dm.sqlsisAdimin.ExecuteDirect(str_sql);
	  str_sql := 'DELETE FROM MOVIMENTO ';
	  str_sql := str_sql + ' where CODMOVIMENTO = ' + inttostr(sqlBuscaNota.Fields[0].AsInteger);
      dm.sqlsisAdimin.ExecuteDirect(str_sql);
      dm.sqlsisAdimin.Commit(TD);
      ShowMessage('Nota Fiscal Excluída com suscesso');
      excluiuNF := True;
	  except
      dm.sqlsisAdimin.Rollback(TD);
	  MessageDlg('Erro para Excluir a Nota Fiscal.', mtError, [mbOK], 0);
      excluiuNF := False;
	  end;
  end;
end;
procedure TF_TerminalFinaliza.JvBoletoClick(Sender: TObject);
begin
    F_Boletos := TF_Boletos.Create(Application);
    try
      F_Boletos.varLocal := 'Terminal';
      F_Boletos.ID_VENDA := DM_MOV.c_vendaCODVENDA.AsInteger;
      if (F_Boletos.ds_cr.Active) then
         F_Boletos.ds_cr.Close;
      F_Boletos.ds_cr.Params[1].Clear;
      F_Boletos.ds_cr.Params[0].AsInteger := DM_MOV.c_vendaCODVENDA.AsInteger;
      F_Boletos.ds_cr.Open;
      F_Boletos.ShowModal;
    finally
      F_Boletos.Free;
    end;
end;

procedure TF_TerminalFinaliza.imprimeCupom;
begin
 {  DM_MOV.c_venda.Close;
   DM_MOV.c_venda.Params[0].Clear;
   DM_MOV.c_venda.Params[1].AsInteger := cds_MovimentoCODMOVIMENTO.AsInteger;
   DM_MOV.c_venda.Open;
   }
     if (not dm.cds_empresa.Active) then
      dm.cds_empresa.Open;
     {----- aqui monto o endereço-----}
     logradouro := dm.cds_empresaENDERECO.Value + ', ' + dm.cds_empresaBAIRRO.Value;
     cep := dm.cds_empresaCIDADE.Value + ' - ' + dm.cds_empresaUF.Value +
     ' - ' + dm.cds_empresaCEP.Value;
     fone := '(19)' + dm.cds_empresaFONE.Value + ' / ' + dm.cds_empresaFONE_1.Value +
     ' / ' + dm.cds_empresaFONE_2.Value;
     Texto  := '------------------------------------------------------' ;
     Texto1 := DateTimeToStr(Now) + '            Cod.:  ' +
      IntToStr(DM_MOV.c_vendaNOTAFISCAL.AsInteger) + ' - ' + DM_MOV.c_vendaSERIE.AsString;
     Texto2 := '------------------------------------------------------' ;
     Texto3 := 'Produto xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx' ;
     Texto4 := 'Cod.Barra          UN      Qtde     V.Un.     V.Total ' ;
     Texto5 := DateTimeToStr(Now) + '            Total.: R$   ';
     cliente := 'Cliente : ' + DM_MOV.c_movimentoNOMECLIENTE.Value;
     if (s_parametro.Active) then
         s_parametro.close;
     s_parametro.Params[0].AsString := 'MENSAGEM';
     s_parametro.Open;
     if (not s_parametro.Eof) then
       DM.Mensagem := s_parametroDADOS.AsString
     else
       DM.Mensagem := '';

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'IMPARQUIVO';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
       SaveDialog1.Execute;
       AssignFile(IMPRESSORA, SaveDialog1.FileName);
       s_parametro.Close;
     end
     else
     begin
       s_parametro.Close;
       AssignFile(IMPRESSORA,'LPT1:');
     end;

     Rewrite(IMPRESSORA);
     Writeln(Impressora, c10cpi + Format('%-40s',[dm.cds_empresaRAZAO.Value]));
     Writeln(Impressora, c17cpi, logradouro);
     Writeln(Impressora, cep);
     Writeln(Impressora, fone);
     Writeln(Impressora, c10cpi + Format('%-40s',['CNPJ :' + dm.cds_empresaCNPJ_CPF.Value]));
     Writeln(Impressora, cliente);
     Writeln(Impressora, c17cpi, texto);
     Writeln(Impressora, c17cpi, texto1);
     Writeln(Impressora, c17cpi, texto2);
     Writeln(Impressora, c17cpi, texto3);
     Writeln(Impressora, c17cpi, texto4);
  {-----------------------------------------------------------}
  {-------------------Imprimi itens do boleto-----------------}
   try
     DM_MOV.c_movdet.First;
     while not DM_MOV.c_movdet.Eof do
     begin
       DM_MOV.c_movdet.RecordCount;
      // imprime
      Writeln(Impressora, c17cpi + Format('%-40s',[DM_MOV.c_movdetDESCPRODUTO.Value]));
      Write(Impressora, c17cpi, Format('%-13s  ',[DM_MOV.c_movdetCOD_BARRA.Value]));
      Write(Impressora, c17cpi + Format('   %-2s  ',[DM_MOV.c_movdetUN.Value]));
      Write(Impressora, c17cpi + Format('   %-6.2n',[DM_MOV.c_movdetQUANTIDADE.AsFloat]));
      Write(Impressora, c17cpi + Format('   %-6.2n',[DM_MOV.c_movdetPRECO.AsFloat]));
      Writeln(Impressora, c17cpi + Format('   %-6.2n',[DM_MOV.c_movdetValorTotal.value]));

      with Printer.Canvas do
      begin
       Font.Name := 'Courier New';
       Font.Size := 4;
      end;
      DM_MOV.c_movdet.next;
     end;
     total := DM_MOV.c_movdettotalpedido.Value;
     Writeln(Impressora, c17cpi, texto);
     Write(Impressora, c17cpi, texto5);
     Writeln(Impressora, c17cpi + Format('   %-6.2n',[total]));

     // imprimir vencimentos
     while not scdsCr_proc.Eof do
     begin
       Texto5 := 'Vencimento :   ';
       Write(Impressora, c17cpi, texto5);
       Texto5 := DateTimeToStr(scdsCr_procDATAVENCIMENTO.AsDateTime);
       Texto5 := Texto5 + ' - Valor R$' + FloatToStr(scdsCr_procVALOR_RESTO.AsFloat);
       Writeln(Impressora, c17cpi, texto5);
       scdsCr_proc.Next;
     end;
     Writeln(IMPRESSORA);
     Write(Impressora, c10cpi, DM.Mensagem);
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
     Writeln(IMPRESSORA);
  finally
    CloseFile(IMPRESSORA);
  end;

end;

procedure TF_TerminalFinaliza.imprimeRecibo;
begin
  VCLReport2.FileName := str_relatorio + 'impr_texto.rep';
  VCLReport2.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport2.Report.Params.ParamByName('PVENDA').Value := DM_MOV.c_vendaCODVENDA.AsInteger;
  VCLReport2.Execute;
end;

procedure TF_TerminalFinaliza.JvBitBtn1Click(Sender: TObject);
begin
  tipoImpressao := '';
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CUPOMPDV';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.Eof) then
     tipoImpressao := 'CUPOM';

  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'RECIBOPDV';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.Eof) then
     tipoImpressao := 'RECIBO';

  if (tipoImpressao = '') then
  begin
    ShowMessage('Parametro Tipo Impressão não configurado');
    exit;
  end;

  if (tipoImpressao = 'CUPOM') then
    imprimeCupom;

  if (tipoImpressao = 'RECIBO') then
    imprimeRecibo;

end;

end.
