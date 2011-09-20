unit uOs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvCombobox, Mask, JvExMask, JvToolEdit,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, uOsClasse, Buttons,
  ExtCtrls, MMJPanel, DB, FMTBcd, DBClient, Provider, SqlExpr, Grids,
  DBGrids, JvExDBGrids, JvDBGrid, JvBaseEdits, JvMemo, DateUtils,
  JvComponentBase, JvFormAutoSize, dbXpress, JvEdit;

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
    sqlOS: TSQLDataSet;
    dspOS: TDataSetProvider;
    cdsOS: TClientDataSet;
    dtsrc: TDataSource;
    cdsOSCODOS: TIntegerField;
    cdsOSCODCLIENTE: TIntegerField;
    cdsOSCODMOVIMENTO: TIntegerField;
    cdsOSDATAMOVIMENTO: TDateField;
    cdsOSDATA_SISTEMA: TSQLTimeStampField;
    cdsOSSTATUS: TStringField;
    cdsOSDATA_INI: TDateField;
    cdsOSDATA_FIM: TDateField;
    cdsOSDESCRICAO_SERV: TStringField;
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
    cdsPecasVALORTOTAL: TFloatField;
    cdsPecasCODPRODUTO: TIntegerField;
    cdsPecasCODPRO: TStringField;
    cdsOSSTATUSDESC: TStringField;
    cdsPecasSTATUSDESC: TStringField;
    cdsOSOBS: TStringField;
    cdsOSID_OS_DET: TIntegerField;
    sdsServico: TSQLDataSet;
    dspServico: TDataSetProvider;
    cdsServico: TClientDataSet;
    cdsServicoSTATUS: TStringField;
    cdsServicoDESCRICAO_SERV: TStringField;
    cdsServicoSTATUSDESC: TStringField;
    cdsServicoID_OS_DET: TIntegerField;
    cdsServicoID_OS: TIntegerField;
    Panel1: TPanel;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    edData: TJvDatePickerEdit;
    edNumOS: TEdit;
    edDataFim: TJvDatePickerEdit;
    GroupBox4: TGroupBox;
    Label3: TLabel;
    edCodCliente: TEdit;
    edNomeCliente: TEdit;
    btnClienteProcura: TBitBtn;
    GroupBox5: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    edVeiculo: TJvMaskEdit;
    edObs: TEdit;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    JvDBGrid1: TJvDBGrid;
    cdsPecasVlrTotal: TAggregateField;
    edKm: TJvCalcEdit;
    cdsServicoQTDE: TFloatField;
    cdsServicoPRECO: TFloatField;
    cdsServicoVALORTOTAL: TFloatField;
    cdsOSCODVEICULO: TStringField;
    cdsServicoCODUSUARIO: TIntegerField;
    sdsServicoSTATUS: TStringField;
    sdsServicoCODUSUARIO: TIntegerField;
    sdsServicoDESCRICAO_SERV: TStringField;
    sdsServicoSTATUSDESC: TStringField;
    sdsServicoID_OS_DET: TIntegerField;
    sdsServicoID_OS: TIntegerField;
    sdsServicoQTDE: TFloatField;
    sdsServicoPRECO: TFloatField;
    sdsServicoVALORTOTAL: TFloatField;
    sdsServicoNOMEUSUARIO: TStringField;
    cdsServicoNOMEUSUARIO: TStringField;
    sdsServicoCODPRODUTO: TIntegerField;
    cdsServicoCODPRODUTO: TIntegerField;
    cdsOSRESPONSAVEL: TStringField;
    sdsServicoCODPRO: TStringField;
    cdsServicoCODPRO: TStringField;
    sdsServicoDESCONTO: TFloatField;
    cdsServicoDESCONTO: TFloatField;
    cdsOSRAZAOSOCIAL: TStringField;
    cdsOSKM: TIntegerField;
    Panel3: TPanel;
    btnIncluirServico: TBitBtn;
    btnExcluirServico: TBitBtn;
    dsServico: TDataSource;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnClienteProcuraClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNovoClick(Sender: TObject);
    procedure btnProdutoProcuraClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure edProdutoExit(Sender: TObject);
    procedure edCodClienteExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnIncluirServicoClick(Sender: TObject);
    procedure JvDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure cdsServicoNewRecord(DataSet: TDataSet);
    procedure cdsPecasNewRecord(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
  private
    estoque, qtde : Double;
    FOsCls: TOsClasse;
    Procedure limpaCampos;
    Procedure carregaCampos;
    Procedure controlaEventos;
    Procedure abrirOs(codOs :Integer);
    Procedure abrirPecas;
    Procedure buscaProduto;
    procedure carregaCombos;
    { Private declarations }
  public
    modoOs: String; // Insert, Edit, Browse, Inactive
    numOsDet: Integer;
    { Public declarations }
  end;

var
  fOs: TfOs;                              

implementation

uses UDm, uProcurar_nf, UDMNF, uProcura_prodOficina, sCtrlResize,
  uOsInsere;

{$R *.dfm}

procedure TfOs.btnIncluirClick(Sender: TObject);
begin
  modoOs := 'Insert';
  limpaCampos;
  controlaEventos;
  abrirOs(0);
  abrirPecas;
  edData.Date    := Today;
  edDataFim.Date := Today;
  edNumOS.SetFocus;
  numOsDet := 90000001;
end;

procedure TfOs.btnGravarClick(Sender: TObject);
var codigoOs : Integer;
    TD: TTransactionDesc;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  if (edCodCliente.Text = '') then
  begin
    MessageDlg('Cliente não informado', mtError, [mbOK], 0);
    edCodCliente.SetFocus;
    exit;
  end;

  Try
    dm.sqlsisAdimin.StartTransaction(TD);
    FOsCls.codCliente := StrToInt(edCodCliente.Text);
    if (modoOs = 'Insert') then
      FOsCls.codOs      := 0;
    if (edVeiculo.Text = '') then
    begin
      MessageDlg('Veiculo não informado', mtError, [mbOK], 0);
      edVeiculo.SetFocus;
      exit;
    end;
    FOsCls.codVeiculo := edVeiculo.Text;
    FOsCls.codUsuario := usulog;
    FOsCls.dataOs     := edData.Date;
    FOsCls.dataInicio := edData.Date;
    FOsCls.dataFim    := edDataFim.Date;
    if (modoOs = 'Insert') then
      FOsCls.status := 'P';
    FOsCls.km         := StrToInt(edKm.Text);

    if (modoOs = 'Insert') then
      CodigoOs := FOsCls.IncluirOs(0);

    if (modoOs = 'Edit') then
    begin
      FOsCls.alterarOs(cdsOSCODOS.AsInteger);
      CodigoOs := cdsOSCODOS.AsInteger;
    end;

    cdsServico.DisableControls;
    cdsServico.First;
    While not cdsServico.Eof do
    begin
      FOsCls.osDet.CodOsP   := CodigoOs;
      if (cdsServicoID_OS_DET.AsInteger > 90000000) then
      begin
        FOsCls.osDet.CodDet   := 0;
        FOsCls.osDet.Status   := 'O';
        FOsCls.osDet.Tipo     := 'S';
      end;
      FOsCls.osDet.Descricao:= cdsServicoDESCRICAO_SERV.AsString;
      FOsCls.osDet.Qtde     := cdsServicoQTDE.AsFloat;
      FOsCls.osDet.Preco    := cdsServicoPRECO.AsFloat;
      FOsCls.osDet.Desconto := cdsServicoDESCONTO.AsFloat;

      if (cdsServicoID_OS_DET.AsInteger > 90000000) then
      begin
        if (FOsCls.osDet.IncluirOsDet(0) = 0) then
          ShowMessage('Erro na Inclusao Os Detalhe');
      end
      else begin
        FOsCls.osDet.alterarOsDet(cdsServicoID_OS.AsInteger);
      end;
      cdsServico.Next;
    end;
    cdsServico.EnableControls;

    cdsPecas.DisableControls;
    cdsPecas.First;
    While not cdsPecas.Eof do
    begin
      FOsCls.osDet.CodOsP   := CodigoOs;
      if (cdsPecasID_OS_DET.AsInteger > 90000000) then
      begin
        FOsCls.osDet.CodDet   := 0;
        FOsCls.osDet.Status   := 'O';
        FOsCls.osDet.Tipo     := 'P';
      end;
      FOsCls.osDet.Descricao:= cdsPecasDESCRICAO_SERV.AsString;
      FOsCls.osDet.Qtde     := cdsPecasQTDE.AsFloat;
      FOsCls.osDet.Preco    := cdsPecasPRECO.AsFloat;
      FOsCls.osDet.Desconto := cdsPecasDESCONTO.AsFloat;
      FOSCls.osDet.CodOsServ := cdsServicoID_OS_DET.AsInteger;

      if (cdsPecasID_OS_DET.AsInteger > 90000000) then
      begin
        if (FOsCls.osDet.IncluirOsDet(0) = 0) then
          ShowMessage('Erro na Inclusao Os Detalhe');
      end
      else begin
        FOsCls.osDet.alterarOsDet(cdsPecasID_OS.AsInteger);
      end;
      cdsPecas.Next;
    end;
    dm.sqlsisAdimin.Commit(TD);
    MessageDlg('OS gerada com sucesso.', mtError, [mbOK], 0);

    cdsOs.Post;
  except
    on E : Exception do
    begin
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      dm.sqlsisAdimin.Rollback(TD);
    end;
  end;
  if ((modoOs = 'Insert') or (modoOs = 'Edit')) then
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
    modoOs := 'Browse';
    controlaEventos;}
  end;
end;

procedure TfOs.limpaCampos;
begin
  edData.Clear;
  edDataFim.Clear;
  edCodCliente.Text := '';
  edNomeCliente.Text := '';
  edNumOS.Text := '';
  edVeiculo.Text := '';
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
  if ((modoOs = 'Insert') or (modoOs = 'Edit')) then
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
          modoOs := 'Browse';
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
  if ((modoOs = 'Insert') or (modoOs = 'Edit')) then
  begin
    btnGravar.Visible := True;
    btnIncluir.Visible := False;
    btnProcurar.Enabled := False;
    btnSair.Enabled := False;
    btnExcluir.Visible := False;
    btnCancelar.Visible := True;
    btnClienteProcura.Enabled := True;
  end;
  if ((modoOs = 'Browse') or (modoOs = 'Inactive')) then
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
  //sCtrlResize.CtrlResize(TForm(fOs));
  FOsCls := TOsClasse.Create;
  numOsDet := 1;
  carregaCampos;
end;

procedure TfOs.btnCancelarClick(Sender: TObject);
begin
  modoOs := 'Browse';
  controlaEventos;
end;

procedure TfOs.FormCreate(Sender: TObject);
begin
  //sCtrlResize.CtrlResize(TForm(fOs));
end;

procedure TfOs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FOsCls.Destroy;
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
    cdsServicoID_OS.AsInteger := 99999999;
    cdsServicoID_OS_DET.AsInteger := numOsDet;
    numOsDet := numOsDet + 1;
    cdsServicoCODUSUARIO.AsInteger := 1;
    cdsServicoNOMEUSUARIO.AsString := 'Usuario';
    str := '';
    {for I := 0 to edServico.Lines.Count -1 do
      str := str + edServico.Lines[I] + #13#10;
    cdsServicoDESCRICAO_SERV.AsString := str;
    cdsServicoQTDE.AsFloat            := edQtdeServ.Value;
    cdsServicoPRECO.AsFloat           := edPrecoServ.Value;
    cdsServicoVALORTOTAL.AsFloat      := edQtdeServ.Value * edPrecoServ.Value;
    cdsServico.Post;  }
  end;
end;

procedure TfOs.btnProdutoProcuraClick(Sender: TObject);
begin
    //fProcura_prodOficina.cbTipo.ItemIndex := 4;
    fProcura_prodOficina.btnIncluir.Visible := true;
    if (procprod <> 'PROC_PROD_COMPLETO') then
    begin
      fProcura_prodOficina.Panel1.Visible := false;
      fProcura_prodOficina.Panel2.Visible := true;
      //fProcura_prodOficina.CheckBox1.Checked := True;
      //fProcura_prodOficina.BitBtn1.Click;
    end
    else begin
      fProcura_prodOficina.Panel2.Visible := false;
      fProcura_prodOficina.Panel1.Visible := true;
      //fProcura_prodOficina.CheckBox1.Checked := False;
      if (fProcura_prodOficina.cds_proc.Active) then
        fProcura_prodOficina.cds_proc.Close;
    end;
    varonde := 'compra';
    var_F := 'venda';

    fProcura_prodOficina.ShowModal;
    if (procprod = 'PROC_PROD_COMPLETO') then
    begin
      if (cdsPecas.State in [dsInsert, dsEdit]) then
      begin
        cdsPecasCODPRO.AsString := fProcura_prodOficina.cds_procCODPRO.AsString;
        cdsPecasCODPRODUTO.asInteger := fProcura_prodOficina.cds_procCODPRODUTO.AsInteger;
        cdsPecasDESCRICAO_SERV.asString := fProcura_prodOficina.cds_procPRODUTO.AsString;
        cdsPecasPRECO.AsFloat := fProcura_prodOficina.cds_procPRECO_VENDA.AsFloat;
        if ( fProcura_prodOficina.cds_procQTDE_PCT.AsFloat < 1) then
          cdsPecasQTDE.AsFloat := 1
        else
          cdsPecasQTDE.AsFloat := fProcura_prodOficina.cds_procQTDE_PCT.AsFloat;
        qtde         := fProcura_prodOficina.cds_procPESO_QTDE.AsFloat;
        //cdsPecasPRECO.AsFloat := fProcura_prodOficina.cds_procPRECOMEDIO.AsFloat;
        estoque      := fProcura_prodOficina.cds_procESTOQUEATUAL.AsFloat;
        //codProduto   := fProcura_prodOficina.cds_procCODPRODUTO.AsInteger;
      end;
    end;

end;

procedure TfOs.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfOs.edProdutoExit(Sender: TObject);
begin
  // Busca Produto
  buscaProduto;
end;

procedure TfOs.buscaProduto;
begin
end;

procedure TfOs.edCodClienteExit(Sender: TObject);
begin
  if (edCodCliente.Text = '') then
  begin
    exit;
  end;
  if dm.scds_cliente_proc.Active then
  dm.scds_cliente_proc.Close;
  dm.scds_cliente_proc.Params[0].Clear;
  dm.scds_cliente_proc.Params[1].Clear;
  dm.scds_cliente_proc.Params[2].Clear;
  dm.scds_cliente_proc.Params[2].AsInteger := StrToInt(edCodCliente.Text);
  dm.scds_cliente_proc.Open;
  if (dm.scds_cliente_proc.IsEmpty) then
  begin
    MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning, [mbOk], 0);
    //btnClienteProcura.Click;
    exit;
  end;
  edNomeCliente.Text := dm.scds_cliente_procNOMECLIENTE.AsString;
end;

procedure TfOs.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
  end;
end;

procedure TfOs.btnIncluirServicoClick(Sender: TObject);
begin
  if ((modoOs <> 'Insert') and (modoOs <> 'Edit')) then
    exit;

  fOsInsere.modoOsInsere := 'SERVICO';

  if (cdsServico.IsEmpty) then
  begin
    cdsServico.Append;
    cdsServicoID_OS_DET.AsInteger := numOsDet;
  end
  else begin
    cdsServico.Edit;
  end;
  fOsInsere.ShowModal;

end;

procedure TfOs.JvDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    fOsInsere.modoOsInsere := 'SERVICO';
    fOsInsere.ShowModal;
  end;
end;

procedure TfOs.cdsServicoNewRecord(DataSet: TDataSet);
begin
  cdsServicoID_OS.AsInteger := 1;
end;

procedure TfOs.cdsPecasNewRecord(DataSet: TDataSet);
begin
  cdsPecasID_OS.AsInteger := 1;
end;

procedure TfOs.carregaCampos;
begin
  if ((cdsOs.Active) and (not cdsOs.IsEmpty)) then
  begin
    edNumOS.Text       := IntToStr(cdsOSCODOS.AsInteger);
    edData.Date        := cdsOSDATAMOVIMENTO.AsDateTime;
    edDataFim.Date     := cdsOSDATA_FIM.AsDateTime;
    edCodCliente.Text  := IntToStr(cdsOSCODCLIENTE.AsInteger);
    edNomeCliente.Text := cdsOSRAZAOSOCIAL.AsString;
    edVeiculo.Text     := cdsOSCODVEICULO.AsString;
    edKm.Text          := IntToStr(cdsOSKM.AsInteger);
    edObs.Text         := cdsOSOBS.AsString;
    abrirOs(cdsOSCODOS.AsInteger);
    abrirPecas;
    modoOs := 'Edit';
    controlaEventos;
  end;
end;

procedure TfOs.BitBtn1Click(Sender: TObject);
begin
  if ((modoOs <> 'Insert') and (modoOs <> 'Edit')) then
    exit;

  fOsInsere.modoOsInsere := 'PECA';

  if (cdsPecas.IsEmpty) then
  begin
    cdsPecas.Append;
    cdsPecasID_OS_DET.AsInteger := numOsDet;
  end
  else begin
    cdsPecas.Edit;
  end;
  fOsInsere.ShowModal;

end;

end.
