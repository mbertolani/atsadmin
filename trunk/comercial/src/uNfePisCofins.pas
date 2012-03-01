unit uNfePisCofins;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ACBrSpedPisCofins, StdCtrls, ExtCtrls, ComCtrls, JvExComCtrls,
  JvProgressBar, Mask, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, ACBrEPCBlocos, ACBrTXTClass, ACBrUtil, FMTBcd,
  DBClient, Provider, DB, SqlExpr;

type
  TfNfePisCofins = class(TForm)
    btnTXT: TButton;
    ACBrSPEDPisCofins1: TACBrSPEDPisCofins;
    Panel1: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtFile: TEdit;
    cbConcomitante: TCheckBox;
    edNotas: TEdit;
    Label2: TLabel;
    memoError: TMemo;
    Label3: TLabel;
    memoTXT: TMemo;
    Label7: TLabel;
    edBufLinhas: TEdit;
    Label8: TLabel;
    edBufNotas: TEdit;
    ProgressBar1: TJvProgressBar;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    cbMes: TComboBox;
    dt_ini: TJvDatePickerEdit;
    dt_fim: TJvDatePickerEdit;
    btnError: TButton;
    cbTipo: TComboBox;
    Label11: TLabel;
    sdsEmpresa: TSQLDataSet;
    dspEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    cdsEmpresaEMPRESA: TStringField;
    cdsEmpresaRAZAO: TStringField;
    cdsEmpresaCNPJ_CPF: TStringField;
    cdsEmpresaENDERECO: TStringField;
    cdsEmpresaLOGRADOURO: TStringField;
    cdsEmpresaBAIRRO: TStringField;
    cdsEmpresaCIDADE: TStringField;
    cdsEmpresaUF: TStringField;
    cdsEmpresaCEP: TStringField;
    cdsEmpresaDDD: TStringField;
    cdsEmpresaFONE: TStringField;
    cdsEmpresaFONE_1: TStringField;
    cdsEmpresaFONE_2: TStringField;
    cdsEmpresaFAX: TStringField;
    cdsEmpresaE_MAIL: TStringField;
    cdsEmpresaWEB: TStringField;
    cdsEmpresaLOGOTIPO: TGraphicField;
    cdsEmpresaCODIGO: TIntegerField;
    cdsEmpresaTIPO: TStringField;
    cdsEmpresaIE_RG: TStringField;
    cdsEmpresaSLOGAN: TStringField;
    cdsEmpresaOUTRAS_INFO: TStringField;
    cdsEmpresaCODIGO_CONTA: TIntegerField;
    cdsEmpresaDIVERSOS1: TStringField;
    cdsEmpresaDIVERSOS2: TStringField;
    cdsEmpresaDIVERSOS3: TStringField;
    cdsEmpresaANOLETIVO: TIntegerField;
    cdsEmpresaMEDIA_ESCOLA: TFloatField;
    cdsEmpresaPORTA: TIntegerField;
    cdsEmpresaSMTP: TStringField;
    cdsEmpresaSENHA: TStringField;
    cdsEmpresaCCUSTO: TIntegerField;
    cdsEmpresaNUMERO: TStringField;
    cdsEmpresaCD_IBGE: TStringField;
    cdsEmpresaCRT: TIntegerField;
    cdsEmpresaTREGIME: TIntegerField;
    cdsEmpresaIM: TStringField;
    cdsEmpresaCONTADOR: TStringField;
    cdsEmpresaCONTADOR_CRC: TStringField;
    cdsEmpresaCONTADOR_CNPJ: TStringField;
    cdsEmpresaCONTADOR_CPF: TStringField;
    cdsEmpresaCONTADOR_CEP: TStringField;
    cdsEmpresaCONTADOR_END: TStringField;
    cdsEmpresaCONTADOR_NUMEND: TStringField;
    cdsEmpresaCONTADOR_COMPL: TStringField;
    cdsEmpresaCONTADOR_BAIRRO: TStringField;
    cdsEmpresaCONTADOR_FONE: TStringField;
    cdsEmpresaCONTADOR_FAX: TStringField;
    cdsEmpresaCONTADOR_EMAIL: TStringField;
    cdsEmpresaCONTADOR_COD_MUN: TStringField;
    cdsEmpresaCODINDINCTRIBUTARIA: TStringField;
    cdsEmpresaINDAPROCRED: TStringField;
    cdsEmpresaCODINDTIPOCON: TStringField;
    cdsEmpresaCODINDCRITESCRIT: TStringField;
    cdsEmpresaINDCODINCIDENCIA: TStringField;
    cdsEmpresaINDCTA: TStringField;
    cdsEmpresaINDESCRITURACAO: TStringField;
    cdsEmpresaBASECALCULOCREDITO: TStringField;
    cdsEmpresaINDAJ: TStringField;
    cdsEmpresaCODAJ: TStringField;
    cdsEmpresaINDNATREC: TStringField;
    cdsEmpresaNATCREDDESC: TStringField;
    cdsEmpresaCODCRED: TStringField;
    cdsEmpresaINDTIPCOOP: TStringField;
    cdsEmpresaINDCREDORI: TStringField;
    cdsEmpresaINDREC: TStringField;
    cdsEmpresaINDDESCCRED: TStringField;
    cdsEmpresaCODCONT: TStringField;
    cdsEmpresaINDNATRETFONTE: TStringField;
    cdsEmpresaINDORIGEMDIVERSAS: TStringField;
    cdsEmpresaINDNATDEDUCAO: TStringField;
    cdsEmpresaINDTPOPERACAORECEITA: TStringField;
    cdsEmpresaINDICADORNATUREZAPJ: TSmallintField;
    cdsEmpresaINDICADORATIVIDADE: TSmallintField;
    procedure cbMesChange(Sender: TObject);
    procedure edtFileChange(Sender: TObject);
    procedure edtFileExit(Sender: TObject);
    procedure cbConcomitanteClick(Sender: TObject);
    procedure btnTXTClick(Sender: TObject);
    procedure btnErrorClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbTipoChange(Sender: TObject);
  private
    tipo: String;
    procedure LoadToMemo;
    procedure blocoO;
    procedure bloco1;
    procedure blocoA;
    procedure blocoC;
    procedure blocoD;
    procedure blocoF;
    procedure blocoM;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNfePisCofins: TfNfePisCofins;

implementation

uses uUtils, UDm;

{$R *.dfm}

{ TForm1 }

procedure TfNfePisCofins.bloco1;
begin
  // Alimenta o componente com informações para gerar todos os registros do
  // Bloco 1.

  with ACBrSPEDPisCofins1.Bloco_1 do
  begin
    with Registro1001New do
    begin
       IND_MOV := imSemDados;
    end;
  end;


  if cbConcomitante.Checked then
  begin
    ACBrSPEDPisCofins1.WriteBloco_1;
    LoadToMemo;
  end;
end;

procedure TfNfePisCofins.blocoA;
var
  INotas: Integer;
  IItens: Integer;
  NNotas: Integer;
  BNotas: Integer;
begin
   // Alimenta o componente com informações para gerar todos os registros do
   // Bloco A.

   NNotas := StrToInt64Def(edNotas.Text,1);
   BNotas := StrToInt64Def(edBufNotas.Text,1);

   ProgressBar1.Visible := cbConcomitante.Checked ;
   ProgressBar1.Max     := NNotas;
   ProgressBar1.Position:= 0 ;

   with ACBrSPEDPisCofins1.Bloco_A do
   begin
      with RegistroA001New do
      begin
         IND_MOV := imComDados;
         //
         for INotas := 1 to NNotas do
         begin
           with RegistroA010New do
           begin
              CNPJ := '11111111111180';
              with RegistroA100New do
              begin
                 IND_OPER      := itoContratado;
                 IND_EMIT      := iedfProprio;
                 COD_PART      := '001';
                 COD_SIT       := sdfRegular;
                 SER           := '';
                 SUB           := '';
                 NUM_DOC       := FormatFloat('NF000000',INotas);
                 CHV_NFSE      := '';
                 DT_DOC        := DT_INI + INotas;
                 DT_EXE_SERV   := DT_INI + INotas;
                 VL_DOC        := 0;
                 IND_PGTO      := tpSemPagamento;
                 VL_DESC       := 0;
                 VL_BC_PIS     := 0;
                 VL_PIS        := 0;
                 VL_BC_COFINS  := 0;
                 VL_COFINS     := 0;
                 VL_PIS_RET    := 0;
                 VL_COFINS_RET := 0;
                 VL_ISS        := 0;

                 //A170
                 for IItens := 1 to 10 do
                 begin
                   with RegistroA170New do   //Inicio Adicionar os Itens:
                   begin
                      NUM_ITEM         := IItens;
                      COD_ITEM         := IntToStr(NUM_ITEM);
                      DESCR_COMPL      := FormatFloat('NF000000',INotas)+' -> ITEM '+COD_ITEM;
                      VL_ITEM          := 0;
                      VL_DESC          := 0;
                      NAT_BC_CRED      := bccAqBensRevenda;
                      IND_ORIG_CRED    := opcMercadoInterno;
                      CST_PIS          := stpisOutrasOperacoesSaida;
                      VL_BC_PIS        := 0;
                      ALIQ_PIS         := 0;
                      VL_PIS           := 0;
                      CST_COFINS       := stcofinsOutrasOperacoesSaida;
                      VL_BC_COFINS     := 0;
                      ALIQ_COFINS      := 0;
                      VL_COFINS        := 0;
                      COD_CTA          := '000';
                      COD_CCUS         := '123';
                    end; //Fim dos Itens;
                 end;
              end;
              if cbConcomitante.Checked then
              begin
                 if (INotas mod BNotas) = 0 then   // Gravar a cada N notas
                 begin
                    // Grava registros na memoria para o TXT, e limpa memoria
                    ACBrSPEDPisCofins1.WriteBloco_A( False );  // False, NAO fecha o Bloco
                    ProgressBar1.Position := INotas;
                    Application.ProcessMessages;
                 end;
              end;
           end;
         end;
      end;
   end;
   if cbConcomitante.Checked then
   begin
      ACBrSPEDPisCofins1.WriteBloco_A(True);  // True, fecha o Bloco
      LoadToMemo;
   end;

   ProgressBar1.Visible := False ;
end;

procedure TfNfePisCofins.blocoO;
const
  strUNID: array[0..4] of string = ('PC', 'UN', 'LT', 'PC', 'MT');

var
int0140: integer;
int0150: integer;
int0190: integer;
int0200: integer;

begin
   // Alimenta o componente com informações para gerar todos os registros do
   // Bloco 0.

   cbConcomitante.Enabled := False ;
   with ACBrSPEDPisCofins1 do
   begin
     DT_INI := StrToDate('01/04/2011');
     DT_FIN := StrToDate('30/04/2011');
     IniciaGeracao;
   end;

   if cbConcomitante.Checked then
   begin
      with ACBrSPEDPisCofins1 do
      begin
//         DT_INI := StrToDate('01/04/2011');
//         DT_FIN := StrToDate('30/04/2011');
         LinhasBuffer := StrToIntDef( edBufLinhas.Text, 0 );

//        IniciaGeracao;
      end;

      LoadToMemo;
   end;

   with ACBrSPEDPisCofins1.Bloco_0 do
   begin
      // Dados da Empresa
      with Registro0000New do
      begin
        COD_VER          := vlVersao101;
        TIPO_ESCRIT      := tpEscrOriginal;
        IND_SIT_ESP      := indSitAbertura;
        NUM_REC_ANTERIOR := '';
        NOME             := cdsEmpresaRAZAO.AsString;
        CNPJ             := cdsEmpresaCNPJ_CPF.AsString;
        UF               := cdsEmpresaUF.AsString;
        COD_MUN          := StrToInt(cdsEmpresaCD_IBGE.AsString);
        SUFRAMA          := '';
        IND_NAT_PJ       := TACBrIndicadorNaturezaPJ(cdsEmpresaINDICADORNATUREZAPJ.AsInteger); // indNatPJSocEmpresariaGeral;
        IND_ATIV         := TACBrIndicadorAtividade(cdsEmpresaINDICADORATIVIDADE.asInteger); // indAtivIndustrial;
        COD_IND_INC_TRIB := TACBrCodIndIncTributaria(cdsEmpresaCODINDINCTRIBUTARIA.AsInteger);
        IND_APRO_CRED    := TACBrIndAproCred(cdsEmpresaINDAPROCRED.AsInteger);
        COD_IND_TIPO_CON := TACBrCodIndTipoCon(cdsEmpresaCODINDTIPOCON.AsInteger);
        COD_IND_CRIT_ESC := TACBrCodIndCritEscrit(cdsEmpresaCODINDCRITESCRIT.AsInteger);
        IND_COD_INC      := TACBrIndCodIncidencia(cdsEmpresaINDCODINCIDENCIA.AsInteger);
        IND_CTA          := TACBrIndCTA(cdsEmpresaINDCTA.AsInteger);
        IND_ESCRIT       := TACBrIndEscrituracao(cdsEmpresaINDESCRITURACAO.AsInteger);
        BASE_CALC_CRED   := TACBrBaseCalculoCredito(cdsEmpresaBASECALCULOCREDITO.AsInteger);
        IND_AJ           := TACBrIndAJ(cdsEmpresaINDAJ.AsInteger);

        with Registro0001New do
        begin
           IND_MOV := imComDados;

           // FILHO - Dados do contador.
           with Registro0100New do
           begin
              NOME       := 'NOME DO CONTADOR';
              CPF        := '12345678909'; // Deve ser uma informação valida
              CRC        := '123456';
              CNPJ       := '22222222222259';
              CEP        := '';
              ENDERECO   := '';
              NUM        := '';
              COMPL      := '';
              BAIRRO     := '';
              FONE       := '';
              FAX        := '';
              EMAIL      := '';
              COD_MUN    := 3200607;
           end;

           // FILHO - Regime de Apuração
           with Registro0110New do
           begin
              COD_INC_TRIB  := codEscrOpIncNaoCumulativo;
              IND_APRO_CRED := indMetodoApropriacaoDireta;
              COD_TIPO_CONT := codIndTipoConExclAliqBasica;
              //Campo IND_REG_CUM apenas para Lucro Presumido e (COD_INC_TRIB = 2)
              //IND_REG_CUM := 1;
           end;


           //0140 - Tabela de Cadastro de Estabelecimento
           for int0140 := 1 to 2 do
           begin
           // FILHO
              with Registro0140New do
              begin
                 COD_EST := IntToStr(int0140);
                 NOME    := 'NOME DO ESTABELECIMENTO '+IntToStr(int0140);
                 CNPJ    := '33333333333328';
                 UF      := 'ES';
                 IE      := '';
                 COD_MUN := 3200607;
                 IM      := '';
                 SUFRAMA := '';

                 // 10 Clientes por estabelecimento
                 for int0150 := 1 to 10 do
                 begin
                    //0150 - Tabela de Cadastro do Participante
                    with Registro0150New do
                    begin
                       COD_PART := IntToStr(int0150);
                       NOME     := 'NOME DO CLIENTE '+ IntToStr(int0150);
                       COD_PAIS := '1058';
                       CNPJ     := '';
                       CPF      := '12345678909';
                       IE       := '';
                       COD_MUN  := 3200607;
                       SUFRAMA  := '';
                       ENDERECO := 'ENDERECO DO CLIENTE '+ IntToStr(int0150);
                       NUM      := IntToStr(int0150);
                       COMPL    := 'COMPLEMENTO DO CLIENTE '+ IntToStr(int0150);
                       BAIRRO   := 'BAIRRO';
                       //
                    end;
                 end;

                 // 0190 - Identificação das Unidades de Medida
                 for int0190 := Low(strUNID) to High(strUNID) do
                 begin
                    with Registro0190New do
                    begin
                       UNID  := strUNID[int0190];
                       DESCR := 'Descricao ' + strUNID[int0190];
                    end;
                 end;

                 //10 produtos/serviços
                 for int0200 := 1 to 10 do
                 begin
                    // 0200 - Tabela de Identificação do Item (Produtos e Serviços)
                    with Registro0200New do
                    begin
                       COD_ITEM     := FormatFloat('000000', int0200);
                       DESCR_ITEM   := 'DESCRIÇÃO DO ITEM';
                       COD_BARRA    := '';
                       COD_ANT_ITEM := '';
                       UNID_INV     := '';
                       TIPO_ITEM    := tiMercadoriaRevenda;
                       COD_NCM      := '12345678';
                       EX_IPI       := '';
                       COD_GEN      := '';
                       COD_LST      := '';
                       ALIQ_ICMS    := 0;

                      //Cria uma alteração apenas para o item 5...
                      if (int0200 = 5) then with Registro0205New do
                      begin
                        DESCR_ANT_ITEM := 'DESCRIÇÃO ANTERIOR DO ITEM 5';
                        DT_INI := StrToDate('01/04/2011');
                        DT_FIM := StrToDate('15/04/2011');
                      end;
                    end;
                 end;
              end;
           end;

           // FILHO - REGISTRO 0500: PLANO DE CONTAS CONTÁBEIS
           with Registro0500New do
           begin
             DT_ALT := StrToDate('01/04/2011');
             COD_NAT_CC := ncgAtivo;
             IND_CTA := indCTASintetica;
             NIVEL := '0';
             COD_CTA := '0';
             NOME_CTA := 'NOME CTA';
             COD_CTA_REF := '0';
             CNPJ_EST := '123456789';
           end;

        end;
      end;

   end;

   if cbConcomitante.Checked then
   begin
      ACBrSPEDPisCofins1.WriteBloco_0;
      LoadToMemo;
   end;
end;

procedure TfNfePisCofins.LoadToMemo;
begin
   memoTXT.Lines.Clear;
   if FileExists( ACBrSPEDPisCofins1.Path + ACBrSPEDPisCofins1.Arquivo ) then
      memoTXT.Lines.LoadFromFile(ACBrSPEDPisCofins1.Path + ACBrSPEDPisCofins1.Arquivo);
end;

procedure TfNfePisCofins.cbMesChange(Sender: TObject);
var  periodo : TUtils;
begin
  periodo := TUtils.Create;
  periodo.criaIni(cbMes.text);
  periodo.criaFim(cbMes.text);
  dt_ini.Text := periodo.PeriodoIni;
  dt_fim.Text := periodo.PeriodoFim;
  periodo.Destroy;
end;

procedure TfNfePisCofins.blocoC;
var
INotas: Integer;
IItens: Integer;
NNotas: Integer;
BNotas: Integer;
begin
  // Alimenta o componente com informações para gerar todos os registros do
  // Bloco C.
  NNotas := StrToInt64Def(edNotas.Text,1);
  BNotas := StrToInt64Def(edBufNotas.Text,1);

  ProgressBar1.Visible := cbConcomitante.Checked ;
  ProgressBar1.Max     := NNotas;
  ProgressBar1.Position:= 0 ;

  with ACBrSPEDPisCofins1.Bloco_C do
  begin
    with RegistroC001New do
    begin
       IND_MOV := imComDados;

       //C010 - Identificação do Estabelecimento
       with RegistroC010New do
       begin
         CNPJ := '11111111111180';
         IND_ESCRI := IndEscriConsolidado;

         //Inserir Notas...
         for INotas := 1 to NNotas do
         begin
            //C100 - Documento - Nota Fiscal (código 01), Nota Fiscal Avulsa (código 1B), Nota
            // Fiscal de Produtor (código 04) e NF-e (código 55)
            with RegistroC100New do
            begin
              IND_OPER      := tpEntradaAquisicao;
              IND_EMIT      := edEmissaoPropria;
              COD_PART      := '001';
              COD_MOD       := '';
              COD_SIT       := sdRegular;
              SER           := '';
              NUM_DOC       := FormatFloat('NF000000',INotas);
              CHV_NFE       := '';
              DT_DOC        := DT_INI + INotas;
              DT_E_S        := DT_INI + INotas;
              VL_DOC        := 0;
              IND_PGTO      := tpSemPagamento;
              VL_DESC       := 0;
              VL_ABAT_NT    := 0;
              VL_MERC       := 0;
              IND_FRT       := tfSemCobrancaFrete;
              VL_FRT        := 0;
              VL_SEG        := 0;
              VL_OUT_DA     := 0;
              VL_BC_ICMS    := 0;
              VL_ICMS       := 0;
              VL_BC_ICMS_ST := 0;
              VL_ICMS_ST    := 0;
              VL_IPI        := 0;
              VL_PIS        := 0;
              VL_COFINS     := 0;
              VL_PIS_ST     := 0;
              VL_COFINS_ST  := 0;

              //10 itens para cada nota...
              for IItens := 1 to 10 do
              begin
                //c170 - Complemento de Documento – Itens do Documento (códigos 01, 1B, 04 e 55)
                with RegistroC170New do   //Inicio Adicionar os Itens:
                begin
                   NUM_ITEM         := FormatFloat('000', IItens);
                   COD_ITEM         := FormatFloat('000000',StrToInt(NUM_ITEM));
                   DESCR_COMPL      := FormatFloat('NF000000',INotas)+' -> ITEM '+COD_ITEM;
                   QTD              := 1;
                   UNID             := 'UN';
                   VL_ITEM          := 0;
                   VL_DESC          := 0;
                   IND_MOV          := mfNao;
                   CST_ICMS         := sticmsTributadaIntegralmente;
                   CFOP             := '1252';
                   COD_NAT          := '64';
                   VL_BC_ICMS       := 0;
                   ALIQ_ICMS        := 0;
                   VL_ICMS          := 0;
                   VL_BC_ICMS_ST    := 0;
                   ALIQ_ST          := 0;
                   VL_ICMS_ST       := 0;
                   IND_APUR         := iaMensal;
                   CST_IPI          := stipiEntradaIsenta;
                   COD_ENQ          := '';
                   VL_BC_IPI        := 0;
                   ALIQ_IPI         := 0;
                   VL_IPI           := 0;
                   CST_PIS          := stpisOutrasOperacoesSaida;
                   VL_BC_PIS        := 0;
                   ALIQ_PIS_PERC    := 0;
                   QUANT_BC_PIS     := 0;
                   ALIQ_PIS_R       := 0;
                   VL_PIS           := 0;
                   CST_COFINS       := stcofinsOutrasOperacoesSaida;
                   VL_BC_COFINS     := 0;
                   ALIQ_COFINS_PERC := 0;
                   QUANT_BC_COFINS  := 0;
                   ALIQ_COFINS_R    := 0;
                   VL_COFINS        := 0;
                   COD_CTA          := '000';
                end; //Fim dos Itens;
              end;

              if cbConcomitante.Checked then
              begin
                 if (INotas mod BNotas) = 0 then   // Gravar a cada BNotas notas
                 begin
                    // Grava registros na memoria para o TXT, e limpa memoria
                    ACBrSPEDPisCofins1.WriteBloco_C( False );  // False, NAO fecha o Bloco
                    ProgressBar1.Position := INotas;
                    Application.ProcessMessages;
                 end;
              end;

            end;

            //10 itens c190
            for IItens := 1 to 10 do
            begin
              // c190 - Consolidação de Notas Fiscais Eletrônicas (Código 55) – Operações de
              // Aquisição com Direito a Crédito, e Operações de Devolução de Compras e
              // Vendas.
              with RegistroC190New do
              begin
                 COD_MOD := '';
                 DT_REF_INI := Date;
                 DT_REF_FIN := Date;
                 COD_ITEM := '';
                 COD_NCM := '';
                 EX_IPI := '';
                 VL_TOT_ITEM := 0;
              end;//Fim dos Itens;
            end;

         end;
       end;
    end;
  end;

  if cbConcomitante.Checked then
  begin
    ACBrSPEDPisCofins1.WriteBloco_C(True);  // True, fecha o Bloco
    LoadToMemo;
  end;

  ProgressBar1.Visible := False ;
end;

procedure TfNfePisCofins.blocoD;
begin
  with ACBrSPEDPisCofins1.Bloco_D do
  begin
    with RegistroD001New do
    begin
      IND_MOV := imComDados;


      //Estabelecimento
      with RegistroD010New do
      begin
        CNPJ := '11111111111180';

  //          for INotas := 1 to NNotas do
  //          begin
  //            with RegistroD100New do
  //            begin
  //              IND_OPER := 0;
  //              IND_EMIT := 0;
  //              COD_PART := '';
  //              COD_MOD :=  '';
  //            end;
  //          end;

        //D200 - Resumo da Escrituração Diária – Prestação de Serviços de Transportes
        // (Códigos 07, 08, 8B, 09, 10, 11, 26, 27 e 57).
        with RegistroD200New do
        begin
        //|D200|08|00|||11574|11854|6352|000011574|000011854|6352|25072011|6807,57|0,00|
          COD_MOD := '08';
          COD_SIT := sdfRegular;
          SER := '';
          SUB := '';
          NUM_DOC_INI := 11574;
          NUM_DOC_FIN := 11854;
          CFOP := 6352;
          DT_REF := DT_INI;// StrToDate('15/04/2011');
          VL_DOC := 6807.57;
          VL_DESC := 0;
        end;
      end;
    end;
  end;

  if cbConcomitante.Checked then
  begin
    ACBrSPEDPisCofins1.WriteBloco_D;
    LoadToMemo;
  end;
end;

procedure TfNfePisCofins.blocoF;
begin
  // Alimenta o componente com informações para gerar todos os registros do
  // Bloco F.
  with ACBrSPEDPisCofins1.Bloco_F do
  begin
    with RegistroF001New do
    begin
      IND_MOV := imComDados;

      //F010 - Identificação do Estabelecimento
      with RegistroF010New do
      begin
         CNPJ := '11111111111180';

         //F100 - Demais Documentos e Operações Geradoras de Contribuição e Créditos
         with RegistroF100New do
         begin
            IND_OPER      := indRepCustosDespesasEncargos;
            COD_PART      := '001';
            COD_ITEM      := '000'; //Codigo do Item no registro 0200
            DT_OPER       := Date();
            VL_OPER       := 0;
            CST_PIS       := stpisOutrasOperacoesSaida;
            VL_BC_PIS     := 0;
            ALIQ_PIS      := 1.2375;
            VL_PIS        := 0;
            CST_COFINS    := stcofinsOutrasOperacoesSaida;
            VL_BC_COFINS  := 0;
            ALIQ_COFINS   := 0;
            VL_COFINS     := 0;
            NAT_BC_CRED   := bccAqBensRevenda;
            IND_ORIG_CRED := opcMercadoInterno;
            COD_CTA       := '';
            COD_CCUS      := '123';
            DESC_DOC_OPER := '';
         end;
      end;
    end;
  end;

  if cbConcomitante.Checked then
  begin
    ACBrSPEDPisCofins1.WriteBloco_F;
    LoadToMemo;
  end;
end;

procedure TfNfePisCofins.blocoM;
begin
  // Alimenta o componente com informações para gerar todos os registros do
  // Bloco M.
  with ACBrSPEDPisCofins1.Bloco_M do
  begin
    with RegistroM001New do
    begin
      IND_MOV := imComDados;

      //M100 - Crédito de PIS/PASEP Relativo ao Período
       with RegistroM100New do
       begin
          COD_CRED       := '';
          IND_CRED_ORI   := TACBrIndCredOri(0);
          VL_BC_PIS      := 0;
          ALIQ_PIS       := 0;
          QUANT_BC_PIS   := 0;
          ALIQ_PIS_QUANT := 0;
          VL_CRED        := 0;
          VL_AJUS_ACRES  := 0;
          VL_AJUS_REDUC  := 0;
          VL_CRED_DIF    := 0;
          VL_CRED_DISP   := 0;
          IND_DESC_CRED  := TACBrIndDescCred(0);
          VL_CRED_DESC   := 0;
          SLD_CRED       := 0;
       end;

       with RegistroM200New do
       begin
         VL_TOT_CONT_NC_PER := 0;
         VL_TOT_CRED_DESC := 0;
         VL_TOT_CRED_DESC_ANT := 0;
         VL_TOT_CONT_NC_DEV := 0;
         VL_RET_NC := 0;
         VL_OUT_DED_NC := 0;
         VL_CONT_NC_REC := 0;
         VL_TOT_CONT_CUM_PER := 0;
         VL_RET_CUM := 0;
         VL_OUT_DED_CUM := 0;
         VL_CONT_CUM_REC := 0;
         VL_TOT_CONT_REC := 0;

         with RegistroM210New do
         begin
           COD_CONT := ccNaoAcumAliqBasica;
           VL_REC_BRT := 0;
           VL_BC_CONT := 0;
           ALIQ_PIS := 0;
           QUANT_BC_PIS := 0;
           ALIQ_PIS_QUANT := 0;
           VL_CONT_APUR := 0;
           VL_AJUS_ACRES := 0;
           VL_AJUS_REDUC := 0;
           VL_CONT_DIFER := 0;
           VL_CONT_DIFER_ANT := 0;
           VL_CONT_PER := 0;
         end;

       end;

       with RegistroM600 do
       begin
         VL_TOT_CONT_NC_PER := 1;
         VL_TOT_CRED_DESC := 2;
         VL_TOT_CRED_DESC_ANT := 3;
         VL_TOT_CONT_NC_DEV := 4;
         VL_RET_NC := 5;
         VL_OUT_DED_NC := 6;
         VL_CONT_NC_REC := 7;
         VL_TOT_CONT_CUM_PER := 8;
         VL_RET_CUM := 9;
         VL_OUT_DED_CUM := 10;
         VL_CONT_CUM_REC := 11;
         VL_TOT_CONT_REC := 12;

         with RegistroM610New do
         begin
           COD_CONT := ccNaoAcumAliqBasica;
           VL_REC_BRT := 2;
           VL_BC_CONT := 3;
           ALIQ_COFINS := 4;
           QUANT_BC_COFINS := 5;
           ALIQ_COFINS_QUANT := 6;
           VL_CONT_APUR := 7;
           VL_AJUS_ACRES := 8;
           VL_AJUS_REDUC := 9;
           VL_CONT_DIFER := 10;
           VL_CONT_DIFER_ANT := 11;
           VL_CONT_PER := 12;
         end;

       end;

    end;
  end;

  if cbConcomitante.Checked then
  begin
    ACBrSPEDPisCofins1.WriteBloco_M;
    LoadToMemo;
  end;
end;

procedure TfNfePisCofins.edtFileChange(Sender: TObject);
begin
  ACBrSPEDPisCofins1.Arquivo := edtFile.Text ;
end;

procedure TfNfePisCofins.edtFileExit(Sender: TObject);
begin
  ACBrSPEDPisCofins1.Arquivo := edtFile.Text ;
end;

procedure TfNfePisCofins.cbConcomitanteClick(Sender: TObject);
begin
  btnTXT.Enabled   := not cbConcomitante.Checked ;
  btnError.Enabled := btnTXT.Enabled ;

  edBufNotas.Enabled := cbConcomitante.Checked ;

end;

procedure TfNfePisCofins.btnTXTClick(Sender: TObject);
begin
  ACBrSPEDPisCofins1.LinhasBuffer := StrToIntDef( edBufLinhas.Text, 0 );

  with ACBrSPEDPisCofins1 do
  begin
    DT_INI := StrToDate('01/04/2011');
    DT_FIN := StrToDate('30/04/2011');
  end;

  // Limpa a lista de erros.
  memoError.Lines.Clear;
  // Informa o pasta onde será salvo o arquivo TXT.
  ACBrSPEDPisCofins1.Path := '.\';
  ACBrSPEDPisCofins1.Arquivo := edtFile.Text;

  // Método que gera o arquivo TXT.
  ACBrSPEDPisCofins1.SaveFileTXT ;

  // Carrega o arquivo TXT no memo.
  LoadToMemo;

  // Habilita os botões
  cbConcomitante.Enabled := True ;

  blocoO;
  bloco1;
  blocoA;
  blocoC;
  blocoD;
  blocoF;
  blocoM;

end;

procedure TfNfePisCofins.btnErrorClick(Sender: TObject);
begin
  with ACBrSPEDPisCofins1 do
  begin
    DT_INI := StrToDate('01/04/2011');
    DT_FIN := StrToDate('30/04/2011');
  end;

  // Limpa a lista de erros.
  memoError.Lines.Clear;

  // Método que gera o arquivo TXT.
  ACBrSPEDPisCofins1.SaveFileTXT ;
end;

procedure TfNfePisCofins.FormCreate(Sender: TObject);
begin
  tipo := 'tpEscrOriginal';
end;

procedure TfNfePisCofins.cbTipoChange(Sender: TObject);
begin
  if (cbTipo.ItemIndex = 0) then
    tipo := 'tpEscrOriginal';
  if (cbTipo.ItemIndex = 1) then
    tipo := 'tpEscrRetificadora';

end;

end.
