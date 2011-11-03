unit uCliente1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, uCliente,
  Mask, JvExMask, JvToolEdit, JvMaskEdit, DBCtrls, FMTBcd, Provider,
  SqlExpr, DBXpress, DBClient;

type
  TfCliente1 = class(TfPai_new)
    rgTipo: TRadioGroup;
    gbNome: TGroupBox;
    lblNome: TLabel;
    lblRazao: TLabel;
    GroupBox1: TGroupBox;
    JvDBUltimGrid1: TJvDBUltimGrid;
    GroupBox2: TGroupBox;
    lblCnpj: TLabel;
    lblIE: TLabel;
    lblOrgaoEmissor: TLabel;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    cds_cli: TClientDataSet;
    cds_cliCODCLIENTE: TIntegerField;
    cds_cliNOMECLIENTE: TStringField;
    cds_cliRAZAOSOCIAL: TStringField;
    cds_cliCONTATO: TStringField;
    cds_cliTIPOFIRMA: TSmallintField;
    cds_cliCPF: TStringField;
    cds_cliCNPJ: TStringField;
    cds_cliINSCESTADUAL: TStringField;
    cds_cliRG: TStringField;
    cds_cliSEGMENTO: TSmallintField;
    cds_cliREGIAO: TSmallintField;
    cds_cliLIMITECREDITO: TFloatField;
    cds_cliDATACADASTRO: TDateField;
    cds_cliCODUSUARIO: TIntegerField;
    cds_cliSTATUS: TSmallintField;
    cds_cliHOMEPAGE: TStringField;
    cds_cliPRAZORECEBIMENTO: TSmallintField;
    cds_cliPRAZOENTREGA: TSmallintField;
    cds_cliCODBANCO: TSmallintField;
    cds_cliBASE_ICMS: TSmallintField;
    cds_cliDATANASC: TDateField;
    cds_cliCONTA_CLIENTE: TStringField;
    cds_cliOBS: TStringField;
    cds_cliBANCO: TStringField;
    cds_cliNOMEUSUARIO: TStringField;
    cds_cliTEM_IE: TStringField;
    cds_cliDATARESC: TDateField;
    cds_cliNOMEMAE: TStringField;
    cds_cliSEXO: TStringField;
    cds_cliFORMA_CORRESPOND: TStringField;
    cds_cliGRUPO_CLIENTE: TStringField;
    cds_cliCODINCLUCANC: TIntegerField;
    cds_cliEXIST_COBERT: TStringField;
    cds_cliEXISTCOPART: TStringField;
    cds_cliDATAREINC: TDateField;
    cds_cliGERAAVISO: TStringField;
    cds_cliGERAENV: TStringField;
    cds_cliGERABOL: TStringField;
    cds_cliEMVIAGEM: TStringField;
    cds_cliDTAALTERA: TDateField;
    cds_cliSERIELETRA: TStringField;
    cds_cliSERIE: TStringField;
    cds_cliRA: TStringField;
    cds_cliCURSO: TStringField;
    cds_cliIP: TStringField;
    cds_cliN_CONTRATO: TStringField;
    cds_cliMAC: TStringField;
    cds_cliMARCA: TStringField;
    cds_cliBANDA_UPLOAD: TStringField;
    cds_cliBANDA_DOWLOAD: TStringField;
    cds_cliTORRE_CONECCAO: TStringField;
    cds_cliCOD_FAIXA: TIntegerField;
    cds_cliDESCONTO: TFloatField;
    cds_cliMENSALIDADE: TFloatField;
    cds_cliPAI: TStringField;
    cds_cliLOCALTRABALUNO: TStringField;
    cds_cliDIVERSO1: TStringField;
    cds_cliDIVERSO2: TStringField;
    cds_cliTELTRABALUNO: TStringField;
    cds_cliDATA_MATRICULA: TSQLTimeStampField;
    cds_cliSITUACAOESCOLAR: TStringField;
    cds_cliCOD_TRANPORTADORA: TIntegerField;
    cds_cliCODRESPONSAVEL: TIntegerField;
    cds_cliCFOP: TStringField;
    sds_cli: TSQLDataSet;
    sds_cliCODICLIENTE: TIntegerField;
    sds_cliNOMECLIENTE: TStringField;
    sds_cliRAZAOSOCIAL: TStringField;
    sds_cliCONTATO: TStringField;
    sds_cliTIPOFIRMA: TSmallintField;
    sds_cliCPF: TStringField;
    sds_cliCNPJ: TStringField;
    sds_cliINSCESTADUAL: TStringField;
    sds_cliRG: TStringField;
    sds_cliSEGMENTO: TSmallintField;
    sds_cliREGIAO: TSmallintField;
    sds_cliLIMITECREDITO: TFloatField;
    sds_cliDATACADASTRO: TDateField;
    sds_cliCODUSUARIO: TIntegerField;
    sds_cliSTATUS: TSmallintField;
    sds_cliHOMEPAGE: TStringField;
    sds_cliPRAZORECEBIMENTO: TSmallintField;
    sds_cliPRAZOENTREGA: TSmallintField;
    sds_cliCODBANCO: TSmallintField;
    sds_cliBASE_ICMS: TSmallintField;
    sds_cliDATANASC: TDateField;
    sds_cliCONTA_CLIENTE: TStringField;
    sds_cliOBS: TStringField;
    sds_cliBANCO: TStringField;
    sds_cliNOMEUSUARIO: TStringField;
    sds_cliTEM_IE: TStringField;
    sds_cliDATARESC: TDateField;
    sds_cliNOMEMAE: TStringField;
    sds_cliSEXO: TStringField;
    sds_cliFORMA_CORRESPOND: TStringField;
    sds_cliGRUPO_CLIENTE: TStringField;
    sds_cliCODINCLUCANC: TIntegerField;
    sds_cliEXIST_COBERT: TStringField;
    sds_cliEXISTCOPART: TStringField;
    sds_cliDATAREINC: TDateField;
    sds_cliGERAAVISO: TStringField;
    sds_cliGERAENV: TStringField;
    sds_cliGERABOL: TStringField;
    sds_cliEMVIAGEM: TStringField;
    sds_cliDTAALTERA: TDateField;
    sds_cliSERIELETRA: TStringField;
    sds_cliSERIE: TStringField;
    sds_cliRA: TStringField;
    sds_cliCURSO: TStringField;
    sds_cliIP: TStringField;
    sds_cliN_CONTRATO: TStringField;
    sds_cliMAC: TStringField;
    sds_cliMARCA: TStringField;
    sds_cliBANDA_UPLOAD: TStringField;
    sds_cliBANDA_DOWLOAD: TStringField;
    sds_cliTORRE_CONECCAO: TStringField;
    sds_cliCOD_FAIXA: TIntegerField;
    sds_cliDESCONTO: TFloatField;
    sds_cliMENSALIDADE: TFloatField;
    sds_cliPAI: TStringField;
    sds_cliLOCALTRABALUNO: TStringField;
    sds_cliDIVERSO1: TStringField;
    sds_cliDIVERSO2: TStringField;
    sds_cliTELTRABALUNO: TStringField;
    sds_cliDATA_MATRICULA: TSQLTimeStampField;
    sds_cliSITUACAOESCOLAR: TStringField;
    sds_cliCOD_TRANPORTADORA: TIntegerField;
    sds_cliCODRESPONSAVEL: TIntegerField;
    sds_cliCFOP: TStringField;
    dsp_cli: TDataSetProvider;
    sqlLocate: TSQLDataSet;
    sqlLocateNOMECLIENTE: TStringField;
    dspLocate: TDataSetProvider;
    cdsLocate: TClientDataSet;
    cdsLocateNOMECLIENTE: TStringField;
    rgSitCad: TRadioGroup;
    BitBtn1: TBitBtn;
    Dtsrc_e: TDataSource;
    cds_CliEnd: TClientDataSet;
    dsp_CliEnd: TDataSetProvider;
    sds_CliEnd: TSQLDataSet;
    sds_CliEndLOGRADOURO: TStringField;
    sds_CliEndNUMERO: TStringField;
    sds_CliEndBAIRRO: TStringField;
    sds_CliEndCIDADE: TStringField;
    sds_CliEndUF: TStringField;
    sds_CliEndTIPOEND: TStringField;
    cds_CliEndLOGRADOURO: TStringField;
    cds_CliEndNUMERO: TStringField;
    cds_CliEndBAIRRO: TStringField;
    cds_CliEndCIDADE: TStringField;
    cds_CliEndUF: TStringField;
    cds_CliEndTIPOEND: TStringField;
    sds_CliEndTIPO: TSmallintField;
    cds_CliEndTIPO: TSmallintField;
    procedure rgTipoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure JvDBUltimGrid1DblClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
  private
    FCli : TCliente;
  public
    TD: TTransactionDesc;
  end;

var
  fCliente1: TfCliente1;

implementation

uses uEndereco, UDm, sCtrlResize, uListaClientes;


{$R *.dfm}

procedure TfCliente1.rgTipoClick(Sender: TObject);
begin
  inherited;
  if (rgTipo.ItemIndex = 0) then
  begin
    lblNome.Caption  := 'Nome';
    lblRazao.Caption := 'Apelido';
    lblIE.Caption    := 'R.G.';
    lblCnpj.Caption  := 'CPF';
  end;
  if (rgTipo.ItemIndex = 1) then
  begin
    lblNome.Caption  := 'Razão Soc.';
    lblRazao.Caption := 'Nome Fantasia';
    lblIE.Caption    := 'Insc. Estadual';
    lblCnpj.Caption  := 'CNPJ';
  end;
end;

procedure TfCliente1.btnGravarClick(Sender: TObject);
begin
  if DtSrc.DataSet.State in [dsInsert] then
  begin
    if(not cdsLocate.active) then
      cdsLocate.open;
    if (cdsLocate.Locate('NOMECLIENTE', DBEdit2.Text ,[loCaseInsensitive])) then
      if(MessageDlg('Nome já Cadastrado'+#13+#10+'Deseja Continuar', mtWarning, [mbYes, mbNo ], 0) = mrno) then
        exit;

    cds_cliCODCLIENTE.AsInteger := 0;
    cds_cliSEGMENTO.AsInteger := 0;
    cds_cliREGIAO.AsInteger := 0;
    cds_cliDATACADASTRO.AsDateTime := Now;
    cds_cliCODUSUARIO.AsInteger := DM.varUSERID;
  end;

  cds_cliSTATUS.AsInteger := rgSitCad.ItemIndex +1;

  if rgTipo.ItemIndex = 0 then
    cds_cliTIPOFIRMA.AsInteger := 1
  else
  cds_cliTIPOFIRMA.AsInteger := 0;

  cds_cli.Post;
  Fcli := TCliente.Create;
  Fcli.CodCli      := 0;
  Fcli.NomeCliente := cds_cliNOMECLIENTE.AsString;
  FCli.RazaoSocial := cds_cliRAZAOSOCIAL.AsString;
  FCli.InscEstadual:= cds_cliINSCESTADUAL.AsString;
  FCli.Cnpj        := cds_cliCNPJ.AsString;
  FCli.TipoFirma   := rgTipo.ItemIndex;
  FCli.CodUsuario  := DM.varUSERID;
  FCli.DataCadastro:= Now;
  FCli.Contato     := cds_cliCONTATO.AsString;
  FCli.Status      := cds_cliSTATUS.AsInteger;
  FCli.inserirCliente;
  FCli.Endereco.CodCli        := FCli.CodCli;
  FCli.Endereco.TipoEndereco  := 0;
  FCli.Endereco.Pais  := 'Brasil';  
  FCli.Endereco.inserirEndereco;
  if (cds_Cli.Active) then
    cds_Cli.Close;
  cds_Cli.Params[0].AsInteger := FCli.CodCli;
  cds_Cli.Open;
  if (cds_CliEnd.Active) then
    cds_CliEnd.Close;
  cds_CliEnd.Params[0].AsInteger := FCli.CodCli;
  cds_CliEnd.Open;
  if (cdsLocate.Active) then
    cdsLocate.Close;
  cdsLocate.Open;
  FCli.Destroy;
end;

procedure TfCliente1.FormCreate(Sender: TObject);
begin
  //inherited;
  //Fcli := TCliente.Create;
end;

procedure TfCliente1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  //FCli.Destroy;
end;

procedure TfCliente1.JvDBUltimGrid1DblClick(Sender: TObject);
begin
  fEndereco := TfEndereco.Create(Application);
  try
    fEndereco.ShowModal;
  finally
    fEndereco.Free;
    if (cds_CliEnd.Active) then
      cds_CliEnd.Close;
    cds_CliEnd.Open;
  end;
end;

procedure TfCliente1.btnProcurarClick(Sender: TObject);
begin
  fListaClientes:=TfListaClientes.Create(Application);
  fListaClientes.BitBtn8.Enabled := False;
  fListaClientes.ShowModal;
  try
     cds_cli.Close;
     cds_cli.Params[0].Clear;
     cds_cli.Params[0].AsInteger := fListaClientes.cdsCODCLIENTE.AsInteger;
     cds_cli.Open;

     cds_CliEnd.Close;
     cds_CliEnd.Params[0].Clear;
     cds_CliEnd.Params[0].AsInteger := fListaClientes.cdsCODCLIENTE.AsInteger;
     cds_CliEnd.Open;
    {if cds_cliTIPOFIRMA.AsInteger = 0 then
      cds_cliCNPJ.EditMask := '000.000.000-00;1;_'
    else
      cds_cliCNPJ.EditMask := '00.000.000/0000-00;1;_';    }
  finally
    fListaClientes.Free;
  end;

  {if cdsEnderecoCli.Active then
     cdsEnderecoCli.Close;
  cdsEnderecoCli.Params[0].Clear;
  cdsEnderecoCli.Params[1].AsInteger := cds_cliCODCLIENTE.AsInteger;
  cdsEnderecoCli.Open;
   }
end;

procedure TfCliente1.BitBtn1Click(Sender: TObject);
begin
  fEndereco := TfEndereco.Create(Application);
  try
    fEndereco.ShowModal;
  finally
    fEndereco.Free;
    if (cds_CliEnd.Active) then
      cds_CliEnd.Close;
    cds_CliEnd.Open;
  end;
end;

procedure TfCliente1.btnExcluirClick(Sender: TObject);
begin
  dm.sqlsisAdimin.ExecuteDirect('delete from enderecocliente where codcliente='+
    intToStr(cds_cliCODCLIENTE.asInteger));
  inherited;
end;

procedure TfCliente1.DBEdit1Exit(Sender: TObject);
begin
  inherited;
  if (cds_cliNOMECLIENTE.AsString = '') then
    cds_cliNOMECLIENTE.AsString := cds_cliRAZAOSOCIAL.AsString;
end;

procedure TfCliente1.btnIncluirClick(Sender: TObject);
begin
  cds_CliEnd.Close;
  inherited;
end;

end.
