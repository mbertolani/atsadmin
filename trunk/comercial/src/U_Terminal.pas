unit U_Terminal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, dxCore, dxButton, JvExStdCtrls, JvEdit, JvValidateEdit,
  Mask, DBCtrls, JvExControls, JvLabel, JvExDBGrids, JvDBGrid, jpeg,
  ExtCtrls, JvExExtCtrls, JvImage, Grids, DBGrids, StdCtrls, ComCtrls,
  MMJPanel, JvSpeedButton, JvExMask, JvToolEdit, JvBaseEdits, JvDBControls,
  Menus, JvComponentBase, JvFormAutoSize, FMTBcd, DB, SqlExpr, Provider,
  DBClient, JvExButtons, JvBitBtn, rpcompobase, rpvclreport, uUtils, DBxPress, Printers,
  JvButton, JvTransparentButton;

type
  TF_Terminal = class(TForm)
    MMJPanel2: TMMJPanel;
    JvDBGrid1: TJvDBGrid;
    MMJPanel5: TMMJPanel;
    Panel1: TPanel;
    JvLabel3: TJvLabel;
    MMJPanel8: TMMJPanel;
    JvLabel1: TJvLabel;
    EdtCodBarra1: TEdit;
    JvTotal: TJvValidateEdit;
    PopupMenu1: TPopupMenu;
    AlterarItendoPedido1: TMenuItem;
    F5ExcluirItemdoPedido1: TMenuItem;
    F7ExcluirPedido1: TMenuItem;
    LocalizarPedido1: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel3: TPanel;
    Panel12: TPanel;
    JvImage1: TJvImage;
    MMJPanel4: TMMJPanel;
    JvLabel7: TJvLabel;
    EdtCodBarra: TEdit;
    MMJPanel7: TMMJPanel;
    JvLabel6: TJvLabel;
    JvLabel9: TJvLabel;
    JvLabel11: TJvLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    TabComanda: TTabSheet;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    JvDBGrid2: TJvDBGrid;
    TabDelivery: TTabSheet;
    DBGrid2: TDBGrid;
    MMJPanel6: TMMJPanel;
    JvLabel2: TJvLabel;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    b_cliente: TSQLDataSet;
    b_clienteCODCLIENTE: TIntegerField;
    b_clienteNOMECLIENTE: TStringField;
    btnProduto: TBitBtn;
    scds_produto_proc: TClientDataSet;
    dsp: TDataSetProvider;
    sds: TSQLDataSet;
    scds_produto_procCODPRODUTO: TIntegerField;
    scds_produto_procCOD_BARRA: TStringField;
    scds_produto_procPRODUTO: TStringField;
    scds_produto_procUNIDADEMEDIDA: TStringField;
    scds_produto_procQTDE_PCT: TFloatField;
    scds_produto_procICMS: TFloatField;
    scds_produto_procCODALMOXARIFADO: TIntegerField;
    scds_produto_procCONTA_DESPESA: TStringField;
    scds_produto_procALMOXARIFADO: TStringField;
    scds_produto_procVALORUNITARIOATUAL: TFloatField;
    scds_produto_procVALOR_PRAZO: TFloatField;
    scds_produto_procCOD_COMISSAO: TIntegerField;
    scds_produto_procRATEIO: TStringField;
    scds_produto_procTIPO: TStringField;
    scds_produto_procLOCALIZACAO: TStringField;
    scds_produto_procESTOQUEATUAL: TFloatField;
    JvProcurar: TJvBitBtn;
    JvAlterar: TJvBitBtn;
    JvExcluir: TJvBitBtn;
    JvImprimir: TJvBitBtn;
    JvFinalizar: TJvBitBtn;
    SQLDataSet1: TSQLDataSet;
    Finalizar1: TMenuItem;
    F11ImprimirPedido1: TMenuItem;
    JvSair: TJvBitBtn;
    F9Sair1: TMenuItem;
    VCLReport1: TVCLReport;
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
    SaveDialog1: TSaveDialog;
    scds_produto_procLOTE: TStringField;
    scds_produto_procSALDOESTOQUE: TFloatField;
    Panel2: TPanel;
    JvTransparentButton1: TJvTransparentButton;
    JvTransparentButton2: TJvTransparentButton;
    JvTransparentButton3: TJvTransparentButton;
    JvTransparentButton4: TJvTransparentButton;
    JvTransparentButton5: TJvTransparentButton;
    JvTransparentButton6: TJvTransparentButton;
    JvTransparentButton7: TJvTransparentButton;
    JvTransparentButton8: TJvTransparentButton;
    JvTransparentButton9: TJvTransparentButton;
    JvTransparentButton10: TJvTransparentButton;
    JvTransparentButton11: TJvTransparentButton;
    JvTransparentButton12: TJvTransparentButton;
    JvTransparentButton13: TJvTransparentButton;
    JvTransparentButton14: TJvTransparentButton;
    JvTransparentButton15: TJvTransparentButton;
    JvTransparentButton16: TJvTransparentButton;
    JvTransparentButton17: TJvTransparentButton;
    JvTransparentButton18: TJvTransparentButton;
    JvTransparentButton19: TJvTransparentButton;
    JvTransparentButton20: TJvTransparentButton;
    JvTransparentButton21: TJvTransparentButton;
    JvTransparentButton22: TJvTransparentButton;
    JvTransparentButton23: TJvTransparentButton;
    JvTransparentButton24: TJvTransparentButton;
    JvTransparentButton25: TJvTransparentButton;
    JvTransparentButton26: TJvTransparentButton;
    JvTransparentButton27: TJvTransparentButton;
    JvTransparentButton28: TJvTransparentButton;
    JvTransparentButton29: TJvTransparentButton;
    JvTransparentButton30: TJvTransparentButton;
    JvTransparentButton31: TJvTransparentButton;
    JvTransparentButton32: TJvTransparentButton;
    JvTransparentButton33: TJvTransparentButton;
    JvTransparentButton34: TJvTransparentButton;
    JvTransparentButton35: TJvTransparentButton;
    JvTransparentButton36: TJvTransparentButton;
    JvTransparentButton37: TJvTransparentButton;
    JvTransparentButton38: TJvTransparentButton;
    JvTransparentButton39: TJvTransparentButton;
    JvTransparentButton40: TJvTransparentButton;
    JvTransparentButton41: TJvTransparentButton;
    JvTransparentButton42: TJvTransparentButton;
    JvTransparentButton43: TJvTransparentButton;
    JvTransparentButton44: TJvTransparentButton;
    JvTransparentButton45: TJvTransparentButton;
    JvTransparentButton46: TJvTransparentButton;
    JvTransparentButton47: TJvTransparentButton;
    JvTransparentButton48: TJvTransparentButton;
    JvTransparentButton49: TJvTransparentButton;
    JvTransparentButton50: TJvTransparentButton;
    JvTransparentButton51: TJvTransparentButton;
    JvTransparentButton52: TJvTransparentButton;
    sql_mesas: TSQLDataSet;
    sql_mesasCODCLIENTE: TIntegerField;
    sql_mesasNOMECLIENTE: TStringField;
    sql_mesasRAZAOSOCIAL: TStringField;
    sql_mesasCONTATO: TStringField;
    sql_mesasTIPOFIRMA: TSmallintField;
    sql_mesasCPF: TStringField;
    sql_mesasCNPJ: TStringField;
    sql_mesasINSCESTADUAL: TStringField;
    sql_mesasRG: TStringField;
    sql_mesasSEGMENTO: TSmallintField;
    sql_mesasREGIAO: TSmallintField;
    sql_mesasLIMITECREDITO: TFloatField;
    sql_mesasDATACADASTRO: TDateField;
    sql_mesasCODUSUARIO: TIntegerField;
    sql_mesasSTATUS: TSmallintField;
    sql_mesasHOMEPAGE: TStringField;
    sql_mesasPRAZORECEBIMENTO: TSmallintField;
    sql_mesasPRAZOENTREGA: TSmallintField;
    sql_mesasCODBANCO: TSmallintField;
    sql_mesasBASE_ICMS: TSmallintField;
    sql_mesasDATANASC: TDateField;
    sql_mesasCONTA_CLIENTE: TStringField;
    sql_mesasOBS: TStringField;
    sql_mesasTEM_IE: TStringField;
    sql_mesasDATARESC: TDateField;
    sql_mesasNOMEMAE: TStringField;
    sql_mesasSEXO: TStringField;
    sql_mesasFORMA_CORRESPOND: TStringField;
    sql_mesasGRUPO_CLIENTE: TStringField;
    sql_mesasCODINCLUCANC: TIntegerField;
    sql_mesasEXIST_COBERT: TStringField;
    sql_mesasEXISTCOPART: TStringField;
    sql_mesasDATAREINC: TDateField;
    sql_mesasGERAAVISO: TStringField;
    sql_mesasGERAENV: TStringField;
    sql_mesasGERABOL: TStringField;
    sql_mesasEMVIAGEM: TStringField;
    sql_mesasDTAALTERA: TDateField;
    sql_mesasSERIELETRA: TStringField;
    sql_mesasSERIE: TStringField;
    sql_mesasRA: TStringField;
    sql_mesasCURSO: TStringField;
    sql_mesasIP: TStringField;
    sql_mesasN_CONTRATO: TStringField;
    sql_mesasMAC: TStringField;
    sql_mesasMARCA: TStringField;
    sql_mesasBANDA_UPLOAD: TStringField;
    sql_mesasBANDA_DOWLOAD: TStringField;
    sql_mesasTORRE_CONECCAO: TStringField;
    sql_mesasCOD_FAIXA: TIntegerField;
    sql_mesasDESCONTO: TFloatField;
    sql_mesasMENSALIDADE: TFloatField;
    sql_mesasANUIDADE: TFloatField;
    sql_mesasPARCELA: TIntegerField;
    sql_mesasPARCELAGERADAS: TIntegerField;
    sql_mesasNUMERO: TIntegerField;
    sql_mesasDATANASCIMENTO: TSQLTimeStampField;
    sql_mesasANOLETIVO: TStringField;
    sql_mesasSITUACAOESCOLAR: TStringField;
    sql_mesasRGMAE: TStringField;
    sql_mesasCPFMAE: TStringField;
    sql_mesasPAI: TStringField;
    sql_mesasRGPAI: TStringField;
    sql_mesasCPFPAI: TStringField;
    sql_mesasLANCADOCLASSE: TIntegerField;
    sql_mesasTRANSPORTE: TStringField;
    sql_mesasCIDADENASC: TStringField;
    sql_mesasUFNASC: TStringField;
    sql_mesasNACIONALIDADE: TStringField;
    sql_mesasCERTIDAONASCNUM: TStringField;
    sql_mesasLIVRONASC: TStringField;
    sql_mesasFLLIVRONASC: TStringField;
    sql_mesasLOCALTRABPAI: TStringField;
    sql_mesasLOCALTRABMAE: TStringField;
    sql_mesasTELTRABPAI: TStringField;
    sql_mesasTELTRABMAE: TStringField;
    sql_mesasINFONECESSARIAS: TStringField;
    sql_mesasCARTEIRAVACINACAO: TStringField;
    sql_mesasRAPRODESP: TStringField;
    sql_mesasLOCALTRABALUNO: TStringField;
    sql_mesasTELTRABALUNO: TStringField;
    sql_mesasRAPROD: TStringField;
    sql_mesasCERT_NAS_COMARCA: TStringField;
    sql_mesasCERT_NAS_UF: TStringField;
    sql_mesasCERT_NAS_MUNICIPIO: TStringField;
    sql_mesasCERT_NAS_DISTRITO: TStringField;
    sql_mesasCERT_NAS_SUBDISTRITO: TStringField;
    sql_mesasDIVERSO1: TStringField;
    sql_mesasDIVERSO2: TStringField;
    sql_mesasDATAEMISSAORG: TDateField;
    sql_mesasESTADORG: TStringField;
    sql_mesasCOMUNICAALUNO: TStringField;
    sql_mesasFONEMAE: TStringField;
    sql_mesasCELULARMAE: TStringField;
    sql_mesasCOMUNICAMAE: TStringField;
    sql_mesasFONEPAI: TStringField;
    sql_mesasCELULARPAI: TStringField;
    sql_mesasCOMUNICAPAI: TStringField;
    sql_mesasVALOR_MATRICULA: TFloatField;
    sql_mesasDATATRANSF: TDateField;
    sql_mesasCOR_RACA: TStringField;
    sql_mesasPERIODO: TStringField;
    sql_mesasFOTO: TStringField;
    sql_mesasDATA_MATRICULA: TSQLTimeStampField;
    sql_mesasCODRESPONSAVEL: TIntegerField;
    sql_mesasID_COB: TIntegerField;
    sql_mesasCOD_TRANPORTADORA: TIntegerField;
    sql_mesasBLOQUEADO: TStringField;
    sql_mesasBLOQUEIO: TStringField;
    sql_mesasCFOP: TStringField;
    sql_mesasCOD_CLI: TStringField;
    s_venda: TSQLDataSet;
    JvBitBtn1: TJvBitBtn;
    MMJPanel1: TMMJPanel;
    JvLabel10: TJvLabel;
    EdtComanda: TEdit;
    MMJPanel3: TMMJPanel;
    JvLabel8: TJvLabel;
    p_mesas: TDataSetProvider;
    s_mesas: TClientDataSet;
    s_mesasCODCLIENTE: TIntegerField;
    s_mesasNOMECLIENTE: TStringField;
    s_mesasRAZAOSOCIAL: TStringField;
    s_mesasCONTATO: TStringField;
    s_mesasTIPOFIRMA: TSmallintField;
    s_mesasCPF: TStringField;
    s_mesasCNPJ: TStringField;
    s_mesasINSCESTADUAL: TStringField;
    s_mesasRG: TStringField;
    s_mesasSEGMENTO: TSmallintField;
    s_mesasREGIAO: TSmallintField;
    s_mesasLIMITECREDITO: TFloatField;
    s_mesasDATACADASTRO: TDateField;
    s_mesasCODUSUARIO: TIntegerField;
    s_mesasSTATUS: TSmallintField;
    s_mesasHOMEPAGE: TStringField;
    s_mesasPRAZORECEBIMENTO: TSmallintField;
    s_mesasPRAZOENTREGA: TSmallintField;
    s_mesasCODBANCO: TSmallintField;
    s_mesasBASE_ICMS: TSmallintField;
    s_mesasDATANASC: TDateField;
    s_mesasCONTA_CLIENTE: TStringField;
    s_mesasOBS: TStringField;
    s_mesasTEM_IE: TStringField;
    s_mesasDATARESC: TDateField;
    s_mesasNOMEMAE: TStringField;
    s_mesasSEXO: TStringField;
    s_mesasFORMA_CORRESPOND: TStringField;
    s_mesasGRUPO_CLIENTE: TStringField;
    s_mesasCODINCLUCANC: TIntegerField;
    s_mesasEXIST_COBERT: TStringField;
    s_mesasEXISTCOPART: TStringField;
    s_mesasDATAREINC: TDateField;
    s_mesasGERAAVISO: TStringField;
    s_mesasGERAENV: TStringField;
    s_mesasGERABOL: TStringField;
    s_mesasEMVIAGEM: TStringField;
    s_mesasDTAALTERA: TDateField;
    s_mesasSERIELETRA: TStringField;
    s_mesasSERIE: TStringField;
    s_mesasRA: TStringField;
    s_mesasCURSO: TStringField;
    s_mesasIP: TStringField;
    s_mesasN_CONTRATO: TStringField;
    s_mesasMAC: TStringField;
    s_mesasMARCA: TStringField;
    s_mesasBANDA_UPLOAD: TStringField;
    s_mesasBANDA_DOWLOAD: TStringField;
    s_mesasTORRE_CONECCAO: TStringField;
    s_mesasCOD_FAIXA: TIntegerField;
    s_mesasDESCONTO: TFloatField;
    s_mesasMENSALIDADE: TFloatField;
    s_mesasANUIDADE: TFloatField;
    s_mesasPARCELA: TIntegerField;
    s_mesasPARCELAGERADAS: TIntegerField;
    s_mesasNUMERO: TIntegerField;
    s_mesasDATANASCIMENTO: TSQLTimeStampField;
    s_mesasANOLETIVO: TStringField;
    s_mesasSITUACAOESCOLAR: TStringField;
    s_mesasRGMAE: TStringField;
    s_mesasCPFMAE: TStringField;
    s_mesasPAI: TStringField;
    s_mesasRGPAI: TStringField;
    s_mesasCPFPAI: TStringField;
    s_mesasLANCADOCLASSE: TIntegerField;
    s_mesasTRANSPORTE: TStringField;
    s_mesasCIDADENASC: TStringField;
    s_mesasUFNASC: TStringField;
    s_mesasNACIONALIDADE: TStringField;
    s_mesasCERTIDAONASCNUM: TStringField;
    s_mesasLIVRONASC: TStringField;
    s_mesasFLLIVRONASC: TStringField;
    s_mesasLOCALTRABPAI: TStringField;
    s_mesasLOCALTRABMAE: TStringField;
    s_mesasTELTRABPAI: TStringField;
    s_mesasTELTRABMAE: TStringField;
    s_mesasINFONECESSARIAS: TStringField;
    s_mesasCARTEIRAVACINACAO: TStringField;
    s_mesasRAPRODESP: TStringField;
    s_mesasLOCALTRABALUNO: TStringField;
    s_mesasTELTRABALUNO: TStringField;
    s_mesasRAPROD: TStringField;
    s_mesasCERT_NAS_COMARCA: TStringField;
    s_mesasCERT_NAS_UF: TStringField;
    s_mesasCERT_NAS_MUNICIPIO: TStringField;
    s_mesasCERT_NAS_DISTRITO: TStringField;
    s_mesasCERT_NAS_SUBDISTRITO: TStringField;
    s_mesasDIVERSO1: TStringField;
    s_mesasDIVERSO2: TStringField;
    s_mesasDATAEMISSAORG: TDateField;
    s_mesasESTADORG: TStringField;
    s_mesasCOMUNICAALUNO: TStringField;
    s_mesasFONEMAE: TStringField;
    s_mesasCELULARMAE: TStringField;
    s_mesasCOMUNICAMAE: TStringField;
    s_mesasFONEPAI: TStringField;
    s_mesasCELULARPAI: TStringField;
    s_mesasCOMUNICAPAI: TStringField;
    s_mesasVALOR_MATRICULA: TFloatField;
    s_mesasDATATRANSF: TDateField;
    s_mesasCOR_RACA: TStringField;
    s_mesasPERIODO: TStringField;
    s_mesasFOTO: TStringField;
    s_mesasDATA_MATRICULA: TSQLTimeStampField;
    s_mesasCODRESPONSAVEL: TIntegerField;
    s_mesasID_COB: TIntegerField;
    s_mesasCOD_TRANPORTADORA: TIntegerField;
    s_mesasBLOQUEADO: TStringField;
    s_mesasBLOQUEIO: TStringField;
    s_mesasCFOP: TStringField;
    s_mesasCOD_CLI: TStringField;
    JvBitBtn2: TJvBitBtn;
    JvBitBtn3: TJvBitBtn;
    procedure EdtComandaKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodBarraKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure JvProcurarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure JvDBGrid2DblClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure EdtCodBarra1KeyPress(Sender: TObject; var Key: Char);
    procedure JvDBGrid2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvDBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure JvAlterarClick(Sender: TObject);
    procedure btnProdutoClick(Sender: TObject);
    procedure F5ExcluirItemdoPedido1Click(Sender: TObject);
    procedure F7ExcluirPedido1Click(Sender: TObject);
    procedure JvFinalizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure JvSairClick(Sender: TObject);
    procedure JvImprimirClick(Sender: TObject);
    procedure JvExcluirClick(Sender: TObject);
    procedure JvTransparentButton1Click(Sender: TObject);
    procedure JvTransparentButton2Click(Sender: TObject);
    procedure JvTransparentButton3Click(Sender: TObject);
    procedure JvTransparentButton4Click(Sender: TObject);
    procedure JvTransparentButton5Click(Sender: TObject);
    procedure JvTransparentButton6Click(Sender: TObject);
    procedure JvTransparentButton7Click(Sender: TObject);
    procedure JvTransparentButton8Click(Sender: TObject);
    procedure JvTransparentButton9Click(Sender: TObject);
    procedure JvTransparentButton10Click(Sender: TObject);
    procedure JvTransparentButton11Click(Sender: TObject);
    procedure JvTransparentButton12Click(Sender: TObject);
    procedure JvTransparentButton13Click(Sender: TObject);
    procedure JvTransparentButton14Click(Sender: TObject);
    procedure JvTransparentButton15Click(Sender: TObject);
    procedure JvTransparentButton16Click(Sender: TObject);
    procedure JvTransparentButton17Click(Sender: TObject);
    procedure JvTransparentButton18Click(Sender: TObject);
    procedure JvTransparentButton19Click(Sender: TObject);
    procedure JvTransparentButton20Click(Sender: TObject);
    procedure JvTransparentButton21Click(Sender: TObject);
    procedure JvTransparentButton22Click(Sender: TObject);
    procedure JvTransparentButton23Click(Sender: TObject);
    procedure JvTransparentButton24Click(Sender: TObject);
    procedure JvTransparentButton25Click(Sender: TObject);
    procedure JvTransparentButton26Click(Sender: TObject);
    procedure JvTransparentButton27Click(Sender: TObject);
    procedure JvTransparentButton28Click(Sender: TObject);
    procedure JvTransparentButton29Click(Sender: TObject);
    procedure JvTransparentButton30Click(Sender: TObject);
    procedure JvTransparentButton31Click(Sender: TObject);
    procedure JvTransparentButton32Click(Sender: TObject);
    procedure JvTransparentButton33Click(Sender: TObject);
    procedure JvTransparentButton34Click(Sender: TObject);
    procedure JvTransparentButton35Click(Sender: TObject);
    procedure JvTransparentButton36Click(Sender: TObject);
    procedure JvTransparentButton37Click(Sender: TObject);
    procedure JvTransparentButton38Click(Sender: TObject);
    procedure JvTransparentButton39Click(Sender: TObject);
    procedure JvTransparentButton40Click(Sender: TObject);
    procedure JvTransparentButton41Click(Sender: TObject);
    procedure JvTransparentButton42Click(Sender: TObject);
    procedure JvTransparentButton43Click(Sender: TObject);
    procedure JvTransparentButton44Click(Sender: TObject);
    procedure JvTransparentButton45Click(Sender: TObject);
    procedure JvTransparentButton46Click(Sender: TObject);
    procedure JvTransparentButton47Click(Sender: TObject);
    procedure JvTransparentButton48Click(Sender: TObject);
    procedure JvTransparentButton49Click(Sender: TObject);
    procedure JvTransparentButton50Click(Sender: TObject);
    procedure JvTransparentButton51Click(Sender: TObject);
    procedure JvTransparentButton52Click(Sender: TObject);
    procedure EdtCodBarra1Enter(Sender: TObject);
    procedure EdtCodBarra1Exit(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure JvBitBtn2Click(Sender: TObject);
    procedure JvBitBtn3Click(Sender: TObject);
  private
    TD: TTransactionDesc;
    clienteConsumidor,nomecliente, tipo_busca : string;
    I, codcliente, ID_MOVDET : integer;
    codlote, nome_botao, nomedocliente, existe_Detalhe : string;
    corbotao, cor : TColor;
    varsql, sql : string;
    id_movimento : integer;
    procedure IncluiPedido;
    procedure AlteraPedido;
    procedure IncluiItemPedido;
    procedure BuscaProduto;
    procedure BuscaLote;
    procedure existevenda;
    procedure imprimeCupom;
    procedure imprimeRecibo;
    procedure imprimeDLLBema;
    procedure clic_botao;
    procedure pinta_botao;
    procedure pinta_botao_1;
    procedure CtrlResize;
    procedure Mesa_Clic(botao:Integer);
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
  F_Terminal: TF_Terminal;
  CodigoProduto : Integer;
  RETORNO, vendaexiste : String;
  ESTOQUE : Boolean;
  tipoImpressao : string;
  IMPRESSORA:TextFile;
  Texto,Texto1,Texto2,Texto3,Texto4,texto5, texto6,texto7, logradouro,cep,fone : string;//Para recortar parte da descrição do produto,nome
  total, porc, totgeral , desconto : double;
  porta : string;
  cliente : string;
  vTIPO_PEDIDO, teste_codigo : String;
  numeroComp : Smallint;


implementation

uses sCtrlResize, UDm, UDM_MOV, UDMNF, uFiltroMovimento,
  U_AlteraPedido, U_TerminalFinaliza, ufprocura_prod, U_AUTORIZACAO,
  u_mesas, U_MudaMesa;

{$R *.dfm}

procedure TF_Terminal.EdtComandaKeyPress(Sender: TObject; var Key: Char);
begin
   // Se Precionar ENTER Busco a Comanda se não Encontrar Adiciona...
   if (key = #13) then
   begin
     if (EdtComanda.Text <> '') then
     begin
        if (DM_MOV.s_BuscaComanda.Active) then
          DM_MOV.s_BuscaComanda.Close;
        DM_MOV.s_BuscaComanda.Params[1].Clear;
        DM_MOV.s_BuscaComanda.Params[0].AsString :=  EdtComanda.Text;
        DM_MOV.s_BuscaComanda.Open;
        if (DM_MOV.s_BuscaComanda.IsEmpty) then
        begin
           DM_MOV.s_BuscaComanda.Close;
           ShowMessage('Comanda não Localizada');
           Exit;
        end;
        codcliente := DM_MOV.s_BuscaComandaCODCLIENTE.AsInteger;
        if (DM_MOV.s_buscaMov.Active) then
           DM_MOV.s_buscaMov.Close;
        DM_MOV.s_buscaMov.Params[1].Clear;
        DM_MOV.s_buscaMov.Params[3].Clear;
        DM_MOV.s_buscaMov.Params[5].Clear;
        DM_MOV.s_buscaMov.Params[0].AsInteger := codcliente;
        DM_MOV.s_buscaMov.Params[2].AsInteger := 3;
        DM_MOV.s_buscaMov.Params[4].AsInteger := 20;//Pedidos em aberto
        DM_MOV.s_buscaMov.Open;
        if (DM_MOV.s_buscaMov.IsEmpty)then
           IncluiPedido
        else
        begin
           if (DM_MOV.c_comanda.Active) then
               DM_MOV.c_comanda.Close;
           DM_MOV.c_comanda.Params[1].Clear;
           DM_MOV.c_comanda.Params[3].Clear;
           DM_MOV.c_comanda.Params[5].Clear;
           DM_MOV.c_comanda.Params[6].Clear;
           DM_MOV.c_comanda.Params[0].AsInteger := codcliente;
           DM_MOV.c_comanda.Params[2].AsInteger := 3;
           DM_MOV.c_comanda.Params[4].AsInteger := 20;
           DM_MOV.c_comanda.Params[7].AsInteger := 9999999;
           DM_MOV.c_comanda.Open;
           AlteraPedido;
        end;

        DM_MOV.s_buscaMov.Close;
        DM_MOV.s_BuscaComanda.Close;
     end
     else
     begin
       if (DM_MOV.c_comanda.Active) then
         DM_MOV.c_comanda.Close;
       DM_MOV.c_comanda.Params[0].Clear;
       DM_MOV.c_comanda.Params[3].Clear;
       DM_MOV.c_comanda.Params[5].Clear;
       DM_MOV.c_comanda.Params[6].Clear;
       DM_MOV.c_comanda.Params[1].AsInteger := 9999999;
       DM_MOV.c_comanda.Params[2].AsInteger := 3;
       DM_MOV.c_comanda.Params[4].AsInteger := 20;
       DM_MOV.c_comanda.Params[7].AsInteger := 9999999;
       DM_MOV.c_comanda.Open;
       DM_MOV.c_comanda.First;
       AlteraPedido;
     end;
   end;
end;

procedure TF_Terminal.IncluiItemPedido;
begin
   dm.sqlsisAdimin.StartTransaction(TD);

   if dm.c_6_genid.Active then
     dm.c_6_genid.Close;
   dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOVDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
   dm.c_6_genid.Open;
   ID_MOVDET := dm.c_6_genid.Fields[0].AsInteger;

   dm.c_6_genid.Close;

  sql := 'INSERT INTO MOVIMENTODETALHE (CODDETALHE, CODPRODUTO, STATUS, CODALMOXARIFADO, CODMOVIMENTO, QUANTIDADE, UN, '+
         'PRECO, DESCPRODUTO, LOTE) VALUES ( ' +
         IntToStr(ID_MOVDET) + ', ' + IntToStr(scds_produto_procCODPRODUTO.AsInteger) + ', ' +
         'null' + ', ' + IntToStr(0) + ', ';
  if (PageControl1.ActivePage = TabSheet1) then
    sql := sql +  IntToStr(DM_MOV.c_movimentoCODMOVIMENTO.AsInteger) + ', ' + IntToStr(1) + ', ';
  if (PageControl1.ActivePage = TabComanda) then
    sql := sql +  IntToStr(DM_MOV.c_comandaCODMOVIMENTO.AsInteger) + ', ' + IntToStr(1) + ', ';
  sql := sql +  QuotedStr(scds_produto_procUNIDADEMEDIDA.AsString) + ', ';
  DecimalSeparator := '.';
  sql := sql +  FloatToStr(scds_produto_procVALOR_PRAZO.AsFloat)  + ', ';
  sql := sql +  QuotedStr(scds_produto_procPRODUTO.AsString) + ', ';

   if (tipo_busca = '3') then  // só preencho o campo Lote se o parametro usa lote for 3
     sql := sql + QuotedStr(codlote) + ')'
   else
     sql := sql + 'null' + ')' ;

  dm.sqlsisAdimin.ExecuteDirect(sql);
  DecimalSeparator := ',';
  Try
     dm.sqlsisAdimin.Commit(TD);
  except
     dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
     MessageDlg('Erro no sistema, o Iten não foi gravada.', mtError,
         [mbOk], 0);
  end;

   if (DM_MOV.c_movdet.Active) then
         DM_MOV.c_movdet.Close;
   DM_MOV.c_movdet.Params[0].Clear;
   if (PageControl1.ActivePage = TabSheet1) then
     DM_MOV.c_movdet.Params[0].AsInteger := DM_MOV.c_movimentoCODMOVIMENTO.AsInteger;
   if (PageControl1.ActivePage = TabComanda) then
     DM_MOV.c_movdet.Params[0].AsInteger := DM_MOV.c_comandaCODMOVIMENTO.AsInteger;
   DM_MOV.c_movdet.Open;

end;

procedure TF_Terminal.IncluiPedido;
begin

  dm.sqlsisAdimin.StartTransaction(TD);

  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOV, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  id_movimento := dm.c_6_genid.Fields[0].AsInteger;

  if (PageControl1.ActivePage = TabDelivery) then
  begin

  end;

  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTROCUSTO';
  dm.cds_parametro.Open;

  sql := 'INSERT INTO MOVIMENTO (CODMOVIMENTO, CODPEDIDO, CODNATUREZA, DATAMOVIMENTO, DATA_SISTEMA, STATUS, '+
    'CODUSUARIO, CODVENDEDOR, CODALMOXARIFADO, USUARIOLOGADO, CODCLIENTE, TIPO_PEDIDO) VALUES ( ' +
    IntToStr(id_movimento) + ', ' + IntToStr(id_movimento) +
    ', ' + IntToStr(3) +
    ', ' + QuotedStr(formatdatetime('mm/dd/yyyy', now)) +
    ', ' + QuotedStr(formatdatetime('mm/dd/yyyy', now)) +
    ', ' + IntToStr(20) +
    ', ' + IntToStr(1) + ', ' + IntToStr(1) + ', ' + DM.cds_parametroD1.AsString +
    ', ' + QuotedStr(nome_user) + ', ' + IntToStr(codcliente) + ', ';
  if (PageControl1.ActivePage = TabSheet1) then
    sql := sql + QuotedStr('P') + ')'; // Pedido Consumidor
  if (PageControl1.ActivePage = TabComanda) then
    sql := sql + QuotedStr('C') + ')'; // Venda Comanda / MESA
  if (PageControl1.ActivePage = TabDelivery) then
    sql := sql + QuotedStr('D') + ')'; // Venda Delivery

  Try

     dm.sqlsisAdimin.ExecuteDirect(sql);
     dm.sqlsisAdimin.Commit(TD);
  except
     dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
     MessageDlg('Erro no sistema, o Movimento não foi gravada.', mtError,
         [mbOk], 0);
  end;

  if (PageControl1.ActivePage = TabSheet1) then
  begin
    if (DM_MOV.c_movimento.Active) then
        DM_MOV.c_movimento.Close;
    DM_MOV.c_movimento.Params[0].AsInteger := id_movimento;
    DM_MOV.c_movimento.Open;
  end;

  if (PageControl1.ActivePage = TabComanda) then
  begin
    if (DM_MOV.c_comanda.Active) then
      DM_MOV.c_comanda.Close;
    DM_MOV.c_comanda.CommandText := '';
    sql := 'select m.*,c.NOMECLIENTE from MOVIMENTO m ';
    sql := sql + 'inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE ';
    sql := sql + 'WHERE m.CODNATUREZA = ';
    sql := sql + IntToStr(3);
    sql := sql + 'and m.STATUS = ';
    sql := sql + IntToStr(20);
    sql := sql + 'and m.CODMOVIMENTO = ';
    sql := sql + IntToStr(id_movimento);
    DM_MOV.c_comanda.CommandText := sql;
    DM_MOV.c_comanda.Open;
    {
    if (DM_MOV.c_comanda.Active) then
      DM_MOV.c_comanda.Close;
    DM_MOV.c_comanda.Params[3].Clear;
    DM_MOV.c_comanda.Params[5].Clear;
    DM_MOV.c_comanda.Params[1].Clear;
    DM_MOV.c_comanda.Params[7].Clear;
    DM_MOV.c_comanda.Params[0].AsInteger := codcliente;
    DM_MOV.c_comanda.Params[2].AsInteger := 3;
    DM_MOV.c_comanda.Params[4].AsInteger := 20;
    DM_MOV.c_comanda.Params[6].AsInteger := id_movimento;
    DM_MOV.c_comanda.Open;
    }
  end;
  DM_MOV.c_movdet.Close;
  DM_MOV.c_movdet.Params[0].Clear;

end;

procedure TF_Terminal.AlteraPedido;
begin
    existe_Detalhe := '';
    DM_MOV.c_movdet.Close;
    DM_MOV.c_movdet.Params[0].Clear;
    DM_MOV.c_movdet.Params[0].AsInteger := DM_MOV.c_comandaCODMOVIMENTO.AsInteger;
    DM_MOV.c_movdet.Open;
    if (not DM_MOV.c_movdet.IsEmpty) then
       existe_Detalhe := 'SIM';
end;

procedure TF_Terminal.BuscaProduto;
begin
  RETORNO := '';
  tipo_busca := '1'; //CODBARRA
  {------Verifico se a busca sera efetuada pelo CODPRO ou pelo CODBARRA ---------}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'BUSCAPRODUTO';
  dm.cds_parametro.Open;
  if not dm.cds_parametro.IsEmpty then
     tipo_busca := dm.cds_parametroDADOS.AsString;   //CODPRO
  dm.cds_parametro.Close;


  varsql := 'select  prod.CODPRODUTO, prod.COD_BARRA, prod.PRODUTO, prod.UNIDADEMEDIDA ' +
         ', prod.QTDE_PCT, prod.ICMS, prod.CODALMOXARIFADO, prod.CONTA_DESPESA ' +
         ', ccus.ALMOXARIFADO, prod.VALORUNITARIOATUAL, prod.VALOR_PRAZO ' +
         ', prod.COD_COMISSAO, prod.RATEIO, prod.TIPO, prod.LOCALIZACAO, prod.ESTOQUEATUAL ' +
         ', est.LOTE, est.SALDOESTOQUE, est.MESANO ' +
         ' from PRODUTOS prod ' +
         ' left outer join ALMOXARIFADO ccus ' +
         ' on ccus.CODALMOXARIFADO = prod.CODALMOXARIFADO ' +
         ' left outer join ESTOQUEMES est ' +
         ' on est.CODPRODUTO = prod.CODPRODUTO ' +
         ' where ';

  if scds_produto_proc.Active then
    scds_produto_proc.Close;
  scds_produto_proc.CommandText := '';
  if (PageControl1.ActivePage = TabSheet1) then
  begin
    if (tipo_busca = 'CODBARRA') then
      scds_produto_proc.CommandText := varsql + ' COD_BARRA = ' + '''' + EdtCodBarra.Text + ''''
    else
      scds_produto_proc.CommandText := varsql + ' CODPRO = ' + '''' + EdtCodBarra.Text + '''';
  end;

  if (PageControl1.ActivePage = TabComanda) then
  begin
    if (tipo_busca = 'CODBARRA') then
      scds_produto_proc.CommandText := varsql + ' COD_BARRA = ' + '''' + EdtCodBarra1.Text + ''''
    else
      scds_produto_proc.CommandText := varsql + ' CODPRO = ' + '''' + EdtCodBarra1.Text + '''';
  end;

  scds_produto_proc.Open;

  if (scds_produto_proc.IsEmpty) then
  begin
     //BuscaLote;   // se não
     RETORNO := 'FALSO';
     scds_produto_proc.Close;
  end;

end;

procedure TF_Terminal.EdtCodBarraKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then
   begin
      clienteConsumidor := '1';
      if Dm.cds_parametro.Active then
         dm.cds_parametro.Close;
      dm.cds_parametro.Params[0].AsString := 'CONSUMIDOR';
      dm.cds_parametro.Open;
      if not dm.cds_parametro.IsEmpty then
        clienteConsumidor := dm.cds_parametroDADOS.AsString;
      dm.cds_parametro.Close;

      if (b_cliente.Active) then
        b_cliente.Close;
      b_cliente.Params[0].AsInteger := StrToInt(clienteConsumidor);
      b_cliente.Open;
      if (b_cliente.IsEmpty) then
      begin
          ShowMessage('Cliente configurado nos parametros não consta no cadastro de clientes.');
          exit;
      end
      else
      begin
         codcliente := b_clienteCODCLIENTE.AsInteger;
         nomecliente := b_clienteNOMECLIENTE.AsString;
      end;

      if (EdtCodBarra.Text <> '') then
      begin
        if Dm.cds_parametro.Active then
            dm.cds_parametro.Close;
        dm.cds_parametro.Params[0].AsString := 'BUSCACUPOM';
        dm.cds_parametro.Open;
        if not dm.cds_parametro.IsEmpty then
           tipo_busca := dm.cds_parametroDADOS.AsString;   //CODPRO
        dm.cds_parametro.Close;

        if (tipo_busca = '3') then
        begin
           BuscaLote;
           if ( (RETORNO = 'FALSO') and (ESTOQUE = False) ) then
           begin
             MessageDlg('Quantidade em estoque insuficiente.', mtWarning, [mbOK], 0);
             Exit;
           end;
           if (RETORNO = 'FALSO') then
             BuscaProduto;
        end
        else
        begin
           BuscaProduto;
        end;

        if (RETORNO = 'FALSO') then
        begin
          if (DM_MOV.c_movimento.State in [dsInactive]) then
             IncluiPedido     // Tabela Movimento
          else
             DM_MOV.c_movimento.Edit;
          btnProduto.Click
        end
        else
        begin
          if (DM_MOV.c_movimento.State in [dsInactive]) then
             IncluiPedido     // Tabela Movimento
          else
             DM_MOV.c_movimento.Edit;
          IncluiItemPedido;   // Tabela MovimentoDetalhe
        end;
      end
      else
      begin
          if (DM_MOV.c_movimento.State in [dsInactive]) then
             IncluiPedido     // Tabela Movimento
          else
             DM_MOV.c_movimento.Edit;

          btnProduto.Click;

          if (scds_produto_proc.Active) then
            scds_produto_proc.Close;
      end;
    if (not DM_MOV.c_movdet.IsEmpty) then
      JvTotal.AsFloat := DM_MOV.c_movdettotalpedido.Value;
    EdtCodBarra.Text := '';      
   end;
end;

procedure TF_Terminal.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  //  ActiveMDIChild.Close;
  //Action := caFree;
  //F_Terminal := nil;
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

procedure TF_Terminal.JvProcurarClick(Sender: TObject);
begin
    if (not dmnf.cds_ccusto.Active) then
        dmnf.cds_ccusto.Open;
    dmnf.cds_ccusto.First;
    while not dmnf.cds_ccusto.Eof do
    begin
      fFiltroMovimento.ComboBox1.Items.Add(dmnf.cds_ccustoNOME.AsString);
      dmnf.cds_ccusto.Next;
    end;
    {------Pesquisando na tab Parametro o valor padrão para a Natureza Operação ---------}
    if dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'NATUREZAVENDA';
    dm.cds_parametro.Open;

    //fFiltroMovimento := TfFiltroMovimento.Create(Self);
    //sCtrlResize.CtrlResize(TForm(fFiltroMovimento));
    fFiltroMovimento.Edit3.Text := dm.cds_parametroDADOS.AsString;
    fFiltroMovimento.Edit4.Text := dm.cds_parametroD1.AsString;
    fFiltroMovimento.BitBtn8.Enabled := False;
    fFiltroMovimento.Edit3.Text := '';
    fFiltroMovimento.cod_mov := 0;
    fFiltroMovimento.ShowModal;
    dm.cds_parametro.Close;
    if (fFiltroMovimento.cod_mov > 0) then
    begin
      DM_MOV.c_movimento.Close;
      DM_MOV.c_movimento.Params[0].Clear;
      DM_MOV.c_movimento.Params[0].AsInteger := fFiltroMovimento.cod_mov;
      DM_MOV.c_movimento.Open;
      vTIPO_PEDIDO := DM_MOV.c_movimentoTIPO_PEDIDO.AsString;
      if (vTIPO_PEDIDO = 'C') then // é COMANDA
      begin
        DM_MOV.c_movimento.Close;
        if (DM_MOV.c_comanda.Active) then
          DM_MOV.c_comanda.Close;
        DM_MOV.c_comanda.CommandText := '';
        sql := 'select m.*,c.NOMECLIENTE from MOVIMENTO m ';
        sql := sql + 'inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE ';
        sql := sql + 'WHERE m.CODMOVIMENTO = ';
        sql := sql + IntToStr(fFiltroMovimento.cod_mov);
        DM_MOV.c_comanda.CommandText := sql;
        DM_MOV.c_comanda.Open;
        teste_codigo := IntToStr(DM_MOV.c_comandaCODMOVIMENTO.AsInteger);
      end;
      DM_MOV.c_movdet.Close;
      DM_MOV.c_movdet.Params[0].Clear;
      DM_MOV.c_movdet.Params[0].AsInteger := fFiltroMovimento.cod_mov;
      DM_MOV.c_movdet.Open;
      if (not DM_MOV.c_movdet.IsEmpty) then
        JvTotal.AsFloat := DM_MOV.c_movdettotalpedido.Value;
    end
    else
    begin
      if (DM_MOV.c_movdet.Active) then
        DM_MOV.c_movdet.Close;
      if (DM_MOV.c_movimento.Active) then
        DM_MOV.c_movimento.Close;
    end;

   if (vTIPO_PEDIDO <> 'C') then // Venda Consumidor
   begin
      if (PageControl1.ActivePage <> TabSheet1) then
      begin
         if (TabSheet1.TabVisible = False) then
            TabSheet1.TabVisible := True;
         PageControl1.ActivePage := TabSheet1;
      end;
   end
   else // Venda MESA /COMANDA
   begin
      if (PageControl1.ActivePage <> TabComanda) then
      begin
         if (TabComanda.TabVisible = False) then
            TabComanda.TabVisible := True;
         PageControl1.ActivePage := TabComanda;
      end;
   end;

   if (vTIPO_PEDIDO = 'D') then // DELIVERY
   begin
      if (PageControl1.ActivePage <> TabDelivery) then
      begin
         if (TabDelivery.TabVisible = False) then
            TabDelivery.TabVisible := True;
         PageControl1.ActivePage := TabDelivery;
      end;
   end;

end;

procedure TF_Terminal.FormCreate(Sender: TObject);
begin
  {------Pesquisando na tab Parametro se usa DELIVERY ---}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'PDV';
  dm.cds_parametro.Open;
  TabSheet1.TabVisible := False;
  if (not dm.cds_parametro.IsEmpty) then
  begin
    TabSheet1.TabVisible := True;
    MMJPanel8.Visible := False;

  end;

  {------Pesquisando na tab Parametro se usa DELIVERY ---}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'DELIVERY';
  dm.cds_parametro.Open;
  TabDelivery.TabVisible := False;
  if (not dm.cds_parametro.IsEmpty) then
  begin
    TabDelivery.TabVisible := True;
    MMJPanel8.Visible :=True;
  end;

  {------Pesquisando na tab Parametro se usa COMANDA ---}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'COMANDA';
  dm.cds_parametro.Open;
  TabComanda.TabVisible := False;

  if (not dm.cds_parametro.IsEmpty) then
  begin
    TabComanda.TabVisible := True;
    MMJPanel8.Visible :=True;
    //populaMesas;
    CtrlResize;
    {if (DM_MOV.c_comanda.Active) then
      DM_MOV.c_comanda.Close;
    DM_MOV.c_comanda.Params[0].Clear;
    DM_MOV.c_comanda.Params[3].Clear;
    DM_MOV.c_comanda.Params[5].Clear;
    DM_MOV.c_comanda.Params[6].Clear;
    DM_MOV.c_comanda.Params[1].AsInteger := 9999999;
    DM_MOV.c_comanda.Params[2].AsInteger := 3;
    DM_MOV.c_comanda.Params[4].AsInteger := 20;
    DM_MOV.c_comanda.Params[7].AsInteger := 9999999;
    DM_MOV.c_comanda.Open;}

    if (DM_MOV.c_comanda.Active) then
      DM_MOV.c_comanda.Close;
    DM_MOV.c_comanda.CommandText := '';
    sql := 'select m.*,c.NOMECLIENTE from MOVIMENTO m ';
    sql := sql + 'inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE ';
    sql := sql + 'WHERE m.CODNATUREZA = ';
    sql := sql + IntToStr(3);
    sql := sql + 'and m.STATUS = ';
    sql := sql + IntToStr(20);
    DM_MOV.c_comanda.CommandText := sql;
    DM_MOV.c_comanda.Open;

    pinta_botao_1;
  end;

  if (PageControl1.ActivePage = TabSheet1) then
    MMJPanel8.Visible :=False;

end;

procedure TF_Terminal.JvDBGrid2DblClick(Sender: TObject);
begin
    EdtComanda.Text := IntToStr(DM_MOV.c_comandaCODCLIENTE.AsInteger);
    DM_MOV.c_movdet.Close;
    DM_MOV.c_movdet.Params[0].Clear;
    DM_MOV.c_movdet.Params[0].AsInteger := DM_MOV.c_comandaCODMOVIMENTO.AsInteger;
    DM_MOV.c_movdet.Open;
    if (not DM_MOV.c_movdet.IsEmpty) then
      JvTotal.AsFloat := DM_MOV.c_movdettotalpedido.Value
    else
      JvTotal.AsFloat := 0;
end;

procedure TF_Terminal.PageControl1Change(Sender: TObject);
begin
  if (DM_MOV.c_movimento.Active) then
      DM_MOV.c_movimento.Close;
  if (DM_MOV.c_movdet.Active) then
      DM_MOV.c_movdet.Close;
  JvTotal.AsFloat := 0;    
  if (PageControl1.ActivePage = TabSheet1) then
  begin
    MMJPanel8.Visible :=False;
    EdtCodBarra.SetFocus;
  end;
  if (PageControl1.ActivePage = TabComanda) then
  begin
    MMJPanel8.Visible := True;
    EdtComanda.SetFocus;
  end;

  if (PageControl1.ActivePage = TabDelivery) then
  begin
    MMJPanel8.Visible :=True;
    Edit6.SetFocus;
  end;  

end;

procedure TF_Terminal.EdtCodBarra1KeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then
   begin
      if (EdtCodBarra1.Text <> '') then
        BuscaProduto
      else
        RETORNO := 'FALSO';

      if (RETORNO = 'FALSO') then
         btnProduto.Click
      else
         IncluiItemPedido;

      JvTotal.AsFloat := DM_MOV.c_movdettotalpedido.Value;

      if (scds_produto_proc.Active) then
        scds_produto_proc.Close;
      EdtCodBarra1.Text := '';
   end;
end;

procedure TF_Terminal.JvDBGrid2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    EdtComanda.Text := IntToStr(DM_MOV.c_comandaCODCLIENTE.AsInteger);
    DM_MOV.c_movdet.Close;
    DM_MOV.c_movdet.Params[0].AsInteger := DM_MOV.c_comandaCODMOVIMENTO.AsInteger;
    DM_MOV.c_movdet.Open;
    if (not DM_MOV.c_movdet.IsEmpty) then
      JvTotal.AsFloat := DM_MOV.c_movdettotalpedido.Value
    else
      JvTotal.AsFloat := 0;    
end;

procedure TF_Terminal.JvDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    EdtComanda.Text := IntToStr(DM_MOV.c_comandaCODCLIENTE.AsInteger);
    DM_MOV.c_movdet.Close;
    DM_MOV.c_movdet.Params[0].AsInteger := DM_MOV.c_comandaCODMOVIMENTO.AsInteger;
    DM_MOV.c_movdet.Open;
    if (not DM_MOV.c_movdet.IsEmpty) then
      JvTotal.AsFloat := DM_MOV.c_movdettotalpedido.Value
    else
      JvTotal.AsFloat := 0;
end;

procedure TF_Terminal.JvDBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
    EdtComanda.Text := IntToStr(DM_MOV.c_comandaCODCLIENTE.AsInteger);
    DM_MOV.c_movdet.Close;
    DM_MOV.c_movdet.Params[0].AsInteger := DM_MOV.c_comandaCODMOVIMENTO.AsInteger;
    DM_MOV.c_movdet.Open;
    if (not DM_MOV.c_movdet.IsEmpty) then
      JvTotal.AsFloat := DM_MOV.c_movdettotalpedido.Value
    else
      JvTotal.AsFloat := 0;    
end;

procedure TF_Terminal.JvAlterarClick(Sender: TObject);
begin
 if (not DM_MOV.c_movdet.Active) then
    Exit;
    
 F_AlteraPedido:=TF_AlteraPedido.Create(Application);
 try
   DM_MOV.c_movdet.Edit;
   F_AlteraPedido.JvQtde.AsFloat := DM_MOV.c_movdetQUANTIDADE.AsFloat;
   F_AlteraPedido.JvUnitario.AsFloat := DM_MOV.c_movdetPRECO.AsFloat;
   F_AlteraPedido.ShowModal;
 finally
   F_AlteraPedido.Free;
 end;
end;

procedure TF_Terminal.btnProdutoClick(Sender: TObject);
begin
   if (PageControl1.ActivePage = TabSheet1) then
   begin
     if DM_MOV.d_movimento.DataSet.State in [dsInactive] then
       exit;
     DM_MOV.ID_DO_MOVIMENTO := DM_MOV.c_movimentoCODMOVIMENTO.AsInteger;
   end;
   if (PageControl1.ActivePage = TabComanda) then
   begin
     if DM_MOV.d_comanda.DataSet.State in [dsInactive] then
       exit;
     DM_MOV.ID_DO_MOVIMENTO := DM_MOV.c_comandaCODMOVIMENTO.AsInteger;
   end;
  // fProcura_prod := TfProcura_prod.Create(Application);
  // try
     if (fProcura_prod.Panel2.Visible = False) then
       fProcura_prod.Panel2.Visible := True;
     if (fProcura_prod.Panel1.Visible = True) then
       fProcura_prod.Panel1.Visible := False;
     var_F := 'terminalloja';
     fProcura_prod.Edit2.ReadOnly := True;
     fProcura_prod.Edit2.TabStop := False;
     fProcura_prod.BitBtn1.Click;
     fProcura_prod.ShowModal;

     if (DM_MOV.c_movdet.Active) then
        DM_MOV.c_movdet.Close;
     DM_MOV.c_movdet.Params[0].AsInteger := DM_MOV.ID_DO_MOVIMENTO;
     DM_MOV.c_movdet.Open;
  // finally
  //   fProcura_prod.Free;
  // end;
end;

procedure TF_Terminal.F5ExcluirItemdoPedido1Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'APROVACAO';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
        F_AUTORIZACAO := TF_AUTORIZACAO.Create(Application);
        if (EXISTEPERFIL = 'FALSE') then
        begin
          F_AUTORIZACAO.Free;
          Exit;
        end;

        try
          F_AUTORIZACAO.ShowModal;
        finally
          F_AUTORIZACAO.Free;
        end;
        if (DM.RESULTADO_APROVA = True) then
        begin
          DM_MOV.d_movdet.DataSet.Delete;
         (DM_MOV.d_movdet.DataSet as TClientDataSet).ApplyUpdates(0);
        end
        else
        begin
          ShowMessage('Usuario sem altorização para Excluir/Cancelar Itens');
          Exit;
        end;
     end
     else
     begin
        DM_MOV.d_movdet.DataSet.Delete;
       (DM_MOV.d_movdet.DataSet as TClientDataSet).ApplyUpdates(0);
     end;
  end
  else
    Abort;
end;

procedure TF_Terminal.F7ExcluirPedido1Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     DM_MOV.d_movimento.DataSet.Delete;
     (DM_MOV.d_movimento.DataSet as TClientDataSet).ApplyUpdates(0);
  end
  else
    Abort;
end;

procedure TF_Terminal.JvFinalizarClick(Sender: TObject);
begin
 if (DM_MOV.c_movdet.IsEmpty) then
 begin
    ShowMessage('Selecione um Pedido');
    Exit;
 end;

 DM_MOV.ID_DO_MOVIMENTO := 0;
 if (PageControl1.ActivePage = TabSheet1) then
 begin
    if (not DM_MOV.c_movimento.Active) then
      exit;
    DM_MOV.PAGECONTROL := 'PDV';
    DM_MOV.ID_DO_MOVIMENTO := DM_MOV.c_movimentoCODMOVIMENTO.AsInteger;
 end;

 if (PageControl1.ActivePage = TabComanda) then
 begin
    if (not DM_MOV.c_comanda.Active) then
      exit;
    DM_MOV.PAGECONTROL := 'COMANDA';
    DM_MOV.ID_DO_MOVIMENTO := DM_MOV.c_comandaCODMOVIMENTO.AsInteger;
    if (DM_MOV.c_movimento.Active) then
      DM_MOV.c_movimento.Close;
    DM_MOV.c_movimento.Params[0].AsInteger := DM_MOV.ID_DO_MOVIMENTO;
    DM_MOV.c_movimento.Open;
 end;

 if (PageControl1.ActivePage = TabDelivery) then
    DM_MOV.PAGECONTROL := 'DELIVERY';

 F_TerminalFinaliza:=TF_TerminalFinaliza.Create(Application);
 try
   F_TerminalFinaliza.ShowModal;
 finally
   F_TerminalFinaliza.Free;
 end;

 if (s_venda.Active) then
    s_venda.Close;
 s_venda.Params[0].Clear;
 s_venda.Params[0].AsInteger := DM_MOV.ID_DO_MOVIMENTO;
 s_venda.Open;
 if (not s_venda.IsEmpty) then
 begin
   if (PageControl1.ActivePage = TabComanda) then
     if (DM_MOV.c_movimentoSTATUS.Value = 0) then
     begin
       if (DM_MOV.c_movimento.Active) then
       begin
         nomedocliente := DM_MOV.c_movimentoNOMECLIENTE.AsString;
         pinta_botao;
         if (DM_MOV.c_movimento.Active) then
           DM_MOV.c_movimento.Close;
         DM_MOV.c_movimento.Params[0].Clear;
       end;
     end;
     pinta_botao;
 end;
 s_venda.Close;
 
end;

procedure TF_Terminal.BuscaLote;
begin

  varsql := 'select first 1 prod.CODPRODUTO, prod.COD_BARRA, prod.PRODUTO, prod.UNIDADEMEDIDA ' +
         ', prod.QTDE_PCT, prod.ICMS, prod.CODALMOXARIFADO, prod.CONTA_DESPESA ' +
         ', ccus.ALMOXARIFADO, prod.VALORUNITARIOATUAL, prod.VALOR_PRAZO ' +
         ', prod.COD_COMISSAO, prod.RATEIO, prod.TIPO, prod.LOCALIZACAO, prod.ESTOQUEATUAL ' +
         ', est.LOTE, est.SALDOESTOQUE, est.MESANO ' +
         ' from PRODUTOS prod ' +
         ' left outer join ALMOXARIFADO ccus ' +
         ' on ccus.CODALMOXARIFADO = prod.CODALMOXARIFADO ' +
         ' left outer join ESTOQUEMES est ' +
         ' on est.CODPRODUTO = prod.CODPRODUTO ' +
         ' where ';

  if scds_produto_proc.Active then
    scds_produto_proc.Close;
  scds_produto_proc.CommandText := '';
  if (PageControl1.ActivePage = TabSheet1) then
  begin
    varsql := varsql + ' est.LOTE = ' + '''' + EdtCodBarra.Text + '''' ;
    scds_produto_proc.CommandText := varsql + ' order by est.MESANO desc';
  end;


  if (PageControl1.ActivePage = TabComanda) then
  begin
    varsql := varsql + ' est.LOTE = ' + '''' + EdtCodBarra1.Text + '''' ;
    scds_produto_proc.CommandText := varsql;
  end;

  scds_produto_proc.Open;

  if (scds_produto_proc.IsEmpty) then
  begin
     //ShowMessage('Produto não Localizado');
     scds_produto_proc.Close;
     RETORNO := 'FALSO';
     ESTOQUE := True;
  end
  else
  begin
    if(scds_produto_procSALDOESTOQUE.asFloat > 0) then
    begin
      RETORNO := 'True';
      ESTOQUE := True;
    end
    else
    begin
      RETORNO := 'FALSO';
      ESTOQUE := False;
    end;
    if (PageControl1.ActivePage = TabSheet1) then
       codlote := EdtCodBarra.Text;
    if (PageControl1.ActivePage = TabComanda) then
       codlote := EdtCodBarra1.Text;
  end;


end;

procedure TF_Terminal.FormShow(Sender: TObject);
begin
  if (PageControl1.ActivePage = TabSheet1) then
     EdtCodBarra.SetFocus;
end;

procedure TF_Terminal.JvSairClick(Sender: TObject);
begin
   close;
end;

procedure TF_Terminal.JvImprimirClick(Sender: TObject);
begin
  usaDll := 'FALSE';
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'DLLBEMATECH';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
    usaDll := 'TRUE';

  dm.cds_parametro.Close;

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
  begin
     if (usaDll = 'TRUE') then
       imprimeDLLBema
     else
       imprimeCupom;
  end;

  if (tipoImpressao = 'RECIBO') then
    imprimeRecibo;

end;

procedure TF_Terminal.JvExcluirClick(Sender: TObject);
begin
    if (PageControl1.ActivePage = TabSheet1) then
    begin
      if MessageDlg('Deseja realmente Excluir esse registro?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
        begin
          try
            existevenda;
            if (vendaexiste = 'SIM') then
            begin
              DM_MOV.c_venda.Delete;
              DM_MOV.c_venda.ApplyUpdates(0);
              DM_MOV.c_venda.Close;
            end;
              DM_MOV.d_movimento.DataSet.Delete;
              (DM_MOV.d_movimento.DataSet as TClientDataSet).ApplyUpdates(0);
              if DM_MOV.d_movdet.DataSet.Active then
                DM_MOV.d_movdet.DataSet.Close;
              DM_MOV.d_movimento.DataSet.Close;
              ShowMessage('Pedido/Orçamento Excluido com Suscesso');
           Except
            MessageDlg('Erro ao Excluir o registro', mtWarning, [mbOK], 0);
            exit;
          end;
        end;
    end;
    if (PageControl1.ActivePage = TabComanda) then
    begin
      if (JvLabel8.Caption = '...') then
      begin
         ShowMessage('Selecione um registro');
         exit;
      end;
      if MessageDlg('Deseja realmente Excluir esse registro? ' + nome_botao,mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin
          try
            existevenda;
            if (vendaexiste = 'SIM') then
            begin
              DM_MOV.c_venda.Delete;
              DM_MOV.c_venda.ApplyUpdates(0);
              DM_MOV.c_venda.Close;
            end;
              DM_MOV.d_comanda.DataSet.Delete;
              (DM_MOV.d_comanda.DataSet as TClientDataSet).ApplyUpdates(0);
              if DM_MOV.d_movdet.DataSet.Active then
                DM_MOV.d_movdet.DataSet.Close;
              DM_MOV.d_comanda.DataSet.Close;
              ShowMessage('Pedido/Orçamento Excluido com Suscesso');
              pinta_botao;
              JvLabel8.Caption := '...';
           Except
            MessageDlg('Erro ao Excluir o registro', mtWarning, [mbOK], 0);
            exit;
          end;
      end;
    end;
end;

procedure TF_Terminal.existevenda;
begin
    if (DM_MOV.c_venda.Active) then
      DM_MOV.c_venda.Close;
    if (PageControl1.ActivePage = TabSheet1) then
      DM_MOV.c_venda.Params[0].AsInteger:= DM_MOV.c_MovimentoCODMOVIMENTO.AsInteger;
    if (PageControl1.ActivePage = TabComanda) then
      DM_MOV.c_venda.Params[0].AsInteger:= DM_MOV.c_comandaCODMOVIMENTO.AsInteger;
    DM_MOV.c_venda.Open;
    if (not DM_MOV.c_venda.IsEmpty) then
      vendaexiste := 'SIM'
    else
      vendaexiste := 'NAO';
end;

procedure TF_Terminal.imprimeCupom;
begin
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
      IntToStr(DM_MOV.c_movimentoCODMOVIMENTO.AsInteger);
     Texto2 := '------------------------------------------------------' ;
     Texto3 := 'Produto ' ;
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

procedure TF_Terminal.imprimeRecibo;
begin
  VCLReport1.FileName := str_relatorio + 'orcamento_new.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('PVMOV').Value := DM_MOV.c_movimentoCODMOVIMENTO.AsInteger;
  VCLReport1.Execute;
end;

procedure TF_Terminal.imprimeDLLBema;
begin
     if (not dm.cds_empresa.Active) then
      dm.cds_empresa.Open;
     {----- aqui monto o endereço-----}
     logradouro := dm.cds_empresaENDERECO.Value + ', ' + dm.cds_empresaBAIRRO.Value;
     cep := dm.cds_empresaCIDADE.Value + ' - ' + dm.cds_empresaUF.Value +
     ' - ' + dm.cds_empresaCEP.Value;
     fone := '(19)' + dm.cds_empresaFONE.Value + ' / ' + dm.cds_empresaFONE_1.Value +
     ' / ' + dm.cds_empresaFONE_2.Value;
     Texto  := '-----------------------------------------------------' ;
     Texto1 := '                  FECHAMENTO PARCIAL                 ';
     Texto2 := '-----------------------------------------------------' ;
     Texto3 := 'Produto ' ;
     Texto4 := 'Cod.Barra        UN      Qtde     V.Un.     V.Total ' ;
     Texto5 := DateTimeToStr(Now) + '           Total.: R$ ';
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
        if (s_parametro.Active) then
          s_parametro.Close;
        s_parametro.Params[0].Clear;
        s_parametro.Params[0].AsString := 'PORTA IMPRESSORA';
        s_parametro.Open;
        porta := s_parametroDADOS.AsString;
        s_parametro.Close;

        //Configura o Modelo da Impressora
        iRetorno := ConfiguraModeloImpressora( 7 );
        if (iRetorno = -2) then
          ShowMessage('Erro Configurando Impressora');
        iRetorno := IniciaPorta( pchar( porta ) );
        if (iRetorno <= 0) then
          ShowMessage('Erro Abrindo Porta');
     end;

      buffer  := dm.cds_empresaRAZAO.AsString + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        MessageDlg('Problemas na impressão do texto.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
        exit;
      end;

      buffer  := logradouro + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        MessageDlg('Problemas na impressão do texto.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
        exit;
      end;

      buffer  := cep + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        MessageDlg('Problemas na impressão do texto.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
        exit;
      end;

      buffer  := fone + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        MessageDlg('Problemas na impressão do texto.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
        exit;
      end;

      buffer  := 'CNPJ :' + dm.cds_empresaCNPJ_CPF.AsString + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        MessageDlg('Problemas na impressão do texto.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
        exit;
      end;

      buffer  := cliente + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        MessageDlg('Problemas na impressão do texto.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
        exit;
      end;

      buffer  := texto + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        MessageDlg('Problemas na impressão do texto.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
        exit;
      end;

      buffer  := texto1 + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        MessageDlg('Problemas na impressão do texto.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
        exit;
      end;

      buffer  := texto2 + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        MessageDlg('Problemas na impressão do texto.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
        exit;
      end;

      buffer  := texto3 + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        MessageDlg('Problemas na impressão do texto.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
        exit;
      end;

      buffer  := texto4 + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        MessageDlg('Problemas na impressão do texto.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
        exit;
      end;

     DM_MOV.c_movdet.First;
     while not DM_MOV.c_movdet.Eof do
     begin
         // imprime
        buffer  := DM_MOV.c_movdetDESCPRODUTO.Value + Chr(13) + Chr(10);
        comando := FormataTX(buffer, 3, 0, 0, 0, 0);
        if comando = 0 then
        begin
          MessageDlg('Problemas na impressão do texto.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
          exit;
        end;
        buffer  := Format('%-13s  ',[DM_MOV.c_movdetCODPRO.Value]);
        buffer  := buffer + Format('   %2s  ',[DM_MOV.c_movdetUN.Value]);
        buffer  := buffer + Format('   %6.2n',[DM_MOV.c_movdetQUANTIDADE.AsFloat]);
        buffer  := buffer + Format('   %6.2n',[DM_MOV.c_movdetPRECO.AsFloat]);
        buffer  := buffer + Format('   %8.2n',[DM_MOV.c_movdetValorTotal.value]);
        buffer  := buffer + Chr(13) + Chr(10);
        comando := FormataTX(buffer, 3, 0, 0, 0, 0);
        if comando = 0 then
        begin
          MessageDlg('Problemas na impressão do texto.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
          exit;
        end;
        DM_MOV.c_movdet.next;
     end;

     buffer  := texto + Chr(13) + Chr(10);
     comando := FormataTX(buffer, 3, 0, 0, 0, 0);
     if comando = 0 then
     begin
       MessageDlg('Problemas na impressão do texto.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
       exit;
     end;

     buffer  := texto5;
     total   := DM_MOV.c_movdettotalpedido.Value;
     buffer  := buffer + Format('%10.2n',[total]);
     buffer  := buffer + Chr(13) + Chr(10);
     comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  {   // imprimir vencimentos
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

     }

      buffer  := '' + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      buffer  := '' + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      buffer  := '' + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      buffer  := '' + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
     // Corto o Papel
     comando := AcionaGuilhotina(1);  // modo total (full cut)
     if comando <> 1 then
       MessageDlg('Problemas no corte do papel..' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );

     // Comando para Acionar a Gaveta de Dinheiro
    // scomando := #27 + #118 + #140;
    // iRetorno := ComandoTX( scomando, Length( scomando ));

end;

procedure TF_Terminal.clic_botao;
begin
    JvLabel8.Caption := nome_botao;
    if (DM_MOV.s_BuscaComanda.Active) then
      DM_MOV.s_BuscaComanda.Close;
    DM_MOV.s_BuscaComanda.Params[0].Clear;
    DM_MOV.s_BuscaComanda.Params[1].AsString :=  nome_botao;
    DM_MOV.s_BuscaComanda.Open;
    if (DM_MOV.s_BuscaComanda.IsEmpty) then
    begin
       DM_MOV.s_BuscaComanda.Close;
       ShowMessage('Comanda não Localizada');
       Exit;
    end;
    codcliente := DM_MOV.s_BuscaComandaCODCLIENTE.AsInteger;
    if (DM_MOV.s_buscaMov.Active) then
       DM_MOV.s_buscaMov.Close;

    sql := 'select m.CODMOVIMENTO, c.NOMECLIENTE from MOVIMENTO m ' +
           'inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE ' +
           'where m.CODNATUREZA = ' + IntToStr(3) + ' and m.STATUS = ' +
           IntToStr(20) + ' and m.CODCLIENTE = ' + IntToStr(codcliente);
    DM_MOV.s_buscaMov.CommandText := sql;
    {
    DM_MOV.s_buscaMov.Params[1].Clear;
    DM_MOV.s_buscaMov.Params[3].Clear;
    DM_MOV.s_buscaMov.Params[5].Clear;
    DM_MOV.s_buscaMov.Params[0].AsInteger := codcliente;
    DM_MOV.s_buscaMov.Params[2].AsInteger := 3;
    DM_MOV.s_buscaMov.Params[4].AsInteger := 20;//Pedidos em aberto
    }
    DM_MOV.s_buscaMov.Open;


    if (DM_MOV.s_buscaMov.IsEmpty)then
       IncluiPedido
    else
    begin
      if (DM_MOV.c_comanda.Active) then
        DM_MOV.c_comanda.Close;
      DM_MOV.c_comanda.CommandText := '';
      sql := 'select m.*,c.NOMECLIENTE from MOVIMENTO m ';
      sql := sql + 'inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE ';
      sql := sql + 'WHERE m.CODNATUREZA = ';
      sql := sql + IntToStr(3);
      sql := sql + 'and m.STATUS = ';
      sql := sql + IntToStr(20);
      sql := sql + 'and m.CODCLIENTE = ';
      sql := sql + IntToStr(codcliente);

      DM_MOV.c_comanda.CommandText := sql;
      DM_MOV.c_comanda.Open;
      { if (DM_MOV.c_comanda.Active) then
           DM_MOV.c_comanda.Close;
       DM_MOV.c_comanda.Params[1].Clear;
       DM_MOV.c_comanda.Params[3].Clear;
       DM_MOV.c_comanda.Params[5].Clear;
       DM_MOV.c_comanda.Params[6].Clear;
       DM_MOV.c_comanda.Params[0].AsInteger := codcliente;
       DM_MOV.c_comanda.Params[2].AsInteger := 3;
       DM_MOV.c_comanda.Params[4].AsInteger := 20;
       DM_MOV.c_comanda.Params[7].AsInteger := 9999999;
       DM_MOV.c_comanda.Open;    }
       AlteraPedido;
    end;
    if (not DM_MOV.c_movdet.IsEmpty) then
      JvTotal.AsFloat := DM_MOV.c_movdettotalpedido.Value

    else
      DM_MOV.c_movdet.Close;
    DM_MOV.s_buscaMov.Close;
    DM_MOV.s_BuscaComanda.Close;

end;

procedure TF_Terminal.JvTransparentButton1Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton1.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton2Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton2.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton3Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton3.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton4Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton4.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton5Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton5.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton6Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton6.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton7Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton7.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton8Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton8.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton9Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton9.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton10Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton10.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton11Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton11.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton12Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton12.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton13Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton13.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton14Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton14.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton15Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton15.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton16Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton16.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton17Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton17.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton18Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton18.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton19Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton19.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton20Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton20.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton21Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton21.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton22Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton22.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton23Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton23.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton24Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton25.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton25Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton25.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton26Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton26.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton27Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton27.ComponentIndex);end;

procedure TF_Terminal.JvTransparentButton28Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton28.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton29Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton29.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton30Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton30.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton31Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton31.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton32Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton32.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton33Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton33.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton34Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton34.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton35Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton35.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton36Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton36.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton37Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton37.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton38Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton38.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton39Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton39.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton40Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton40.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton41Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton41.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton42Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton42.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton43Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton43.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton44Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton44.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton45Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton45.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton46Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton46.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton47Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton47.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton48Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton48.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton49Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton49.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton50Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton50.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton51Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton51.ComponentIndex);
end;

procedure TF_Terminal.JvTransparentButton52Click(Sender: TObject);
begin
  Mesa_Clic(JvTransparentButton52.ComponentIndex);
end;

procedure TF_Terminal.pinta_botao;
begin
    if (DM_MOV.c_comanda.Active) then
      DM_MOV.c_comanda.Close;
    DM_MOV.c_comanda.CommandText := '';
    sql := 'select m.*,c.NOMECLIENTE from MOVIMENTO m ';
    sql := sql + 'inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE ';
    sql := sql + 'WHERE m.CODNATUREZA = ';
    sql := sql + IntToStr(3);
    sql := sql + 'and m.STATUS = ';
    sql := sql + IntToStr(20);
    DM_MOV.c_comanda.CommandText := sql;
    DM_MOV.c_comanda.Open;
{  if (not DM_MOV.c_comanda.Active) then
  begin
    DM_MOV.c_comanda.Params[0].Clear;
    DM_MOV.c_comanda.Params[3].Clear;
    DM_MOV.c_comanda.Params[5].Clear;
    DM_MOV.c_comanda.Params[6].Clear;
    DM_MOV.c_comanda.Params[1].AsInteger := 9999999;
    DM_MOV.c_comanda.Params[2].AsInteger := 3;
    DM_MOV.c_comanda.Params[4].AsInteger := 20;
    DM_MOV.c_comanda.Params[7].AsInteger := 9999999;
    DM_MOV.c_comanda.Open;
  end;            }
  numeroComp := 0;
  numeroComp := JvTransparentButton1.ComponentIndex;
  cor := clLime;

  for numeroComp := 36 to 88 do
  begin
    if (TJvTransparentButton(Components[numeroComp]).Caption = nome_botao) then
       TJvTransparentButton(Components[numeroComp]).color := cor;
  end;

  {
  if (nome_botao = JvTransparentButton1.Caption) then
     JvTransparentButton1.Color := cor;
  if (nome_botao = JvTransparentButton2.Caption) then
     JvTransparentButton2.Color := cor;
  if (nome_botao = JvTransparentButton3.Caption) then
     JvTransparentButton3.Color := cor;
  if (nome_botao = JvTransparentButton4.Caption) then
     JvTransparentButton4.Color := cor;
  if (nome_botao = JvTransparentButton5.Caption) then
     JvTransparentButton5.Color := cor;
  if (nome_botao = JvTransparentButton6.Caption) then
     JvTransparentButton6.Color := cor;
  if (nome_botao = JvTransparentButton7.Caption) then
     JvTransparentButton7.Color := cor;
  if (nome_botao = JvTransparentButton8.Caption) then
     JvTransparentButton8.Color := cor;
  if (nome_botao = JvTransparentButton9.Caption) then
     JvTransparentButton9.Color := cor;
  if (nome_botao = JvTransparentButton10.Caption) then
     JvTransparentButton10.Color := cor;
  if (nome_botao = JvTransparentButton11.Caption) then
     JvTransparentButton11.Color := cor;
  if (nome_botao = JvTransparentButton12.Caption) then
     JvTransparentButton12.Color := cor;
  if (nome_botao = JvTransparentButton13.Caption) then
     JvTransparentButton13.Color := cor;
  if (nome_botao = JvTransparentButton14.Caption) then
     JvTransparentButton14.Color := cor;
  if (nome_botao = JvTransparentButton15.Caption) then
     JvTransparentButton15.Color := cor;
  if (nome_botao = JvTransparentButton16.Caption) then
     JvTransparentButton16.Color := cor;
  if (nome_botao = JvTransparentButton17.Caption) then
     JvTransparentButton17.Color := cor;
  if (nome_botao = JvTransparentButton18.Caption) then
     JvTransparentButton18.Color := cor;
  if (nome_botao = JvTransparentButton19.Caption) then
     JvTransparentButton19.Color := cor;
  if (nome_botao = JvTransparentButton20.Caption) then
     JvTransparentButton20.Color := cor;
  if (nome_botao = JvTransparentButton21.Caption) then
     JvTransparentButton21.Color := cor;
  if (nome_botao = JvTransparentButton22.Caption) then
     JvTransparentButton22.Color := cor;
  if (nome_botao = JvTransparentButton23.Caption) then
     JvTransparentButton23.Color := cor;
  if (nome_botao = JvTransparentButton24.Caption) then
     JvTransparentButton24.Color := cor;
  if (nome_botao = JvTransparentButton35.Caption) then
     JvTransparentButton25.Color := cor;
  if (nome_botao = JvTransparentButton26.Caption) then
     JvTransparentButton26.Color := cor;
  if (nome_botao = JvTransparentButton27.Caption) then
     JvTransparentButton27.Color := cor;
  if (nome_botao = JvTransparentButton28.Caption) then
     JvTransparentButton28.Color := cor;
  if (nome_botao = JvTransparentButton29.Caption) then
     JvTransparentButton29.Color := cor;
  if (nome_botao = JvTransparentButton30.Caption) then
     JvTransparentButton30.Color := cor;
  if (nome_botao = JvTransparentButton31.Caption) then
     JvTransparentButton31.Color := cor;
  if (nome_botao = JvTransparentButton32.Caption) then
     JvTransparentButton32.Color := cor;
  if (nome_botao = JvTransparentButton33.Caption) then
     JvTransparentButton33.Color := cor;
  if (nome_botao = JvTransparentButton34.Caption) then
     JvTransparentButton34.Color := cor;
  if (nome_botao = JvTransparentButton35.Caption) then
     JvTransparentButton35.Color := cor;
  if (nome_botao = JvTransparentButton36.Caption) then
     JvTransparentButton36.Color := cor;
  if (nome_botao = JvTransparentButton37.Caption) then
     JvTransparentButton37.Color := cor;
  if (nome_botao = JvTransparentButton38.Caption) then
     JvTransparentButton38.Color := cor;
  if (nome_botao = JvTransparentButton39.Caption) then
     JvTransparentButton39.Color := cor;
  if (nome_botao = JvTransparentButton40.Caption) then
     JvTransparentButton40.Color := cor;
  if (nome_botao = JvTransparentButton41.Caption) then
     JvTransparentButton41.Color := cor;
  if (nome_botao = JvTransparentButton42.Caption) then
     JvTransparentButton42.Color := cor;
  if (nome_botao = JvTransparentButton43.Caption) then
     JvTransparentButton43.Color := cor;
  if (nome_botao = JvTransparentButton44.Caption) then
     JvTransparentButton44.Color := cor;
  if (nome_botao = JvTransparentButton45.Caption) then
     JvTransparentButton45.Color := cor;
  if (nome_botao = JvTransparentButton46.Caption) then
     JvTransparentButton46.Color := cor;
  if (nome_botao = JvTransparentButton47.Caption) then
     JvTransparentButton47.Color := cor;
  if (nome_botao = JvTransparentButton48.Caption) then
     JvTransparentButton48.Color := cor;
  if (nome_botao = JvTransparentButton49.Caption) then
     JvTransparentButton49.Color := cor;
  if (nome_botao = JvTransparentButton50.Caption) then
     JvTransparentButton50.Color := cor;
  if (nome_botao = JvTransparentButton51.Caption) then
     JvTransparentButton51.Color := cor;
  if (nome_botao = JvTransparentButton52.Caption) then
     JvTransparentButton52.Color := cor;
   }
end;

procedure TF_Terminal.pinta_botao_1;
begin
    if (DM_MOV.c_comanda.Active) then
      DM_MOV.c_comanda.Close;
    DM_MOV.c_comanda.CommandText := '';
    sql := 'select m.*,c.NOMECLIENTE from MOVIMENTO m ';
    sql := sql + 'inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE ';
    sql := sql + 'WHERE m.CODNATUREZA = ';
    sql := sql + IntToStr(3);
    sql := sql + 'and m.STATUS = ';
    sql := sql + IntToStr(20);
    DM_MOV.c_comanda.CommandText := sql;
    DM_MOV.c_comanda.Open;
{
  if (not DM_MOV.c_comanda.Active) then
  begin
    DM_MOV.c_comanda.Params[0].Clear;
    DM_MOV.c_comanda.Params[3].Clear;
    DM_MOV.c_comanda.Params[5].Clear;
    DM_MOV.c_comanda.Params[6].Clear;
    DM_MOV.c_comanda.Params[1].AsInteger := 9999999;
    DM_MOV.c_comanda.Params[2].AsInteger := 3;
    DM_MOV.c_comanda.Params[4].AsInteger := 20;
    DM_MOV.c_comanda.Params[7].AsInteger := 9999999;
    DM_MOV.c_comanda.Open;
  end;
  }
  numeroComp := 0;
  {
  for i := 0 to  componentCount -1 do
  begin
    if (numeroComp = 0) then
    begin
      if Components[i] is TJvTransparentButton then
      begin
        numeroComp := i-1;
      end;
    end;
  end;
  }
   numeroComp := JvTransparentButton1.ComponentIndex;
   cor := clRed;


   DM_MOV.c_comanda.First;
   while not DM_MOV.c_comanda.Eof do
   begin
       nomedocliente := DM_MOV.c_comandaNOMECLIENTE.AsString;

       for numeroComp := 36 to 88 do
       begin
         if (TJvTransparentButton(Components[numeroComp]).Caption = nomedocliente) then
            TJvTransparentButton(Components[numeroComp]).color := cor;
       end;

   {
       if (nomedocliente = JvTransparentButton1.Caption) then
           JvTransparentButton1.Color := cor
       else if (nomedocliente = JvTransparentButton2.Caption) then
           JvTransparentButton2.Color := cor
       else if (nomedocliente = JvTransparentButton3.Caption) then
           JvTransparentButton3.Color := cor
       else if (nomedocliente = JvTransparentButton4.Caption) then
           JvTransparentButton4.Color := cor
       else if (nomedocliente = JvTransparentButton5.Caption) then
           JvTransparentButton5.Color := cor
       else if (nomedocliente = JvTransparentButton6.Caption) then
           JvTransparentButton6.Color := cor
       else if (nomedocliente = JvTransparentButton7.Caption) then
           JvTransparentButton7.Color := cor
       else if (nomedocliente = JvTransparentButton8.Caption) then
           JvTransparentButton8.Color := cor
       else if (nomedocliente = JvTransparentButton9.Caption) then
           JvTransparentButton9.Color := cor
       else if (nomedocliente = JvTransparentButton10.Caption) then
           JvTransparentButton10.Color := cor
       else if (nomedocliente = JvTransparentButton11.Caption) then
           JvTransparentButton11.Color := cor
       else if (nomedocliente = JvTransparentButton12.Caption) then
           JvTransparentButton12.Color := cor
       else if (nomedocliente = JvTransparentButton13.Caption) then
           JvTransparentButton13.Color := cor
       else if (nomedocliente = JvTransparentButton14.Caption) then
           JvTransparentButton14.Color := cor
       else if (nomedocliente = JvTransparentButton15.Caption) then
           JvTransparentButton15.Color := cor
       else if (nomedocliente = JvTransparentButton16.Caption) then
           JvTransparentButton16.Color := cor
       else if (nomedocliente = JvTransparentButton17.Caption) then
           JvTransparentButton17.Color := cor
       else if (nomedocliente = JvTransparentButton18.Caption) then
           JvTransparentButton18.Color := cor
       else if (nomedocliente = JvTransparentButton19.Caption) then
           JvTransparentButton19.Color := cor
       else if (nomedocliente = JvTransparentButton20.Caption) then
           JvTransparentButton20.Color := cor
       else if (nomedocliente = JvTransparentButton21.Caption) then
           JvTransparentButton21.Color := cor
       else if (nomedocliente = JvTransparentButton22.Caption) then
           JvTransparentButton22.Color := cor
       else if (nomedocliente = JvTransparentButton23.Caption) then
           JvTransparentButton23.Color := cor
       else if (nomedocliente = JvTransparentButton24.Caption) then
           JvTransparentButton24.Color := cor
       else if (nomedocliente = JvTransparentButton25.Caption) then
           JvTransparentButton25.Color := cor
       else if (nomedocliente = JvTransparentButton26.Caption) then
           JvTransparentButton26.Color := cor
       else if (nomedocliente = JvTransparentButton27.Caption) then
           JvTransparentButton27.Color := cor
       else if (nomedocliente = JvTransparentButton28.Caption) then
           JvTransparentButton28.Color := cor
       else if (nomedocliente = JvTransparentButton29.Caption) then
           JvTransparentButton29.Color := cor
       else if (nomedocliente = JvTransparentButton30.Caption) then
           JvTransparentButton30.Color := cor
       else if (nomedocliente = JvTransparentButton31.Caption) then
           JvTransparentButton31.Color := cor
       else if (nomedocliente = JvTransparentButton32.Caption) then
           JvTransparentButton32.Color := cor
       else if (nomedocliente = JvTransparentButton33.Caption) then
           JvTransparentButton33.Color := cor
       else if (nomedocliente = JvTransparentButton34.Caption) then
           JvTransparentButton34.Color := cor
       else if (nomedocliente = JvTransparentButton35.Caption) then
           JvTransparentButton35.Color := cor
       else if (nomedocliente = JvTransparentButton36.Caption) then
           JvTransparentButton36.Color := cor
       else if (nomedocliente = JvTransparentButton37.Caption) then
           JvTransparentButton37.Color := cor
       else if (nomedocliente = JvTransparentButton38.Caption) then
           JvTransparentButton38.Color := cor
       else if (nomedocliente = JvTransparentButton39.Caption) then
           JvTransparentButton39.Color := cor
       else if (nomedocliente = JvTransparentButton40.Caption) then
           JvTransparentButton40.Color := cor
       else if (nomedocliente = JvTransparentButton41.Caption) then
           JvTransparentButton41.Color := cor
       else if (nomedocliente = JvTransparentButton42.Caption) then
           JvTransparentButton42.Color := cor
       else if (nomedocliente = JvTransparentButton43.Caption) then
           JvTransparentButton43.Color := cor
       else if (nomedocliente = JvTransparentButton44.Caption) then
           JvTransparentButton44.Color := cor
       else if (nomedocliente = JvTransparentButton45.Caption) then
           JvTransparentButton45.Color := cor
       else if (nomedocliente = JvTransparentButton46.Caption) then
           JvTransparentButton46.Color := cor
       else if (nomedocliente = JvTransparentButton47.Caption) then
           JvTransparentButton47.Color := cor
       else if (nomedocliente = JvTransparentButton48.Caption) then
           JvTransparentButton48.Color := cor
       else if (nomedocliente = JvTransparentButton49.Caption) then
           JvTransparentButton49.Color := cor
       else if (nomedocliente = JvTransparentButton50.Caption) then
           JvTransparentButton50.Color := cor
       else if (nomedocliente = JvTransparentButton51.Caption) then
           JvTransparentButton51.Color := cor
       else if (nomedocliente = JvTransparentButton52.Caption) then
           JvTransparentButton52.Color := cor;
          }
       DM_MOV.c_comanda.Next;
   end;
end;

procedure TF_Terminal.EdtCodBarra1Enter(Sender: TObject);
begin
  EdtCodBarra1.Color := clYellow;
end;

procedure TF_Terminal.EdtCodBarra1Exit(Sender: TObject);
begin
  EdtCodBarra1.Color := clWindow;
end;

procedure TF_Terminal.JvBitBtn1Click(Sender: TObject);
begin
    //Configura o Modelo da Impressora
    iRetorno := ConfiguraModeloImpressora( 7 );
    if (iRetorno = -2) then
      ShowMessage('Erro Configurando Impressora');
    iRetorno := IniciaPorta( pchar( 'USB' ) );
    if (iRetorno <= 0) then
      ShowMessage('Erro Abrindo Porta');

     // Comando para Acionar a Gaveta de Dinheiro
     scomando := #27 + #118 + #140;
     iRetorno := ComandoTX( scomando, Length( scomando ));

    iRetorno := 0;
    iRetorno := FechaPorta();

end;

procedure TF_Terminal.CtrlResize;
var
  i : integer;
begin
  numeroComp := 0;
  for i := 0 to  componentCount -1 do
  begin
    if (numeroComp = 0) then
    begin
      if Components[i] is TJvTransparentButton then
      begin
        numeroComp := i-1;
      end;
    end;
  end;

    if (s_mesas.Active) then
      s_mesas.close;
    s_mesas.Open;
    s_mesas.First;
    while not (s_mesas.Eof) do
    begin
        TJvTransparentButton(Components[s_mesas.RecNo + numeroComp]).Visible := True;
        TJvTransparentButton(Components[s_mesas.RecNo + numeroComp]).Caption := s_mesasNOMECLIENTE.AsString;
        TJvTransparentButton(Components[s_mesas.RecNo + numeroComp]).Font.Name := 'Cooper Black';
        TJvTransparentButton(Components[s_mesas.RecNo + numeroComp]).Font.Color := clBlack;
      s_mesas.Next;
    end;
end;

procedure TF_Terminal.Mesa_Clic(botao: Integer);
begin
  pinta_botao_1;
  nome_botao := TJvTransparentButton(Components[botao]).Caption; //JvTransparentButton1.Caption;
  clic_botao;
  TJvTransparentButton(Components[botao]).Color := clYellow;
  EdtCodBarra1.SetFocus;
end;

procedure TF_Terminal.JvBitBtn2Click(Sender: TObject);
begin
  F_MESAS := TF_MESAS.Create(Application);
  try
    F_MESAS.ShowModal;
  finally
    F_MESAS.Free;
  end;
    CtrlResize;
    if (DM_MOV.c_comanda.Active) then
      DM_MOV.c_comanda.Close;
    DM_MOV.c_comanda.CommandText := '';
    sql := 'select m.*,c.NOMECLIENTE from MOVIMENTO m ';
    sql := sql + 'inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE ';
    sql := sql + 'WHERE m.CODNATUREZA = ';
    sql := sql + IntToStr(3);
    sql := sql + 'and m.STATUS = ';
    sql := sql + IntToStr(20);
    DM_MOV.c_comanda.CommandText := sql;
    DM_MOV.c_comanda.Open;
    pinta_botao_1;

end;

procedure TF_Terminal.JvBitBtn3Click(Sender: TObject);
begin
    if (DM_MOV.s_BuscaComanda.Active) then
      DM_MOV.s_BuscaComanda.Close;
    DM_MOV.s_BuscaComanda.Params[0].Clear;
    DM_MOV.s_BuscaComanda.Params[1].AsString :=  nome_botao;
    DM_MOV.s_BuscaComanda.Open;
    if (DM_MOV.s_BuscaComanda.IsEmpty) then
    begin
       DM_MOV.s_BuscaComanda.Close;
       ShowMessage('Comanda não Localizada');
       Exit;
    end;
    codcliente := DM_MOV.s_BuscaComandaCODCLIENTE.AsInteger;
    if (DM_MOV.s_buscaMov.Active) then
       DM_MOV.s_buscaMov.Close;

    sql := 'select m.CODMOVIMENTO, c.NOMECLIENTE from MOVIMENTO m ' +
           'inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE ' +
           'where m.CODNATUREZA = ' + IntToStr(3) + ' and m.STATUS = ' +
           IntToStr(20) + ' and m.CODCLIENTE = ' + IntToStr(codcliente);
    DM_MOV.s_buscaMov.CommandText := sql;
    DM_MOV.s_buscaMov.Open;

    if (DM_MOV.s_buscaMov.IsEmpty)then
    begin
      ShowMessage('Selecione uma Mesa');
      Exit;
    end;

  F_MudaMesa := TF_MudaMesa.Create(Application);
  try
    F_MudaMesa.Edit1.Text := JvLabel8.Caption;
    F_MudaMesa.ShowModal;
  finally
    F_MudaMesa.Free;
  end;
  DM_MOV.s_buscaMov.close;

  if (DM_MOV.c_comanda.Active) then
    DM_MOV.c_comanda.Close;
  DM_MOV.c_comanda.CommandText := '';
  sql := 'select m.*,c.NOMECLIENTE from MOVIMENTO m ';
  sql := sql + 'inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE ';
  sql := sql + 'WHERE m.CODNATUREZA = ';
  sql := sql + IntToStr(3);
  sql := sql + 'and m.STATUS = ';
  sql := sql + IntToStr(20);
  DM_MOV.c_comanda.CommandText := sql;
  DM_MOV.c_comanda.Open;
  JvLabel8.Caption := '...';

  CtrlResize;
  if (DM_MOV.c_comanda.Active) then
    DM_MOV.c_comanda.Close;
  DM_MOV.c_comanda.CommandText := '';
  sql := 'select m.*,c.NOMECLIENTE from MOVIMENTO m ';
  sql := sql + 'inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE ';
  sql := sql + 'WHERE m.CODNATUREZA = ';
  sql := sql + IntToStr(3);
  sql := sql + 'and m.STATUS = ';
  sql := sql + IntToStr(20);
  DM_MOV.c_comanda.CommandText := sql;
  DM_MOV.c_comanda.Open;
  pinta_botao;
  pinta_botao_1;
  
end;

end.
