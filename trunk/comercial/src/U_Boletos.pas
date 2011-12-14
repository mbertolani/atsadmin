unit U_Boletos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ACBrBoleto, ACBrBoletoFCQuickFr, ACBrBase,
  ACBrBoletoFCFortesFr, ExtCtrls, MMJPanel, Buttons, ACBrUtil, FMTBcd, DB,
  SqlExpr, uRel_CR1, U_AUTOPECAS, uVendas, DBClient, Provider, Grids,
  DBGrids;

type
  TF_Boletos = class(TForm)
    ACBrBoleto1: TACBrBoleto;
    ACBrBoletoFCFortes1: TACBrBoletoFCFortes;
    MMJPanel3: TMMJPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    cbb1: TComboBox;
    cbb2: TComboBox;
    cbb3: TComboBox;
    lbl3: TLabel;
    cbb4: TComboBox;
    lbl4: TLabel;
    MMJPanel1: TMMJPanel;
    lbl5: TLabel;
    MMJPanel2: TMMJPanel;
    edt1: TEdit;
    lbl6: TLabel;
    btn1: TBitBtn;
    edt2: TEdit;
    lbl7: TLabel;
    btn2: TBitBtn;
    btn3: TBitBtn;
    btn4: TBitBtn;
    s_banco: TSQLDataSet;
    s_bancoCODBANCO: TSmallintField;
    s_bancoBANCO: TStringField;
    s_bancoNOMEBANCO: TStringField;
    s_bancoCARTEIRA: TStringField;
    s_bancoCODIGO_CEDENTE: TStringField;
    s_bancoCODIGO_EMPRESA: TStringField;
    s_bancoCODIGO_AGENCIA: TStringField;
    s_bancoDIGITO_AGENCIA: TStringField;
    s_bancoNUMERO_CONTA: TStringField;
    s_bancoDIGITO_CONTA: TStringField;
    s_bancoCODIGO_PLANO: TIntegerField;
    s_bancoINSTRUCAO1: TStringField;
    s_bancoINSTRUCAO2: TStringField;
    s_bancoINSTRUCAO3: TStringField;
    s_bancoINSTRUCAO4: TStringField;
    s_bancoCEDENTE: TStringField;
    s_bancoNCONVENIO: TIntegerField;
    s_cr: TSQLDataSet;
    s_cliente: TSQLDataSet;
    s_clienteCODCLIENTE: TIntegerField;
    s_clienteNOMECLIENTE: TStringField;
    s_clienteRAZAOSOCIAL: TStringField;
    s_clienteCONTATO: TStringField;
    s_clienteTIPOFIRMA: TSmallintField;
    s_clienteCPF: TStringField;
    s_clienteCNPJ: TStringField;
    s_clienteINSCESTADUAL: TStringField;
    s_clienteRG: TStringField;
    s_clienteSEGMENTO: TSmallintField;
    s_clienteREGIAO: TSmallintField;
    s_clienteLIMITECREDITO: TFloatField;
    s_clienteDATACADASTRO: TDateField;
    s_clienteCODUSUARIO: TIntegerField;
    s_clienteSTATUS: TSmallintField;
    s_clienteHOMEPAGE: TStringField;
    s_clientePRAZORECEBIMENTO: TSmallintField;
    s_clientePRAZOENTREGA: TSmallintField;
    s_clienteCODBANCO: TSmallintField;
    s_clienteBASE_ICMS: TSmallintField;
    s_clienteDATANASC: TDateField;
    s_clienteCONTA_CLIENTE: TStringField;
    s_clienteOBS: TStringField;
    s_clienteTEM_IE: TStringField;
    s_clienteDATARESC: TDateField;
    s_clienteNOMEMAE: TStringField;
    s_clienteSEXO: TStringField;
    s_clienteFORMA_CORRESPOND: TStringField;
    s_clienteGRUPO_CLIENTE: TStringField;
    s_clienteCODINCLUCANC: TIntegerField;
    s_clienteEXIST_COBERT: TStringField;
    s_clienteEXISTCOPART: TStringField;
    s_clienteDATAREINC: TDateField;
    s_clienteGERAAVISO: TStringField;
    s_clienteGERAENV: TStringField;
    s_clienteGERABOL: TStringField;
    s_clienteEMVIAGEM: TStringField;
    s_clienteDTAALTERA: TDateField;
    s_clienteSERIELETRA: TStringField;
    s_clienteSERIE: TStringField;
    s_clienteRA: TStringField;
    s_clienteCURSO: TStringField;
    s_clienteIP: TStringField;
    s_clienteN_CONTRATO: TStringField;
    s_clienteMAC: TStringField;
    s_clienteMARCA: TStringField;
    s_clienteBANDA_UPLOAD: TStringField;
    s_clienteBANDA_DOWLOAD: TStringField;
    s_clienteTORRE_CONECCAO: TStringField;
    s_clienteCOD_FAIXA: TIntegerField;
    s_clienteDESCONTO: TFloatField;
    s_clienteMENSALIDADE: TFloatField;
    s_clienteANUIDADE: TFloatField;
    s_clientePARCELA: TIntegerField;
    s_clientePARCELAGERADAS: TIntegerField;
    s_clienteNUMERO: TIntegerField;
    s_clienteDATANASCIMENTO: TSQLTimeStampField;
    s_clienteANOLETIVO: TStringField;
    s_clienteSITUACAOESCOLAR: TStringField;
    s_clienteRGMAE: TStringField;
    s_clienteCPFMAE: TStringField;
    s_clientePAI: TStringField;
    s_clienteRGPAI: TStringField;
    s_clienteCPFPAI: TStringField;
    s_clienteLANCADOCLASSE: TIntegerField;
    s_clienteTRANSPORTE: TStringField;
    s_clienteCIDADENASC: TStringField;
    s_clienteUFNASC: TStringField;
    s_clienteNACIONALIDADE: TStringField;
    s_clienteCERTIDAONASCNUM: TStringField;
    s_clienteLIVRONASC: TStringField;
    s_clienteFLLIVRONASC: TStringField;
    s_clienteLOCALTRABPAI: TStringField;
    s_clienteLOCALTRABMAE: TStringField;
    s_clienteTELTRABPAI: TStringField;
    s_clienteTELTRABMAE: TStringField;
    s_clienteINFONECESSARIAS: TStringField;
    s_clienteCARTEIRAVACINACAO: TStringField;
    s_clienteRAPRODESP: TStringField;
    s_clienteLOCALTRABALUNO: TStringField;
    s_clienteTELTRABALUNO: TStringField;
    s_clienteRAPROD: TStringField;
    s_clienteCERT_NAS_COMARCA: TStringField;
    s_clienteCERT_NAS_UF: TStringField;
    s_clienteCERT_NAS_MUNICIPIO: TStringField;
    s_clienteCERT_NAS_DISTRITO: TStringField;
    s_clienteCERT_NAS_SUBDISTRITO: TStringField;
    s_clienteDIVERSO1: TStringField;
    s_clienteDIVERSO2: TStringField;
    s_clienteDATAEMISSAORG: TDateField;
    s_clienteESTADORG: TStringField;
    s_clienteCOMUNICAALUNO: TStringField;
    s_clienteFONEMAE: TStringField;
    s_clienteCELULARMAE: TStringField;
    s_clienteCOMUNICAMAE: TStringField;
    s_clienteFONEPAI: TStringField;
    s_clienteCELULARPAI: TStringField;
    s_clienteCOMUNICAPAI: TStringField;
    s_clienteVALOR_MATRICULA: TFloatField;
    s_clienteDATATRANSF: TDateField;
    s_clienteCOR_RACA: TStringField;
    s_clientePERIODO: TStringField;
    s_clienteFOTO: TStringField;
    s_clienteDATA_MATRICULA: TSQLTimeStampField;
    s_clienteCODRESPONSAVEL: TIntegerField;
    s_clienteID_COB: TIntegerField;
    s_clienteCOD_TRANPORTADORA: TIntegerField;
    s_clienteBLOQUEIO: TStringField;
    s_clienteCFOP: TStringField;
    s_clienteLOGRADOURO: TStringField;
    s_clienteBAIRRO: TStringField;
    s_clienteCOMPLEMENTO: TStringField;
    s_clienteCIDADE: TStringField;
    s_clienteUF: TStringField;
    s_clienteCEP: TStringField;
    s_clienteNUMERO_1: TStringField;
    s_empresa: TSQLDataSet;
    s_empresaEMPRESA: TStringField;
    s_empresaRAZAO: TStringField;
    s_empresaCNPJ_CPF: TStringField;
    s_empresaENDERECO: TStringField;
    s_empresaLOGRADOURO: TStringField;
    s_empresaBAIRRO: TStringField;
    s_empresaCIDADE: TStringField;
    s_empresaUF: TStringField;
    s_empresaCEP: TStringField;
    s_empresaDDD: TStringField;
    s_empresaFONE: TStringField;
    s_empresaFONE_1: TStringField;
    s_empresaFONE_2: TStringField;
    s_empresaFAX: TStringField;
    s_empresaE_MAIL: TStringField;
    s_empresaWEB: TStringField;
    s_empresaLOGOTIPO: TGraphicField;
    s_empresaCODIGO: TIntegerField;
    s_empresaTIPO: TStringField;
    s_empresaIE_RG: TStringField;
    s_empresaSLOGAN: TStringField;
    s_empresaOUTRAS_INFO: TStringField;
    s_empresaCODIGO_CONTA: TIntegerField;
    s_empresaDIVERSOS1: TStringField;
    s_empresaDIVERSOS2: TStringField;
    s_empresaDIVERSOS3: TStringField;
    s_empresaANOLETIVO: TIntegerField;
    s_empresaMEDIA_ESCOLA: TFloatField;
    s_empresaPORTA: TIntegerField;
    s_empresaSMTP: TStringField;
    s_empresaSENHA: TStringField;
    s_empresaCCUSTO: TIntegerField;
    s_empresaNUMERO: TStringField;
    s_empresaCD_IBGE: TStringField;
    s_empresaCRT: TIntegerField;
    edt3: TEdit;
    lbl10: TLabel;
    SQLDataSet1: TSQLDataSet;
    btn5: TBitBtn;
    s_bancoESPECIEDOC: TStringField;
    s_bancoACEITE: TStringField;
    s_bancoCONVENIO: TStringField;
    s_bancoLOCALPGTO: TStringField;
    p_cr: TDataSetProvider;
    ds_cr: TClientDataSet;
    cbb5: TComboBox;
    lbl8: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    s_crCODRECEBIMENTO: TIntegerField;
    s_crTITULO: TStringField;
    s_crEMISSAO: TDateField;
    s_crCODCLIENTE: TIntegerField;
    s_crDATAVENCIMENTO: TDateField;
    s_crDATARECEBIMENTO: TDateField;
    s_crCAIXA: TSmallintField;
    s_crCONTADEBITO: TIntegerField;
    s_crCONTACREDITO: TIntegerField;
    s_crSTATUS: TStringField;
    s_crVIA: TStringField;
    s_crFORMARECEBIMENTO: TStringField;
    s_crDATABAIXA: TDateField;
    s_crHISTORICO: TStringField;
    s_crCODVENDA: TIntegerField;
    s_crCODALMOXARIFADO: TSmallintField;
    s_crCODVENDEDOR: TSmallintField;
    s_crCODUSUARIO: TSmallintField;
    s_crN_DOCUMENTO: TStringField;
    s_crDATASISTEMA: TSQLTimeStampField;
    s_crVALORRECEBIDO: TFloatField;
    s_crJUROS: TFloatField;
    s_crDESCONTO: TFloatField;
    s_crPERDA: TFloatField;
    s_crTROCA: TFloatField;
    s_crFUNRURAL: TFloatField;
    s_crVALOR_PRIM_VIA: TFloatField;
    s_crVALOR_RESTO: TFloatField;
    s_crVALORTITULO: TFloatField;
    s_crOUTRO_CREDITO: TFloatField;
    s_crOUTRO_DEBITO: TFloatField;
    s_crPARCELAS: TIntegerField;
    s_crDUP_REC_NF: TStringField;
    s_crNF: TIntegerField;
    s_crDP: TIntegerField;
    s_crBL: TIntegerField;
    s_crCODORIGEM: TIntegerField;
    s_crCODIGO_DE_BARRAS: TStringField;
    s_crIMAGE_COD_BARRAS: TGraphicField;
    s_crDV: TStringField;
    s_crNOMEARQUIVORETORNO: TStringField;
    s_crDATACONSOLIDA: TDateField;
    s_crBANCO: TStringField;
    s_crAGENCIA: TStringField;
    s_crCONTA: TStringField;
    s_crSITUACAO: TIntegerField;
    s_crSELECIONOU: TStringField;
    s_crDESCONTADO: TStringField;
    s_crSITUACAOCHEQUE: TStringField;
    s_crGERARQREM: TIntegerField;
    s_crDATAGERARQREM: TDateField;
    s_crVALST: TFloatField;
    s_crVALOR_RESTO_SST: TFloatField;
    ds_crCODRECEBIMENTO: TIntegerField;
    ds_crTITULO: TStringField;
    ds_crEMISSAO: TDateField;
    ds_crCODCLIENTE: TIntegerField;
    ds_crDATAVENCIMENTO: TDateField;
    ds_crDATARECEBIMENTO: TDateField;
    ds_crCAIXA: TSmallintField;
    ds_crCONTADEBITO: TIntegerField;
    ds_crCONTACREDITO: TIntegerField;
    ds_crSTATUS: TStringField;
    ds_crVIA: TStringField;
    ds_crFORMARECEBIMENTO: TStringField;
    ds_crDATABAIXA: TDateField;
    ds_crHISTORICO: TStringField;
    ds_crCODVENDA: TIntegerField;
    ds_crCODALMOXARIFADO: TSmallintField;
    ds_crCODVENDEDOR: TSmallintField;
    ds_crCODUSUARIO: TSmallintField;
    ds_crN_DOCUMENTO: TStringField;
    ds_crDATASISTEMA: TSQLTimeStampField;
    ds_crVALORRECEBIDO: TFloatField;
    ds_crJUROS: TFloatField;
    ds_crDESCONTO: TFloatField;
    ds_crPERDA: TFloatField;
    ds_crTROCA: TFloatField;
    ds_crFUNRURAL: TFloatField;
    ds_crVALOR_PRIM_VIA: TFloatField;
    ds_crVALOR_RESTO: TFloatField;
    ds_crVALORTITULO: TFloatField;
    ds_crOUTRO_CREDITO: TFloatField;
    ds_crOUTRO_DEBITO: TFloatField;
    ds_crPARCELAS: TIntegerField;
    ds_crDUP_REC_NF: TStringField;
    ds_crNF: TIntegerField;
    ds_crDP: TIntegerField;
    ds_crBL: TIntegerField;
    ds_crCODORIGEM: TIntegerField;
    ds_crCODIGO_DE_BARRAS: TStringField;
    ds_crIMAGE_COD_BARRAS: TGraphicField;
    ds_crDV: TStringField;
    ds_crNOMEARQUIVORETORNO: TStringField;
    ds_crDATACONSOLIDA: TDateField;
    ds_crBANCO: TStringField;
    ds_crAGENCIA: TStringField;
    ds_crCONTA: TStringField;
    ds_crSITUACAO: TIntegerField;
    ds_crSELECIONOU: TStringField;
    ds_crDESCONTADO: TStringField;
    ds_crSITUACAOCHEQUE: TStringField;
    ds_crGERARQREM: TIntegerField;
    ds_crDATAGERARQREM: TDateField;
    ds_crVALST: TFloatField;
    ds_crVALOR_RESTO_SST: TFloatField;
    DataSource1: TDataSource;
    s_bancoN_BANCO: TStringField;
    s_bancoDIGITOBANCO: TIntegerField;
    procedure btn2Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    varLocal : String;
    ID_VENDA, ID_RECEBIMENTO : Integer;
    { Public declarations }
    procedure BANCO_SELECIONADO;    
    procedure CRIA_BOLETO_MEMORIA;
  end;

var
   F_Boletos: TF_Boletos;
   Titulo    : TACBrTitulo;
   Cedente_Agencia : String;
   Cedente_AgenciaDigito : String;
   Cedente_CodigoCedente : String;
   Cedente_Conta   : String;
   Cedente_ContaDigito : String;
   Cedente_Nome    : String;
   TotalParcelas   : Integer;
   Parcela         : Integer;
   Titulo_LocalPagamento  : String;
   Vencimento      : TDate;
   DataDocumento   : TDate;
   NumeroDocumento : String;
   EspecieDoc      : String;
   Aceite          : String;
   DataProcessamento : TDate;
   varNossoNumero     : Integer;
   Carteira        : String;
   ValorDocumento  : Double;
   NomeSacado      : String;
   CNPJCPF         : String;
   Logradouro      : String;
   Numero          : String;
   Bairro          : String;
   Cidade          : String;
   UF              : String;
   CEP             : String;
   ValorAbatimento : Double;
   DataAbatimento  : TDate;
   Mensagem        : String;
   form_ativo      : string;
   dia, mes,ano    : word;

implementation

uses UDm, ufcr;

{$R *.dfm}

{ TF_Boletos }


{ TF_Boletos }

Function RemoveChar(Const Texto:String):String;
//
// Remove caracteres de uma string deixando apenas numeros
//
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

procedure TF_Boletos.CRIA_BOLETO_MEMORIA;
var
  numero_ano, vartitulo : string;
begin
   DecodeDate(now, ano, mes, dia);
   numero_ano := copy(IntToStr(ano),3,2);
   ACBrBoleto1.Cedente.Convenio := s_bancoCONVENIO.AsString;
   ACBrBoleto1.Cedente.Agencia := s_bancoCODIGO_AGENCIA.AsString;
   ACBrBoleto1.Cedente.AgenciaDigito := s_bancoDIGITO_AGENCIA.AsString;
   ACBrBoleto1.Cedente.CodigoCedente := s_bancoNUMERO_CONTA.AsString;
   ACBrBoleto1.Cedente.Conta := s_bancoNUMERO_CONTA.AsString;
   ACBrBoleto1.Cedente.ContaDigito := s_bancoDIGITO_CONTA.AsString;
   ACBrBoleto1.Cedente.Nome := s_empresaRAZAO.AsString;

   if (cbb4.Text = 'Cliente Emite') then
     ACBrBoleto1.Cedente.ResponEmissao := tbCliEmite
   else
     ACBrBoleto1.Cedente.ResponEmissao := tbBancoEmite;

   ACBrBoleto1.Cedente.TipoInscricao := pJuridica;
   ACBrBoleto1.Cedente.CNPJCPF := s_empresaCNPJ_CPF.AsString;

      //I := 1;
      ds_cr.First;
      While not ds_cr.Eof do
      begin
           Titulo:= ACBrBoleto1.CriarTituloNaLista;
           with Titulo do
           begin
              if (s_cliente.Active) then
                s_cliente.Close;
              s_cliente.Params[0].AsInteger := ds_crCODCLIENTE.AsInteger;
              s_cliente.Open;
              Titulo.TotalParcelas := ds_cr.RecordCount; //TotalParcelas;
              Titulo.Parcela := ds_cr.RecNo; //Parcela; //I;
              Titulo.LocalPagamento := s_bancoLOCALPGTO.AsString;
              Titulo.Vencimento :=  ds_crDATAVENCIMENTO.AsDateTime;
              Titulo.DataDocumento     := ds_crEMISSAO.AsDateTime; //EncodeDate(2010,04,10);

              varNossoNumero := StrToInt(RemoveChar(ds_crTITULO.AsString));
              vartitulo := IntToStr(varNossoNumero) + '-' + RemoveChar(ds_crVIA.AsString);
              //Titulo.NumeroDocumento   := padR(vartitulo,6,'0');

              Titulo.EspecieDoc        := s_bancoESPECIEDOC.AsString; //EspecieDoc;
              if (s_bancoACEITE.AsString = 'S') then
                Titulo.Aceite            := atSim
              else
                Titulo.Aceite            := atNao;

              Titulo.DataProcessamento := Now;
              varNossoNumero := StrToInt(RemoveChar(vartitulo));
              //vartitulo := vartitulo + '-' + RemoveChar(ds_crVIA.AsString);
              Titulo.NumeroDocumento   := padR(vartitulo,8,'0');

              case StrToInt(s_bancoN_BANCO.AsString) of
                001: Titulo.NossoNumero := IntToStrZero(varNossoNumero,10);//  001 - Banco do Brasil
                104: Titulo.NossoNumero := IntToStrZero(varNossoNumero,11);// 104 - Caixa Economica
                237: Titulo.NossoNumero := IntToStrZero(varNossoNumero,10);// 237 - Banco Bradesco
                275: Titulo.NossoNumero := IntToStrZero(varNossoNumero,11);// 275 - Banco Real
                341: Titulo.NossoNumero := IntToStrZero(varNossoNumero,8);// 341 - Banco Itau
                399: Titulo.NossoNumero := IntToStrZero(varNossoNumero,10);// 399 - Banco HSBC
                409: Titulo.NossoNumero := IntToStrZero(varNossoNumero,10);// 409 - Banco Unicanco
                748: Titulo.NossoNumero := IntToStrZero(varNossoNumero,6);// 748 - Banco Sicredi
                353: Titulo.NossoNumero := IntToStrZero(varNossoNumero,10);// 353 - SANTANDER
              end;

                // DADOS DO BANCO
                with ACBrBoleto1.Banco do
                begin
                   case StrToInt(s_bancoN_BANCO.AsString) of
                      237: TipoCobranca := cobBradesco;
                      001: TipoCobranca := cobBancoDoBrasil;
                      341: TipoCobranca := cobItau;
                      748: TipoCobranca := cobSicred;
                   else
                      TipoCobranca := cobNenhum;
                   end;
                end;

              if (s_bancoN_BANCO.AsString = '001') then
                Titulo.LocalPagamento :=  'PAGÁVEL EM QUALQUER BANCO ATÉ O VENCIMENTO';

              if ((s_bancoN_BANCO.AsString = '748')) then
              begin
                 ACBrBoleto1.Cedente.AgenciaDigito := padR(s_bancoDIGITO_AGENCIA.AsString, 2, '0');
                 if (cbb4.Text = 'Cliente Emite') then
                    ACBrBoleto1.Cedente.Modalidade := '3';
                 Titulo.NossoNumero := numero_ano + '2' + IntToStrZero(varNossoNumero,5);
                    //Titulo.Carteira := '1';
              end;
              Titulo.Carteira  := s_bancoCARTEIRA.AsString;;
              Titulo.ValorDocumento    := ds_crVALOR_RESTO.AsFloat; //ValorDocumento;
              Titulo.Sacado.NomeSacado := s_clienteNOMECLIENTE.AsString; // NomeSacado;
              if (s_clienteTIPOFIRMA.AsInteger = 0) then
                 Titulo.Sacado.Pessoa := pFisica
              else
                 Titulo.Sacado.Pessoa := pJuridica;
              Titulo.Sacado.CNPJCPF    := s_clienteCNPJ.AsString; //CNPJCPF;
              Titulo.Sacado.Logradouro := s_clienteLOGRADOURO.AsString; //Logradouro;
              Titulo.Sacado.Numero     := s_clienteNUMERO_1.AsString; //Numero;
              Titulo.Sacado.Bairro     := s_clienteBAIRRO.AsString; //Bairro;
              Titulo.Sacado.Cidade     := s_clienteCIDADE.AsString; //Cidade;
              Titulo.Sacado.UF         := s_clienteUF.AsString; //UF;
              Titulo.Sacado.CEP        := s_clienteCEP.AsString; //CEP;
              Titulo.ValorAbatimento   := 0; //ValorAbatimento;
              Titulo.DataAbatimento    := ds_crDATAVENCIMENTO.AsDateTime;// - 5;
              Titulo.Mensagem.Text  := s_bancoINSTRUCAO1.AsString;
              Titulo.Mensagem.Text  := Titulo.Mensagem.Text + s_bancoINSTRUCAO2.AsString;
              Titulo.Mensagem.Text  := Titulo.Mensagem.Text + s_bancoINSTRUCAO3.AsString;
              Titulo.Mensagem.Text  := Titulo.Mensagem.Text + s_bancoINSTRUCAO4.AsString;
              //ACBrBoleto1.AdicionarMensagensPadroes(Titulo,Mensagem);
           end;
           ds_cr.Next;
      end;

end;

procedure TF_Boletos.btn2Click(Sender: TObject);
begin
   ACBrBoleto1.ListadeBoletos.Clear;
   ACBrBoleto1.ACBrBoletoFC.DirLogo := edt2.Text;
   ACBrBoleto1.DirArqRemessa := edt1.Text;
   ACBrBoleto1.DirArqRetorno := edt3.Text;

   if (not s_empresa.Active) then
     s_empresa.Open;

  if (cbb2.Text = 'Carnê') then
    ACBrBoleto1.ACBrBoletoFC.LayOut := lCarne;
  if (cbb2.Text = 'Boleto') then
    ACBrBoleto1.ACBrBoletoFC.LayOut := lPadrao;
  if (cbb2.Text = 'Fatura') then
    ACBrBoleto1.ACBrBoletoFC.LayOut := lFatura;

  if (cbb5.ItemIndex = 0) then
     ACBrBoleto1.ComprovanteEntrega := True
  else
     ACBrBoleto1.ComprovanteEntrega := False;

  BANCO_SELECIONADO;
  CRIA_BOLETO_MEMORIA;
  ACBrBoleto1.Imprimir;

   if (s_empresa.Active) then
     s_empresa.Close;
   if (s_banco.Active) then
     s_banco.Close;
   s_banco.Params[0].Clear;
end;

procedure TF_Boletos.btn4Click(Sender: TObject);
begin
  close;
end;

procedure TF_Boletos.BANCO_SELECIONADO;
var
  bancosel : string;
  id_banco : integer;
begin
  if (s_banco.Active) then
     s_banco.Close;
  s_banco.Params[0].Clear;
  id_banco := 0;
  if (DM.cdsBanco.Active) then
      DM.cdsBanco.Close;
  DM.cdsBanco.Open;
  while not DM.cdsBanco.Eof do
  begin
    bancosel := DM.cdsBancoN_BANCO.AsString + '-' + DM.cdsBancoBANCO.AsString + '  '  + DM.cdsBancoCARTEIRA.AsString;
    if (bancosel = cbb1.Text) then
    begin
       id_banco := DM.cdsBancoCODBANCO.AsInteger;
    end;
    DM.cdsBanco.Next;
  end;
  DM.cdsBanco.Close;

  if (id_banco = 0) then
  begin
    showmessage('Banco não Localizado/Cadastrado');
    exit;
  end;

  if (s_banco.Active) then
     s_banco.Close;
  s_banco.Params[0].AsInteger := id_banco;
  s_banco.Open;
  if (s_banco.IsEmpty) then
  begin
    showmessage('Banco não cadastrado');
    exit;
  end;

  ACBrBoleto1.Banco.Numero := StrToInt(s_bancoN_BANCO.AsString);
  ACBrBoleto1.Banco.Digito := s_bancoDIGITOBANCO.AsInteger;
  ACBrBoleto1.Banco.Nome := s_bancoNOMEBANCO.AsString;
{
    //Cedente
    if (s_banco.Active) then
      s_banco.Close;
    s_banco.Params[0].AsString := '001';
    s_banco.Open;
  // Banco
  if (cbb1.ItemIndex = 0) then   // 0 = 001 - Banco do Brasil
  begin
    ACBrBoleto1.Banco.Numero := 001;
    ACBrBoleto1.Banco.Digito := 9;
    ACBrBoleto1.Banco.Nome := 'Banco Brasil';
    //Cedente
    if (s_banco.Active) then
      s_banco.Close;
    s_banco.Params[0].AsString := '001';
    s_banco.Open;
    if (s_banco.IsEmpty) then
    begin
      showmessage('Banco não cadastrado');
      exit;
    end;
  end;

  if (cbb1.ItemIndex = 1) then   // 1 = 104 - Caixa Economica
  begin
    ACBrBoleto1.Banco.Numero := 104;
    ACBrBoleto1.Banco.Digito := 9;
    ACBrBoleto1.Banco.Nome := 'Caixa Econômica Federal';
    if (s_banco.Active) then
      s_banco.Close;
    s_banco.Params[0].AsString := '104';
    s_banco.Open;
    if (s_banco.IsEmpty) then
    begin
      showmessage('Banco não cadastrado');
      exit;
    end;
  end;

  if (cbb1.ItemIndex = 2) then   // 2 = 237 - Banco Bradesco
  begin
    // Banco
    ACBrBoleto1.Banco.Numero := 237;
    ACBrBoleto1.Banco.Digito := 2;
    ACBrBoleto1.Banco.Nome := 'Bradesco';
    //Cedente
    if (s_banco.Active) then
      s_banco.Close;
    s_banco.Params[0].AsString := '237';
    s_banco.Open;
    if (s_banco.IsEmpty) then
    begin
      showmessage('Banco não cadastrado');
      exit;
    end;
  end;

  if (cbb1.ItemIndex = 3) then   // 3 = 275 - Banco Real
  begin
    ACBrBoleto1.Banco.Numero := 275;
    ACBrBoleto1.Banco.Digito := 0;
    ACBrBoleto1.Banco.Nome := 'Banco Real';
    //Cedente
    if (s_banco.Active) then
      s_banco.Close;
    s_banco.Params[0].AsString := '275';
    s_banco.Open;
    if (s_banco.IsEmpty) then
    begin
      showmessage('Banco não cadastrado');
      exit;
    end;
  end;

  if (cbb1.ItemIndex = 4) then   // 4 = 341 - Banco Itau
  begin
    // Banco
    ACBrBoleto1.Banco.Numero := 341;
    ACBrBoleto1.Banco.Digito := 7;
    ACBrBoleto1.Banco.Nome := 'Banco Itau';
    //Cedente
    if (s_banco.Active) then
      s_banco.Close;
    s_banco.Params[0].AsString := '341';
    s_banco.Open;
    if (s_banco.IsEmpty) then
    begin
      showmessage('Banco não cadastrado');
      exit;
    end;
  end;

  if (cbb1.ItemIndex = 5) then   // 5 = 399 - Banco HSBC
  begin
    // Banco
    ACBrBoleto1.Banco.Numero := 399;
    ACBrBoleto1.Banco.Digito := 0;
    ACBrBoleto1.Banco.Nome := 'Banco HSBC';
    //Cedente
    if (s_banco.Active) then
      s_banco.Close;
    s_banco.Params[0].AsString := '399';
    s_banco.Open;
    if (s_banco.IsEmpty) then
    begin
      showmessage('Banco não cadastrado');
      exit;
    end;
  end;

  if (cbb1.ItemIndex = 6) then   // 6 = 409 - Banco Unicanco
  begin
    // Banco
    ACBrBoleto1.Banco.Numero := 409;
    ACBrBoleto1.Banco.Digito := 0;
    ACBrBoleto1.Banco.Nome := 'Banco Unicanco';
    //Cedente
    if (s_banco.Active) then
      s_banco.Close;
    s_banco.Params[0].AsString := '409';
    s_banco.Open;
    if (s_banco.IsEmpty) then
    begin
      showmessage('Banco não cadastrado');
      exit;
    end;
  end;

  if (cbb1.ItemIndex = 7) then   // 7 = 748 - Banco Sicredi
  begin
    // Banco
    ACBrBoleto1.Banco.Numero := 748;
    ACBrBoleto1.Banco.Digito := 10;
    ACBrBoleto1.Banco.Nome := 'Sicredi';
    //Cedente
    if (s_banco.Active) then
      s_banco.Close;
    s_banco.Params[0].AsString := '748';
    s_banco.Open;
    if (s_banco.IsEmpty) then
    begin
      showmessage('Banco não cadastrado');
      exit;
    end;
  end;

  if (cbb1.ItemIndex = 8) then   // 8 = 353 - Banco Santander
  begin
    // Banco
    ACBrBoleto1.Banco.Numero := 353;
    ACBrBoleto1.Banco.Digito := 7;
    ACBrBoleto1.Banco.Nome := 'Santander';
    //Cedente
    if (s_banco.Active) then
      s_banco.Close;
    s_banco.Params[0].AsString := '353';
    s_banco.Open;
    if (s_banco.IsEmpty) then
    begin
      showmessage('Banco não cadastrado');
      exit;
    end;
  end;
  }
end;

procedure TF_Boletos.FormShow(Sender: TObject);
var
 dia, mes, ano : Word;
begin
  edt2.Text := ExtractFilePath(Application.ExeName) + 'LogoBanco';
  DecodeDate(Now,ano,mes,dia);
  Edit1.Text := 'Remessa_' + IntToStr(dia) + IntToStr(mes) + IntToStr(ano);
  if (not DM.cdsBanco.Active) then
      DM.cdsBanco.Open;
   while not DM.cdsBanco.Eof do
   begin
      cbb1.Items.Add(DM.cdsBancoN_BANCO.AsString + '-' + DM.cdsBancoBANCO.AsString + '  '  + DM.cdsBancoCARTEIRA.AsString);
      DM.cdsBanco.Next;
   end;
  {  if (ID_VENDA > 0) then
  begin
     if (ds_cr.Active) then
        ds_cr.Close;
     ds_cr.Params[1].Clear;
     ds_cr.Params[0].AsInteger := ID_VENDA;
     ds_cr.Open;
  end;
  }
end;

procedure TF_Boletos.btn3Click(Sender: TObject);
begin
   if (not s_empresa.Active) then
     s_empresa.Open;
   if (not s_banco.Active) then
     s_banco.Open;
  if (cbb2.Text = 'Carnê') then
    ACBrBoleto1.ACBrBoletoFC.LayOut := lCarne;
  if (cbb2.Text = 'Boleto') then
    ACBrBoleto1.ACBrBoletoFC.LayOut := lPadrao;
  if (cbb2.Text = 'Fatura') then
    ACBrBoleto1.ACBrBoletoFC.LayOut := lFatura;

  try
     ACBrBoleto1.ListadeBoletos.Clear;
     ACBrBoleto1.DirArqRemessa := edt1.Text;
     ACBrBoleto1.NomeArqRemessa := Edit1.Text;
     BANCO_SELECIONADO;
     CRIA_BOLETO_MEMORIA;
     ACBrBoleto1.GerarRemessa( 1 );
     ShowMessage('Remessa gerada com Sucesso.');
  except
     ShowMessage('Erro ao gerar Remessa');
  end;

   if (s_empresa.Active) then
     s_empresa.Close;
   if (s_banco.Active) then
     s_banco.Close;

end;

end.
