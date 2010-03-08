unit uNFeletronica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, ImgList, DB, rpcompobase, rpvclreport, XPMenu,
  gbCobranca, Provider, DBClient, SqlExpr, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, ComCtrls, JvExComCtrls, JvProgressBar, JvExButtons, JvBitBtn,
  dxCore, dxButton, StdCtrls, Mask, JvExMask, JvToolEdit, Buttons,
  ExtCtrls, MMJPanel, ACBrNFeDANFEClass, pcnConversao, ACBrNFeDANFERave, ACBrNFe,
  ACBrNFeDANFeQRClass;

type
  TfNFeletronica = class(TForm)
    MMJPanel1: TMMJPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    JvDateEdit1: TJvDateEdit;
    JvDateEdit2: TJvDateEdit;
    ComboBox1: TComboBox;
    dxButton1: TdxButton;
    JvBitBtn1: TJvBitBtn;
    edSerie: TEdit;
    JvProgressBar1: TJvProgressBar;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Edit3: TEdit;
    Edit2: TEdit;
    MMJPanel2: TMMJPanel;
    JvDBGrid1: TJvDBGrid;
    sdsNF: TSQLDataSet;
    sdsNFFRETE: TStringField;
    sdsNFCNPJ_CPF: TStringField;
    sdsNFNOMETRANSP: TStringField;
    sdsNFINSCRICAOESTADUAL: TStringField;
    sdsNFEND_TRANSP: TStringField;
    sdsNFCIDADE_TRANSP: TStringField;
    sdsNFUF_TRANSP: TStringField;
    sdsNFPLACATRANSP: TStringField;
    sdsNFUF_VEICULO_TRANSP: TStringField;
    sdsNFQUANTIDADE: TFloatField;
    sdsNFESPECIE: TStringField;
    sdsNFMARCA: TStringField;
    sdsNFNUMERO: TStringField;
    sdsNFPESOLIQUIDO: TBCDField;
    sdsNFPESOBRUTO: TBCDField;
    sdsNFRAZAOSOCIAL: TStringField;
    sdsNFCNPJ: TStringField;
    sdsNFCFOP: TStringField;
    sdsNFCODCLIENTE: TIntegerField;
    sdsNFNUMNF: TIntegerField;
    sdsNFCODVENDA: TIntegerField;
    sdsNFBASE_ICMS: TFloatField;
    sdsNFVALOR_ICMS: TFloatField;
    sdsNFBASE_ICMS_SUBST: TFloatField;
    sdsNFVALOR_ICMS_SUBST: TFloatField;
    sdsNFVALOR_PRODUTO: TFloatField;
    sdsNFVALOR_FRETE: TFloatField;
    sdsNFVALOR_SEGURO: TFloatField;
    sdsNFOUTRAS_DESP: TFloatField;
    sdsNFVALOR_IPI: TFloatField;
    sdsNFVALOR_TOTAL_NOTA: TFloatField;
    sdsNFDTAEMISSAO: TDateField;
    sdsNFDTASAIDA: TDateField;
    sdsNFCORPONF1: TStringField;
    sdsNFCORPONF2: TStringField;
    sdsNFHORASAIDA: TTimeField;
    sdsNFNOTASERIE: TStringField;
    sdsNFSELECIONOU: TStringField;
    cdsNF: TClientDataSet;
    cdsNFFRETE: TStringField;
    cdsNFCNPJ_CPF: TStringField;
    cdsNFNOMETRANSP: TStringField;
    cdsNFINSCRICAOESTADUAL: TStringField;
    cdsNFEND_TRANSP: TStringField;
    cdsNFCIDADE_TRANSP: TStringField;
    cdsNFUF_TRANSP: TStringField;
    cdsNFPLACATRANSP: TStringField;
    cdsNFUF_VEICULO_TRANSP: TStringField;
    cdsNFQUANTIDADE: TFloatField;
    cdsNFESPECIE: TStringField;
    cdsNFMARCA: TStringField;
    cdsNFNUMERO: TStringField;
    cdsNFPESOLIQUIDO: TBCDField;
    cdsNFPESOBRUTO: TBCDField;
    cdsNFRAZAOSOCIAL: TStringField;
    cdsNFCNPJ: TStringField;
    cdsNFCFOP: TStringField;
    cdsNFCODCLIENTE: TIntegerField;
    cdsNFNUMNF: TIntegerField;
    cdsNFCODVENDA: TIntegerField;
    cdsNFBASE_ICMS: TFloatField;
    cdsNFVALOR_ICMS: TFloatField;
    cdsNFBASE_ICMS_SUBST: TFloatField;
    cdsNFVALOR_ICMS_SUBST: TFloatField;
    cdsNFVALOR_PRODUTO: TFloatField;
    cdsNFVALOR_FRETE: TFloatField;
    cdsNFVALOR_SEGURO: TFloatField;
    cdsNFOUTRAS_DESP: TFloatField;
    cdsNFVALOR_IPI: TFloatField;
    cdsNFVALOR_TOTAL_NOTA: TFloatField;
    cdsNFDTAEMISSAO: TDateField;
    cdsNFDTASAIDA: TDateField;
    cdsNFCORPONF1: TStringField;
    cdsNFCORPONF2: TStringField;
    cdsNFHORASAIDA: TTimeField;
    cdsNFNOTASERIE: TStringField;
    cdsNFSELECIONOU: TStringField;
    dspNF: TDataSetProvider;
    sdsItensNF: TSQLDataSet;
    sdsItensNFCODPRODUTO: TIntegerField;
    sdsItensNFQUANTIDADE: TFloatField;
    sdsItensNFPRECO: TFloatField;
    sdsItensNFDESCPRODUTO: TStringField;
    sdsItensNFCODPRO: TStringField;
    sdsItensNFUNIDADEMEDIDA: TStringField;
    sdsItensNFCST: TStringField;
    sdsItensNFICMS: TFloatField;
    sdsItensNFVLR_BASE: TFloatField;
    dspItensNF: TDataSetProvider;
    cdsItensNF: TClientDataSet;
    cdsItensNFCODPRODUTO: TIntegerField;
    cdsItensNFQUANTIDADE: TFloatField;
    cdsItensNFPRECO: TFloatField;
    cdsItensNFDESCPRODUTO: TStringField;
    cdsItensNFCODPRO: TStringField;
    cdsItensNFUNIDADEMEDIDA: TStringField;
    cdsItensNFCST: TStringField;
    cdsItensNFICMS: TFloatField;
    cdsItensNFVLR_BASE: TFloatField;
    sMenorData: TSQLDataSet;
    sMenorDataMENORDATA: TDateField;
    sMaiorData: TSQLDataSet;
    sMaiorDataMAIORDATA: TDateField;
    sEmpresa: TSQLDataSet;
    sEmpresaEMPRESA: TStringField;
    sEmpresaRAZAO: TStringField;
    sEmpresaCNPJ_CPF: TStringField;
    sEmpresaENDERECO: TStringField;
    sEmpresaLOGRADOURO: TStringField;
    sEmpresaBAIRRO: TStringField;
    sEmpresaCIDADE: TStringField;
    sEmpresaUF: TStringField;
    sEmpresaCEP: TStringField;
    sEmpresaDDD: TStringField;
    sEmpresaFONE: TStringField;
    sEmpresaFONE_1: TStringField;
    sEmpresaFONE_2: TStringField;
    sEmpresaFAX: TStringField;
    sEmpresaE_MAIL: TStringField;
    sEmpresaWEB: TStringField;
    sEmpresaLOGOTIPO: TGraphicField;
    sEmpresaCODIGO: TIntegerField;
    sEmpresaTIPO: TStringField;
    sEmpresaIE_RG: TStringField;
    sEmpresaSLOGAN: TStringField;
    sEmpresaOUTRAS_INFO: TStringField;
    sEmpresaCODIGO_CONTA: TIntegerField;
    sEmpresaDIVERSOS1: TStringField;
    sEmpresaDIVERSOS2: TStringField;
    sEmpresaDIVERSOS3: TStringField;
    sEmpresaANOLETIVO: TIntegerField;
    sEmpresaMEDIA_ESCOLA: TFloatField;
    sEmpresaPORTA: TIntegerField;
    sEmpresaSMTP: TStringField;
    sEmpresaSENHA: TStringField;
    gbCobranca1: TgbCobranca;
    sCFOP: TSQLDataSet;
    sCFOPCFCOD: TStringField;
    sCFOPCFNOME: TStringField;
    sCliente: TSQLDataSet;
    sClienteCODCLIENTE: TIntegerField;
    sClienteNOMECLIENTE: TStringField;
    sClienteCONTATO: TStringField;
    sClienteINSCESTADUAL: TStringField;
    sClienteRAZAOSOCIAL: TStringField;
    sClienteCNPJ: TStringField;
    sClienteLOGRADOURO: TStringField;
    sClienteBAIRRO: TStringField;
    sClienteCOMPLEMENTO: TStringField;
    sClienteCIDADE: TStringField;
    sClienteUF: TStringField;
    sClienteCEP: TStringField;
    sClienteNUMERO: TStringField;
    OpenDialog1: TOpenDialog;
    sds_param: TSQLDataSet;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField8: TStringField;
    sds_paramDADOS: TStringField;
    sds_paramD1: TStringField;
    sds_paramD2: TStringField;
    sds_paramD3: TStringField;
    sds_paramD4: TStringField;
    sds_paramD5: TStringField;
    sds_paramD6: TStringField;
    sds_paramD7: TStringField;
    sds_paramD8: TStringField;
    sds_paramD9: TStringField;
    sds_paramINSTRUCOES: TStringField;
    dsp_param: TDataSetProvider;
    cds_param: TClientDataSet;
    StringField9: TStringField;
    StringField10: TStringField;
    cds_paramDADOS: TStringField;
    cds_paramD1: TStringField;
    cds_paramD2: TStringField;
    cds_paramD3: TStringField;
    cds_paramD4: TStringField;
    cds_paramD5: TStringField;
    cds_paramD6: TStringField;
    cds_paramD7: TStringField;
    cds_paramD8: TStringField;
    cds_paramD9: TStringField;
    cds_paramINSTRUCOES: TStringField;
    cds_paramCONFIGURADO: TStringField;
    cds_ccusto: TClientDataSet;
    cds_ccustoCODIGO: TIntegerField;
    cds_ccustoCONTA: TStringField;
    cds_ccustoNOME: TStringField;
    d_2: TDataSetProvider;
    s_2: TSQLDataSet;
    s_2CODIGO: TIntegerField;
    s_2CONTA: TStringField;
    s_2NOME: TStringField;
    XPMenu1: TXPMenu;
    cds_Movimento: TClientDataSet;
    cds_MovimentoCODMOVIMENTO: TIntegerField;
    cds_MovimentoDATAMOVIMENTO: TDateField;
    cds_MovimentoCODCLIENTE: TIntegerField;
    cds_MovimentoCODNATUREZA: TSmallintField;
    cds_MovimentoSTATUS: TSmallintField;
    cds_MovimentoCODUSUARIO: TSmallintField;
    cds_MovimentoNOMECLIENTE: TStringField;
    cds_MovimentoDESCNATUREZA: TStringField;
    cds_MovimentoALMOXARIFADO: TStringField;
    cds_MovimentoCODVENDEDOR: TSmallintField;
    cds_MovimentoCODALMOXARIFADO: TIntegerField;
    cds_MovimentoNOMEFORNECEDOR: TStringField;
    cds_MovimentoCODFORNECEDOR: TIntegerField;
    cds_MovimentoTIPOTITULO: TSmallintField;
    cds_MovimentoDATA_SISTEMA: TSQLTimeStampField;
    cds_MovimentoNOMEUSUARIO: TStringField;
    cds_MovimentoOBS: TStringField;
    cds_MovimentoPLACA: TStringField;
    cds_MovimentoMARCA_MODELO: TStringField;
    cds_MovimentoCOD_VEICULO: TIntegerField;
    cds_MovimentoBAIXAMOVIMENTO: TSmallintField;
    cds_MovimentoCONTROLE: TStringField;
    cds_MovimentoCNPJ: TStringField;
    dsp_Movimento: TDataSetProvider;
    sds_Movimento: TSQLDataSet;
    sds_MovimentoCODMOVIMENTO: TIntegerField;
    sds_MovimentoDATAMOVIMENTO: TDateField;
    sds_MovimentoCODCLIENTE: TIntegerField;
    sds_MovimentoCODNATUREZA: TSmallintField;
    sds_MovimentoSTATUS: TSmallintField;
    sds_MovimentoCODUSUARIO: TSmallintField;
    sds_MovimentoNOMECLIENTE: TStringField;
    sds_MovimentoDESCNATUREZA: TStringField;
    sds_MovimentoALMOXARIFADO: TStringField;
    sds_MovimentoCODVENDEDOR: TSmallintField;
    sds_MovimentoCODALMOXARIFADO: TIntegerField;
    sds_MovimentoNOMEFORNECEDOR: TStringField;
    sds_MovimentoCODFORNECEDOR: TIntegerField;
    sds_MovimentoTIPOTITULO: TSmallintField;
    sds_MovimentoDATA_SISTEMA: TSQLTimeStampField;
    sds_MovimentoNOMEUSUARIO: TStringField;
    sds_MovimentoOBS: TStringField;
    sds_MovimentoPLACA: TStringField;
    sds_MovimentoMARCA_MODELO: TStringField;
    sds_MovimentoCOD_VEICULO: TIntegerField;
    sds_MovimentoBAIXAMOVIMENTO: TSmallintField;
    sds_MovimentoCONTROLE: TStringField;
    sds_MovimentoCNPJ: TStringField;
    DataSource1: TDataSource;
    ImageList1: TImageList;
    ImageList2: TImageList;
    ACBrNFe1: TACBrNFe;
    ACBrNFeDANFERave1: TACBrNFeDANFERave;
    MemoResp: TMemo;
    sClienteTELEFONE: TStringField;
    sClienteDDD: TStringField;
    sEmpresaNUMERO: TStringField;
    sTabIBGE: TSQLDataSet;
    sTabIBGENM_LOCALIDADE: TStringField;
    sTabIBGECD_IBGE: TStringField;
    sTabIBGENM_MUNICIPIO: TStringField;
    sTabIBGENM_TIPO_LOCALIDADE: TStringField;
    sTabIBGESQ_IBGE: TIntegerField;
    sTabIBGECD_UF: TStringField;
    edtNumSerie: TEdit;
    Label6: TLabel;
    sbtnGetCert: TSpeedButton;
    JvBitBtn2: TJvBitBtn;
    sProdutos: TSQLDataSet;
    sProdutosCODPRODUTO: TIntegerField;
    sProdutosFAMILIA: TStringField;
    sProdutosCATEGORIA: TStringField;
    sProdutosMARCA: TStringField;
    sProdutosUNIDADEMEDIDA: TStringField;
    sProdutosDATAULTIMACOMPRA: TDateField;
    sProdutosESTOQUEMAXIMO: TFloatField;
    sProdutosESTOQUEATUAL: TFloatField;
    sProdutosESTOQUEREPOSICAO: TFloatField;
    sProdutosESTOQUEMINIMO: TFloatField;
    sProdutosVALORUNITARIOATUAL: TFloatField;
    sProdutosVALORUNITARIOANTERIOR: TFloatField;
    sProdutosICMS: TFloatField;
    sProdutosCODALMOXARIFADO: TIntegerField;
    sProdutosIPI: TFloatField;
    sProdutosCLASSIFIC_FISCAL: TStringField;
    sProdutosCST: TStringField;
    sProdutosBASE_ICMS: TFloatField;
    sProdutosPRODUTO: TStringField;
    sProdutosPRECOMEDIO: TBCDField;
    sProdutosCOD_COMISSAO: TIntegerField;
    sProdutosMARGEM_LUCRO: TFloatField;
    sProdutosCOD_BARRA: TStringField;
    sProdutosVALOR_PRAZO: TFloatField;
    sProdutosTIPO: TStringField;
    sProdutosCONTA_DESPESA: TStringField;
    sProdutosCONTA_RECEITA: TStringField;
    sProdutosCONTA_ESTOQUE: TStringField;
    sProdutosRATEIO: TStringField;
    sProdutosCODPRO: TStringField;
    sProdutosQTDE_PCT: TFloatField;
    sProdutosPESO_QTDE: TFloatField;
    sProdutosDATACADASTRO: TSQLTimeStampField;
    sProdutosMARGEM: TFloatField;
    sProdutosPRO_COD: TStringField;
    sProdutosDATAGRAV: TDateField;
    sProdutosCODFORN: TStringField;
    sProdutosFOTOPRODUTO: TStringField;
    sProdutosLOTES: TStringField;
    sProdutosUSA: TStringField;
    sProdutosLOCALIZACAO: TStringField;
    sProdutosTIPOPRECOVENDA: TStringField;
    sProdutosVALORMINIMO: TFloatField;
    sProdutosVALORCOMISSAO: TFloatField;
    sProdutosGERADESCONTO: TStringField;
    sProdutosIMPRIMIR: TStringField;
    sProdutosORIGEM: TIntegerField;
    sdsItensNFVALOR_ICMS: TFloatField;
    sdsItensNFICMS_SUBST: TFloatField;
    sdsItensNFICMS_SUBSTD: TFloatField;
    cdsItensNFVALOR_ICMS: TFloatField;
    cdsItensNFICMS_SUBST: TFloatField;
    cdsItensNFICMS_SUBSTD: TFloatField;
    sCFOPUF: TStringField;
    sCFOPICMS: TFloatField;
    sCFOPREDUCAO: TFloatField;
    sCFOPIPI: TFloatField;
    sCFOPICMS_SUBSTRIB: TFloatField;
    sCFOPICMS_SUBSTRIB_IC: TFloatField;
    sCFOPICMS_SUBSTRIB_IND: TFloatField;
    sdsNFREDUZICMS: TFloatField;
    cdsNFREDUZICMS: TFloatField;
    sClienteCD_IBGE: TStringField;
    sEmpresaCCUSTO: TIntegerField;
    sEmpresaCD_IBGE: TStringField;
    ACBrNFeDANFEQR1: TACBrNFeDANFEQR;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure JvDBGrid1CellClick(Column: TColumn);
    procedure JvDBGrid1ColEnter(Sender: TObject);
    procedure JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure sbtnGetCertClick(Sender: TObject);
    {procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);}
  private

  public
    { Public declarations }
  end;

var
  fNFeletronica: TfNFeletronica;
  conta_local: string;

implementation

uses pcnNFe, ACBrNFeNotasFiscais, DateUtils, ACBrNFeUtil, UDm;

{$R *.dfm}

Function RemoveChar(Const Texto:String):String;
// Remove caracteres de uma string deixando apenas numeros
var
  I: integer;
  S: string;
begin
  S := '';
  for I := 1 To Length(Texto) Do
  begin
    if (Texto[I] in ['0'..'9']) then
    begin
     S := S + Copy(Texto, I, 1);
    end;
  end;
  result := S;
end;

procedure TfNFeletronica.BitBtn2Click(Sender: TObject);
begin
  //  SaveDialog1.Execute;
  //  Edit1.Text := SaveDialog1.FileName;
   if (cdsNF.Active) then
     cdsNF.Close;
   cdsNF.Params[0].AsDate := StrToDate(JvDateEdit1.Text);
   cdsNF.Params[1].AsDate := StrToDate(JvDateEdit2.Text);
   cdsNF.Params[2].Clear;
   cdsNF.Params[3].Clear;
   if (edSerie.Text <> '') then
     cdsNF.Params[2].AsString := edSerie.Text
   else
     cdsNF.Params[3].AsString := 'todasasseriesdenotaf';
   cdsNF.Open;


  if (sMenorData.Active) then
     sMenorData.Close;
   sMenorData.Params[0].AsDate := StrToDate(JvDateEdit1.Text);
   sMenorData.Params[1].AsDate := StrToDate(JvDateEdit2.Text);
   sMenorData.Params[2].Clear;
   sMenorData.Params[3].Clear;
   if (edSerie.Text <> '') then
     sMenorData.Params[2].AsString := edSerie.Text
   else
     sMenorData.Params[3].AsString := 'todasasseriesdenotaf';
   sMenorData.Open;

   if (sMaiorData.Active) then
     sMaiorData.Close;
   sMaiorData.Params[0].AsDate := StrToDate(JvDateEdit1.Text);
   sMaiorData.Params[1].AsDate := StrToDate(JvDateEdit2.Text);
   sMaiorData.Params[2].Clear;
   sMaiorData.Params[3].Clear;
   if (edSerie.Text <> '') then
     sMaiorData.Params[2].AsString := edSerie.Text
   else
     sMaiorData.Params[3].AsString := 'todasasseriesdenotaf';
   sMaiorData.Open;

   Edit2.Text := DateToStr(sMenorDataMENORDATA.Value);
   Edit3.Text := DateToStr(sMaiorDataMAIORDATA.Value);

   BitBtn1.Enabled := True;
   JvBitBtn1.Enabled := True;
end;

procedure TfNFeletronica.BitBtn1Click(Sender: TObject);
var
  NomArquivo, comp: string;
  dathor: TDateTime;
  BC, BCST : Variant;
  i: integer;
begin
   JvProgressBar1.Position := 0;
   JvProgressBar1.Max := 1000;
   BC := 0;
   BCST := 4;

   if (not cds_ccusto.Active) then
     cds_ccusto.Open;
   cds_ccusto.Locate('NOME', ComboBox1.Text,[loCaseInsensitive]);

   JvProgressBar1.Position := 10;
   //Seleciona Empresa de acordo com o CCusto selecionado
   if (sEmpresa.Active) then
     sEmpresa.Close;
   sEmpresa.Params[0].AsInteger := cds_ccustoCODIGO.AsInteger;
   sEmpresa.Open;

   if (sCliente.Active) then
     sCliente.Close;
   sCliente.Params[0].AsInteger := cdsNFCODCLIENTE.AsInteger;
   sCliente.Open;

   if (sCFOP.Active) then
     sCFOP.Close;
   sCFOP.Params[0].AsString := cdsNFCFOP.AsString;
   sCFOP.Params[1].AsString := sClienteUF.AsString;
   sCFOP.Open;

   if (cdsNFDTASAIDA.IsNull) then
     dathor := cdsNFDTAEMISSAO.AsDateTime
   else
     dathor := cdsNFDTASAIDA.AsDateTime;

   cdsNF.First;
   while not cdsNF.Eof do
   begin
      if (cdsNFSELECIONOU.AsString = 'S') then
      begin
          ACBrNFe1.NotasFiscais.Clear;

          with ACBrNFe1.NotasFiscais.Add.NFe do
          begin
            //infNFe.ID := 0                                  // Chave de acesso da NF-e precedida do literal NFe acrescentado a validação do formato 2.0
            Ide.cUF       := 35;                              // Codigo do UF do Emitente do documento fiscal
            Ide.cNF       := cdsNFNUMNF.AsInteger;
            Ide.natOp     := 'VENDA PRODUCAO DO ESTAB.';
            Ide.indPag    := ipVista;
            Ide.cMunFG    := 3554003;
            Ide.modelo    := 55;
            Ide.serie     := 2;
            Ide.nNF       := cdsNFNUMNF.AsInteger;
            Ide.dEmi      := cdsNFDTAEMISSAO.AsDateTime;
            Ide.dSaiEnt   := cdsNFDTASAIDA.AsDateTime;
            Ide.tpNF      := tnSaida;                         // 0 - Entrada // 1 - Saida
            //Ide.tpAmb     := tn2;                           // 1 - Produção // 2 Homologação
            Ide.verProc   := '1.0.0.0';

            if (sTabIBGE.Active) then
              sTabIBGE.Close;
            sTabIBGE.Params[0].AsString := sEmpresaCIDADE.AsString;
            sTabIBGE.Open;

            Emit.CNPJCPF           := RemoveChar(sEmpresaCNPJ_CPF.AsString);
            Emit.xNome             := sEmpresaRAZAO.AsString;
            Emit.xFant             := sEmpresaEMPRESA.AsString;
            Emit.EnderEmit.xLgr    := sEmpresaLOGRADOURO.AsString;
            Emit.EnderEmit.nro     := sEmpresaNUMERO.AsString;
            Emit.EnderEmit.xCpl    := sEmpresaOUTRAS_INFO.AsString;
            Emit.EnderEmit.xBairro := sEmpresaBAIRRO.AsString;
            Emit.EnderEmit.cMun    := StrToInt(RemoveChar(sEmpresaCD_IBGE.AsString));
            Emit.EnderEmit.xMun    := sEmpresaCIDADE.AsString;
            Emit.EnderEmit.UF      := sEmpresaUF.AsString;
            Emit.EnderEmit.CEP     := StrToInt(RemoveChar(sEmpresaCEP.AsString));
            Emit.enderEmit.cPais   := 1058;
            Emit.enderEmit.xPais   := 'BRASIL';
            Emit.EnderEmit.fone    := sEmpresaDDD.AsString + sEmpresaFONE.AsString;
            Emit.IE                := RemoveChar(sEmpresaIE_RG.AsString);


            Dest.CNPJCPF           := RemoveChar(sClienteCNPJ.AsString);
            Dest.xNome             := sClienteRAZAOSOCIAL.AsString;
            Dest.EnderDest.xLgr    := sClienteLOGRADOURO.AsString;
            Dest.EnderDest.nro     := sClienteNUMERO.AsString;
            Dest.EnderDest.xCpl    := sClienteCOMPLEMENTO.AsString;
            Dest.EnderDest.xBairro := sClienteBAIRRO.AsString;
            Dest.EnderDest.cMun    := StrToInt(RemoveChar(sClienteCD_IBGE.AsString));
            Dest.EnderDest.xMun    := sClienteCIDADE.AsString;
            Dest.EnderDest.UF      := sClienteUF.AsString;
            Dest.EnderDest.CEP     := StrToInt(RemoveChar(sClienteCEP.AsString));
            Dest.EnderDest.cPais   := 1058;
            Dest.EnderDest.xPais   := 'BRASIL';
            Dest.EnderDest.Fone    := sClienteDDD.AsString + sClienteTELEFONE.AsString;
            Dest.IE                := RemoveChar(sClienteINSCESTADUAL.AsString);

            JvProgressBar1.Position := JvProgressBar1.Position + 10;
            if (cdsItensNF.Active) then
              cdsItensNF.Close;
            cdsItensNF.Params[0].AsInteger := cdsNFCODVENDA.AsInteger;
            cdsItensNF.Open;
            i := 1;
            while not cdsItensNF.Eof do // Escrevo os itens
            begin
              JvProgressBar1.Position := JvProgressBar1.Position + 1;

              if (sProdutos.Active) then
                sProdutos.Close;
              sProdutos.Params[0].AsInteger := cdsItensNFCODPRODUTO.AsInteger;
              sProdutos.Open;

              // DADOS DOS PRODUTOS DA NOTA
              with Det.Add do
              begin
              Prod.nItem    := i;
              Prod.cProd    := IntToStr(cdsItensNFCODPRODUTO.AsInteger);
              Prod.xProd    := cdsItensNFDESCPRODUTO.AsString;
              Prod.CFOP     := cdsNFCFOP.AsString;
              Prod.uCom     := cdsItensNFUNIDADEMEDIDA.AsString;
              Prod.qCom     := sProdutosQTDE_PCT.AsFloat;
              Prod.vUnCom   := sProdutosVALORUNITARIOATUAL.AsFloat;
              Prod.vProd    := cdsItensNFPRECO.AsFloat;
              Prod.uTrib    := sProdutosUNIDADEMEDIDA.AsString;
              Prod.qTrib    := cdsItensNFQUANTIDADE.AsFloat;
              Prod.vUnTrib  := cdsItensNFPRECO.AsFloat;
              infAdProd     := '';

             // IMPOSTOS DA NOTA
                with Imposto do
                begin
                  with ICMS do
                  begin
                  comp := '000';
                  //ICMS 00 TRIBUTADO INTEGRALMENTE
                    if (cdsItensNFCST.AsString = comp) then
                    begin
                      orig := sProdutosORIGEM.AsVariant;                          //ORIGEM DO PRODUTO
                      CST := cdsItensNFCST.AsVariant;                             //CST DO PRODUTO
                      modBC := BC;                                                //MODO DE BASE DE CALCULO (0) POR %
                      vBC := cdsItensNFVLR_BASE.AsVariant;                        //VALOR DA BASE DE CALCULO
                      pICMS := sCFOPICMS.AsVariant;                               //ALIQUOTA DO ICMS
                      vICMS := cdsItensNFVALOR_ICMS.AsVariant;                    //VALOR DO ICMS
                    end;
                    //ICMS 10 TRIBUTADA E COM COBRANÇA DO ICMS POR SUBS.TRIBUTÁRIA
                    if (cdsItensNFCST.AsString = '010') then
                    begin
                      orig := sProdutosORIGEM.AsVariant;                          //ORIGEM DO PRODUTO
                      CST := cdsItensNFCST.AsVariant;                             //CST DO PRODUTO
                      modBC := BC;                                                //MODO DE BASE DE CALCULO (0) POR %
                      vBC := cdsItensNFVLR_BASE.AsVariant;                        //VALOR DA BASE DE CALCULO
                      pICMS := sCFOPICMS.AsVariant;                               //ALIQUOTA DO ICMS
                      vICMS := cdsItensNFVALOR_ICMS.AsVariant;                    //VALOR DO ICMS
                      modBCST := BCST;                                            //MODO DE BASE DE CALCULO SUBST. TRIBUTÁRIA(4) POR %
                      pMVAST := sCFOPICMS_SUBSTRIB_IND.AsVariant;                 //% MARGEM DE VALOR ADICIONADO DO ICMSST
                      pRedBCST := sCFOPICMS_SUBSTRIB_IC.AsVariant;                //ALIQUOTA DA REDUÇÃO DA BASE DE CALCULO DA SUBST. TRIBUTÁRIA
                      vBCST := cdsNFBASE_ICMS_SUBST.AsVariant;                    //VALOR DA BASE DE CALCULO DA SUBST. TRIBUTÁRIA
                      pICMSST := sCFOPICMS_SUBSTRIB.AsVariant;                    //ALIQUOTA DO ICMS DA SUBST. TRIBUTÁRIA
                      vICMSST := cdsItensNFICMS_SUBST.AsVariant;
                    end;
                    //ICMS 20 COM REDUÇÃO DE BASE DE CÁLCULO
                    if (cdsItensNFCST.AsString = '020') then
                    begin
                      orig := sProdutosORIGEM.AsVariant;                          //ORIGEM DO PRODUTO
                      CST := cdsItensNFCST.AsVariant;                             //CST DO PRODUTO
                      modBC := BC;                                                //MODO DE BASE DE CALCULO (0) POR %
                      vBC := cdsItensNFVLR_BASE.AsVariant;                        //VALOR DA BASE DE CALCULO
                      pRedBC := cdsNFREDUZICMS.AsVariant;                         //ALIQUOTA DA REDUÇÃO DA BASE DE CALCULO
                      pICMS := sCFOPICMS.AsVariant;                               //ALIQUOTA DO ICMS
                      vICMS := cdsItensNFVALOR_ICMS.AsVariant;                    //VALOR DO ICMS
                    end;
                    //ICMS 30 ISENTA OU NÃO TRIBUTADA E COM COBRANÇA DE ICMS POR SUBS.TRIBUTÁRIA
                    if (cdsItensNFCST.AsString = '030') then
                    begin
                      orig := sProdutosORIGEM.AsVariant;                          //ORIGEM DO PRODUTO
                      CST := cdsItensNFCST.AsVariant;                             //CST DO PRODUTO
                      modBCST := BCST;                                            //MODO DE BASE DE CALCULO SUBST. TRIBUTÁRIA(4) POR %
                      pMVAST := sCFOPICMS_SUBSTRIB_IND.AsVariant;                 //% MARGEM DE VALOR ADICIONADO DO ICMSST
                      pRedBCST := sCFOPICMS_SUBSTRIB_IC.AsVariant;                //ALIQUOTA DA REDUÇÃO DA BASE DE CALCULO DA SUBST. TRIBUTÁRIA
                      vBCST := cdsNFBASE_ICMS_SUBST.AsVariant;                    //VALOR DA BASE DE CALCULO DA SUBST. TRIBUTÁRIA
                      pICMSST := sCFOPICMS_SUBSTRIB.AsVariant;                    //ALIQUOTA DO ICMS DA SUBST. TRIBUTÁRIA
                      vICMSST := cdsItensNFICMS_SUBST.AsVariant;
                    end;
                    //ICMS 40 - ISENTA /41 NÃO TRIBUTADA /50 SUSPENSÃO
                    if ((cdsItensNFCST.AsString = '040') or (cdsItensNFCST.AsString = '041') or (cdsItensNFICMS.AsString = '050')) then
                    begin
                      orig := sProdutosORIGEM.AsVariant;                          //ORIGEM DO PRODUTO
                      vICMS := cdsNFVALOR_ICMS.AsVariant;
                    end;
                    //ICMS 51 DIFERIMENTO A EXIGÊNCIA DO PREENCHIMENTO DAS INFORMAÇÕES DO ICMS DIFERIDO FICA a CRITÉRIO DE CADA UF
                    if (cdsItensNFCST.AsString = '051') then
                    begin
                      orig := sProdutosORIGEM.AsVariant;                          //ORIGEM DO PRODUTO
                      CST := cdsItensNFCST.AsVariant;                             //CST DO PRODUTO
                      vBCST := cdsNFBASE_ICMS_SUBST.AsVariant;                    //VALOR DA BASE DE CALCULO DA SUBST. TRIBUTÁRIA
                      vICMSST := cdsItensNFICMS_SUBST.AsVariant;
                    end;
                    //ICMS 60 ICMS COBRADO ANTERIORMENTE POR SUBS.TRIBUTÁRIA
                    if (cdsItensNFCST.AsString = '060') then
                    begin
                      orig := sProdutosORIGEM.AsVariant;                          //ORIGEM DO PRODUTO
                      CST := cdsItensNFCST.AsVariant;                             //CST DO PRODUTO
                      vBCST := cdsNFBASE_ICMS_SUBST.AsVariant;                    //VALOR DA BASE DE CALCULO DA SUBST. TRIBUTÁRIA
                      vICMSST := cdsItensNFICMS_SUBST.AsVariant;
                    end;
                    //ICMS 70 COM REDUÇÃO DA BASE DE CALCULO E COBRANÇA DO ICMS POR SUBS.TRIB. ICMS POR SUBS.TRIB.
                    if (cdsItensNFCST.AsString = '070') then
                    begin
                      orig := sProdutosORIGEM.AsVariant;                          //ORIGEM DO PRODUTO
                      CST := cdsItensNFCST.AsVariant;                             //CST DO PRODUTO
                      modBC := BC;                                                //MODO DE BASE DE CALCULO (0) POR %
                      pRedBC := cdsNFREDUZICMS.AsVariant;                         //ALIQUOTA DA REDUÇÃO DA BASE DE CALCULO
                      vBC := cdsItensNFVLR_BASE.AsVariant;                        //VALOR DA BASE DE CALCULO
                      pICMS := sCFOPICMS.AsVariant;                               //ALIQUOTA DO ICMS
                      vICMS := cdsItensNFVALOR_ICMS.AsVariant;                    //VALOR DO ICMS
                      modBCST := BCST;                                            //MODO DE BASE DE CALCULO SUBST. TRIBUTÁRIA(4) POR %
                      pMVAST := sCFOPICMS_SUBSTRIB_IND.AsVariant;                 //% MARGEM DE VALOR ADICIONADO DO ICMSST
                      pRedBCST := sCFOPICMS_SUBSTRIB_IC.AsVariant;                //ALIQUOTA DA REDUÇÃO DA BASE DE CALCULO DA SUBST. TRIBUTÁRIA
                      vBCST := cdsNFBASE_ICMS_SUBST.AsVariant;                    //VALOR DA BASE DE CALCULO DA SUBST. TRIBUTÁRIA
                      pICMSST := sCFOPICMS_SUBSTRIB.AsVariant;                    //ALIQUOTA DO ICMS DA SUBST. TRIBUTÁRIA
                      vICMSST := cdsItensNFICMS_SUBST.AsVariant;
                    end;
                    //ICMS 90 OUTROS
                    if (cdsItensNFCST.AsString = '090') then
                    begin
                      orig := sProdutosORIGEM.AsVariant;                          //ORIGEM DO PRODUTO
                      CST := cdsItensNFCST.AsVariant;                             //CST DO PRODUTO
                      modBC := BC;                                                //MODO DE BASE DE CALCULO (0) POR %
                      pRedBC := cdsNFREDUZICMS.AsVariant;                         //ALIQUOTA DA REDUÇÃO DA BASE DE CALCULO
                      vBC := cdsItensNFVLR_BASE.AsVariant;                        //VALOR DA BASE DE CALCULO
                      pICMS := sCFOPICMS.AsVariant;                               //ALIQUOTA DO ICMS
                      vICMS := cdsItensNFVALOR_ICMS.AsVariant;                    //VALOR DO ICMS
                      modBCST := BCST;                                            //MODO DE BASE DE CALCULO SUBST. TRIBUTÁRIA(4) POR %
                      pMVAST := sCFOPICMS_SUBSTRIB_IND.AsVariant;                 //% MARGEM DE VALOR ADICIONADO DO ICMSST
                      pRedBCST := sCFOPICMS_SUBSTRIB_IC.AsVariant;                //ALIQUOTA DA REDUÇÃO DA BASE DE CALCULO DA SUBST. TRIBUTÁRIA
                      vBCST := cdsNFBASE_ICMS_SUBST.AsVariant;                    //VALOR DA BASE DE CALCULO DA SUBST. TRIBUTÁRIA
                      pICMSST := sCFOPICMS_SUBSTRIB.AsVariant;                    //ALIQUOTA DO ICMS DA SUBST. TRIBUTÁRIA
                      vICMSST := cdsItensNFICMS_SUBST.AsVariant;
                    end;
                  end;
                   //PARA PRODUTOS IMPORTARDOS
                   {with II Add
                   vBc :=                                                       // VALOR DA BASE DE CÁLCULO DO IMPOSTO DE IMPORTAÇÃO
                   vDespAdu :=                                                  // VALOR DAS DESPESAS ADUANEIRAS
                   vII :=                                                       // VALOR DO IMPOSTO DE IMPORTAÇÃO
                   vIOF :=}                                                     //VALOR DO IMPOSTO SOBRE OPERAÇÕES FINANCEIRAS
                end;
              end;
              i := i + 1;
              cdsItensNF.Next;
            end;

            //VALOR TORAL
            Total.ICMSTot.vBC   := cdsNFBASE_ICMS.AsVariant;
            Total.ICMSTot.vICMS   := cdsNFVALOR_ICMS.AsVariant;
            Total.ICMSTot.vBCST := cdsNFBASE_ICMS_SUBST.AsVariant;
            Total.ICMSTot.vST   := cdsNFVALOR_ICMS_SUBST.AsVariant;
            Total.ICMSTot.vProd := cdsNFVALOR_PRODUTO.AsVariant;
            Total.ICMSTot.vFrete := cdsNFVALOR_FRETE.AsVariant;
            Total.ICMSTot.vSeg := cdsNFVALOR_SEGURO.AsVariant;
            //Total.ICMSTot.vDesc   := 0;
            //Total.ICMSTot.vII := 0;
            Total.ICMSTot.vIPI := cdsNFVALOR_IPI.AsVariant;
            //Total.ICMSTot.vPIS := 0;
            //Total.ICMSTot.vCOFINS := 0;
            Total.ICMSTot.vOutro := cdsNFOUTRAS_DESP.AsVariant;
            Total.ICMSTot.vNF   := cdsNFVALOR_TOTAL_NOTA.AsVariant;

          end;
      end;
      cdsNF.Next;
   end;
   ACBrNFe1.NotasFiscais.Items[0].SaveToFile;
   MemoResp.Lines.LoadFromFile(ACBrNFe1.Configuracoes.Geral.PathSalvar+'\'+copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, (length(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID)-44)+1, 44)+'-NFe.xml');
   MessageDlg('Arquivo gerado com sucesso.', mtInformation, [mbOK], 0);

   ACBrNFe1.Enviar(0);
   ShowMessage(ACBrNFe1.WebServices.Retorno.Protocolo);
   ShowMessage(ACBrNFe1.WebServices.Retorno.Recibo);
end;

procedure TfNFeletronica.JvDBGrid1CellClick(Column: TColumn);
begin
  if Column.Field = cdsNFSELECIONOU then
  begin
     cdsNF.Edit;
     if cdsNFSELECIONOU.AsString = 'S' then
       cdsNFSELECIONOU.AsString := ''
     else
       cdsNFSELECIONOU.AsString := 'S';
  end;
end;

procedure TfNFeletronica.JvDBGrid1ColEnter(Sender: TObject);
begin
   if JvDBGrid1.SelectedField = cdsNFSELECIONOU then
     JvDBGrid1.Options := JvDBGrid1.Options - [dgEditing]
   else
      JvDBGrid1.Options := JvDBGrid1.Options + [dgEditing];
end;

procedure TfNFeletronica.JvDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  // Selecionou
  if Column.Field = cdsNFSELECIONOU then
   begin
       JvDBGrid1.Canvas.FillRect(Rect);
       ImageList2.Draw(JvDBGrid1.Canvas,Rect.Left+10,Rect.top, 1);
       if cdsNFSELECIONOU.AsString = 'S' then
         ImageList2.Draw(JvDBGrid1.Canvas,Rect.Left+10,Rect.top, 2)
       else
         ImageList2.Draw(JvDBGrid1.Canvas,Rect.Left+10,Rect.top, 0);
   end;
end;

procedure TfNFeletronica.BitBtn3Click(Sender: TObject);
begin
  cdsNF.DisableControls;
  cdsNF.First;
  while not cdsNF.Eof do
  begin
     cdsNF.Edit;
     cdsNFSELECIONOU.AsString := 'S';
     cdsNF.Post;
     cdsNF.Next;
  end;
  cdsNF.First;
  cdsNF.EnableControls;
end;

procedure TfNFeletronica.BitBtn4Click(Sender: TObject);
begin
  cdsNF.DisableControls;
  cdsNF.First;
  while not cdsNF.Eof do
  begin
     cdsNF.Edit;
     cdsNFSELECIONOU.AsString := '';
     cdsNF.Post;
     cdsNF.Next;
  end;
  cdsNF.First;
  cdsNF.EnableControls;
end;

procedure TfNFeletronica.FormCreate(Sender: TObject);
begin
    if dm.cds_parametro.Active then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'CENTRORECEITA';
    dm.cds_parametro.Open;
    conta_local := dm.cds_parametroDADOS.AsString;
    dm.cds_parametro.Close;
    if cds_ccusto.Active then
      cds_ccusto.Close;
    cds_ccusto.Params[0].AsString := conta_local;
    cds_ccusto.Open;
    // populo a combobox
    cds_ccusto.First;
    while not cds_ccusto.Eof do
    begin
      ComboBox1.Items.Add(cds_ccustoNOME.AsString);
      cds_ccusto.Next;
    end;
end;

procedure TfNFeletronica.JvBitBtn1Click(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Geral.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    ACBrNFe1.NotasFiscais.Valida;
    showmessage('Nota Fiscal Eletrônica Valida');
  end;
end;

procedure TfNFeletronica.sbtnGetCertClick(Sender: TObject);
begin
   {$IFNDEF ACBrNFeOpenSSL}
   edtNumSerie.Text := ACBrNFe1.Configuracoes.Certificados.SelecionarCertificado;
   {$ENDIF}
end;

end.
