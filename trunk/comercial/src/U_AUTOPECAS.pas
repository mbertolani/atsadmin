unit U_AUTOPECAS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, JvExStdCtrls, JvGroupBox, Mask, DBCtrls,
  Grids, DBGrids, JvExDBGrids, JvDBGrid, Buttons, MMJPanel, FMTBcd, DB,
  DBClient, Provider, SqlExpr, ComCtrls;

type
  TF_AUTOPECAS = class(TForm)
    MMJPanel1: TMMJPanel;
    edt_produto: TEdit;
    lbl1: TLabel;
    btn1: TBitBtn;
    MMJPanel2: TMMJPanel;
    JvDBGrid1: TJvDBGrid;
    MMJPanel3: TMMJPanel;
    dbedt1: TDBEdit;
    lbl2: TLabel;
    MMJPanel5: TMMJPanel;
    btn_incluir: TBitBtn;
    pgc1: TPageControl;
    ts1: TTabSheet;
    MMJPanel4: TMMJPanel;
    JvGroupBox1: TJvGroupBox;
    lbl3: TLabel;
    lbl9: TLabel;
    dbedt2: TDBEdit;
    dbedt6: TDBEdit;
    btn2: TBitBtn;
    JvGroupBox2: TJvGroupBox;
    lbl4: TLabel;
    lbl10: TLabel;
    dbedt3: TDBEdit;
    dbedt7: TDBEdit;
    btn3: TBitBtn;
    JvGroupBox4: TJvGroupBox;
    JvDBGrid2: TJvDBGrid;
    JvGroupBox5: TJvGroupBox;
    lbl7: TLabel;
    lbl8: TLabel;
    dbedt4: TDBEdit;
    dbedt5: TDBEdit;
    rg1: TRadioGroup;
    ts2: TTabSheet;
    JvGroupBox7: TJvGroupBox;
    JvDBGrid3: TJvDBGrid;
    s_buscaPro: TSQLDataSet;
    s_similar: TSQLDataSet;
    s_movimento: TSQLDataSet;
    p_similar: TDataSetProvider;
    p_movimento: TDataSetProvider;
    ds_similar: TClientDataSet;
    ds_movimento: TClientDataSet;
    d_similar: TDataSource;
    d_movimento: TDataSource;
    d_movdet: TDataSource;
    ds_movdet: TClientDataSet;
    p_movdet: TDataSetProvider;
    s_movdet: TSQLDataSet;
    SQLDataSet5: TSQLDataSet;
    DataSetProvider4: TDataSetProvider;
    ds4: TClientDataSet;
    DataSource4: TDataSource;
    ds_similarID_SIMILAR: TIntegerField;
    ds_similarID_PRODUTO: TIntegerField;
    ds_similarCODPRO: TStringField;
    ds_similarCODPROSIMILAR: TStringField;
    ds_similarPRODUTO: TStringField;
    ds_similarMARCA: TStringField;
    ds_similarVALORUNITARIOATUAL: TFloatField;
    ds_similarPRECOMEDIO: TBCDField;
    s_buscaProCODPRODUTO: TIntegerField;
    s_buscaProPRODUTO: TStringField;
    s_buscaProPRECOMEDIO: TBCDField;
    s_buscaProVALORUNITARIOATUAL: TFloatField;
    s_buscaProUNIDADEMEDIDA: TStringField;
    s_buscaProMARCA: TStringField;
    s_buscaProCODPRO: TStringField;
    s_buscaProCOD_BARRA: TStringField;
    ds_movimentoCODMOVIMENTO: TIntegerField;
    ds_movimentoDATAMOVIMENTO: TDateField;
    ds_movimentoCODCLIENTE: TIntegerField;
    ds_movimentoCODNATUREZA: TSmallintField;
    ds_movimentoSTATUS: TSmallintField;
    ds_movimentoCODUSUARIO: TSmallintField;
    ds_movimentoCODVENDEDOR: TSmallintField;
    ds_movimentoCODALMOXARIFADO: TIntegerField;
    ds_movimentoCODFORNECEDOR: TIntegerField;
    ds_movimentoDATA_SISTEMA: TSQLTimeStampField;
    ds_movimentoCOD_VEICULO: TIntegerField;
    ds_movimentoCONTROLE: TStringField;
    ds_movimentoOBS: TStringField;
    ds_movimentoCONFERIDO: TStringField;
    ds_movimentoNFCOBRANCA: TIntegerField;
    ds_movimentoORDEMATEND: TIntegerField;
    ds_movimentoNFREVENDA: TIntegerField;
    ds_movimentoCODORIGEM: TIntegerField;
    ds_movimentoKM: TStringField;
    ds_movimentoTOTALMOVIMENTO: TFloatField;
    ds_movimentoVALORRATEIO: TFloatField;
    ds_movimentoRATEIO: TFloatField;
    ds_movimentoCODMOVRATEIO: TIntegerField;
    ds_movimentoNFE: TStringField;
    ds_movimentoNOMECLIENTE: TStringField;
    ds_movimentoOBS_1: TStringField;
    ds_movimentoPLACA: TStringField;
    ds_movimentoMARCA_MODELO: TStringField;
    ds_movimentoNOMEUSUARIO: TStringField;
    ds_movimentoNOMEFORNECEDOR: TStringField;
    ds_movimentoDESCNATUREZA: TStringField;
    ds_movimentoALMOXARIFADO: TStringField;
    ds_movimentoTIPOTITULO: TSmallintField;
    ds_movimentoBAIXAMOVIMENTO: TSmallintField;
    s_movimentoCODMOVIMENTO: TIntegerField;
    s_movimentoDATAMOVIMENTO: TDateField;
    s_movimentoCODCLIENTE: TIntegerField;
    s_movimentoCODNATUREZA: TSmallintField;
    s_movimentoSTATUS: TSmallintField;
    s_movimentoCODUSUARIO: TSmallintField;
    s_movimentoCODVENDEDOR: TSmallintField;
    s_movimentoCODALMOXARIFADO: TIntegerField;
    s_movimentoCODFORNECEDOR: TIntegerField;
    s_movimentoDATA_SISTEMA: TSQLTimeStampField;
    s_movimentoCOD_VEICULO: TIntegerField;
    s_movimentoCONTROLE: TStringField;
    s_movimentoOBS: TStringField;
    s_movimentoCONFERIDO: TStringField;
    s_movimentoNFCOBRANCA: TIntegerField;
    s_movimentoORDEMATEND: TIntegerField;
    s_movimentoNFREVENDA: TIntegerField;
    s_movimentoCODORIGEM: TIntegerField;
    s_movimentoKM: TStringField;
    s_movimentoTOTALMOVIMENTO: TFloatField;
    s_movimentoVALORRATEIO: TFloatField;
    s_movimentoRATEIO: TFloatField;
    s_movimentoCODMOVRATEIO: TIntegerField;
    s_movimentoNFE: TStringField;
    s_movimentoNOMECLIENTE: TStringField;
    s_movimentoOBS_1: TStringField;
    s_movimentoPLACA: TStringField;
    s_movimentoMARCA_MODELO: TStringField;
    s_movimentoNOMEUSUARIO: TStringField;
    s_movimentoNOMEFORNECEDOR: TStringField;
    s_movimentoDESCNATUREZA: TStringField;
    s_movimentoALMOXARIFADO: TStringField;
    s_movimentoTIPOTITULO: TSmallintField;
    s_movimentoBAIXAMOVIMENTO: TSmallintField;
    ds_movdetCODDETALHE: TIntegerField;
    ds_movdetCODMOVIMENTO: TIntegerField;
    ds_movdetCODPRODUTO: TIntegerField;
    ds_movdetICMS: TFloatField;
    ds_movdetPRECO: TFloatField;
    ds_movdetQUANTIDADE: TFloatField;
    ds_movdetQTDE_ALT: TFloatField;
    ds_movdetUN: TStringField;
    ds_movdetBAIXA: TStringField;
    ds_movdetCONTROLE: TSmallintField;
    ds_movdetCOD_COMISSAO: TIntegerField;
    ds_movdetVALTOTAL: TFloatField;
    ds_movdetCODPRO: TStringField;
    ds_movdetPRODUTO: TStringField;
    ds_movdetCODALMOXARIFADO: TIntegerField;
    ds_movdetVALORUNITARIOATUAL: TFloatField;
    ds_movdetQTDE_PCT: TFloatField;
    ds_movdetALMOXARIFADO: TStringField;
    ds_movdetCONTA_DESPESA: TStringField;
    ds_movdetCOD_BARRA: TStringField;
    ds_movdetLOCALIZACAO: TStringField;
    ds_movdetESTOQUEATUAL: TFloatField;
    s_movdetCODDETALHE: TIntegerField;
    s_movdetCODMOVIMENTO: TIntegerField;
    s_movdetCODPRODUTO: TIntegerField;
    s_movdetICMS: TFloatField;
    s_movdetPRECO: TFloatField;
    s_movdetQUANTIDADE: TFloatField;
    s_movdetQTDE_ALT: TFloatField;
    s_movdetUN: TStringField;
    s_movdetBAIXA: TStringField;
    s_movdetCONTROLE: TSmallintField;
    s_movdetCOD_COMISSAO: TIntegerField;
    s_movdetVALTOTAL: TFloatField;
    s_movdetCODPRO: TStringField;
    s_movdetPRODUTO: TStringField;
    s_movdetCODALMOXARIFADO: TIntegerField;
    s_movdetVALORUNITARIOATUAL: TFloatField;
    s_movdetQTDE_PCT: TFloatField;
    s_movdetALMOXARIFADO: TStringField;
    s_movdetCONTA_DESPESA: TStringField;
    s_movdetCOD_BARRA: TStringField;
    s_movdetLOCALIZACAO: TStringField;
    s_movdetESTOQUEATUAL: TFloatField;
    s_buscaProQTDE_PCT: TFloatField;
    s_buscaProICMS: TFloatField;
    s_buscaProIPI: TFloatField;
    s_buscaProCLASSIFIC_FISCAL: TStringField;
    s_buscaProCST: TStringField;
    s_buscaProBASE_ICMS: TFloatField;
    s_buscaProCOD_COMISSAO: TIntegerField;
    btn4: TBitBtn;
    MMJPanel6: TMMJPanel;
    JvGroupBox10: TJvGroupBox;
    lbl17: TLabel;
    lbl18: TLabel;
    cbb3: TComboBox;
    cbb4: TComboBox;
    JvGroupBox11: TJvGroupBox;
    JvDBGrid4: TJvDBGrid;
    ts3: TTabSheet;
    MMJPanel7: TMMJPanel;
    dbedt10: TDBEdit;
    lbl13: TLabel;
    dbedt11: TDBEdit;
    lbl14: TLabel;
    dbedt12: TDBEdit;
    lbl15: TLabel;
    dbedt13: TDBEdit;
    lbl16: TLabel;
    dbedt14: TDBEdit;
    lbl19: TLabel;
    dbedt15: TDBEdit;
    lbl20: TLabel;
    dbedt16: TDBEdit;
    lbl21: TLabel;
    dbedt17: TDBEdit;
    lbl22: TLabel;
    JvGroupBox8: TJvGroupBox;
    JvDBGrid5: TJvDBGrid;
    JvGroupBox9: TJvGroupBox;
    dbmmo1: TDBMemo;
    pnl1: TPanel;
    btn6: TBitBtn;
    btn7: TBitBtn;
    btn8: TBitBtn;
    JvGroupBox12: TJvGroupBox;
    dbedtSERIE: TDBEdit;
    lbl23: TLabel;
    btnSerie: TBitBtn;
    dbedtNOTAFISCAL: TDBEdit;
    lbl24: TLabel;
    dbedtDATAVENDA: TDBEdit;
    lbl25: TLabel;
    dbedtN_PARCELA: TDBEdit;
    lbl26: TLabel;
    cbbConta: TComboBox;
    lbl27: TLabel;
    cbb5: TComboBox;
    lbl28: TLabel;
    btn9: TBitBtn;
    JvGroupBox3: TJvGroupBox;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    cbb1: TComboBox;
    cbb2: TComboBox;
    cbb6: TComboBox;
    cbb7: TComboBox;
    btn5: TBitBtn;
    JvGroupBox6: TJvGroupBox;
    dbedt9: TDBEdit;
    btn10: TBitBtn;
    btn11: TBitBtn;
    btn12: TBitBtn;
    btn13: TBitBtn;
    dbedtN_DOCUMENTO: TDBEdit;
    lbl29: TLabel;
    btn14: TBitBtn;
    dbedtVALOR_FRETE: TDBEdit;
    lbl30: TLabel;
    dbedtVALOR_SEGURO: TDBEdit;
    lbl31: TLabel;
    dbedtVALOR_ICMS: TDBEdit;
    lbl32: TLabel;
    dbedtVALOR_IPI: TDBEdit;
    lbl33: TLabel;
    dbedtOUTRAS_DESP: TDBEdit;
    lbl34: TLabel;
    dbedtMULTA_JUROS: TDBEdit;
    lbl35: TLabel;
    dbedtDESCONTO: TDBEdit;
    lbl36: TLabel;
    procedure edt_produtoKeyPress(Sender: TObject; var Key: Char);
    procedure btn_incluirClick(Sender: TObject);
    procedure ds_movimentoBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_AUTOPECAS: TF_AUTOPECAS;
  id_movimento, id_movdet, codmovdet : Integer;
  precovenda : Double;

implementation

uses UDm, sCtrlResize;

{$R *.dfm}

procedure TF_AUTOPECAS.edt_produtoKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
  if (edt_produto.text = '') then
    exit;
    if (s_buscaPro.Active) then //Busco pelo Codigo de barra
        s_buscaPro.Close;
    s_buscaPro.Params[0].AsString := edt_produto.Text;
    s_buscaPro.Open;
    if (s_buscaPro.IsEmpty) then
    begin
      if (MessageDlg('Produto não localizado pelo codigo de Barras,'+#13+#10+'   efetuar a busca pelo código do Produto ?', mtWarning, [mbYes, mbNo], 0) in [mrYes, mrNo, mrNone]) then
      begin
        if (s_buscaPro.Active) then   //Busco pelo Codigo do Produto
            s_buscaPro.Close;
        s_buscaPro.Params[1].AsString := edt_produto.Text;
        s_buscaPro.Open;
        if (s_buscaPro.IsEmpty) then
        begin
          ShowMessage('Produto não localizado');
          edt_produto.SetFocus;
          Exit;
        end;
      end;
      if (ds_similar.Active) then
          ds_similar.Close;
      ds_similar.Params[0].AsInteger := s_buscaProCODPRODUTO.AsInteger;
      ds_similar.Open;
      // Alimento a tabela Mivimento detalhe
      if (not ds_movdet.Active) then
         ds_movdet.Open;
      ds_movdet.Append;
      ds_movimentoCODMOVIMENTO.AsInteger := id_movimento;
      ds_movdetCOD_BARRA.AsString := edt_produto.Text;
      ds_movdetCODPRODUTO.AsInteger := s_buscaProCODPRODUTO.AsInteger;
      ds_movdetPRODUTO.Value := s_buscaProPRODUTO.Value;
      ds_movdetCOD_COMISSAO.AsInteger := s_buscaProCOD_COMISSAO.AsInteger;
      ds_movdetQTDE_PCT.AsFloat := s_buscaProQTDE_PCT.AsFloat;
      ds_movdetUN.AsString := s_buscaProUNIDADEMEDIDA.AsString;
//      ds_movdetLOCALIZACAO.AsString := s_buscaProLOCALIZACAO.AsString;
//      ds_movdetESTOQUEATUAL.AsFloat := s_buscaProESTOQUEATUAL.AsFloat;
      ds_movdetQUANTIDADE.AsFloat := 1;
      ds_movdetQTDE_ALT.AsFloat := 1;
//      ds_movdetCODALMOXARIFADO.AsInteger := s_buscaProCODALMOXARIFADO.AsInteger;
//      ds_movdetALMOXARIFADO.AsString := s_buscaProALMOXARIFADO.AsString;
      ds_movdetICMS.AsFloat := s_buscaProICMS.AsFloat;
      ds_movdetPRECO.AsFloat := s_buscaProPRECOMEDIO.AsFloat;
    end;
 end;
end;

procedure TF_AUTOPECAS.btn_incluirClick(Sender: TObject);
begin
  // Abro a tabela movimento
  if (ds_movimento.Active) then
    ds_movimento.Close;
  ds_movimento.Open;
  ds_movimento.Append;

  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOV, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  id_movimento := dm.c_6_genid.Fields[0].AsInteger;
  dm.c_6_genid.Close;
  edt_produto.SetFocus;
end;

procedure TF_AUTOPECAS.ds_movimentoBeforePost(DataSet: TDataSet);
begin
{  ds_MovimentoCODNATUREZA.AsInteger := cod_nat;
  ds_MovimentoDESCNATUREZA.AsString := natureza;
  ds_MovimentoCODUSUARIO.AsInteger := cod_vendedor_padrao;
  ds_MovimentoNOMEUSUARIO.AsString := nome_vendedor_padrao;
  ds_MovimentoCODCLIENTE.AsInteger := 1;
  ds_MovimentoNOMECLIENTE.AsString := 'CONSUMIDOR';
  ds_MovimentoCODMOVIMENTO.asInteger := 1999999;
  ds_MovimentoDATAMOVIMENTO.Value := Date;
  ds_MovimentoDATA_SISTEMA.AsDateTime := Now;
  ds_MovimentoSTATUS.Value := 0;
  ds_MovimentoCODUSUARIO.AsInteger:=usulog;
  ds_MovimentoCODVENDEDOR.Value:=usulog;
  ds_MovimentoCODCLIENTE.AsInteger := codcliente;
  ds_MovimentoCODALMOXARIFADO.AsInteger := 1;
  }
end;

procedure TF_AUTOPECAS.FormShow(Sender: TObject);
begin
 // sCtrlResize.CtrlResize(TForm(F_AUTOPECAS));
end;

end.
