unit uOs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvCombobox, Mask, JvExMask, JvToolEdit,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, uOsClasse, Buttons,
  ExtCtrls, MMJPanel, DB, FMTBcd, DBClient, Provider, SqlExpr, Grids,
  DBGrids, JvExDBGrids, JvDBGrid, JvBaseEdits, JvMemo, DateUtils;

type
  TfOs = class(TForm)
    MMJPanel2: TMMJPanel;
    btnGravar: TBitBtn;
    btnIncluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    btnProcurar: TBitBtn;
    btnSair: TBitBtn;
    sdsProd: TSQLDataSet;
    dspProd: TDataSetProvider;
    cdsProd: TClientDataSet;
    sdsProdCODPRODUTO: TIntegerField;
    sdsProdCOD_BARRA: TStringField;
    sdsProdCODPRO: TStringField;
    sdsProdPRODUTO: TStringField;
    cdsProdCODPRODUTO: TIntegerField;
    cdsProdCOD_BARRA: TStringField;
    cdsProdCODPRO: TStringField;
    cdsProdPRODUTO: TStringField;
    sds_Veiculocli: TSQLDataSet;
    sds_VeiculocliCOD_VEICULO: TIntegerField;
    sds_VeiculocliCOD_CLIENTE: TIntegerField;
    sds_VeiculocliPLACA: TStringField;
    sds_VeiculocliMARCA_MODELO: TStringField;
    sds_VeiculocliTIPO: TStringField;
    sds_VeiculocliCOMBUSTIVEL: TStringField;
    sds_VeiculocliANO_FAB: TStringField;
    sds_VeiculocliANO_MOD: TStringField;
    sds_VeiculocliCOR: TStringField;
    dsp_Veiculocli: TDataSetProvider;
    cds_Veiculocli: TClientDataSet;
    cds_VeiculocliCOD_VEICULO: TIntegerField;
    cds_VeiculocliCOD_CLIENTE: TIntegerField;
    cds_VeiculocliPLACA: TStringField;
    cds_VeiculocliMARCA_MODELO: TStringField;
    cds_VeiculocliTIPO: TStringField;
    cds_VeiculocliCOMBUSTIVEL: TStringField;
    cds_VeiculocliANO_FAB: TStringField;
    cds_VeiculocliANO_MOD: TStringField;
    cds_VeiculocliCOR: TStringField;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    JvDBGrid1: TJvDBGrid;
    sqlOS: TSQLDataSet;
    dspOS: TDataSetProvider;
    cdsOS: TClientDataSet;
    dtsrc: TDataSource;
    cdsOSCODOS: TIntegerField;
    cdsOSCODCLIENTE: TIntegerField;
    cdsOSCODVEICULO: TIntegerField;
    cdsOSCODMOVIMENTO: TIntegerField;
    cdsOSDATAMOVIMENTO: TDateField;
    cdsOSDATA_SISTEMA: TSQLTimeStampField;
    cdsOSSTATUS: TStringField;
    cdsOSDATA_INI: TDateField;
    cdsOSDATA_FIM: TDateField;
    cdsOSRESPONSAVEL: TStringField;
    cdsOSDESCRICAO_SERV: TStringField;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    edData: TJvDatePickerEdit;
    edNumOS: TEdit;
    edDataFim: TJvDatePickerEdit;
    GroupBox4: TGroupBox;
    edCodCliente: TEdit;
    edNomeCliente: TEdit;
    Label3: TLabel;
    btnClienteProcura: TBitBtn;
    GroupBox5: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    edKm: TEdit;
    edVeiculo: TJvMaskEdit;
    Label4: TLabel;
    edObs: TEdit;
    btnNovo: TBitBtn;
    BitBtn8: TBitBtn;
    GroupBox6: TGroupBox;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    btnProdutoProcura: TBitBtn;
    Edit3: TEdit;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    JvCalcEdit1: TJvCalcEdit;
    edDesc: TJvCalcEdit;
    Label11: TLabel;
    Label12: TLabel;
    JvCalcEdit2: TJvCalcEdit;
    JvCalcEdit3: TJvCalcEdit;
    Label13: TLabel;
    JvCalcEdit4: TJvCalcEdit;
    Label14: TLabel;
    GroupBox7: TGroupBox;
    JvDBGrid2: TJvDBGrid;
    sdsPecas: TSQLDataSet;
    dspPecas: TDataSetProvider;
    cdsPecas: TClientDataSet;
    dsPecas: TDataSource;
    cdsPecasID_OS_DET: TIntegerField;
    cdsPecasID_OS: TIntegerField;
    cdsPecasDESCRICAO_SERV: TStringField;
    cdsPecasRESPONSAVEL: TStringField;
    cdsPecasSTATUS: TStringField;
    cdsPecasTIPO: TStringField;
    cdsPecasQTDE: TFloatField;
    cdsPecasPRECO: TFloatField;
    cdsPecasDESCONTO: TFloatField;
    cdsPecasDESCPERCENT: TFloatField;
    cdsPecasVALORTOTAL: TFloatField;
    cdsPecasCODPRODUTO: TIntegerField;
    cdsPecasCODPRO: TStringField;
    cdsOSSTATUSDESC: TStringField;
    cdsPecasSTATUSDESC: TStringField;
    edServico: TJvMemo;
    cdsOSOBS: TStringField;
    cdsOSID_OS_DET: TIntegerField;
    sdsServico: TSQLDataSet;
    dspServico: TDataSetProvider;
    cdsServico: TClientDataSet;
    cdsServicoSTATUS: TStringField;
    cdsServicoRESPONSAVEL: TStringField;
    cdsServicoDESCRICAO_SERV: TStringField;
    cdsServicoSTATUSDESC: TStringField;
    cdsServicoID_OS_DET: TIntegerField;
    cdsServicoID_OS: TIntegerField;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnClienteProcuraClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNovoClick(Sender: TObject);
  private
    FOs: TOsClasse;
    Procedure limpaCampos;
    Procedure carregaCombos;
    Procedure controlaEventos;
    Procedure abrirOs(codOs :Integer);
    Procedure abrirPecas;
    { Private declarations }
  public
    modo: String; // Insert, Edit, Browse, Inactive
    { Public declarations }
  end;

var
  fOs: TfOs;

implementation

uses UDm, uProcurar_nf, UDMNF;

{$R *.dfm}

procedure TfOs.btnIncluirClick(Sender: TObject);
begin
  modo := 'Insert';
  limpaCampos;
  controlaEventos;
  abrirOs(0);
  abrirPecas;
  edData.Date    := Today;
  edDataFim.Date := Today;
  edNumOS.SetFocus;
end;

procedure TfOs.btnGravarClick(Sender: TObject);
begin
  if (edCodCliente.Text = '') then
  begin
    MessageDlg('Cliente não informado', mtError, [mbOK], 0);
    edCodCliente.SetFocus;
    exit;
  end;

  FOs.codCliente := StrToInt(edCodCliente.Text);
  FOs.codOs      := 0;
  if (edVeiculo.Text = '') then
  begin
    MessageDlg('Veiculo não informado', mtError, [mbOK], 0);
    edVeiculo.SetFocus;
    exit;
  end;
  FOs.codVeiculo := edVeiculo.Text;
  FOs.codUsuario := dm.varUSERID;
  FOs.dataOs     := edData.Date;
  FOs.dataInicio := edData.Date;
  FOs.dataFim    := edDataFim.Date;
  if (modo = 'Insert') then
    FOs.status := 'P';
  


  if ((modo = 'Insert') or (modo = 'Edit')) then
  begin
    {Os.dataMovimento := edData.Text;
    Os.codNatureza := 3;
    Os.status := '0';
    Os.codCliente := StrToInt(edCodCliente.Text);
    Os.codUsuario := usulog;
    Os.codResponsavel := usulog;
    if (dm.cds_ccusto.Locate('NOME', cbResultado.Text, [loCaseInsensitive])) then
      Os.codCentroResultado := dm.cds_ccustoCODIGO.AsInteger
    else begin
      if (cbResultado.Text <> '') then
      begin
        MessageDlg('Centro de Resultado não encontrado.', mtError, [mbOK], 0);
        cbResultado.SetFocus;
        exit;
      end;
    end;
    if (cdsProd.Locate('PRODUTO', cbServico.Text, [loCaseInsensitive])) then
    begin
      Os.codProduto := cdsProdCODPRODUTO.AsInteger;
      Os.obsMovimento := edServico.Text + edServico1.Text + edServico2.Text;
    end;
    Os.preco := 0;
    Os.Quantidade := 0;
    Os.IncluiOs;
    Os.Destroy;
    modo := 'Browse';
    controlaEventos;}
  end;
end;

procedure TfOs.limpaCampos;
begin
  edData.Clear;
  edDataFim.Clear;
  edDesc.Value := 0;
  edCodCliente.Text := '';
  edNomeCliente.Text := '';
  edNumOS.Text := '';
  edVeiculo.Text := '';
  edServico.Lines.Clear;
  edKm.Text := '';
  cdsOs.Close;
  cdsPecas.Close;
end;

procedure TfOs.carregaCombos;
begin
  {//Vejo quais são as contas de Receitas para listar no lookupcombobox.
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTRORECEITA';
  dm.cds_parametro.Open;
  if dm.cds_ccusto.Active then
    dm.cds_ccusto.Close;
  dm.cds_ccusto.Params[0].AsString := dm.cds_parametroDADOS.AsString;;
  dm.cds_ccusto.Open;
  // populo a cbCResultado
  DM.cds_ccusto.First;
  cbResultado.Items.Clear;
  while not DM.cds_ccusto.Eof do
  begin
    cbResultado.Items.Add(dm.cds_ccustoNOME.AsString);
    DM.cds_ccusto.Next;
  end;
  dm.cds_parametro.Close;}
  {//Vejo quais são os produtos cadastrados como Serviços.
  if (cdsProd.Active) then
    cdsProd.CommandText := 'SELECT CODPRODUTO, COD_BARRA, CODPRO, PRODUTO FROM ' +
      'LISTAPRODUTO(0, ' + QuotedStr('TODOSPRODUTOS') +
      ', ' + QuotedStr('TODOSPRODUTOS') + ', ' + QuotedStr('TODOSGRUPOS') +  ', ' +
      QuotedStr('TODOSSUBGRUPOS')  + ',' + QuotedStr('TODASMARCAS')+') Where TIPOPROD = ' +
      QuotedStr('SERV');
  cdsProd.Open;
  cbServico.Items.Clear;
  While (not cdsProd.Eof) do
  begin
    cbServico.Items.Add(cdsProd.Fields[3].asString);
    cdsProd.Next;
  end;}
end;

procedure TfOs.btnClienteProcuraClick(Sender: TObject);
begin
  if ((modo = 'Insert') or (modo = 'Edit')) then
  begin
    //DM.varNomeCliente := '';
    //dm.codcli := 0;
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
          //dbeCliente.SetFocus;
        end;
        if dmnf.scds_cli_procBLOQUEIO.AsString = 'S' then
        begin
          MessageDlg('Cliente com cadastro "BLOQUEADO",  venda não permitida.', mtError, [mbOK], 0);
          modo := 'Browse';
          controlaEventos;
          exit;
          //dbeCliente.SetFocus;
        end;
      //prazo := dmnf.scds_cli_procPRAZORECEBIMENTO.AsFloat;
      edCodCliente.Text := IntToStr(dmnf.scds_cli_procCODCLIENTE.AsInteger);
      edNomeCliente.Text := dmnf.scds_cli_procNOMECLIENTE.AsString;
    finally
     dmnf.scds_cli_proc.Close;
     fProcurar_nf.Free;
    end;
  end;
end;

procedure TfOs.controlaEventos;
begin
  if ((modo = 'Insert') or (modo = 'Edit')) then
  begin
    btnGravar.Visible := True;
    btnIncluir.Visible := False;
    btnProcurar.Enabled := False;
    btnSair.Enabled := False;
    btnExcluir.Visible := False;
    btnCancelar.Visible := True;
    btnClienteProcura.Enabled := True;
  end;
  if ((modo = 'Browse') or (modo = 'Inactive')) then
  begin
    btnGravar.Visible := False;
    btnIncluir.Visible := True;
    btnProcurar.Enabled := True;
    btnSair.Enabled := True;
    btnExcluir.Visible := True;
    btnCancelar.Visible := False;
    btnClienteProcura.Enabled := False;
  end;
end;

procedure TfOs.FormShow(Sender: TObject);
begin
  carregaCombos;
end;

procedure TfOs.btnCancelarClick(Sender: TObject);
begin
  modo := 'Browse';
  controlaEventos;
end;

procedure TfOs.FormCreate(Sender: TObject);
begin
  FOs := TOsClasse.Create;
end;

procedure TfOs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FOs.Destroy;
end;


procedure TfOs.abrirOs(codOs :Integer);
begin
  // Abre a OS
  if (cdsServico.Active) then
    cdsServico.Close;
  cdsServico.Params.ParamByName('pOs').AsInteger := codOs;
  cdsServico.Open;
end;

procedure TfOs.abrirPecas;
begin
  // Abre as Peças por Serviço da OS
  if (cdsPecas.Active) then
    cdsPecas.Close;
  cdsPecas.Params.ParamByName('pOs').AsInteger := cdsServicoID_OS.AsInteger;
  cdsPecas.Params.ParamByName('p_Sev').AsInteger := cdsOSID_OS_DET.AsInteger;
  cdsPecas.Open;
end;

procedure TfOs.btnNovoClick(Sender: TObject);
var str: string;
  I : Integer;
begin
  if (cdsServico.Active) then
  begin
    cdsServico.Append;
    cdsServicoSTATUS.AsString := 'O';
    str := '';
    for I := 0 to edServico.Lines.Count -1 do
      str := str + edServico.Lines[I] + #13#10;
    cdsServicoDESCRICAO_SERV.AsString := str;
    cdsServico.Post; 
  end;
end;

end.
