unit uOf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, JvToolEdit, Grids, DBGrids, JvExDBGrids, JvDBGrid, Mask, DBXpress,
  JvExMask, JvBaseEdits, FMTBcd, DBClient, Provider, SqlExpr, JvExControls,
  JvLabel;

type
  TfOf = class(TfPai_new)
    OfId: TEdit;
    OfProd: TEdit;
    OfDesc: TEdit;
    OfQtde: TJvCalcEdit;
    Label1: TLabel;
    Label2: TLabel;
    JvDBGrid1: TJvDBGrid;
    OfData: TJvDateEdit;
    Label3: TLabel;
    btnProdutoProcura: TBitBtn;
    sqlOf: TSQLDataSet;
    dspOf: TDataSetProvider;
    cdsOf: TClientDataSet;
    cdsOfOFID: TIntegerField;
    cdsOfOFDATA: TDateField;
    cdsOfOFSTATUS: TStringField;
    cdsOfOFQTDESOLIC: TFloatField;
    cdsOfOFQTDEPRODUZ: TFloatField;
    cdsOfOFQTDEPERDA: TFloatField;
    cdsOfOFMOTIVO: TStringField;
    cdsOfCODPRODUTO: TIntegerField;
    JvLabel1: TJvLabel;
    OFID_Ind: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    sqlOfOFID: TIntegerField;
    sqlOfOFDATA: TDateField;
    sqlOfOFSTATUS: TStringField;
    sqlOfOFQTDESOLIC: TFloatField;
    sqlOfOFQTDEPRODUZ: TFloatField;
    sqlOfOFQTDEPERDA: TFloatField;
    sqlOfOFMOTIVO: TStringField;
    sqlOfCODPRODUTO: TIntegerField;
    sqlOfOFID_IND: TSmallintField;
    cdsOfOFID_IND: TSmallintField;
    sqlInd: TSQLQuery;
    sqlId: TSQLQuery;
    sdsDetalhe: TSQLDataSet;
    dspDetalhe: TDataSetProvider;
    cdsDetalhe: TClientDataSet;
    cdsDetalheCODPRODMP: TIntegerField;
    cdsDetalheSUM: TFloatField;
    cdsDetalheUSAPRECO: TStringField;
    sds_s: TSQLDataSet;
    cds_movMat: TClientDataSet;
    cds_movMatCODMOVIMENTO: TIntegerField;
    cds_movMatDATAMOVIMENTO: TDateField;
    cds_movMatCODCLIENTE: TIntegerField;
    cds_movMatCODNATUREZA: TSmallintField;
    cds_movMatSTATUS: TSmallintField;
    cds_movMatCODUSUARIO: TSmallintField;
    cds_movMatNOMECLIENTE: TStringField;
    cds_movMatDESCNATUREZA: TStringField;
    cds_movMatALMOXARIFADO: TStringField;
    cds_movMatCODVENDEDOR: TSmallintField;
    cds_movMatCODALMOXARIFADO: TIntegerField;
    cds_movMatNOMEFORNECEDOR: TStringField;
    cds_movMatCODFORNECEDOR: TIntegerField;
    cds_movMatTIPOTITULO: TSmallintField;
    cds_movMatDATA_SISTEMA: TSQLTimeStampField;
    cds_movMatNOMEUSUARIO: TStringField;
    cds_movMatPLACA: TStringField;
    cds_movMatMARCA_MODELO: TStringField;
    cds_movMatCOD_VEICULO: TIntegerField;
    cds_movMatBAIXAMOVIMENTO: TSmallintField;
    cds_movMatCONTROLE: TStringField;
    cds_movMatCODCCUSTO: TSmallintField;
    cds_movMatNOTAFISCAL: TIntegerField;
    cds_movMatNOTAFISCAL_1: TIntegerField;
    cds_movMatSERIE: TStringField;
    cds_movMatOBS: TStringField;
    cds_movMatOBSERVACAO: TStringField;
    cds_movMatCODORIGEM: TIntegerField;
    dsp_movMat: TDataSetProvider;
    sds_movMat: TSQLDataSet;
    IntegerField1: TIntegerField;
    DateField1: TDateField;
    IntegerField2: TIntegerField;
    SmallintField1: TSmallintField;
    SmallintField2: TSmallintField;
    SmallintField3: TSmallintField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    SmallintField4: TSmallintField;
    IntegerField3: TIntegerField;
    StringField4: TStringField;
    IntegerField4: TIntegerField;
    SmallintField5: TSmallintField;
    SQLTimeStampField1: TSQLTimeStampField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    IntegerField5: TIntegerField;
    SmallintField6: TSmallintField;
    StringField8: TStringField;
    SmallintField7: TSmallintField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    sds_movMatCODORIGEM: TIntegerField;
    dsd_movDetMat: TSQLDataSet;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    StringField12: TStringField;
    StringField13: TStringField;
    FloatField4: TFloatField;
    StringField14: TStringField;
    SmallintField8: TSmallintField;
    IntegerField11: TIntegerField;
    StringField15: TStringField;
    FloatField5: TFloatField;
    IntegerField12: TIntegerField;
    StringField16: TStringField;
    StringField17: TStringField;
    FloatField6: TFloatField;
    StringField18: TStringField;
    DateField2: TDateField;
    DateField3: TDateField;
    StringField19: TStringField;
    FloatField7: TFloatField;
    dsp_movDetMat: TDataSetProvider;
    cds_movDetMat: TClientDataSet;
    cds_movDetMatCODDETALHE: TIntegerField;
    cds_movDetMatCODMOVIMENTO: TIntegerField;
    cds_movDetMatCODPRODUTO: TIntegerField;
    cds_movDetMatICMS: TFloatField;
    cds_movDetMatPRECO: TFloatField;
    cds_movDetMatQUANTIDADE: TFloatField;
    cds_movDetMatPRODUTO: TStringField;
    cds_movDetMatUN: TStringField;
    cds_movDetMatQTDE_ALT: TFloatField;
    cds_movDetMatBAIXA: TStringField;
    cds_movDetMatCONTROLE: TSmallintField;
    cds_movDetMatCODALMOXARIFADO: TIntegerField;
    cds_movDetMatALMOXARIFADO: TStringField;
    cds_movDetMatVALORUNITARIOATUAL: TFloatField;
    cds_movDetMatCOD_COMISSAO: TIntegerField;
    cds_movDetMatCONTA_DESPESA: TStringField;
    cds_movDetMatCODPRO: TStringField;
    cds_movDetMatQTDE_PCT: TFloatField;
    cds_movDetMatLOTE: TStringField;
    cds_movDetMatDTAFAB: TDateField;
    cds_movDetMatDTAVCTO: TDateField;
    cds_movDetMatLOTES: TStringField;
    cds_movDetMatPRECOCUSTO: TFloatField;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    cdsCODPRODUTO: TIntegerField;
    cdsCODPRO: TStringField;
    cdsPRODUTO: TStringField;
    cdsPRECO_CUSTO: TFloatField;
    cdsESTOQUE: TFloatField;
    cdsUNIDADEMEDIDA: TStringField;
    cdsLOTES2: TStringField;
    cdsPRECO_VENDA: TBCDField;
    cdsPRECO_COMPRA: TFloatField;
    sdslote: TSQLDataSet;
    sdsloteCODLOTE: TIntegerField;
    sdsloteLOTE: TStringField;
    sdsloteCODPRODUTO: TIntegerField;
    sdsloteDATAFABRICACAO: TDateField;
    sdsloteDATAVENCIMENTO: TDateField;
    sdsloteESTOQUE: TFloatField;
    sdslotePRODUTO: TStringField;
    sdsloteCODPRO: TStringField;
    sdslotePRECO: TFloatField;
    dsplotes: TDataSetProvider;
    cdslotes: TClientDataSet;
    cdslotesCODLOTE: TIntegerField;
    cdslotesLOTE: TStringField;
    cdslotesCODPRODUTO: TIntegerField;
    cdslotesDATAFABRICACAO: TDateField;
    cdslotesDATAVENCIMENTO: TDateField;
    cdslotesESTOQUE: TFloatField;
    cdslotesPRODUTO: TStringField;
    cdslotesCODPRO: TStringField;
    cdslotesPRECO: TFloatField;
    procedure btnProdutoProcuraClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure OfProdExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure JvDBGrid1CellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure cds_movMatNewRecord(DataSet: TDataSet);
    procedure cds_movDetMatNewRecord(DataSet: TDataSet);
  private
    procedure baixamatprimas(tipomat: string; codof: integer);

  public
    codProd: Integer;
    OfTipo : String;
    cod_nat, cod_Ven : Integer;
    natureza, serie, cliente, vendedor : string;

  end;

var
  fOf: TfOf;

implementation

uses ufprocura_prod, UDm, UDMNF;

{$R *.dfm}

procedure TfOf.btnProdutoProcuraClick(Sender: TObject);
begin
  inherited;
  fProcura_prod.cbTipo.ItemIndex := 4;
  fProcura_prod.btnIncluir.Visible := true;
  if (procprod <> 'PROC_PROD_COMPLETO') then
  begin
    fProcura_prod.Panel1.Visible := false;
    fProcura_prod.Panel2.Visible := true;
    //fProcura_prod.CheckBox1.Checked := True;
    fProcura_prod.BitBtn1.Click;
  end
  else begin
    fProcura_prod.Panel2.Visible := false;
    fProcura_prod.Panel1.Visible := true;
    //fProcura_prod.CheckBox1.Checked := False;
    if (fProcura_prod.cds_proc.Active) then
      fProcura_prod.cds_proc.Close;
  end;
  varonde := 'EntraSai';
  var_F := 'formof';
  fProcura_prod.BitBtn5.Visible := False;
  fProcura_prod.ShowModal;
  if (dm.scds_produto_proc.Active ) then
  begin
    OfDesc.Text := dm.scds_produto_procPRODUTO.AsString;
    codProd := dm.scds_produto_procCODPRODUTO.asInteger;
  end;
end;

procedure TfOf.btnGravarClick(Sender: TObject);
begin
  if (codProd = 0) then
  begin
    if dm.scds_produto_proc.Active then
      dm.scds_produto_proc.Close;
    dm.scds_produto_proc.Params[0].AsInteger := 0;
    dm.scds_produto_proc.Params[1].AsString := OfProd.Text;
    dm.scds_produto_proc.Open;
    if dm.scds_produto_proc.IsEmpty then begin
      MessageDlg('Código do produto inválido.', mtWarning,
        [mbOk], 0);
      exit;
    end;
  end;
  cdsOfOFID.AsInteger       := StrToInt(OfId.Text);
  cdsOfOFDATA.AsDateTime    := OfData.Date;
  cdsOfOFSTATUS.AsString    := 'A'; // OF Aberta
  if (OFTipo = 'OP') then
  begin
    cdsOfOFID_IND.AsInteger   := 0;
    cdsOfOFQTDESOLIC.AsFloat  := OfQtde.Value;
    cdsOfOFQTDEPRODUZ.AsFloat := 0;
    cdsOfOFQTDEPERDA.AsFloat  := 0;
    cdsOfCODPRODUTO.AsInteger := codProd;
    inherited;
    baixamatprimas('BAIXAENTESTOQUE', cdsOfOFID.AsInteger);
  end;
  if (OFTipo = 'APONTAMENTO') then
  begin
    cdsOfOFID_IND.AsInteger   := StrToInt(OFID_Ind.Text);
    cdsOfOFQTDESOLIC.AsFloat  := 0;
    cdsOfOFQTDEPRODUZ.AsFloat := OfQtde.Value;
    cdsOfOFQTDEPERDA.AsFloat  := 0;
    cdsOfCODPRODUTO.AsInteger := codProd;
    inherited;
  end;
  if (OFTipo = 'PERDA') then
  begin
    cdsOfOFQTDESOLIC.AsFloat  := 0;
    cdsOfOFQTDEPRODUZ.AsFloat := 0;
    cdsOfOFQTDEPERDA.AsFloat  := OfQtde.Value;
    cdsOfCODPRODUTO.AsInteger := codProd;
    inherited;    
  end;
end;

procedure TfOf.OfProdExit(Sender: TObject);
begin
  //inherited;
  if dm.scds_produto_proc.Active then
    dm.scds_produto_proc.Close;
  dm.scds_produto_proc.Params[0].AsInteger := 0;
  dm.scds_produto_proc.Params[1].AsString := OfProd.Text;
  dm.scds_produto_proc.Open;
  if dm.scds_produto_proc.IsEmpty then begin
    MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
    btnProdutoProcura.Click;
    exit;
  end;
  OfDesc.Text := dm.scds_produto_procPRODUTO.AsString;
  codProd := dm.scds_produto_procCODPRODUTO.asInteger;
end;

procedure TfOf.FormShow(Sender: TObject);
begin
//  inherited;
  codProd := 0;
end;

procedure TfOf.btnIncluirClick(Sender: TObject);
begin
  if (OFTipo = 'OP') then
  begin
    OfProd.Text := '';
    OFDesc.Text := '';
  end;
  OfQtde.Value := 0;
  inherited;
  if (OFTipo = 'OP') then
  begin
    if (sqlId.Active) then
      sqlId.Close;
    sqlId.Open;
    OFID.Text := IntToStr(sqlId.Fields[0].AsInteger + 1);
    sqlInd.Close;
    OFID_Ind.Text := '0';
    cdsOfOFID_IND.AsInteger := 0; // Toda OF (OP) terão IND = 0
  end;
  if (OFTipo = 'APONTAMENTO') then
  begin
    // Busca o último IND + 1
    if (sqlInd.Active) then
      sqlInd.Close;
    sqlInd.Params.ParamByName('OFID').AsInteger := cdsOfOFID.AsInteger;
    sqlInd.Open;
    OFID_Ind.Text := IntToStr(sqlInd.Fields[0].AsInteger + 1);
    sqlInd.Close;
  end;
end;

procedure TfOf.JvDBGrid1CellClick(Column: TColumn);
begin
  inherited;
  OFData.Date  := cdsOfOFDATA.AsDateTime;
  if (OFTipo = 'OP') then
    OFQtde.Value := cdsOfOFQTDESOLIC.Value;
  if (OFTipo = 'APONTAMENTO') then
    OFQtde.Value := cdsOfOFQTDEPRODUZ.Value;
  if (OFTipo = 'PERDA') then
    OFQtde.Value := cdsOfOFQTDEPERDA.Value;
end;

procedure TfOf.FormCreate(Sender: TObject);
begin
//  inherited;

end;

procedure TfOf.baixamatprimas(tipomat: string; codof: integer);
  var //coddetalhe : integer;
    TD: TTransactionDesc;
    sql_sp, tipo : string;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  if (cdsDetalhe.Active) then
    cdsDetalhe.Close;
  cdsDetalhe.Params[0].AsInteger := codof;
  cdsDetalhe.Params[1].AsString := tipomat;
  cdsDetalhe.Open;
  {** se não estiver vazio procuro pela matéria prima}
  if (not cdsDetalhe.IsEmpty) then
  begin
    cdsDetalhe.First;
    // VENDA
    //Pesquisando na tab Parametro Código e Nome da Natureza da Venda
    if Dm.cds_parametro.Active then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'NATUREZASAIDA';
    dm.cds_parametro.Open;
    if dm.cds_parametro.IsEmpty then
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.asString := 'SAIDA DE ESTOQUE P/ PRODUÇÃO';
      dm.cds_parametroPARAMETRO.asString := 'NATUREZASAIDA';
      dm.cds_parametroDADOS.asString := '2';  // CODNATUREZA -> Tab NATUREZAOPERACAO
      dm.cds_parametroCONFIGURADO.asString := '2';
      dm.cds_parametroD1.AsString := 'Saida';
      dm.cds_parametroD2.AsString := 'O'; // Serie - O = Output
      dm.cds_parametro.ApplyUpdates(0);
      if (sds_s.Active) then
        sds_s.Close;
      sds_s.CommandText := 'SELECT SERIE FROM SERIES WHERE SERIE = ' + '''' + 'O' + '''';
      sds_s.open;
      if (sds_s.IsEmpty) then
      begin
        if (sds_s.Active) then
          sds_s.Close;
        sds_s.CommandText := 'INSERT INTO SERIES (SERIE, ULTIMO_NUMERO) VALUES(' + '''' + 'O' + ''',' + '0)';
        sds_s.ExecSQL();
      end;
    end;
    cod_nat := strToint(dm.cds_parametroDADOS.asString);
    natureza := dm.cds_parametroD1.AsString;
    serie := dm.cds_parametroD2.AsString;
    dm.cds_parametro.Close;

    //********VERIFICA SE JA FOI DADO BAIXA PARA EXCLUIR MOVIMENTO ANTIGO********
    if dm.cdsBusca.Active then
      dm.cdsBusca.Close;
    dm.cdsBusca.CommandText := 'SELECT * FROM MOVIMENTO WHERE CODORIGEM = '
    + IntToStr(codof) + ' AND CODCLIENTE = ' + IntToStr(cod_cli);
    dm.cdsBusca.Open;

    if not dm.cdsBusca.IsEmpty then
    begin
      if  (dm.cdsBusca.FieldByName('CODNATUREZA').AsInteger = 1) then
        tipo := 'ENTRADA'
      else if  (dm.cdsBusca.FieldByName('CODNATUREZA').AsInteger = 2) then
        tipo := 'SAIDA'
      else if  (dm.cdsBusca.FieldByName('CODNATUREZA').AsInteger = 3) then
        tipo := 'VENDA'
      else if  (dm.cdsBusca.FieldByName('CODNATUREZA').AsInteger = 4) then
        tipo := 'COMPRA';
      dmnf.cancelaEstoque(codof, dm.cdsBusca.FieldByName('DATAMOVIMENTO').AsDateTime, tipo);
      dm.sqlsisAdimin.ExecuteDirect('DELETE FROM VENDA WHERE CODMOVIMENTO = '
      + IntToStr(dm.cdsBusca.FieldByName('CODMOVIMENTO').AsInteger));
      dm.sqlsisAdimin.ExecuteDirect('DELETE FROM MOVIMENTO WHERE CODORIGEM = ' + IntToStr(codof)
      + ' AND CODCLIENTE = ' + IntToStr(cod_cli));
    end;
    //***************************************************************************

    if (not cds_movMat.Active) then
      cds_movMat.Open;
    cds_movMat.Append;
    cds_movMatCODCLIENTE.AsInteger := 0;
    cds_movMatCODFORNECEDOR.AsInteger := 0;
    cds_movMatDATAMOVIMENTO.AsDateTime := Now;
    cds_movMatNOMECLIENTE.AsString := cliente;
    cds_movMatNOMEUSUARIO.AsString := vendedor;
    cds_movMatCODVENDEDOR.AsInteger := cod_Ven;
    { Natureza = 'Saída' }
    cds_movMatCODNATUREZA.AsInteger := 2;
    cds_movMatDESCNATUREZA.AsString := natureza;
    cds_movMatCODUSUARIO.AsInteger := cod_ven;
    cds_movMatCODORIGEM.AsInteger := codof;

    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOV, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_movMatCODMOVIMENTO.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;

    cds_movMat.Post;
    dm.sqlsisAdimin.StartTransaction(TD);
    try
      cds_movMat.ApplyUpdates(0);
      dm.sqlsisAdimin.Commit(TD);
    except
      dm.sqlsisAdimin.Rollback(TD);
      Exit;
    end;


    while not cdsDetalhe.Eof do
    begin
      if (cds.Active) then
        cds.Close;
      cds.Params[0].AsInteger := cdsDetalheCODPRODMP.AsInteger;
      //cds.Params[1].AsString := tipomat;
      cds.Open;
      if (not cds.IsEmpty) then
      begin
         cds.First;
        if (not cds_movDetMat.Active) then
          cds_movDetMat.Open;
        //while not cds.Eof do
        //begin
          if (cds_movDetMat.State in [dsBrowse, dsInactive]) then
            cds_movDetMat.Append;
          // aqui pego as Materias primas e lanço na movimento detalhe
          cds_movDetMatCODPRODUTO.AsInteger := cdsCODPRODUTO.AsInteger;
          cds_movDetMatQUANTIDADE.AsFloat := cdsDetalheSUM.AsFloat;
          cds_movDetMatPRODUTO.AsString := cdsPRODUTO.AsString;
          cds_movDetMatCODPRO.AsString := cdsCODPRO.AsString;
          cds_movDetMatUN.AsString := cdsUNIDADEMEDIDA.AsString;
          cds_movDetMatCODMOVIMENTO.AsInteger := cds_movMatCODMOVIMENTO.AsInteger;
          if dm.c_6_genid.Active then
            dm.c_6_genid.Close;
          dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOVDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
          dm.c_6_genid.Open;
          cds_movDetMatCODDETALHE.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
          dm.c_6_genid.Close;

          if (cdsLOTES2.AsString = 'S') then
          begin
            cds_movDetMatLOTE.AsString := cdslotesLOTE.AsString;
            //cds_movDetMatLOTES.AsString := 'S';
            if (cdslotesPRECO.AsFloat > 0) then
              cds_movDetMatPRECO.AsFloat := cdslotesPRECO.AsFloat
            else
              cds_movDetMatPRECO.AsFloat := cdsPRECO_COMPRA.AsFloat;
          end
          else begin
            if (cdsDetalheUSAPRECO.AsString = 'PRECOVENDA') THEN
              cds_movDetMatPRECO.Value := cdsPRECO_VENDA.Value
            else if (cdsDetalheUSAPRECO.AsString = 'PRECOCOMPRA') THEN
              cds_movDetMatPRECO.asFloat := cdsPRECO_COMPRA.AsFloat
            else
              cds_movDetMatPRECO.AsFloat := 0;
          end;
          if (cds_movDetMat.State in [dsInsert, dsEdit]) then
            cds_movDetMat.Post;
        //  cds.Next;
        //end;
      end;
      cdsDetalhe.Next;
    end;
    try

      if (dm.cds_parametro.Active) then
        dm.cds_parametro.Close;
      dm.cds_parametro.Params[0].asString := 'CENTROCUSTO';   // Centro de Custo Padrao
      dm.cds_parametro.Open;

      if (cds_movDetMat.State in [dsedit, dsinsert, dsbrowse]) then
      begin
        dm.sqlsisAdimin.StartTransaction(TD);
        try
          cds_movDetMat.ApplyUpdates(0);
          dm.sqlsisAdimin.Commit(TD);
        except
          dm.sqlsisAdimin.Rollback(TD);
          Exit;
        end;
      end;


      sql_sp := 'EXECUTE PROCEDURE LANCA_ENT_SAIDA(';
      //dm.cds_ccusto.Locate('NOME', ComboBox1.Text, [loCaseInsensitive]);
      if cds_MovMat.State in [dsBrowse] then
        cds_MovMat.Edit;
      cds_MovMatCODALMOXARIFADO.AsInteger := StrToInt(dm.cds_parametroD1.AsString);
      cds_MovMat.ApplyUpdates(0);
       // Executa insercao na tab Venda
      sql_sp := sql_sp + '1,'; //Tipo (0=Entrada, 1=Saida)
      sql_sp := sql_sp + IntToStr(cds_MovMatCODMOVIMENTO.asInteger);
      sql_sp := sql_sp + ',';
      sql_sp := sql_sp + IntToStr(cds_MovMatCODCLIENTE.asInteger);
      sql_sp := sql_sp + ',';
      sql_sp := sql_sp + '''' + formatdatetime('mm/dd/yyyy',Now) + ''',';
      sql_sp := sql_sp + '''' + formatdatetime('mm/dd/yyyy',Now) + ''',';
      sql_sp := sql_sp + IntToStr(cds_MovMatCODUSUARIO.asInteger);
      sql_sp := sql_sp + ',' + IntToStr(cds_MovMatCODALMOXARIFADO.AsInteger);
      sql_sp := sql_sp + ',''' + serie + ''',';
      sql_sp := sql_sp + ' null, null)';

      dm.sqlsisAdimin.StartTransaction(TD);
      Try
         dm.sqlsisAdimin.ExecuteDirect(sql_sp);
         DMNF.baixaEstoque(cds_movMatCODMOVIMENTO.AsInteger, cds_movMatDATAMOVIMENTO.AsDateTime, 'SAIDA');
         dm.sqlsisAdimin.Commit(TD);
      except
         dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
         MessageDlg('Erro no sistema, inclusão não foi finalizada!', mtError,
             [mbOk], 0);
        exit;
      end;
      if (cdsLotes.Active) then
        cdslotes.Close;
      if (cdsOf.State in [dsInsert, dsEdit]) then
        btnGravar.Click;
      MessageDlg('Inclusão realizada com sucesso.', mtInformation, [mbOK], 0);
    except
      dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
      MessageDlg('Erro no sistema, inclusão não foi finalizada!', mtError,
         [mbOk], 0);
    end;
  end;
end;

procedure TfOf.cds_movMatNewRecord(DataSet: TDataSet);
begin
  cds_movMatCODMOVIMENTO.asInteger := 1999999;
  cds_movMatDATAMOVIMENTO.AsDateTime := Now;
  cds_movMatDATA_SISTEMA.AsDateTime := Now;
  cds_movMatSTATUS.Value := 0;
  cds_movMatCODUSUARIO.AsInteger := 1;//usuario_logado;
  cds_movMatCODVENDEDOR.Value := 1;//usuario_logado;
  cds_movMatCODFORNECEDOR.AsInteger := 0;
  cds_movMatCODCLIENTE.AsInteger := 0;
end;

procedure TfOf.cds_movDetMatNewRecord(DataSet: TDataSet);
begin
  if (codmovdet >= 1999999) then
    codmovdet := codmovdet + 1;
  if (cds_MovdetMatCODMOVIMENTO.AsInteger <> 1999999) then
  begin
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOVDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      codmovdet := dm.c_6_genid.Fields[0].AsInteger;
      dm.c_6_genid.Close;
  end;
  cds_movdetMatCODDETALHE.AsInteger := codmovdet;
  cds_MovdetMatCODMOVIMENTO.AsInteger := cds_MovMatCODMOVIMENTO.AsInteger;
end;

end.
